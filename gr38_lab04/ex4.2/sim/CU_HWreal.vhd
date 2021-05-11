library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;
--use work.all;

entity CU_HW is
  generic (
    FUNC_SIZE          :     integer := FUNC_SIZE;  -- Func Field Size for R-Type Ops
    OPCODE_SIZE        :     integer := OP_CODE_SIZE;  -- Op Code Size
    ALU_OPC_SIZE       :     integer := ALU_OPC_SIZE;  -- ALU Op Code Word Size
    IR_SIZE            :     integer := 32;  -- Instruction Register Size    
    CW_SIZE            :     integer := 13); -- Control Word Size
  port (
    clk                : in  std_logic;  -- Clock
    rst                : in  std_logic;  -- Reset:Active-Low
    -- Instruction Register
    IR_IN              : in  std_logic_vector(IR_SIZE - 1 downto 0);  
	
	-- First Stage Control Signals
	RF1, RF2		   : out std_logic;  -- Read1 Enable and Read2 Enable for RegFile
	EN1		   		   : out std_logic;  -- Enable for RegFile and Pipeline Registers
	
	-- Second Stage Control Signals
	S1, S2			   : out std_logic;  -- Multiplexer selectors
	ALU_OPC			   : out std_logic_vector(ALU_OPC_SIZE-1 downto 0); -- ALU Opcode
	EN2				   : out std_logic;  -- Enable for Pipeline Registers

	-- Third Stage Control Signals
	RM, WM, EN3		   : out std_logic;  -- R/W for Data Memory and Enable for Data Memory and Out Register
	S3				   : out std_logic;	 -- Multiplexer selector 
	WF1				   : out std_logic); -- Write Enable for RegFile (used for Writeback)
end CU_HW;

