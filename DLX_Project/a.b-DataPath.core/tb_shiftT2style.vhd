library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use work.constants.all;

entity tb_shifter_T2 is
end tb_shifter_T2;

architecture Test of tb_shifter_T2 is

    component T2shifter is
        port
        (
            R1, R2 : in std_logic_vector(31 downto 0); --inputs
            Z : out std_logic_vector(31 downto 0);     --output
            op : in std_logic_vector(1 downto 0)       --operations  -- "00" = sll
        );                                                           -- "01" = srl
        end component;                                               -- "11" = sra

    constant Nbit : integer := 32;
    constant NTest : integer := 7;

    --constant prova : unsigned := to_unsigned(4294967295, 32);

    type type_input is array (0 to 1) of std_logic_vector(Nbit-1 downto 0);
    type type_input_matrix is array (0 to NTest-1) of type_input;
    type type_expected_matrix is array (0 to NTest-1) of std_logic_vector(Nbit-1 downto 0);
    type type_operand is array (0 to NTest-1) of std_logic_vector(1 downto 0);
    
    constant input_table: type_input_matrix :=
    (   (std_logic_vector(to_unsigned(1, Nbit)), std_logic_vector(to_unsigned(1, Nbit))),      --1 shifted left by 1
        (std_logic_vector(to_unsigned(2, Nbit)), std_logic_vector(to_unsigned(2, Nbit))),      --2 shifted left by 2
        (std_logic_vector(shift_left(to_unsigned(2**30, Nbit), 1)), std_logic_vector(to_unsigned(2, Nbit))),  --2^31 shifted left by 2
        (std_logic_vector(to_unsigned(2**19, Nbit)), std_logic_vector(to_unsigned(18, Nbit))), --2^19 shifted right by 18
        (std_logic_vector(to_unsigned(1, Nbit)), std_logic_vector(to_unsigned(2, Nbit))),      --1 shifted right by 2
        (std_logic_vector(shift_left(to_unsigned(2**30, Nbit), 1)), std_logic_vector(to_unsigned(5, Nbit))),  --2^31 logically shifted right by 5
        (std_logic_vector(shift_left(to_unsigned(2**30, Nbit), 1)), std_logic_vector(to_unsigned(5, Nbit)))   --2^31 arithmetically shifted right by 5
    );

    constant operation_table : type_operand :=
    (   "00",  --logical shift left
        "00",  --logical shift left
        "00",  --logical shift left
        "01",  --logical shift right
        "01",  --logical shift right
        "01",  --logical shift right
        "11"   --arithmetical shift right
    );

    constant expected_table : type_expected_matrix := 
    (   std_logic_vector(shift_left(to_unsigned(1, Nbit), 1)),
        std_logic_vector(shift_left(to_unsigned(2, Nbit), 2)),
        std_logic_vector(unsigned(shift_left(to_unsigned(2**30, Nbit), 2))),
        std_logic_vector(shift_right(to_unsigned(2**19, Nbit), 19)),
        std_logic_vector(shift_right(to_unsigned(1, Nbit), 2)),
        std_logic_vector(unsigned(shift_right(to_unsigned(2**30, Nbit), 5))),
        std_logic_vector(shift_right(to_signed(-2**29, Nbit), 4))
    );

    signal R1, R2, Z : std_logic_vector(31 downto 0);
    signal op : std_logic_vector(1 downto 0);

begin

  SHIFT : T2shifter port map (
      R1  => R1,
      R2  => R2,
      Z   => Z,
      op  => op
      );

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
	procedure print_results (i : in integer) is
		begin
			assert Z = expected_table(i) report "Test " & integer'image(i) & " - Expected: OUT = " & print(expected_table(i)) & "; Actual: OUT1 = " & print(Z);
	end print_results;
  begin
	for i in 0 to NTest-1 loop
			R1 <= input_table(i)(0);
			R2 <= input_table(i)(1);
			op <= operation_table(i);
			wait for 10 ns;
			print_results(i);
	end loop;
	wait;
  end process;

end Test;