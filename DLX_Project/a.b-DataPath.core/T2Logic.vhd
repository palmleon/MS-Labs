library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use WORK.constants.all;

entity T2Logic is
    generic 
    (
        N : integer  --number of bits
    );
    port
    (
        R1, R2 : in std_logic_vector(N-1 downto 0); --inputs
        Z : out std_logic_vector(N-1 downto 0);      --output
        SEL: in std_logic_vector(3 downto 0)     --control  -- '0001' = AND
    );                                                      -- '1110' = NAND
end entity;                                                 -- '1000' = OR
                                                            -- '0111' = NOR
                                                            -- '0110' = XOR
                                                            -- '1001' = XNOR

architecture behavioral of T2Logic is
    signal S0, S1, S2, S3 : std_logic_vector(N-1 downto 0);
    signal L0, L1, L2, L3 : std_logic_vector(N-1 downto 0);

begin
    S0 <= (others => SEL(0));
    S1 <= (others => SEL(1));
    S2 <= (others => SEL(2));
    S3 <= (others => SEL(3));

    L0 <= NOT (S0 AND R1 AND R2);
    L1 <= NOT (S1 AND R1 AND (NOT R2));
    L2 <= NOT (S2 AND (NOT R1) AND R2);
    L3 <= NOT (S3 AND (NOT R1) AND (NOT R2));

    Z <= NOT (L0 AND L1 AND L2 AND L3);

end architecture;