library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity NPC_adder is
    generic
    (
        N : integer;  --register number of bits
        I : integer   --instruction lenght --must be a power of 2
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
    component half_adder is
        port
        (
            A, B : in std_logic; --input
            O, C_out : out std_logic --output
        );
    end component;

    signal carry : std_logic_vector(N downto log2(I));

    begin
        carry(log2(I)) <= 1

        NPC(log2(I)-1 downto 0) <= PC(log2(I)-1 downto 0)

        for i in log2(I) to N-1 generate:
            ha_i: half_adder port map (PC(i), carry(i), PC(i), carry(i+1));
        end generate;
        
end architecture;