library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity PGnet_block is
	generic (
		PDELAY:		time := 3*NDDELAY;
		GDELAY:		time := NDDELAY + IVDELAY);
	port (
		A :			in	std_logic;
		B :			in	std_logic;
		Pii, Gii :	out	std_logic);
end PGnet_block;

  --*************************
  -- structural arch 
  --*************************

architecture behavioral of PGnet_block is	
begin
	Pii <= A xor B after PDELAY;
	Gii <= A and B after GDELAY;
end architecture;

  --*************************
  -- configuration 
  --*************************

configuration CFG_pgnetblock_behavioral of PGnet_block is
	for behavioral
    end for;
end configuration;