architecture Beh of CU_HW is
	constant NOpcodes: integer := 16;
	constant NFirstStageSignals := 3;
	constant NSecondStageSignals := ALU_OPC_SIZE + 3;
  	constant LUT: array(0 to NOpcodes-1) of std_logic_vector(CW_SIZE-ALU_OPC_SIZE-1 downto 0) := 
				("00000000000"; -- NOP
				 "11110100111"; -- RTYPE (ADD, SUB, AND, OR share the same signals but the ALU Opcode)
				 "01100100111"; -- ADDI1
				 "01100100111"; -- SUBI1 (Because of the DP structure, we suppose that SUBI1 executes R[RB] = INP1 - R[RA] (The ALU cannot invert operands)
				 "01100100111"; -- ANDI1
				 "01100100111"; -- ORI1
				 "10111100111"; -- ADDI2
				 "10111100111"; -- SUBI2
				 "10111100111"; -- ANDI2
				 "10111100111"; -- ORI2
				 "10111100111"; -- MOV (actually, it is identical to an ADDI2, but it is guaranteed that INP2 = 0)
				 "00101100111"; -- SREG1 
				 "00101100111"; -- SREG2 (actually, SREG1 is identical to SREG2)
				 "10111101100"; -- SMEM2 -- TODO verify if RF2 = 0
				 "01100110101"; -- LMEM1
				 "10111110101");-- LMEM2
	signal   IR_OPC:						std_logic_vector(OPCODE_SIZE-1 downto 0);										 -- Instr.Opcode
	signal	 IR_FUNC:						std_logic_vector(FUNC_SIZE-1 downto 0);											 -- Instr.Func Field (meaningful for R-Type only)
	signal	 CW:			 				std_logic_vector(CW_SIZE-1 downto 0);											 -- Full Control Word (not a register, used for the sake of simplicity)
	signal	 LUTWord:						std_logic_vector(CW_SIZE-ALU_OPC_SIZE-1 downto 0);								 -- Output of the LUT (always available)
	signal	 CurrCUExeReg, NextCUExeReg: 	std_logic_vector(CW_SIZE-NFirstStageSignals-1 downto 0);						 -- Used to propagate signals to Execution and Mem (+ WriteBack) stages
	signal	 CurrCUMemWBReg, NextCUMemWBReg:std_logic_vector(CW_SIZE-NFirstStageSignals-NSecondStageSignals-1 downto 0); 	 -- Used to propagate signals to Mem (+ WriteBack) Stage
	signal	 ALU_Opcode:					std_logic_vector(ALU_OPC_SIZE-1 downto 0);										 -- Output of the combinational logic that computes the ALU Opcode
begin
	IR_OPC  <= IR_IN(IR_SIZE-1 downto IR_SIZE-OPCODE_SIZE);														-- Extraction of Instr.Opcode
	IR_FUNC	<= IR_IN(FUNC_SIZE-1 downto 0);																		-- Extraction of Instr.Func Field
	LUTWord <= LUT(to_integer(to_unsigned(IR_OPC));										-- Instr.Opcode corresponds to the Read Address of the LUT (it is guaranteed that Opcode <= NOpcodes in binary) 
	CW	<= LUTWord(CW_SIZE-ALU_OPC_SIZE-1 downto 5) & ALU_Opcode & LUTWord(4 downto 0);							-- Building the complete CW
	RF1 <= CW(12);
	RF2 <= CW(11);
	EN1 <= CW(10);
	NextCUExeReg <= CW(CW_SIZE-NFirstStageSignals-1 downto 0); -- only a fraction of the CW signals are propagated (the others are actually used at Decode Stage)
	S1  <= CurrCUExeReg(9);
	S2  <= CurrCUExeReg(8);
	ALU_OPC <= CurrCUExeReg(7 downto 6);
	EN2	<= CurrCUExeReg(5);
	NextCUMemWBReg <= CurrCUExeReg(4 downto 0); -- only a fraction of the CUExeReg signals are propagated (the others are actually used at Ex Stage)
	RM 	<= CurrCUMemWBReg(4);
	WM	<= CurrCUMemWBReg(3);
	EN3	<= CurrCUMemWBReg(2);
	S3	<= CurrCUMemWBReg(1);
	WF1	<= CurrCUMemWBReg(0);

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
	end process;

	ALUOpcComputation: process(IR_OPC, IR_FUNC)
	begin
		case IR_OPC is
			when NOP => -- NOP
				ALU_Opcode <= "00";
			when RTYPE => -- R-Type
				case IR_FUNC is
					when RTYPE_ADD => ALU_Opcode <= "00"; -- ADD RS1,RS2,RD
					when RTYPE_SUB => ALU_Opcode <= "01"; -- SUB RS1,RS2,RD
					when RTYPE_AND => ALU_Opcode <= "10"; -- AND RS1,RS2,RD
					when RTYPE_OR  => ALU_Opcode <= "11"; -- OR  RS1,RS2,RD
					when others =>	  ALU_Opcode <= "00"; -- explicitly defined for safety and predictability
				end case;
			when ITYPE_ADDI1 => -- ADDI1 RS1,RD,INP1
				ALU_Opcode <= "00";
			when ITYPE_SUBI1 => -- SUBI1 RS1,RD,INP1
				ALU_Opcode <= "01";
			when ITYPE_ANDI1 => -- ANDI1 RS1,RD,INP1
				ALU_Opcode <= "10";
			when ITYPE_ORI1	 => -- ORI1  RS1,RD,INP1
				ALU_Opcode <= "11";
			when ITYPE_ADDI2 => -- ADDI2 RS1,RD,INP2
				ALU_Opcode <= "00";
			when ITYPE_SUBI2 => -- SUBI2 RS1,RD,INP2
				ALU_Opcode <= "01";
			when ITYPE_ANDI2 => -- ANDI2 RS1,RD,INP2
				ALU_Opcode <= "10";
			when ITYPE_ORI2  => -- ORI2 RS1,RD,INP2
				ALU_Opcode <= "11";
			when ITYPE_MOV   => -- MOV  RS1,RD (Immediate at 0)
				ALU_Opcode <= "00";
			when ITYPE_SREG1 => -- SREG1 RD,INP1
				ALU_Opcode <= "10"; -- it is supposed that INP1 is always equal to the content of INP2 and exploit this identity not to modify the Immediate content (INP1 AND INP2 = INP1)
			when ITYPE_SREG2 => -- SREG2 RD,INP2
				ALU_Opcode <= "10"; -- same as for SREG1
			when ITYPE_SMEM  => -- SMEM2 RS1,RS2,INP2
				ALU_Opcode <= "00"; -- it is necessary to add the content of the Reg and the Immediate to provide the Mem.Address
			when ITYPE_LMEM1 => -- LMEM1 RS1,RD,INP1
				ALU_Opcode <= "00"; -- same as for SMEM2
			when ITYPE_LMEM2 => -- LMEM2 RS1,RD,INP2
				ALU_Opcode <= "00"; -- same as for SMEM2
			when others => 		-- explicitly defined for safety and predictability
				ALU_Opcode <= "00";
		end case;
	end process;

end Beh;
