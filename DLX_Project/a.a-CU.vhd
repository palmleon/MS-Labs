library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myGlobals.all;

entity CU is
  port (		 
       RF_en  		 : out std_logic;        -- enables the register file (combination of the RF_en at Decode Stage and at WB Stage)
       -- FIRST PIPE STAGE OUTPUTS (IF)
	   IF_en  		 : out std_logic;		 -- enables the PC, the NPC and the Instruction Memory
       -- SECOND PIPE STAGE OUTPUTS (DEC)
	   RF_rd1 		 : out std_logic;        -- enables the read port 1 of the register file
       RF_rd2 		 : out std_logic;        -- enables the read port 2 of the register file
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
	   reg_ALU_en	 : out std_logic;		 -- enables the ALU register
	   -- FOURTH PIPE STAGE OUTPUTS (MEM)
	   branch_sel	 : out std_logic;		 -- selects whether a branch is taken or not
	   reg_delay3_en : out std_logic;		 -- enables the third delay register for the write address input
	   DMem_en		 : out std_logic;        -- enables the read-out of the memory
       DMem_wr		 : out std_logic;        -- enables the write-in of the memory
	   reg_LMD_en	 : out std_logic;		 -- enables the Load Memory Data register
	   -- FIFTH PIPE STAGE OUTPUTS (WB)
	   WB_sel		 : out std_logic;		 -- selector for the WB mux
	   RF_wr		 : out std_logic;		 -- enables the write port of the register file
       -- INPUTS
       OPCODE : in  std_logic_vector(OPCSIZE - 1 downto 0);
       FUNC   : in  std_logic_vector(FUNCSIZE - 1 downto 0);              
       Clk 	  : in std_logic;
       Rst    : in std_logic);               -- Active High
end CU;

architecture Beh of CU is
	constant NCtrlSignals: integer := 20;
	constant CW_SIZE: integer := NCtrlSignals + ALUOPCSIZE;
	constant NOpcodes: integer := 62;
	constant NDecodeStageSignals: integer := 8;
	constant NExeStageSignals: integer := 4 + ALUOPCSIZE;	
	constant NMemStageSignals: integer := 5;
	constant NWBStageSignals: integer  := 3;

	type MemoryType is array(0 to NOpcodes-1) of std_logic_vector(NCtrlSignals-1 downto 0);
  	constant LUT: MemoryType := -- the rows at "ZZZZZ...Z" have not been defined yet
				("11101110101101000111",  -- 0x00: R-TYPE
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x01
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x02
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x03
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x04
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x05
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x06
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x07
				 "11011101111101000111",  -- 0x08: ADDI R1, R2, IMM
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x09
				 "11011101111101000111",  -- 0x0a: SUBI R1, R2, IMM
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x0b
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x0c
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x0d
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x0e
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x0f
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x10
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x11
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x12
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x13
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x14
				 "00000000000000000000",  -- 0x15: NOP
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x16
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x17
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x18
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x19
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x1a 
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x1b
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x1c
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x1d
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x1e
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x1f
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x20
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x21
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x22
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x23
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x24
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x25
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x26
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x27
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x28
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x29
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x2a
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x2b
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x2c
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x2d
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x2e
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x2f
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x30
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x31
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x32
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x33
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x34
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x35
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x36
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x37
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x38
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x39
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x3a
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x3b
				 "ZZZZZZZZZZZZZZZZZZZZ",  -- 0x3c
				 "ZZZZZZZZZZZZZZZZZZZZ"); -- 0x3d
	signal	 CW:			 				std_logic_vector(CW_SIZE-1 downto 0);											 -- Full Control Word (not a register, used for the sake of simplicity)
	signal	 LUTWord:						std_logic_vector(NCtrlSignals-1 downto 0);								 		 -- Output of the LUT (always available)
	signal	 CurrExeWord, NextExeWord: 		std_logic_vector(CW_SIZE-NDecodeStageSignals-1 downto 0);						 -- Used to propagate signals to Execution Stage
	signal	 CurrMemWord, NextMemWord:		std_logic_vector(CW_SIZE-NDecodeStageSignals-NExeStageSignals-1 downto 0); 	 	 -- Used to propagate signals to Mem Stage
	signal	 CurrWBWord, NextWBWord:		std_logic_vector(CW_SIZE-NDecodeStageSignals-NExeStageSignals-NMemStageSignals-1 downto 0); -- Used to propagate signals to WB Stage
	signal	 ALUOpc:						std_logic_vector(ALUOPCSIZE-1 downto 0);										     -- Output of the combinational logic that computes the ALU Opcode
	signal   RF_en_DEC, RF_en_WB: 			std_logic;																		 -- RF enable, driven at Decode and WB Stage
