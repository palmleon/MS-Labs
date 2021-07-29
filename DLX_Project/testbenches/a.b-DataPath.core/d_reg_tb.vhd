library ieee;
use ieee.std_logic_1164.all;
use work.myGlobals.all;

entity d_reg_tb is
end d_reg_tb;

architecture test of d_reg_tb is

	component D_Reg is					-- Generic D Register with synch. reset
		generic
			( N: integer := DATASIZE );
		port
			( clk, rst, en: in std_logic;
			  D: in std_logic_vector (N-1 downto 0);
			  Q: out std_logic_vector (N-1 downto 0));
	end component D_Reg;

	constant NTest: integer := 6;
	constant NBit: integer := 2;
	constant ClkPeriod: time := 10 ns;
	signal clk_s, rst_s, en_s: std_logic;
	signal D_s, Q_s: std_logic_vector (NBit-1 downto 0);	
	type type_control_inputs is array (1 to NTest) of std_logic_vector(0 to 1);
	type type_data_inputs is array (1 to NTest) of std_logic_vector(NBit-1 downto 0);
	constant control_inputs: type_control_inputs := (
		"10", "00", "01", "11", "01", "01"
		);
	constant data_inputs: type_data_inputs := (
		"01", "01", "01", "01", "10", "11"
		);
	constant expected_outputs: type_data_inputs := (
		"00", "00", "01", "00", "10", "11"
		);

begin

	DUT: D_Reg generic map (N => NBit)
			   port map (clk => clk_s, rst => rst_s, en => en_s, D => D_s, Q => Q_s);

	ClkProc: process
	begin
		clk_s <= '0';
		wait for ClkPeriod/2;
		clk_s <= '1';
		wait for ClkPeriod/2;
	end process ClkProc;

	TestProc: process
		function print(arg: std_logic_vector) return string is					-- function used to print expected results
			constant arg_vect: std_logic_vector(0 to arg'length-1) := arg;  -- used because arg indexes are unknown
			constant bit_pos: integer := 2;
			variable vector_bit_image: string(1 to 3);
			variable bit_to_print: character; 
		begin
			if (arg'length > 0) then
				vector_bit_image := std_logic'image(arg_vect(0));			-- extract the bit from the vector (in '1' or '0' format)
				bit_to_print := vector_bit_image(bit_pos);
				return bit_to_print & print(arg_vect(1 to arg'length-1));
			else
				return "";
			end if;
		end function print;
		procedure print_results (i : in integer) is
		begin
			assert Q_s = expected_outputs(i) report "Test " & integer'image(i) & " - Expected: OUT = " & print(expected_outputs(i)) & "; Actual: OUT = " & print(Q_s);
		end print_results;
	begin
		for i in 1 to NTest loop
			rst_s <= control_inputs(i)(0);
			en_s <= control_inputs(i)(1);
			D_s <= data_inputs(i);
			wait for ClkPeriod;
			print_results(i);
		end loop;
		wait;
	end process;

end test;

