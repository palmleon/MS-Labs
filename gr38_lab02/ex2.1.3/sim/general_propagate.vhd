library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use WORK.constants.all;

entity GeneralPropagate is
    generic (
        PDELAY : time := IVDELAY + NDDELAY;
		GDELAY : time := 2*IVDELAY + NRDELAY + NDDELAY
	);
    port (
		Pik, Gik, Pmj, Gmj:	IN	std_logic;	-- m = k-1 by definition
		Pij, Gij:			OUT	std_logic;        
	);
end GeneralPropagate;

  --*************************
  -- behavioral arch 
  --*************************

architecture behavioral of GeneralPropagate is
begin 
	Pij <= Pik and Pmj after PDELAY;
	Gij <= Gik or (Pik and Gmj) after GDELAY;	
end architecture;

  --*************************
  -- configuration 
  --*************************

configuration CFG_GeneralPropagate_BEHAVIORAL of RCA is
	for BEHAVIORAL
    end for;
end CFG_RCA_BEHAVIORAL;
