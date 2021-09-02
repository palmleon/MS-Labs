library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myGlobals.all;

entity DLX_tb is
end DLX_tb;

architecture test of DLX_tb is

	component DLX is
	  generic (
		IR_SIZE      : integer := DATASIZE;  -- Instruction Register Size
		DATASIZE	 : integer := DATASIZE	 -- Datasize
		);       -- ALU_OPC_SIZE if explicit ALU Op Code Word Size
	  port (
		Clk : in std_logic;
		Rst : in std_logic);                -- Active Low
	end component DLX;
	
	constant ClkPeriod: time := 20 ns;
	signal rst_s, clk_s: std_logic;

begin

	-- Verification must be performed by hand!

	DUT: DLX port map (clk=>clk_s, rst=>rst_s);

	ClkProc: process
	begin
		clk_s <= '0';
		wait for ClkPeriod/2;
		clk_s <= '1';
		wait for ClkPeriod/2;
	end process;

end test;
