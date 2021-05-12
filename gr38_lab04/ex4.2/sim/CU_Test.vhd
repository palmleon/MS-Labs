library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;

entity cu_test is
end cu_test;

architecture TEST of cu_test is

    component CU
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
              Clk : in std_logic;
              Rst : in std_logic);                  -- Active Low
    end component;
	
	constant NOpcodes: integer := 16;
	constant CW_SIZE: integer := 13;
	constant ALU_OPC_SIZE: integer := 2;
	constant NFirstStageSignals: integer := 3;
	constant NSecondStageSignals: integer := 5;
	type	 MemoryType is array(0 to NOpcodes-1) of std_logic_vector(CW_SIZE-ALU_OPC_SIZE-1 downto 0);	 -- types defined for comparison values
	type	 ALUOpcIType is array(0 to NOpcodes-1) of std_logic_vector(ALU_OPC_SIZE-1 downto 0);	
	type	 ALUOpcRType is array(0 to 3) of std_logic_vector(ALU_OPC_SIZE-1 downto 0);					
  	constant LUT: MemoryType := -- copy of the LUT inside the Hardwired CU
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
				 "10111101100", -- SMEM2
				 "01100110101", -- LMEM1
				 "10111110101");-- LMEM2
	constant ALUOpcR: ALUOpcRType := ("00", "01", "10", "11");	-- pseudo-memory containing all the ALUOpcodes related to R-Type instr. (used as reference)
	constant ALUOpcI: ALUOpcIType := ("00", "ZZ", "00", "01", "10", "11", "00", "01", "10", "11", "00", "10", "10", "00", "00", "00"); -- pseudo-memory containing all the ALUOpcodes related to I-Type instr. (the entry related to R-Type instruction is meaningless)
	constant ClkPeriod: time := 20 ns;
    signal Clock: std_logic;
    signal Reset: std_logic := '1';
    signal cu_opcode_i: 		std_logic_vector(OP_CODE_SIZE - 1 downto 0) := (others => '0');										-- first fetched instruction is a NOP
	signal cu_opcode_iminus1: 	std_logic_vector(OP_CODE_SIZE - 1 downto 0) := (others => '0');										-- instruction fetched at the previous clk cycle
	signal cu_opcode_iminus2: 	std_logic_vector(OP_CODE_SIZE - 1 downto 0) := (others => '0');										-- instruction fetched 2 clk cycles before
	signal cu_func_i: 			std_logic_vector(FUNC_SIZE - 1 downto 0) 		:= (others => '0');									-- func at the current clk cycle
	signal func_iminus1:		std_logic_vector(FUNC_SIZE - 1 downto 0) := (others => '0');										-- func at the previous clk cycle				
    signal EN1_i, RF1_i, RF2_i, WF1_i, EN2_i, S1_i, S2_i, ALU1_i, ALU2_i, EN3_i, RM_i, WM_i, S3_i: std_logic := '0';
	signal expected_ALU_opcode:							std_logic_vector(ALU_OPC_SIZE-1 downto 0);																-- expected ALU opcode at Exe Stage
	signal decode_signals, expected_decode_signals: 	std_logic_vector(NFirstStageSignals-1 downto 0);														-- actual and expected signals at Decode Stage
	signal exe_signals, expected_exe_signals:			std_logic_vector(NSecondStageSignals-ALU_OPC_SIZE-1 downto 0);											-- actual and expected signals at Exe Stage
	signal memWB_signals, expected_memWB_signals:		std_logic_vector(CW_SIZE-NFirstStageSignals-NSecondStageSignals-1 downto 0);							-- actual and expected ignals at Mem+WB Stage
	signal output_mem_i, output_mem_iminus1, output_mem_iminus2:	std_logic_vector(CW_SIZE-ALU_OPC_SIZE-1 downto 0);											-- LUT content related to instruction decoded 0, 1 and 2 clk cycle before

