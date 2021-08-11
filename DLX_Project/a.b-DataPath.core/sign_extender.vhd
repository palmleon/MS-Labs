library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity SignExtender is
    generic 
    (
        N : integer;  --number of input bits
        M : integer   --number of output bits, should be greater than N
    );
    port
    (
       I: in std_logic_vector(N-1 downto 0);  --input
       O: out std_logic_vector(M-1 downto 0)   --output
    );
end entity;

architecture structural of SignExtender is
begin
    O(M-1 downto M-N) <= (others => I(N-1));
    O(N-1 downto 0) <= I;

end architecture;
