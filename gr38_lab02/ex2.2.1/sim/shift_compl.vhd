library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.constants.all;

-----------------------------------------------
-- Booth's multiplier submodule: 
-- produces the -4A, -2A, 2A, 4A outputs
-- from given A employing shift and complement
-----------------------------------------------

entity shift_compl is 
    generic(
        N: integer := NumBit
    );
    port (
        -- p = "+" (e.g. p2A stands for 2A )
        -- m = "-" (e.g. m2A stands for -2A)
        A : in std_logic_vector( N - 1 downto 0);
        m2A, p2A, p4A: buffer std_logic_vector( N - 1 downto 0); 
        m4A  : out std_logic_vector (N - 1 downto 0)
    );
end entity;


architecture beh of shift_compl is
begin
    p2A <= A  (N-2 downto 0) & '0'; -- left shift
    p4A <= p2A(N-2 downto 0) & '0'; -- left shift

    m2A <= std_logic_vector(unsigned(not p2A) + 1); -- 2's compl 
    m4A <= std_logic_vector(unsigned(not p4A) + 1); -- 2's compl
end architecture; 
