library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;


entity INV is
    port(a:		in	std_logic;
		 f:		out std_logic);
end entity;

architecture behavioral of INV is
    begin
        f <= not a after IVDELAY;
end architecture;

configuration CFG_INV_BEHAVIORAL of INV is
	for behavioral
	end for;
end configuration;
	
