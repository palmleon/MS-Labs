library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity MUX21_GENERIC is
    generic(
        N: integer := numbit;
        -- DELAY_MUX: time:=TP_MUX
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
                when '0' => Y <= A; -- after TP_MUX;
                when others => Y <= B; -- after TP_MUX;
            end case;
        end process;

end architecture;


--****************************
-- Structural Architecture
--****************************

architecture structural of MUX21_GENERIC is

	component NAND2 is
		port(a, b: 	in	std_logic;
			 f:		out	std_logic);
	end component NAND2;

	component INV is
		port(a:		in	std_logic;
			 f:		out std_logic);
	end component INV;

    -- signals
    signal s1, s2:	std_logic_vector ( N-1 downto 0 ); 
  	signal sel_not: 	std_logic;

    begin
		-- components instantiation
		inv_sel: INV port map (sel, sel_not);
		
		NANDgen: for i in 0 to N-1 generate
			s1_i: NAND2 port map (a(i), sel_not, s1(i));
			s2_i: NAND2 port map (b(i), sel, s2(i));
			y_i:  NAND2 port map (s1(i), s2(i), y(i)); 
		end generate NANDgen;
		
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
		for inv_sel: INV
			use configuration WORK.CFG_INV_BEHAVIORAL;
		end for;
		for NANDgen
			for all: NAND2
				use configuration WORK.CFG_NAND2_BEHAVIORAL;
			end for;
		end for;
    end for;
  
end configuration CFG_MUX21_GEN_STRUCTURAL;

    
    
