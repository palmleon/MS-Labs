library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myGlobals.all;

entity CU is
  port (		 
       RF_en  : out std_logic;               -- enables the register file (combination of the RF_en at Decode Stage and at WB Stage)
       -- FIRST PIPE STAGE OUTPUTS (IF)
	   IF_en  : out std_logic;				 -- enables the PC, the NPC and the Instruction Memory
       -- SECOND PIPE STAGE OUTPUTS (DEC)
	   RF_rd1 : out std_logic;               -- enables the read port 1 of the register file
       RF_rd2 : out std_logic;               -- enables the read port 2 of the register file
	   waddr_sel 	 : out std_logic;		 -- selects the write address input of the register file (it will reach the reg.file 3 clk cycles later)
       reg_delay1_en : out std_logic;		 -- enables the first delay register for the write address input
	   A_en			 : out std_logic;		 -- enables the A register
	   B_en			 : out std_logic;		 -- enables the B register
	   Imm_en		 : out std_logic;		 -- enables the Imm register
       -- THIRD PIPE STAGE OUTPUTS (EXE)
	   ALUinA_sel	 : out std_logic;		 -- selects the first ALU input
	   ALUinB_sel	 : out std_logic;		 -- selects the second ALU input
	   ALUop_sel	 : out std_logic_vector(ALUOPCSIZE-1 downto 0); -- selects the ALU operation to perform
	   reg_delay2_en : out std_logic;		 -- enables the second delay register for the write address input
	   reg_ALU_en	: out std_logic;		 -- enables the ALU register
	   -- FOURTH PIPE STAGE OUTPUTS (MEM)
	   branch_sel	 : out std_logic;		 -- selects whether a branch is taken or not
	   reg_delay3_en : out std_logic;		 -- enables the third delay register for the write address input
	   DMem_en		: out std_logic;         -- enables the read-out of the memory
       DMem_wr		: out std_logic;         -- enables the write-in of the memory
	   reg_LMD_en	: out std_logic;		 -- enables the Load Memory Data register
	   -- FIFTH PIPE STAGE OUTPUTS (WB)
	   WB_sel		: out std_logic;		 -- selector for the WB mux
	   RF_wr		: out std_logic;		 -- enables the write port of the register file
       -- INPUTS
       OPCODE : in  std_logic_vector(OPCSIZE - 1 downto 0);
       FUNC   : in  std_logic_vector(FUNCSIZE - 1 downto 0);              
       Clk 	  : in std_logic;
       Rst    : in std_logic);               -- Active Low
end CU;

