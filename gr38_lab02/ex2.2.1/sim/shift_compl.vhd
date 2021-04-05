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
        p2A, m2A, p4A: out std_logic_vector(N - 1 downto 0);
        m4A: out std_logic_vector( N - 1 downto 0) 
    );
end entity;


architecture beh of shift_compl is
   -- tmp signals to avoid "buffer" signals
   signal p2A_s, p4A_s: std_logic_vector(N-1 downto 0);
begin
    p2A_s <= A  (N-2 downto 0) & '0'; -- left shift
    p4A_s <= p2A_s(N-2 downto 0) & '0'; -- left shift

    m2A <= std_logic_vector(unsigned(not p2A_s) + 1); -- 2's compl 
    m4A <= std_logic_vector(unsigned(not p4A_s) + 1); -- 2's compl

    -- copying signals
    p2A <= p2A_s;
    p4A <= p4A_s;
end architecture; 