begin

       -- instance of DLX CU
       DUT: CU
       port map (
                 -- OUTPUTS
                 EN1    => EN1_i,
                 RF1    => RF1_i,
                 RF2    => RF2_i,
                 WF1    => WF1_i,
                 EN2    => EN2_i,
                 S1     => S1_i,
                 S2     => S2_i,
                 ALU1   => ALU1_i,
                 ALU2   => ALU2_i,
                 EN3    => EN3_i,
                 RM     => RM_i,
                 WM     => WM_i,
                 S3     => S3_i,
                 -- INPUTS
                 OPCODE => cu_opcode_i,
                 FUNC   => cu_func_i,            
                 Clk    => Clock,
                 Rst    => Reset
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
					cu_opcode_iminus1 	<= (others => '0');
					func_iminus1 		<= (others => '0');
					cu_opcode_iminus2 	<= (others => '0');
				else
					cu_opcode_iminus1 	<= cu_opcode_i;
					func_iminus1 		<= cu_func_i;
					cu_opcode_iminus2 	<= cu_opcode_iminus1;
				end if;
			end if;
		end process;

		ExpectedALUProc: process(cu_opcode_iminus1, func_iminus1)	-- process defined to compute the expected ALU opcode (which is the opcode related to the instruction decoded one clk cycle before)
		begin
			if (cu_opcode_iminus1 = RTYPE) then
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
					wait for ClkPeriod/2;	-- sample on the falling edge
					assert decode_signals 	= expected_decode_signals report "Test " & integer'image(TestCnt) & "a - expected: " & print(expected_decode_signals) & ", actual: " & print(decode_signals);
					assert exe_signals 		= expected_exe_signals report "Test " & integer'image(TestCnt) & "b - expected: " & print(expected_exe_signals)& ", actual: " & print(exe_signals);
					assert memWB_signals 	= expected_memWB_signals report "Test " & integer'image(TestCnt) & "c - expected: " & print(expected_memWB_signals)& ", actual: " & print(memWB_signals);
					assert ALU1_i & ALU2_i 	= expected_ALU_opcode report "Test " & integer'image(TestCnt) & "d - expected: " & print(expected_ALU_opcode)& ", actual: " & print(ALU1_i & ALU2_i);
					wait for ClkPeriod/2;	-- go the next rising edge
			end procedure verify_results;	
			variable TestCnt: integer := 1;
		begin
			-- in the following Tests, we provide a new Instruction on the rising edge of the Clock (fetching it from the IR), and sample all the signals (i.e. in all the Pipeline Stages) on the falling edge
			Reset <= '0';
			wait until rising_edge(clock); 
			Reset <= '1';
			-- At the moment, the IR is sending out a NOP (opcode = "000000")
		    -- ADD RS1,RS2,RD -> Rtype
		    cu_opcode_i <= RTYPE;
		    cu_func_i <= RTYPE_ADD;
			verify_results(TestCnt);
			TestCnt := TestCnt + 1;

		    -- ADDI1 RS1,RD,INP1 -> Itype
		    cu_opcode_i <= ITYPE_ADDI1;
			verify_results(TestCnt);
			TestCnt := TestCnt + 1;

			-- ADDI2 RS1,RD,INP2
			cu_opcode_i <= ITYPE_ADDI2;
			verify_results(TestCnt);
			TestCnt := TestCnt + 1;

			-- MOV  RS1,RD
			cu_opcode_i <= ITYPE_MOV;
			verify_results(TestCnt);
			TestCnt := TestCnt + 1;

			-- SMEM2 RS1,RS2,INP2
			cu_opcode_i <= ITYPE_SMEM;
			verify_results(TestCnt);
			TestCnt := TestCnt + 1;

			-- ANDI2 RS1,RD,INP2
			cu_opcode_i <= ITYPE_ANDI2;
			verify_results(TestCnt);
			TestCnt := TestCnt + 1;

			-- ANDI1 RS1,RD,INP1
			cu_opcode_i <= ITYPE_ANDI1;
			verify_results(TestCnt);
			TestCnt := TestCnt + 1;

			-- AND RS1,RS2,RD
		    cu_opcode_i <= RTYPE;
		    cu_func_i <= RTYPE_AND;
			verify_results(TestCnt);
			TestCnt := TestCnt + 1;

			-- LMEM2 RS1,RD,INP2
		    cu_opcode_i <= ITYPE_LMEM2;
			verify_results(TestCnt);
			TestCnt := TestCnt + 1;

			-- SREG1 RD,INP1
		    cu_opcode_i <= ITYPE_SREG1;
			verify_results(TestCnt);
			TestCnt := TestCnt + 1;

			-- ORI2 RS1,RD,INP2	
		    cu_opcode_i <= ITYPE_ORI2;
			verify_results(TestCnt);
			TestCnt := TestCnt + 1;

			-- SUB RS1,RS2,RD
		    cu_opcode_i <= RTYPE;
		    cu_func_i <= RTYPE_SUB;
			verify_results(TestCnt);
			TestCnt := TestCnt + 1;

			-- ORI1 RS1,RD,INP1
		    cu_opcode_i <= ITYPE_ORI1;
			verify_results(TestCnt);
			TestCnt := TestCnt + 1;

			-- OR  RS1,RS2,RD
		    cu_opcode_i <= RTYPE;
		    cu_func_i <= RTYPE_OR;
			verify_results(TestCnt);
			TestCnt := TestCnt + 1;

			-- SUBI1 RS1,RD,INP1
		    cu_opcode_i <= ITYPE_SUBI1;
			verify_results(TestCnt);
			TestCnt := TestCnt + 1;

			-- SUBI2 RS1,RD,INP2
		    cu_opcode_i <= ITYPE_SUBI2;
			verify_results(TestCnt);
			TestCnt := TestCnt + 1;

			-- SREG2 RD,INP2
		    cu_opcode_i <= ITYPE_SREG2;
			verify_results(TestCnt);
			TestCnt := TestCnt + 1;

			-- LMEM1 RS1,RD,INP1
		    cu_opcode_i <= ITYPE_LMEM1;
			verify_results(TestCnt);

		    wait;
        end process;
		
		decode_signals 	<= RF1_i & RF2_i & EN1_i;
		exe_signals		<= S1_i & S2_i & EN2_i;
		memWB_signals	<= RM_i & WM_i & EN3_i & S3_i & WF1_i;
		expected_decode_signals <= output_mem_i(CW_SIZE-ALU_OPC_SIZE-1 downto CW_SIZE-ALU_OPC_SIZE-NFirstStageSignals);
		expected_exe_signals	<= output_mem_iminus1(CW_SIZE-ALU_OPC_SIZE-NFirstStageSignals-1 downto CW_SIZE-NFirstStageSignals-NSecondStageSignals);
		expected_memWB_signals	<= output_mem_iminus2(CW_SIZE-NFirstStageSignals-NSecondStageSignals-1 downto 0);
		output_mem_i		<= LUT(to_integer(unsigned(cu_opcode_i)));
		output_mem_iminus1  <= LUT(to_integer(unsigned(cu_opcode_iminus1)));
		output_mem_iminus2  <= LUT(to_integer(unsigned(cu_opcode_iminus2)));

end TEST;
