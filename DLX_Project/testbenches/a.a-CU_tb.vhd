library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myGlobals.all;

entity cu_tb is
end cu_tb;

architecture test of cu_tb is

    component CU is
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
		   Rst    : in std_logic);               -- Active Low
	end component CU;
	
	constant ClkPeriod: time := 20 ns;
	constant NTest: integer := -- TODO to be defined
	constant NCtrlSignals: integer := 20;
	constant CW_SIZE: integer := NCtrlSignals + ALUOPCSIZE;
	constant NOpcodes: integer := 62;
	constant NRTypeInstr: integer := 62;
	constant NDecodeStageSignals: integer := 8;
	constant NExeStageSignals: integer := 4 + ALUOPCSIZE;	
	constant NMemStageSignals: integer := 5;
	constant NWBStageSignals:  integer := 3;
	type MemoryType is array(0 to NOpcodes-1) of std_logic_vector(NCtrlSignals-1 downto 0);
  	constant LUT: MemoryType := -- copy of the LUT of the HW CU
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


	type	 ALUOpcIType is array(0 to NOpcodes-1) of std_logic_vector(ALUOPCSIZE-1 downto 0);	
	type	 ALUOpcRType is array(0 to NRTypeInstr-1) of std_logic_vector(ALUOPCSIZE-1 downto 0);					
	constant ALUOpcR: ALUOpcRType := 	-- pseudo-memory containing all the ALUOpcodes related to R-Type instr. (used as reference)
			("Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z",
			 "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z",
			 "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z",
			 "Z", "0", "0", "1", "1", "Z", "Z", "Z", "Z", "Z",
			 "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z",
			 "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z",
			 "Z", "Z");	
	constant ALUOpcI: ALUOpcIType :=  -- pseudo-memory containing all the ALUOpcodes  related to I-Type instr. (the entry related to R-Type instruction is meaningless)
			("Z", "Z", "Z", "Z", "Z", "Z", "Z", "0", "Z", "1",
			 "Z", "Z", "Z", "Z", "0", "Z", "Z", "Z", "Z", "Z",
			 "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z",
			 "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z",
			 "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z",
			 "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z", "Z",
			 "Z", "Z");	
	
    signal clk_s: std_logic;
    signal rst_s: std_logic := '1';
    signal opcode_i: 		std_logic_vector(OPCSIZE - 1 downto 0) := (others => '0');							-- first fetched instruction is a NOP
	signal opcode_iminus1: 	std_logic_vector(OPCSIZE - 1 downto 0) := (others => '0');							-- instruction fetched 1 clk cycle  before
	signal opcode_iminus2: 	std_logic_vector(OPCSIZE - 1 downto 0) := (others => '0');							-- instruction fetched 2 clk cycles before
	signal opcode_iminus3: 	std_logic_vector(OPCSIZE - 1 downto 0) := (others => '0');							-- instruction fetched 3 clk cycles before
	signal func_i: 			std_logic_vector(FUNCSIZE - 1 downto 0) := (others => '0');							-- func at the current clk cycle
	signal func_iminus1:	std_logic_vector(FUNCSIZE - 1 downto 0) := (others => '0');							-- func at the previous clk cycle
	signal ALU_opcode, expected_ALU_opcode:				std_logic_vector(ALUOPCSIZE-1 downto 0);				-- expected ALU opcode at Exe Stage
	signal decode_signals, expected_decode_signals: 	std_logic_vector(NDecodeStageSignals-2 downto 0);		-- actual and expected signals at Decode Stage (RF_en_Dec not observable)
	signal exe_signals, expected_exe_signals:			std_logic_vector(NExeStageSignals-ALUOPCSIZE-1 downto 0);	-- actual and expected signals at Exe Stage
	signal mem_signals, expected_mem_signals:			std_logic_vector(NMemStageSignals-1 downto 0);				-- actual and expected signals at Mem Stage
	signal wb_signals, expcted_wb_signals: 				std_logic_vector(NWBStageSignals-2 downto 0);				-- actual and expected signals at WB STage (RF_en_WB not observable)
	signal output_mem_i, output_mem_iminus1:			std_logic_vector(CW_SIZE-ALUOPCSIZE-1 downto 0);			-- LUT content related to instruction decoded 0 and 1 clk cycle before
	signal output_mem_iminus2, output_mem_iminus3:		std_logic_vector(CW_SIZE-ALUOPCSIZE-1 downto 0);			-- LUT content related to instruction decoded 2 and 3 clk cycle before
	signal RF_en_s, IF_en_s, RF_rd1_s, RF_rd2_s:		std_logic;		-- output signals of the CU
	signal waddr_sel_s, reg_delay1_en_s,  A_en_s:		std_logic;
	signal B_en_s, Imm_en_s, ALUinA_sel_s, ALUinB_sel_s:std_logic;
	signal ALU_opcode, reg_delay2_en_s, reg_ALU_en_s:	std_logic;
	signal ranch_sel_s, reg_delay3_en_s, DMem_en_s:		std_logic;
	signal DMem_wr_s, reg_LMD_en_s, WB_sel_s, RF_wr_s:	std_logic;

