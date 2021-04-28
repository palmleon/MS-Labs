library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_RMLwithRF is
end tb_RMLwithRF;

architecture test of tb_RMLwithRF is
	
	component RMLwithRF	
		generic(
			NGlobal 	: integer;		-- n. global regs
			NBlockRegs 	: integer;		-- n. regs per block (N = 2**k for some integer k)
			NWindows	: integer;		-- n. windows
			NData		: integer		-- n. bit per reg
		);
		port(
			rst, clk:				in	std_logic;
			call, rtrn:				in	std_logic;			
			ack:					in 	std_logic; 					
			W, RD1, RD2:			in  std_logic;			
			en:					    in  std_logic;			
			DATAIN  : 				in  std_logic_vector(NData-1 downto 0);	
			logWaddr, logR1addr, logR2addr: in std_logic_vector(integer(log2(real(NBlockRegs)))+2 downto 0);	
			spill, fill:			out	std_logic;		
			spillend, fillend:		out std_logic;			
			RD1Out  : out std_logic_vector(NData-1 downto 0);
			RD2Out  : out std_logic_vector(NData-1 downto 0)
		);
	end component;
	constant NGlobal : integer := 5;		-- TO SET GENERICS, MODIFY THESE CONSTANTS ONLY!
	constant NBlockRegs : integer := 4;
	constant NWindows : integer := 4;
	constant NData : integer := 8;
	constant ClkPeriod : time := 5 ns;
	signal rst_s, clk_s, call_s, rtrn_s, ack_s, W_s, RD1_s, RD2_s, en_s, spill_s, fill_s, spillend_s, fillend_s: std_logic;
	signal logWaddr_s, logR1addr_s, logR2addr_s: std_logic_vector(4 downto 0);
	signal DATAIN_s, RD1out_s, RD2Out_s: std_logic_vector(Ndata-1 downto 0);
begin
	DUT: RMLwithRF generic map (NGlobal=>NGlobal, NBlockRegs=>NBlockRegs, NWindows=>NWindows, NData=>NData)
					port map (rst=>rst_s, clk=>clk_s, ack=>ack_s, call=>call_s, rtrn=>rtrn_s, 
							  W=>W_s, RD1=>RD1_s, RD2=>RD2_s, en=>en_s,
							  spill=>spill_s, fill=>fill_s, spillend=>spillend_s, fillend=>fillend_s,
							  logWaddr=>logWaddr_s, logR1addr=>logR1addr_s, logR2addr=>logR2addr_s,
							  DATAIN=>DATAIN_s, RD1out=>RD1out_s, RD2out=>RD2out_s);	
	
	ClkProcess: process
	begin
		clk_s <= '0';
		wait for ClkPeriod;
		clk_s <= '1';
		wait for ClkPeriod;
	end process;

	TestProcess: process
	begin
		rst_s <= '1';
		call_s <= '0'; rtrn_s <= '0'; ack_s <= '0'; W_s <= '0'; RD1_s <= '0'; RD2_s <= '0';
		en_s <= '0'; spill_s <= '0'; fill_s <= '0'; spillend_s <= '0'; fillend_s <= '0';
		--- TEST 0: Reset State behaviour ---

		--- TEST 1: W/R to the RegFile ---
		
		--- TEST 2: Call without fill ---

		--- TEST 3: W/R to the RegFile (check if IN WINDOW(i) === OUT WINDOW(i-1)) ---

		--- TEST 4: CALL until Windowed RegFile is full ---

		--- TEST 5: CALL with Spill ---

		--- TEST 6: Return without spill ---

		--- TEST 7: W/R to the RegFile (check if OUT WINDOW(i) === IN WINDOW(i-1)) ---

		--- TEST 8: Return with spill ---
				
		wait;
	end process;
end test;

configuration CFG_TB of tb_RMLwithRF is
	for test
		for DUT: RMLwithRF
			use configuration work.CFG_RMLwithRF_Structural;		
		end for;
	end for;
end configuration;
