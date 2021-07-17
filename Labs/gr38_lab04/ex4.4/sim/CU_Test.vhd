library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;

entity cu_test is
end cu_test;

architecture TEST of cu_test is

    component CU_UP is
		generic 
		(
			FUNC_SIZE     : integer := 11;  --func Field Size for R-Type instructions
			OP_CODE_SIZE  : integer := 6;   --single OpCode Size
			N_OPCODE      : integer := 16;   --number of different OpCode
			ALU_CTRL_SIZE : integer := 2  --number of control signals for ALU management
		);
		port
		(
			Clk         : in  std_logic;  --clock
			Rst         : in  std_logic;  --reset

			OPCODE      : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0);
			FUNC        : in  std_logic_vector(FUNC_SIZE - 1 downto 0);

			EN_S1       : out std_logic;  --global enable of Stage1
			RF_RD1      : out std_logic;  --RF read enable on read port 1
			RF_RD2      : out std_logic;  --RF read enable on read port 2
			
			EN_S2       : out std_logic;  --global enable of Stage2
			MUX_SEL1    : out std_logic;  --MUX selector INP1 REG_A
			MUX_SEL2    : out std_logic;  --MUX selector INP2 REG_B
			ALU1        : out std_logic;  --ALU control signals
			ALU2        : out std_logic;
			
			EN_S3       : out std_logic;  --global enable of Stage3
			RF_WR1      : out std_logic;  --RF write enable on write port
			MEM_RD      : out std_logic;  --memory read-out enable
			MEM_WR      : out std_logic;  --memory write-in enable
			MUX_SEL3    : out std_logic   --MUX selector ALU_OUT MEM_OUT
		);
	end component;
	
	constant N_OPS : integer := 19;
	constant CW_SIZE: integer := 13;
	constant OP_CODE_SIZE: integer := 6;
	constant FUNC_SIZE: integer := 11;

	--stage dimensions
	constant NFirstStageSignals: integer := 3;
	constant NSecondStageSignals: integer := 5;
	constant NThirdStageSignals: integer := 5;

	type cw_const is array(integer range 0 to N_OPS - 1) of std_logic_vector(cw_size -1 downto 0);
    --constat matrix to compare values in the decode stage rapidly
    constant cw_matrix : cw_const := ("0000000000000", --NOP
                                      "1111100001001", --ADD
                                      "1111100101001", --SUB
                                      "1111101001001", --AND
                                      "1111101101001", --OR
                                      "1011000001001", --ADDI1
                                      "1011000101001", --SUBI1
                                      "1011001001001", --ANDI1
                                      "1011001101001", --ORI1
                                      "1101110001001", --ADDI2
                                      "1101110101001", --SUBI2
                                      "1101111001001", --ANDI2
                                      "1101111101001", --ORI2
                                      "1101110001001", --MOV
                                      "1001011001001", --S_REG1
                                      "1001011001001", --S_REG2
                                      "1111110010010", --S_MEM2
                                      "1011000011100", --L_MEM1
                                      "1101110011100"  --L_MEM2
                                        );

	constant ClkPeriod: time := 20 ns;
    signal Clock: std_logic;
    signal Reset: std_logic := '1';
    signal cu_opcode_i: 		std_logic_vector(OP_CODE_SIZE - 1 downto 0) := (others => '0');							-- first fetched instruction is a NOP
	signal cu_func_i: 			std_logic_vector(FUNC_SIZE - 1 downto 0) 	:= (others => '0');							-- func at the current clk cycle			
    signal EN1_i, RF1_i, RF2_i, WF1_i, EN2_i, S1_i, S2_i, ALU1_i, ALU2_i, EN3_i, RM_i, WM_i, S3_i: std_logic := '0';
	
	signal decode_signals, expected_decode_signals: 	std_logic_vector(NFirstStageSignals-1 downto 0);				-- actual and expected signals at Decode Stage
	signal exe_signals, expected_exe_signals:			std_logic_vector(NSecondStageSignals-1 downto 0);				-- actual and expected signals at Exe Stage
	signal memWB_signals, expected_memWB_signals:		std_logic_vector(NThirdStageSignals-1 downto 0);				-- actual and expected ignals at Mem+WB Stage
	signal expected_cw:									std_logic_vector(CW_SIZE-1 downto 0);							-- expected CW

