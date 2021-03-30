library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

---------------------------------------
-- MUX 5->1 Behavioral definition
-- naming adapted to booth's algorithm
----------------------------------------

entity MUX51_GENERIC is
    generic(
        N: integer := numbit
    );
    port (
        posA: in std_logic_vector (N-1 downto 0);
        negA: in std_logic_vector (N-1 downto 0);
        pos2A: in std_logic_vector(N-1 downto 0);
        neg2A : in std_logic_vector(N-1 downto 0);
        SEL: in std_logic_vector ( 3 - 1 downto 0);
        Y: out std_logic_vector (N -1 downto 0)
    );
    
end entity;


architecture behavioral of MUX51_GENERIC is
    begin
        process (posA, negA, pos2A, neg2A,  SEL) 
        begin
            case SEL is
                when "000"  => Y <= (others => '0');
                    
                when "001"  => Y <= posA;
                               
                when "011"  => Y <= pos2A;
                when "100"  => Y <= neg2A;
                               
                when "010"  => Y <= negA;
                               
                when others => Y <= (others => 'Z');
            end case;
        end process;

end architecture;



    
    
