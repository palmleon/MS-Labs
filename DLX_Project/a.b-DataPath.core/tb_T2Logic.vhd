library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use WORK.constants.all;

entity tb_T2Logic is
end entity;          

architecture test of tb_T2Logic is

    constant N : integer := 4;

    component T2Logic is
        generic 
        (
            N : integer := N  --number of bits
        );
        port
        (
            R1, R2 : in std_logic_vector(N-1 downto 0); --inputs
            Z : out std_logic_vector(N-1 downto 0);      --output
            SEL: in std_logic_vector(3 downto 0)     --control  -- '0001' = AND
        );                                                      -- '1110' = NAND
    end component;                                              -- '1000' = OR
                                                                -- '0111' = NOR
                                                                -- '0110' = XOR
                                                                -- '1001' = XNOR
                                                                -- !!!!!!!!!!!!!!!! NAND NOR XNOR non sono usate nell'isa, rimuoverle?? !!!!!!!!!!!!!!
    signal in1, in2, out1 : std_logic_vector(N-1 downto 0);
    signal sel : std_logic_vector(3 downto 0);

begin

    DUT: T2Logic port map(in1, in2, out1, sel);

    in1 <= "1001";
    in2 <= "1100";

    sel <= "0001", "1110" after 3 ns, "1000" after 6 ns, "0111" after 9 ns, "0110" after 12 ns, "1001" after 15 ns;
    -- in order AND, NAND, OR, NOR, XOR, XNOR

end architecture;