begin
	-- instance of CU_UP
	DUT: CU_UP
	port map (
			CLK			=> Clock,
			RST     	=> Reset,
			
			OPCODE  	=> cu_opcode_i,
			FUNC		=> cu_func_i,
			
			EN_S1   	=> EN1_i,
			RF_RD1  	=> RF1_i,
			RF_RD2  	=> RF2_i,
			
			EN_S2       => EN2_i,
			MUX_SEL1    => S1_i,
			MUX_SEL2    => S2_i,
			ALU1        => ALU1_i,
			ALU2        => ALU2_i,
			
			EN_S3       => EN3_i,
			RF_WR1      => WF1_i,
			MEM_RD      => RM_i,
			MEM_WR      => WM_i,
			MUX_SEL3    => S3_i
			);

	--clock process
	ClkProc: process
	begin
		Clock <= '0';
		wait for ClkPeriod/2;
		Clock <= '1';
		wait for ClkPeriod/2;
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
		end function;
		procedure verify_results (TestCnt : in integer) is
			begin
				wait for ClkPeriod/2;	-- sample on the falling edge
				assert decode_signals 	= expected_decode_signals report "Test " & integer'image(TestCnt) & "a - expected: " & print(expected_decode_signals) & ", actual: " & print(decode_signals);
				wait for ClkPeriod;
				assert exe_signals 		= expected_exe_signals report "Test " & integer'image(TestCnt) & "b - expected: " & print(expected_exe_signals)& ", actual: " & print(exe_signals);
				wait for ClkPeriod;
				assert memWB_signals 	= expected_memWB_signals report "Test " & integer'image(TestCnt) & "c - expected: " & print(expected_memWB_signals)& ", actual: " & print(memWB_signals);
		end procedure;
		variable TestCnt: integer := 1;
	begin
		-- in the following Tests a new instruction is provided each 3 clock cycles, the evaluation is done in verify_results() procedure on the falling edge
		Reset <= '1';
        expected_cw <= cw_matrix(0);
		wait until rising_edge(clock);
		Reset <= '0';
                wait for ClkPeriod;
		-- At the moment, the IR is sending out a NOP (opcode = "000000")
		verify_results(TestCnt);

		-- ADD RS1,RS2,RD -> Rtype
		cu_opcode_i <= RTYPE;
		cu_func_i <= RTYPE_ADD;
		expected_cw <= cw_matrix(1);
		TestCnt := TestCnt + 1;
    	wait for ClkPeriod/2;  --this delay is added at this point since it is necessary to have the instruction already present before the sampling on the rising edge
		verify_results(TestCnt);

		-- ADDI1 RS1,RD,INP1 -> Itype
		cu_opcode_i <= ITYPE_ADDI1;
		expected_cw <= cw_matrix(5);
		TestCnt := TestCnt + 1;
        wait for ClkPeriod/2;
		verify_results(TestCnt);

		-- ADDI2 RS1,RD,INP2
		cu_opcode_i <= ITYPE_ADDI2;
		expected_cw <= cw_matrix(9);
		TestCnt := TestCnt + 1;
        wait for ClkPeriod/2;
		verify_results(TestCnt);

		-- MOV  RS1,RD
		cu_opcode_i <= ITYPE_MOV;
		expected_cw <= cw_matrix(13);
		TestCnt := TestCnt + 1;
        wait for ClkPeriod/2;
		verify_results(TestCnt);

		-- SMEM2 RS1,RS2,INP2
		cu_opcode_i <= ITYPE_SMEM;
		expected_cw <= cw_matrix(16);
		TestCnt := TestCnt + 1;
        wait for ClkPeriod/2;
		verify_results(TestCnt);

		-- ANDI2 RS1,RD,INP2
		cu_opcode_i <= ITYPE_ANDI2;
		expected_cw <= cw_matrix(11);
		TestCnt := TestCnt + 1;
        wait for ClkPeriod/2;
		verify_results(TestCnt);

		-- ANDI1 RS1,RD,INP1
		cu_opcode_i <= ITYPE_ANDI1;
		expected_cw <= cw_matrix(7);
		TestCnt := TestCnt + 1;
        wait for ClkPeriod/2;
		verify_results(TestCnt);

		-- AND RS1,RS2,RD
		cu_opcode_i <= RTYPE;
		cu_func_i <= RTYPE_AND;
		expected_cw <= cw_matrix(3);
		TestCnt := TestCnt + 1;
        wait for ClkPeriod/2;
		verify_results(TestCnt);

		-- LMEM2 RS1,RD,INP2
		cu_opcode_i <= ITYPE_LMEM2;
		expected_cw <= cw_matrix(18);
		TestCnt := TestCnt + 1;
        wait for ClkPeriod/2;
		verify_results(TestCnt);

		-- SREG1 RD,INP1
		cu_opcode_i <= ITYPE_SREG1;
		expected_cw <= cw_matrix(14);
		TestCnt := TestCnt + 1;
        wait for ClkPeriod/2;
		verify_results(TestCnt);

		-- ORI2 RS1,RD,INP2	
		cu_opcode_i <= ITYPE_ORI2;
		expected_cw <= cw_matrix(12);
		TestCnt := TestCnt + 1;
        wait for ClkPeriod/2;
		verify_results(TestCnt);

		-- SUB RS1,RS2,RD
		cu_opcode_i <= RTYPE;
		cu_func_i <= RTYPE_SUB;
		expected_cw <= cw_matrix(2);
		TestCnt := TestCnt + 1;
        wait for ClkPeriod/2;
		verify_results(TestCnt);

		-- ORI1 RS1,RD,INP1
		cu_opcode_i <= ITYPE_ORI1;
		expected_cw <= cw_matrix(8);
		TestCnt := TestCnt + 1;
        wait for ClkPeriod/2;
		verify_results(TestCnt);

		-- OR  RS1,RS2,RD
		cu_opcode_i <= RTYPE;
		cu_func_i <= RTYPE_OR;
		expected_cw <= cw_matrix(4);
		TestCnt := TestCnt + 1;
        wait for ClkPeriod/2;
		verify_results(TestCnt);

		-- SUBI1 RS1,RD,INP1
		cu_opcode_i <= ITYPE_SUBI1;
		expected_cw <= cw_matrix(6);
		TestCnt := TestCnt + 1;
        wait for ClkPeriod/2;
		verify_results(TestCnt);

		-- SUBI2 RS1,RD,INP2
		cu_opcode_i <= ITYPE_SUBI2;
		expected_cw <= cw_matrix(10);
		TestCnt := TestCnt + 1;
        wait for ClkPeriod/2;
		verify_results(TestCnt);

		-- SREG2 RD,INP2
		cu_opcode_i <= ITYPE_SREG2;
		expected_cw <= cw_matrix(15);
		TestCnt := TestCnt + 1;
        wait for ClkPeriod/2;
		verify_results(TestCnt);

		-- LMEM1 RS1,RD,INP1
		cu_opcode_i <= ITYPE_LMEM1;
		expected_cw <= cw_matrix(17);
        wait for ClkPeriod/2;
		verify_results(TestCnt);

		wait;
	end process;
	
	--signal assignment to compare the procuced outputs with the expected ones
	decode_signals 	<= EN1_i & RF1_i & RF2_i;
	exe_signals		<= EN2_i & S1_i & S2_i & ALU1_i & ALU2_i;
	memWB_signals	<= EN3_i & WF1_i & RM_i & WM_i & S3_i;
	expected_decode_signals <= expected_cw(CW_SIZE-1 downto CW_SIZE-NFirstStageSignals);
	expected_exe_signals	<= expected_cw(CW_SIZE-NFirstStageSignals-1 downto CW_SIZE-NFirstStageSignals-NSecondStageSignals);
	expected_memWB_signals	<= expected_cw(CW_SIZE-NFirstStageSignals-NSecondStageSignals-1 downto 0);
	
end TEST;
