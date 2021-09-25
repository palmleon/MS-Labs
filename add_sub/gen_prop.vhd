library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.ALL;

entity Gen_Prop is
    generic (
        PDELAY : time := 0 ns;
		GDELAY : time := 0 ns
	);
    port (
		Pik, Gik, Pmj, Gmj:	IN	std_logic;	-- m = k-1 by definition
		Pij, Gij:			OUT	std_logic       
	);
end Gen_Prop;

  --*************************
  -- behavioral arch 
  --*************************

architecture behavioral of Gen_Prop is
begin 
	Pij <= Pik and Pmj after PDELAY;
	Gij <= Gik or (Pik and Gmj) after GDELAY;	
end architecture;

  --*************************
  -- configuration 
  --*************************

configuration CFG_GeneralPropagate_BEHAVIORAL of Gen_Prop is
	for BEHAVIORAL
    end for;
end CFG_GeneralPropagate_BEHAVIORAL;
