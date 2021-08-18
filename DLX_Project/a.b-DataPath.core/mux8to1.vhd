library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity MUX8TO1 is
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
        IN4 : in std_logic_vector(N-1 downto 0);
        IN5 : in std_logic_vector(N-1 downto 0);
        IN6 : in std_logic_vector(N-1 downto 0);
        IN7 : in std_logic_vector(N-1 downto 0);
        SEL : in std_logic_vector (2 downto 0);
        Y : out std_logic_vector (N-1 downto 0)
    );
end entity;

architecture behavioral of MUX8TO1 is
    begin
        process (IN0, IN1, IN2, IN3, IN4, IN5, IN6, IN7, SEL) 
        begin
            case SEL is
                when "000"  => Y <= IN0;
                when "001"  => Y <= IN1;            
                when "010"  => Y <= IN2;
                when "011"  => Y <= IN3;
                when "100"  => Y <= IN4;            
                when "101"  => Y <= IN5;
                when "110"  => Y <= IN6;
                when "111"  => Y <= IN7;
                when others => Y <= (others => '0');
            end case;
        end process;

end architecture;