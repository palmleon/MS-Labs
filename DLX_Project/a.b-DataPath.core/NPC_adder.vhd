library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity NPC_adder is
    generic
    (
        N : integer;  --register number of bits
        I : integer   --instruction lenght
    );
    port
    (
        PC : in std_logic_vector(N-1 downto 0); --input
        NPC : out std_logic_vector(N-1 downto 0) --output
    );
end entity;

architecture Behavior of NPC_adder is
	begin
		NPC <= std_logic_vector(unsigned(PC) + to_unsigned(I, N));
end architecture;

architecture Structural of NPC_adder is   --da fare
	begin
		NPC <= std_logic_vector(unsigned(PC) + to_unsigned(I, N));
end architecture;
