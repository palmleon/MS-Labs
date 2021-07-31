library ieee;
use ieee.std_logic_1164.all;
use work.myGlobals.all;

entity add_sub_tb is
end add_sub_tb;

architecture test of add_sub_tb is

	component add_sub is	
		generic 
		(
			NBIT     : integer;  -- number of bit of single carry_sel_block
			NBIT_PER_BLOCK : integer
		);
		port
		(
			A  : in  std_logic_vector(NBIT-1 downto 0);
			B  : in  std_logic_vector(NBIT-1 downto 0);
			op : in  std_logic;
			S  : out std_logic_vector(NBIT-1 downto 0);
			Co : out std_logic
		);
	end component add_sub;

	constant NTest: integer := 10;
	constant NBit: integer := 8;
	constant NBit_per_block: integer := 2;
	signal A_s, B_s, S_s: std_logic_vector (NBit-1 downto 0);
	signal op_s, Co_s: std_logic;
	type input_operands_array_type is array (0 to 1) of std_logic_vector(Nbit-1 downto 0);
	type input_operands_type is array (1 to NTest) of input_operands_array_type;
	type expected_outputs_type is array (1 to NTest) of std_logic_vector(Nbit downto 0);
	type input_op_type is array (1 to NTest) of std_logic;
	constant input_operands: input_operands_type := (
		(X"01", X"10"), (X"2E", X"4F"), (X"5D", X"3A"), (X"FF", X"01"), (X"FF", X"FF"),
		(X"01", X"01"), (X"70", X"56"), (X"01", X"02"), (X"60", X"7F"), (X"80", X"7F")
		);
	constant input_op: input_op_type := (
		'0', '0', '0', '0', '0', 
		'1', '1', '1', '1', '1'
		);
	constant expected_outputs: expected_outputs_type := (
		'0' & X"11", '0' & X"7D", '0' & X"97", '1' & X"00", '1' & X"FE", 
		'1' & X"00", '1' & X"1A", '0' & X"FF", '0' & X"E1", '1' & X"01"
		);

begin

	DUT: entity work.add_sub(structural) generic map (NBit => NBit, NBit_per_block => NBit_per_block)
										 port map (A => A_s, B => B_s, op => op_s, S => S_s, Co => Co_s);

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
			assert S_s = expected_outputs(i)(NBit-1 downto 0) and Co_s = expected_outputs(i)(NBit) report "Test " & integer'image(i) & " - Expected: Co = " & std_logic'image(expected_outputs(i)(Nbit)) & ", Sum = " & print(expected_outputs(i)(Nbit-1 downto 0)) & "; Actual: Co = " & std_logic'image(Co_s) & ", Sum = " & print(S_s);
		end print_results;
	begin
		for i in 1 to NTest loop
			A_s <= input_operands(i)(0);
			B_s <= input_operands(i)(1);
			op_s <= input_op(i);
			wait for 10 ns;
			print_results(i);
		end loop;
		wait;
	end process;

end test;
