library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;


entity MUX21_GENERIC is
    generic(
        N: integer := numbit;
        DELAY_MUX: time:=TP_MUX
    );

    port (
        A: in std_logic_vector (N-1 downto 0);
        B: in std_logic_vector (N-1 downto 0);
        SEL: in std_logic;
        Y: out std_logic_vector (N -1 downto 0)
    );
    
end entity;

--*****************************
-- Behavioral Architecture 
--*****************************
architecture behavioral of MUX21_GENERIC is
    begin
        process (A, B, SEL) 
        begin
            case SEL is
                when '0' => Y <= A after TP_MUX;
                when others => Y <= B after TP_MUX;
            end case;
        end process;

end architecture;


--****************************
-- Structural Architecture
--****************************

architecture structural of MUX21_GENERIC is
    -- signals
    signal s1, s2, s3, s_vector : std_logic_vector ( N-1 downto 0 ); 
  
    begin
        s_vector <= ( others => SEL );
		s1 <= NOT s_vector AFTER IVDELAY;
		s2 <= s1 NAND A AFTER NDDELAY;
		s3 <= s_vector NAND B AFTER NDDELAY; 
        Y <= s2 NAND s3 AFTER NDDELAY;   

    -- components instantiation
end architecture;


--*********************
-- configurations 
--*********************
configuration CFG_MUX21_GEN_BEHAVIORAL of MUX21_GENERIC is

    for behavioral
    end for;

end configuration CFG_MUX21_GEN_BEHAVIORAL;
  
configuration CFG_MUX21_GEN_STRUCTURAL of MUX21_GENERIC is
    
    for structural
    end for;
  
end configuration CFG_MUX21_GEN_STRUCTURAL;

    
    
