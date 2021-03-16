library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;


entity NAND2 is
		port(a, b: 	in	std_logic;
			 f:		out	std_logic);
end entity;

architecture behavioral of NAND2 is
    begin
        f <= not (a and b); --after NDDELAY;
end architecture;

configuration CFG_NAND2_BEHAVIORAL of NAND2 is
	for behavioral
	end for;
end configuration;
