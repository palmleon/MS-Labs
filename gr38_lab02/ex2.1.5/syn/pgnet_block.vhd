library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity PGnet_block is
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
	Pii <= A xor B;
	Gii <= A and B;
end architecture;

  --*************************
  -- configuration 
  --*************************

configuration CFG_pgnetblock_behavioral of PGnet_block is
	for behavioral
    end for;
end configuration;
