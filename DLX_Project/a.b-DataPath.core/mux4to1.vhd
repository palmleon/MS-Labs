library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity MUX4TO1 is
    generic
    (
        N: integer
    );
    port 
    (
	    IN0 : in std_logic_vector(N-1 downto 0);
        IN1 : in std_logic_vector(N-1 downto 0);
        IN2 : in std_logic_vector(N-1 downto 0);
        IN3 : in std_logic_vector(N-1 downto 0);
        SEL : in std_logic_vector (1 downto 0);
        Y : out std_logic_vector (N-1 downto 0)
    );
end entity;

architecture behavioral of MUX4TO1 is
    begin
        process (IN0, IN1, IN2, IN3, SEL) 
        begin
            case SEL is
                when "00"  => Y <= IN0;
                when "01"  => Y <= IN1;            
                when "10"  => Y <= IN2;
                when "11"  => Y <= IN3;
                when others => Y <= (others => '0');
            end case;
        end process;

end architecture;