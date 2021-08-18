library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity MUX2TO1 is
    generic
    (
        N: integer
    );
    port 
    (
	    IN0 : in std_logic_vector(N-1 downto 0);
        IN1 : in std_logic_vector(N-1 downto 0);
        SEL : in std_logic;
        Y : out std_logic_vector (N-1 downto 0)
    );
end entity;

architecture behavioral of MUX2TO1 is
    begin
        process (IN0, IN1, SEL) 
        begin
            case SEL is
                when '0'  => Y <= IN0;
                when '1'  => Y <= IN1;
                when others => Y <= (others => '0');
            end case;
        end process;

end architecture;