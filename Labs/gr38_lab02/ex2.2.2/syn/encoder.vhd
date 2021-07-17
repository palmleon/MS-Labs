library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

--------------------------------------
-- Booth's encoder         
-- takes a 3 bit operand and encodes it
-- for the Booth's table
-- 
-- Since this is a very specific one, no generics
-- have been employed
--------------------------------------

entity encoder is
    port (
        inc : in std_logic_vector (3 - 1 downto 0); 
        enc : out std_logic_vector(3 - 1 downto 0)
    );
end encoder;


architecture behavioral of encoder is
begin
    process(inc)
    begin
        case inc is
            -- Booth's table
            when "000" => enc <= "000"; -- 0

            when "001" => enc <= "001"; -- A
            when "010" => enc <= "001"; -- A
            
            when "011" => enc <= "011"; -- 2A
            when "100" => enc <= "100"; -- -2A
            
            when "101" => enc <= "010"; -- -A
            when "110" => enc <= "010"; -- -A

            when "111" => enc <= "000"; -- 0
            when others => enc <= "000"; -- default 0
        end case;
    end process;
end architecture;
