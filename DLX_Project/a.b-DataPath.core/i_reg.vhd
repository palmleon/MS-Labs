library ieee;
use ieee.std_logic_1164.all;
use work.myGlobals.all;

entity I_Reg is					-- Generic D Register with synch. reset
	generic
		( N: integer := DATASIZE );
	port
		( clk, rst, en: in std_logic;
		  D: in std_logic_vector (N-1 downto 0);
		  Q: out std_logic_vector (N-1 downto 0));
end I_Reg;

architecture behavioral of I_Reg is
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				Q(Q'length-1 downto Q'length-OPCSIZE) <= "011111";
				Q(Q'length-OPCSIZE-1 downto 0) <= (others => '0');
			elsif (en = '1') then
				Q <= D;
			end if;
		end if;
	end process;
end behavioral;
