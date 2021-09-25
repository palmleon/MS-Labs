library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.ALL;

entity Gen_Gen is
    generic (
		GDELAY : time := 0 ns
	);
    port (
		Pik, Gik, Gmj:	IN	std_logic;	-- m = k-1 by definition
		Gij:			OUT	std_logic       
	);
end Gen_Gen;

  --*************************
  -- behavioral arch 
  --*************************

architecture behavioral of Gen_Gen is
begin 
	Gij <= Gik or (Pik and Gmj) after GDELAY;	
end architecture;

  --*************************
  -- configuration 
  --*************************

configuration CFG_GeneralGenerate_BEHAVIORAL of Gen_Gen is
	for BEHAVIORAL
    end for;
end CFG_GeneralGenerate_BEHAVIORAL;
