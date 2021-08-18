library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity half_adder is
    port
    (
        A, B : in std_logic; --input
        Z, C_out : out std_logic --output
    );
end entity;

architecture Structural of half_adder is
	begin
        Z <= A XOR B;
        C_out <= A AND B;
end architecture;