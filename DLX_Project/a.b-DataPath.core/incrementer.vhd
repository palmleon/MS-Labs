library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity incrementer is
    generic
    (
        N : integer  --number of bits
    );
    port
    (
        in1 : in std_logic_vector(N-1 downto 0); --input
        out1 : out std_logic_vector(N-1 downto 0); --output
        C_out : out std_logic
    );
end entity;

architecture Behavior of incrementer is
	begin
		out1 <= std_logic_vector(unsigned(in1) + 1);
end architecture;

architecture Structural of incrementer is

    component half_adder is
        port
        (
            A, B : in std_logic; --input
            Z, C_out : out std_logic --output
        );
    end component;

    signal carry : std_logic_vector(N downto 0);

	begin
        carry(0) <= '1';

        inc: for i in 0 to N-1 generate
            ha: half_adder port map (in1(i), carry(i), out1(i), carry(i+1));
        end generate;

        C_out <= carry(N);

end architecture;