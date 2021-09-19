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

	TestProc: process
	begin
		rst_s <= '1';
		wait for ClkPeriod;
		rst_s <= '0';
		wait;
	end process;

	ClkProc: process
	begin
		-- loop that automatically stops the processor when all the code has been executed
		for i in 1 to NTESTINSTR + 6 loop
			clk_s <= '0';
			wait for ClkPeriod/2;
			clk_s <= '1';
			wait for ClkPeriod/2;
		end loop;
	end process;

end test;
