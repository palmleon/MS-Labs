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

	constant NTest: integer := -- TODO TO BE DEFINED
	constant NBit: integer := 8;
	constant NBit_per_block: integer := 2;
	signal A_s, B_s, S_s: std_logic_vector (NBit-1 downto 0);
	signal op_s, Co_s: std_logic;

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
			assert S_s = expected_outputs(i)(NBit-1 downto 0) and Co_s = expected_outputs(i)(NBit) report "Test " & integer'image(i) & " - Expected: Co = " & print(expected_outputs(i)(Nbit)) & ", Sum = " & print(expected_outputs(i)(Nbit-downto 0)) & "; Actual: Co = " & std_logic'image(Co) & ", Sum = " & print(S_s);
		end print_results;
	begin
		for i in 1 to NTest loop

		end loop;

	end process;



end test;
