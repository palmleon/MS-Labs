library ieee;
use ieee.std_logic_1164.all;
use work.myGlobals.all;

entity mux2to1_tb is
end mux2to1_tb;

architecture test of mux2to1_tb is

	component Mux2to1 is
		generic 
			( N: integer := DATASIZE );
		port
			( in1, in2: in std_logic_vector (N-1 downto 0);
			  sel: in std_logic;
			  output: out std_logic_vector (N-1 downto 0)); 
	end component Mux2to1;
	
	constant Nbit: integer := 2;
	constant NTest: integer := 8;
	signal in1_s, in2_s, output_s: std_logic_vector (Nbit-1 downto 0);
	signal sel_s: std_logic;

	type type_input_array is array (0 to 1) of std_logic_vector(Nbit-1 downto 0);
	type type_input_matrix is array (1 to NTest) of type_input_array;
	type type_input_enables is array (1 to NTest) of std_logic;
	type type_expected_results is array (1 to NTest) of std_logic_vector(Nbit-1 downto 0);
	constant input_matrix: type_input_matrix := (
		("00", "11"), ("00", "11"), ("00", "11"), ("10", "11"), ("10", "11"),
		("10", "00"), ("01", "11"), ("10", "00"));
	constant input_enables: type_input_enables := (
		'0', '1', '0', '0', '1',
		'1', '0', '1');
	constant expected_results: type_expected_results := (
		"00", "11", "00", "10", "11",
		"00", "01", "00");

begin

	DUT: Mux2to1 generic map (N => 2) 
				 port map (in1 => in1_s, in2 => in2_s, sel => sel_s, output => output_s);

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
				assert output_s = expected_results(i) report "Test " & integer'image(i) & " - Expected: OUT = " & print(expected_results(i)) & "; Actual: OUT1 = " & print(output_s);
		end print_results;
	begin
		for i in 1 to NTest loop
			in1_s <= input_matrix(i)(0);
			in2_s <= input_matrix(i)(1);
			sel_s <= input_enables(i);
			wait for 10 ns;
			print_results(i);
		end loop;
		wait;
	end process;

end test;
