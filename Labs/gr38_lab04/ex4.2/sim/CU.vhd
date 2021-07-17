library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;
--use work.all;

entity CU is
  port (
       -- FIRST PIPE STAGE OUTPUTS
       RF1    : out std_logic;               -- enables the read port 1 of the register file
       RF2    : out std_logic;               -- enables the read port 2 of the register file
	   EN1    : out std_logic;               -- enables the register file and the pipeline registers
       -- SECOND PIPE STAGE OUTPUTS
       S1     : out std_logic;               -- input selection of the first multiplexer
       S2     : out std_logic;               -- input selection of the second multiplexer
	   EN2    : out std_logic;               -- enables the pipe registers
       ALU1   : out std_logic;               -- alu control bit
       ALU2   : out std_logic;               -- alu control bit
       -- THIRD PIPE STAGE OUTPUTS
       RM     : out std_logic;               -- enables the read-out of the memory
       WM     : out std_logic;               -- enables the write-in of the memory
	   EN3    : out std_logic;               -- enables the memory and the pipeline registers
       S3     : out std_logic;               -- input selection of the multiplexer
	   WF1    : out std_logic;               -- enables the write port of the register file
       -- INPUTS
       OPCODE : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0);
       FUNC   : in  std_logic_vector(FUNC_SIZE - 1 downto 0);              
       Clk 	  : in std_logic;
       Rst    : in std_logic);                  -- Active Low
end CU;

architecture Beh of CU is
	constant CW_SIZE: integer := 13;
	constant ALU_OPC_SIZE: integer := 2;
	constant NOpcodes: integer := 16;
	constant NFirstStageSignals: integer := 3;
	constant NSecondStageSignals: integer := ALU_OPC_SIZE + 3;
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
begin
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

end Beh;
