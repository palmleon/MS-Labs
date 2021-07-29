library ieee;
use ieee.std_logic_1164.all;
use work.myGlobals.all;

entity D_Reg is					-- Generic D Register with synch. reset
	generic
		( N: integer := DATASIZE );
	port
		( clk, rst, en: in std_logic;
		  D: in std_logic_vector (N-1 downto 0);
		  Q: out std_logic_vector (N-1 downto 0));
end D_Reg;

architecture behavioral of D_Reg is
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				Q <= (others => '0');
			elsif (en = '1') then
				Q <= D;
			end if;
		end if;
	end process;
end behavioral;