architecture Beh of CU is
	constant CW_SIZE: integer := 21;
	constant NOpcodes: integer := 62;
	constant NDecodeStageSignals: integer := 8;
	constant NExeStageSignals: integer := ALUOPCSIZE + 4;
	constant NMemStageSignals: integer := 5;
	constant NWBStageSignals: integer  := 2;

	-- TODO FROM HERE: update Memory Content, build CW signal DP and route everything, then configure CW for add/sub/addi/subi/addu/subu
	type	 MemoryType is array(0 to NOpcodes-1) of std_logic_vector(CW_SIZE-ALU_OPC_SIZE-1 downto 0);
  	constant LUT: MemoryType := 
				("00000000000", -- NOP
				 "11110100111", -- RTYPE (ADD, SUB, AND, OR share the same signals but the ALU Opcode)
				 "01100100111", -- ADDI1
				 "01100100111", -- SUBI1 (Because of the DP structure, we suppose that SUBI1 executes R[RB] = INP1 - R[RA] (The ALU cannot invert operands)
				 "01100100111", -- ANDI1
				 "01100100111", -- ORI1
				 "10111100111", -- ADDI2
				 "10111100111", -- SUBI2
				 "10111100111", -- ANDI2
				 "10111100111", -- ORI2
				 "10111100111", -- MOV (actually, it is identical to an ADDI2, but it is guaranteed that INP2 = 0)
				 "00101100111", -- SREG1 
				 "00101100111", -- SREG2 (actually, SREG1 is identical to SREG2)
				 "10111101100", -- SMEM2 -- TODO verify if RF2 = 0
				 "01100110101", -- LMEM1
				 "10111110101");-- LMEM2
	signal	 CW:			 				std_logic_vector(CW_SIZE-1 downto 0);											 -- Full Control Word (not a register, used for the sake of simplicity)
	signal	 LUTWord:						std_logic_vector(CW_SIZE-ALU_OPC_SIZE-1 downto 0);								 -- Output of the LUT (always available)
	signal	 CurrCUExeReg, NextCUExeReg: 	std_logic_vector(CW_SIZE-NFirstStageSignals-1 downto 0);						 -- Used to propagate signals to Execution and Mem (+ WriteBack) stages
	signal	 CurrCUMemWBReg, NextCUMemWBReg:std_logic_vector(CW_SIZE-NFirstStageSignals-NSecondStageSignals-1 downto 0); 	 -- Used to propagate signals to Mem (+ WriteBack) Stage
	signal	 ALU_Opcode:					std_logic_vector(ALU_OPC_SIZE-1 downto 0);										 -- Output of the combinational logic that computes the ALU Opcode
	signal   RF_en_DEC, RF_en_WB: std_logic;
begin

	IF_en <= '1'; -- TODO check whether there are cases where the PC must not be updated

	LUTWord <= LUT(to_integer(unsigned(OPCODE)));										-- Instr.Opcode corresponds to the Read Address of the LUT (it is guaranteed that Opcode <= NOpcodes in binary) 
	CW			 	<= LUTWord(CW_SIZE-ALU_OPC_SIZE-1 downto 5) & ALU_Opcode & LUTWord(4 downto 0);							-- Building the complete CW
	RF1 		 	<= CW(12);
	RF2 			<= CW(11);
	EN1 		 	<= CW(10);
	NextCUExeReg	<= CW(CW_SIZE-NFirstStageSignals-1 downto 0); -- only a fraction of the CW signals are propagated (the others are actually used at Decode Stage)
	S1  			<= CurrCUExeReg(9);
	S2  			<= CurrCUExeReg(8);
	EN2			 	<= CurrCUExeReg(7);
	ALU1 			<= CurrCUExeReg(6);
 	ALU2			<= CurrCUExeReg(5);
	NextCUMemWBReg 	<= CurrCUExeReg(4 downto 0); -- only a fraction of the CUExeReg signals are propagated (the others are actually used at Ex Stage)
	RM 				<= CurrCUMemWBReg(4);
	WM				<= CurrCUMemWBReg(3);
	EN3				<= CurrCUMemWBReg(2);
	S3				<= CurrCUMemWBReg(1);
	WF1				<= CurrCUMemWBReg(0);

	CURegSynchProc: process(clk)
	begin
		if (rising_edge(clk)) then
			if (rst = '0') then
				CurrCUExeReg <= (others => '0');
				CurrCUMemWBReg <= (others => '0');
			else
				CurrCUExeReg <= NextCUExeReg;
				CurrCUMemWBReg <= NextCUMemWBReg;
			end if;
		end if;
	end process;

	ALUOpcComputation: process(OPCODE, FUNC)
	begin
		case to_integer(unsigned(OPCODE)) is
			when 0 => -- NOP
				ALU_Opcode <= "00";
			when 1 => -- R-Type
				case to_integer(unsigned(FUNC)) is
					when 0 => ALU_Opcode <= "00"; -- ADD RS1,RS2,RD
					when 1 => ALU_Opcode <= "01"; -- SUB RS1,RS2,RD
					when 2 => ALU_Opcode <= "10"; -- AND RS1,RS2,RD
					when 3 => ALU_Opcode <= "11"; -- OR  RS1,RS2,RD
					when others =>	  ALU_Opcode <= "00"; -- explicitly defined for safety and predictability
				end case;
			when 2 => -- ADDI1 RS1,RD,INP1
				ALU_Opcode <= "00";
			when 3 => -- SUBI1 RS1,RD,INP1
				ALU_Opcode <= "01";
			when 4 => -- ANDI1 RS1,RD,INP1
				ALU_Opcode <= "10";
			when 5	 => -- ORI1  RS1,RD,INP1
				ALU_Opcode <= "11";
			when 6 => -- ADDI2 RS1,RD,INP2
				ALU_Opcode <= "00";
			when 7 => -- SUBI2 RS1,RD,INP2
				ALU_Opcode <= "01";
			when 8 => -- ANDI2 RS1,RD,INP2
				ALU_Opcode <= "10";
			when 9  => -- ORI2 RS1,RD,INP2
				ALU_Opcode <= "11";
			when 10   => -- MOV  RS1,RD (Immediate at 0)
				ALU_Opcode <= "00";
			when 11 => -- SREG1 RD,INP1
				ALU_Opcode <= "10"; -- it is supposed that INP1 is always equal to the content of INP2 and exploit this identity not to modify the Immediate content (INP1 AND INP2 = INP1)
			when 12 => -- SREG2 RD,INP2
				ALU_Opcode <= "10"; -- same as for SREG1
			when 13 => -- SMEM2 RS1,RS2,INP2
				ALU_Opcode <= "00"; -- it is necessary to add the content of the Reg and the Immediate to provide the Mem.Address
			when 14 => -- LMEM1 RS1,RD,INP1
				ALU_Opcode <= "00"; -- same as for SMEM2
			when 15 => -- LMEM2 RS1,RD,INP2
				ALU_Opcode <= "00"; -- same as for SMEM2
			when others => 		-- explicitly defined for safety and predictability
				ALU_Opcode <= "00";
		end case;
	end process;

	RF_en <= RF_en_DEC or RF_en_WB;

end Beh;
