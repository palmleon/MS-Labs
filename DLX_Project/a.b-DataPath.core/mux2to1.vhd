library ieee;
use ieee.std_logic_1164.all;
use work.myGlobals.all;

entity Mux2to1 is
	generic 
		( N: integer := DATASIZE );
	port
		( in1, in2: in std_logic_vector (N-1 downto 0);
		  sel: in std_logic;
		  output: out std_logic_vector (N-1 downto 0)); 
end Mux2to1;

architecture behavioral of Mux2to1 is
	begin
		process(in1, in2, sel)
		begin
			if (sel = '0') then output <= in1; 
			elsif (sel = '1') then output <= in2;
			end if;
		end process;
end behavioral; 
