library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use WORK.constants.all;

entity General_Generate is
    generic (
		GDELAY : time := 2*IVDELAY + NRDELAY + NDDELAY
	);
    port (
		Pik, Gik, Gmj:	IN	std_logic;	-- m = k-1 by definition
		Gij:			OUT	std_logic       
	);
end General_Generate;

  --*************************
  -- behavioral arch 
  --*************************

architecture behavioral of General_Generate is
begin 
	Gij <= Gik or (Pik and Gmj) after GDELAY;	
end architecture;

  --*************************
  -- configuration 
  --*************************

configuration CFG_GeneralGenerate_BEHAVIORAL of General_Generate is
	for BEHAVIORAL
    end for;
end CFG_GeneralGenerate_BEHAVIORAL;