begin

       -- instance of DLX CU
       DUT: CU
       		port map (
				RF_en  			=> RF_en_s,
			   	IF_en   		=> IF_en_s,
			   	RF_rd1 			=> RF_rd1_s,
			   	RF_rd2 			=> RF_rd2_s,
			   	waddr_sel 	 	=> waddr_sel_s,
			   	reg_delay1_en	=> reg_delay1_en_s,
			   	A_en			=> A_en_s,
			   	B_en			=> B_en_s,
			  	Imm_en			=> Imm_en_s,
			   	ALUinA_sel		=> ALUinA_sel_s,
			   	ALUinB_sel		=> ALUinB_sel_s,
			   	ALUop_sel		=> ALU_opcode,
			   	reg_delay2_en 	=> reg_delay2_en_s,
			   	reg_ALU_en		=> reg_ALU_en_s,
			  	branch_sel		=> branch_sel_s,
			   	reg_delay3_en 	=> reg_delay3_en_s,
			   	DMem_en			=> DMem_en_s,
			   	DMem_wr			=> DMem_wr_s,
			   	reg_LMD_en	 	=> reg_LMD_en_s,
			   	WB_sel			=> WB_sel_s,
			   	RF_wr		 	=> RF_wr_s,
                -- INPUTS
                OPCODE => opcode_i,
                FUNC   => func_i,            
                Clk    => clk_s,
                Rst    => rst_s
               );

		ClkProc: process
		begin
			Clock <= '0';
			wait for ClkPeriod/2;
			Clock <= '1';
			wait for ClkPeriod/2;
		end process;	

		PrecOpcProc: process(Clock)	-- process defined to update opcode(i-1) and opcode(i-2), where i is the current time instant
		begin
			if (rising_edge(Clock)) then
				if (Reset = '0') then
					opcode_iminus1 	<= (others => '0');
					func_iminus1 	<= (others => '0');
					opcode_iminus2 	<= (others => '0');
					opcode_iminus3 	<= (others => '0');					
				else
					opcode_iminus1 	<= opcode_i;
					func_iminus1 	<= func_i;
					opcode_iminus2 	<= opcode_iminus1;
					opcode_iminus3 	<= opcode_iminus2;
				end if;
			end if;
		end process;

		ExpectedALUProc: process(cu_opcode_iminus1, func_iminus1)	-- process defined to compute the expected ALU opcode (which is the opcode related to the instruction decoded one clk cycle before)
		begin
			if (cu_opcode_iminus1 = "000000") then -- R-Type instruction
				expected_ALU_opcode <= ALUOpcR(to_integer(unsigned(func_iminus1)));
			else
				expected_ALU_opcode <= ALUOpcI(to_integer(unsigned(cu_opcode_iminus1)));
			end if;
		end process;		

		TestProc: process
			function print(arg: std_logic_vector) return string is		-- function used to print expected results
					constant arg_vect: std_logic_vector(0 to arg'length-1) := arg; -- used because arg indexes are unknown
					constant bit_pos: integer := 2;
					variable vector_bit_image: string(1 to 3);
					variable bit_to_print: character; 
				begin
					if (arg'length > 0) then
						vector_bit_image := std_logic'image(arg_vect(0));	-- extract the bit from the vector (in '1' or '0' format)
						bit_to_print := vector_bit_image(bit_pos);
						return bit_to_print & print(arg_vect(1 to arg'length-1));
					else
						return "";
					end if;
			end function print;
			procedure verify_results (TestCnt : in integer) is
		   		begin
					wait until falling_edge(Clock);	-- sample on the falling edge
					assert decode_signals 	= expected_decode_signals report "Test " & integer'image(TestCnt) & "a - expected: " & print(expected_decode_signals) & ", actual: " & print(decode_signals);
					assert exe_signals 		= expected_exe_signals report "Test " & integer'image(TestCnt) & "b - expected: " & print(expected_exe_signals)& ", actual: " & print(exe_signals);
					assert mem_signals 		= expected_mem_signals report "Test " & integer'image(TestCnt) & "c - expected: " & print(expected_mem_signals)& ", actual: " & print(mem_signals);
					assert wb_signals 		= expected_wb_signals report "Test " & integer'image(TestCnt) & "c - expected: " & print(expected_wb_signals)& ", actual: " & print(wb_signals);
					assert ALU_opcode		= expected_ALU_opcode report "Test " & integer'image(TestCnt) & "d - expected: " & print(expected_ALU_opcode)& ", actual: " & print(ALU_opcode);
					assert RF_en_s			= expected_RF_en report "Test " & integer'image(TestCnt) & "e - expected: " & print(expected_RF_en)& ", actual: " & print(RF_en_s);				
			end procedure verify_results;
		begin
			-- at each clk cycle, we provide a new Instruction on the rising edge of the Clock (fetching it from the IR), and sample all the signals (i.e. in all the Pipeline Stages) on the falling edge
			Reset <= '0';
			wait until rising_edge(clock); 
			Reset <= '1';
			for i in 1 to Ntest loop
				opcode_i <= input_opcode(i);
		    	func_i 	 <= input_func(i);
				verify_results(i);
				wait until rising_edge(Clock);
			end loop;
		    wait;
        end process;

		decode_signals 	<= RF_rd1_s & RF_rd2_s & waddr_sel_s & reg_delay1_en_s & A_en_s & B_en_s & Imm_en_s;
		exe_signals		<= ALUinA_sel_s & ALUinB_sel_s & reg_delay2_en_s & reg_ALU_en_s;
		mem_signals		<= branch_sel_s & reg_delay3_en_s & DMem_en_s & DMem_wr_s & reg_LMD_en_s;
		wb_signals		<= WB_sel_s & RF_wr_s;
		expected_RF_en  <= output_mem_i(NCtrlSignals-1) or output_mem_iminus3(CW_SIZE-NDecodeStageSignals-NExeStageSignals+ALUOPCSIZE-NMemStageSignals-1);
		expected_decode_signals <= output_mem_i(NCtrlSignals-2 downto NCtrlSignals-NDecodeStageSignals);
		expected_exe_signals	<= output_mem_iminus1(NCtrlSignals-NDecodeStageSignals-1 downto NCtrlSignals-NDecodeStageSignals-NExeStageSignals+ALUOPCSIZE);
		expected_mem_signals	<= output_mem_iminus2(NCtrlSignals-NDecodeStageSignals+ALUOPCSIZE-NExeStageSignals-1 downto NCtrlSignals-NDecodeStageSignals-NExeStageSignals+ALUOPCSIZE-NMemStageSignals);
		expected_WB_signals		<= output_mem_iminus3(NCtrlSignals-NDecodeStageSignals-NExeStageSignals+ALUOPCSIZE-NMemStageSignals-2 downto 0);
		output_mem_i		<= LUT(to_integer(unsigned(opcode_i)));
		output_mem_iminus1  <= LUT(to_integer(unsigned(opcode_iminus1)));
		output_mem_iminus2  <= LUT(to_integer(unsigned(opcode_iminus2)));
		output_mem_iminus3  <= LUT(to_integer(unsigned(opcode_iminus3)));

end test;
