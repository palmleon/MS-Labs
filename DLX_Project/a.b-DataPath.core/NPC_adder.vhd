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
        PC : unsigned(N-1 downto 0); --input
        NPC : out unsigned(N-1 downto 0) --output
    );
end entity;

architecture Behavior of NPC_adder is
	begin
		NPC = PC + to_unsigned(I);
end architecture;

architecture Structural of NPC_adder is   --da fare
	begin
		NPC = PC + to_unsigned(I);
end architecture;