begin

	IF_en <= '1'; -- TODO check whether there are cases where the PC must not be updated

	LUTWord <= LUT(to_integer(unsigned(OPCODE)));										-- Instr.Opcode corresponds to the Read Address of the LUT (it is guaranteed that Opcode <= NOpcodes in binary) 
	CW			 	<= LUTWord & ALUOpc;							-- Building the complete CW
	RF_en_DEC		<= CW(CW_SIZE-1);								-- Signals to be sent at Decode Stage
	RF_rd1 			<= CW(CW_SIZE-2);
	RF_rd2 			<= CW(CW_SIZE-3);
	waddr_sel 	 	<= CW(CW_SIZE-4);
	reg_delay1_en 	<= CW(CW_SIZE-5);
	A_en			<= CW(CW_SIZE-6);
	B_en			<= CW(CW_SIZE-7);
	Imm_en			<= CW(CW_SIZE-8);
	NextExeWord		<= CW(CW_SIZE-NDecodeStageSignals-1 downto 0); 	-- CW signals to be propagated at Exe Stage and beyond
	ALUinA_sel		<= CurrExeWord(CW_SIZE-NDecodeStageSignals-1);	-- Signals to be sent at Exe Stage
	ALUinB_sel		<= CurrExeWord(CW_SIZE-NDecodeStageSignals-2);
	reg_delay2_en	<= CurrExeWord(CW_SIZE-NDecodeStageSignals-3);
	reg_ALU_en		<= CurrExeWord(CW_SIZE-NDecodeStageSignals-4);
	ALUop_sel		<= CurrExeWord(ALUOPCSIZE-1 downto 0);
	NextMemWord		<= CurrExeWord(CW_SIZE-NDecodeStageSignals-NExeStageSignals+ALUOPCSIZE-1 downto ALUOPCSIZE); -- CW signals to be propagated at Mem Stage and beyond
	branch_sel	 	<= CurrMemWord(CW_SIZE-NDecodeStageSignals-NExeStageSignals-1);
	reg_delay3_en 	<= CurrMemWord(CW_SIZE-NDecodeStageSignals-NExeStageSignals-2);
	DMem_en			<= CurrMemWord(CW_SIZE-NDecodeStageSignals-NExeStageSignals-3);
	DMem_wr			<= CurrMemWord(CW_SIZE-NDecodeStageSignals-NExeStageSignals-4);
	reg_LMD_en	 	<= CurrMemWord(CW_SIZE-NDecodeStageSignals-NExeStageSignals-5);
	NextWBWord		<= CurrMemWord(CW_SIZE-NDecodeStageSignals-NExeStageSignals-NMemStageSignals-1 downto 0);	 -- CW signals to be propagated at WB Stage and beyond
	RF_en_WB		<= CurrWBWord(CW_SIZE-NDecodeStageSignals-NExeStageSignals-NMemStageSignals-1);
	WB_sel			<= CurrWBWord(CW_SIZE-NDecodeStageSignals-NExeStageSignals-NMemStageSignals-2);
	RF_wr			<= CurrWBWord(CW_SIZE-NDecodeStageSignals-NExeStageSignals-NMemStageSignals-3);

	SynchProc: process(clk)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				CurrExeWord <= (others => '0');
				CurrMemWord <= (others => '0');
				CurrWBWord	<= (others => '0');
			else
				CurrExeWord <= NextExeWord;
				CurrMemWord <= NextMemWord;
				CurrWBWord	<= NextWBWord;
			end if;
		end if;
	end process;

	ALUOpcComputation: process(OPCODE, FUNC)
	begin
		case to_integer(unsigned(OPCODE)) is
			when 0 => -- R-TYPE
				case to_integer(unsigned(FUNC)) is 
					when 32 => ALUOpc <= "0"; -- ADD R1, R2, R3
					when 33 => ALUOpc <= "0"; -- ADDU R1, R2, R3
					when 34 => ALUOpc <= "1"; -- SUB R1, R2, R3
					when 35 => ALUOpc <= "1"; -- SUBU R1, R2, R3
					when others =>	ALUOpc <= "0"; -- explicitly defined for safety and predictability
				end case;
			when 8 => ALUOpc <= "0";-- ADDI R1, R2, IMM
			when 10 => ALUOpc <= "1";-- SUBI R1, R2, IMM
			when others =>	ALUOpc <= "0";	-- explicitly defined for safety and predictability
		end case;
	end process;

	RF_en <= RF_en_DEC or RF_en_WB;

end Beh;
