library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;

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
			call, rtrn:				in	std_logic;			-- from the CU: they notify when context switching should be managed
			ackIN:					in 	std_logic; 			-- from Memory		
			W, RD1, RD2:			in  std_logic;			-- from instructions;	
			en:					    in  std_logic;			-- it is up to the CU to enable the RF every time, raising SPILL/FILL should notify the CU that the RF must be enabled to let the RML fill/spill the RF
			DATAIN  : 				in  std_logic_vector(NData-1 downto 0);	
			logWaddr, logR1addr, logR2addr: in std_logic_vector(integer(log2(real(NBlockRegs)))+2 downto 0);	-- the MSB tells whether we want to access a global register or a window register, the other bits are required to point up to 4NBlockRegs-1 locations
			spill, fill:			out	std_logic;			-- SPILL/FILL are used to inform both the CU and the MMU when SPILL/FILL occurs
			ackOUT	:				out std_logic;			-- notify the CU that it is possible to receive a window from Memory
			ready	:		out std_logic;			-- notify the CU when SPILL/FILL has terminated
			RD1Out  : out std_logic_vector(NData-1 downto 0);
			RD2Out  : out std_logic_vector(NData-1 downto 0)
		);
	end component;

	component register_file is
		generic (
		  NData : integer;
		  NRegs : integer; 
		  NAddr : integer
	   );
	   port (CLK    : in  std_logic;
		    RESET   : in  std_logic;
		    ENABLE  : in  std_logic;
		    RD1     : in  std_logic;
		    RD2     : in  std_logic;
		    WR      : in  std_logic;
		    ADD_WR  : in  std_logic_vector(NAddr-1 downto 0);
		    ADD_RD1 : in  std_logic_vector(NAddr-1 downto 0);
		    ADD_RD2 : in  std_logic_vector(NAddr-1 downto 0);
		    DATAIN  : in  std_logic_vector(NData-1 downto 0);
		    OUT1    : out std_logic_vector(NData-1 downto 0);
		    OUT2    : out std_logic_vector(NData-1 downto 0)
	   );
	end component;

	constant NGlobal : integer := 5;			-- TO SET GENERICS, MODIFY THESE CONSTANTS ONLY!
	constant NBlockRegs : integer := 4;
	constant NWindows : integer := 5;
	constant NData : integer := 8;
	constant memAddr : integer := integer(ceil(log2(real(NblockRegs))));
	constant ClkPeriod : time := 10 ns;
	signal rst_s, clk_s, call_s, rtrn_s, ackIN_s, ackOUT_s, W_s, RD1_s, RD2_s, en_s, enfake_s, spill_s, fill_s, ready_s: std_logic;
	signal logWaddr_s, logR1addr_s, logR2addr_s: std_logic_vector(4 downto 0);
	signal memR, memW : std_logic;
	signal memRaddr, memWaddr : std_logic_vector(memAddr downto 0);
	constant memR2addr: std_logic_vector(memAddr downto 0) := (others => '0');		-- actually, the fake memory has only one read channel
	signal memIN, memOUT, memOUT2 : std_logic_vector(NData-1 downto 0);				-- memOUT2 actually not used
	signal DATAIN_s, RD1out_s, RD2Out_s: std_logic_vector(Ndata-1 downto 0);
begin
	DUT: RMLwithRF generic map (NGlobal=>NGlobal, NBlockRegs=>NBlockRegs, NWindows=>NWindows, NData=>NData)
					port map (rst=>rst_s, clk=>clk_s, ackIN=>ackIN_s, ackOUT=>ackOUT_s, call=>call_s, rtrn=>rtrn_s, 
							  W=>W_s, RD1=>RD1_s, RD2=>RD2_s, en=>en_s,
							  spill=>spill_s, fill=>fill_s, ready=>ready_s,
							  logWaddr=>logWaddr_s, logR1addr=>logR1addr_s, logR2addr=>logR2addr_s,
							  DATAIN=>DATAIN_s, RD1out=>RD1out_s, RD2out=>RD2out_s);	
	
	fakeMemory: register_file generic map (NData=>NData, NRegs=>NBlockRegs, NAddr=>memAddr)
							port map (CLK=>clk_s, RESET=>rst_S, ENABLE=>enfake_s,
									  RD1=>memR, RD2=>'0', WR=>memW, ADD_WR=>memWaddr,
									  ADD_RD1=>memRaddr, ADD_RD2 => memR2addr, DATAIN=>memIN, OUT1=>memOUT, OUT2=>memOUT2);

	ClkProcess: process
	begin
		clk_s <= '0';
		wait for ClkPeriod/2;
		clk_s <= '1';
		wait for ClkPeriod/2;
	end process;

	TestProcess: process
		variable i: integer := 1; 					-- test counter
	begin
	--- Reset State ---
		rst_s <= '1';
		call_s <= '0'; rtrn_s <= '0'; ackIN_s <= '0'; 
		W_s <= '0'; RD1_s <= '0'; RD2_s <= '0';
		en_s <= '1'; enfake_s <= '1';				-- memory and regfile are always active for the sake of simplicity (it is not up to the RML to manage these signal)
		memR <= '0'; memW <= '0';		
		wait for ClkPeriod;

	--- TEST 1: W/R to the RegFile ---
		-- write to LOCAL block
		rst_s <= '0';
		W_s <= '1';									
		datain_s <= (others => '1');
		logWaddr_s <= "00100";
		wait for ClkPeriod;
		
		-- read from the same address		
		W_S <= '0'; RD1_s <= '1';
		logR1addr_s <= "00100";						
		wait for ClkPeriod;
		assert RD1out_s = "11111111" report "Error on Test " & integer'image(i) & ": expected output is 11111111";
		i := i + 1;
		
		-- write to the OUT window		 							
		W_s <= '1';	RD1_s <= '0';					
		datain_s <= "10101010";
		logWaddr_s <= "01000";
		wait for ClkPeriod;
		
		-- write to a global register
		W_s <= '1'; RD1_s <= '0';		
		datain_s <= "01010101";
		logWaddr_s <= "10100";
		wait for ClkPeriod;

		-- read from the out window
		W_S <= '0'; RD1_s <= '1';
		logR1addr_s <= "01000";			
		wait for ClkPeriod;
		assert RD1out_s = "10101010" report "Error on Test " & integer'image(i) & ": expected output is 10101010";
		i := i + 1;

		-- read from a global register		
		W_S <= '0'; RD2_s <= '1'; 
		logR2addr_s <= "10100";			
		wait for ClkPeriod;
		assert RD2out_s = "01010101" report "Error on Test " & integer'image(i) & ": expected output is 01010101";		
		i := i + 1;

	--- TEST 2: Call without fill and W/R to the RegFile (check if IN WINDOW(i) === OUT WINDOW(i-1))---

		call_s <= '1'; rtrn_s <= '0'; ackIN_s <= '0'; 			-- a CALL should be managed (the CU automatically enables the RegFile during the whole procedure)
		en_s <= '1';		
		W_s <= '0'; RD1_s <= '0'; RD2_s <= '0'; 
		wait for ClkPeriod;
		assert spill_s = '0' and fill_s = '0' report "Error on Test " & integer'image(i) & ": neither SPILL nor FILL should occur";
		i := i + 1;
		wait until ready_s = '1';
		
		-- read from IN window (check if IN WINDOW(i+1) === OUT WINDOW(i))
		call_s <= '0'; rtrn_s <= '0';
		en_s <= '1';
		W_s <= '0'; RD1_s <= '1'; RD2_s <= '0';
		logR1addr_s<= "00000";
		wait for ClkPeriod; 
		assert RD1out_s = "10101010" report "Error on Test " & integer'image(i) & ": expected output is 10101010";
		i := i + 1;

		--first local address (write to IN window)
		en_s <= '1';
		W_s <= '1'; RD1_s <= '0'; RD2_s <= '0';		
		logWaddr_s(4) <= '0';
		logWaddr_s(3 downto 0) <= "0000"; 
		DATAIN_s <= "10101110";
		wait for ClkPeriod;

		--second local address
		en_s <= '1';
		W_s <= '1'; RD1_s <= '0'; RD2_s <= '0';		
		logWaddr_s(4) <= '0'; 
		logWaddr_s(3 downto 0) <= "0101";
		DATAIN_s <= "01100100";
		wait for ClkPeriod;

		--read the two previously written locations
		en_s <= '1';
		W_s <= '0'; RD1_s <= '1'; RD2_s <= '1';		
		logR1addr_s(4) <= '0'; 
		logR1addr_s(3 downto 0) <= "0000";
		logR2addr_s(4) <= '0'; 
		logR2addr_s(3 downto 0) <= "0101";
		wait for ClkPeriod;
		assert RD1out_s = "10101110" report "Error on Test " & integer'image(i) & "a: expected output is 10101110";
		assert RD2out_s = "01100100" report "Error on Test " & integer'image(i) & "b: expected output is 01100100";
		i := i + 1;

		--write the first out address
		en_s <= '1';
		W_s <= '1'; RD1_s <= '0'; RD2_s <= '0';		
		logWaddr_s(4) <= '0'; 
		logWaddr_s(3 downto 0) <= "1000";
		DATAIN_s <= "11001100";
		wait for ClkPeriod;

		--read from first global reg (check if global regs are effectively in common among all subroutines)
		en_s <= '1';
		W_s <= '0'; RD1_s <= '1'; RD2_s <= '0';	
		logR1addr_s(4) <= '1'; 
		logR1addr_s(3 downto 0) <= "0000";
		wait for ClkPeriod;
		assert RD1out_s = "01010101" report "Error on Test " & integer'image(i) & ": expected output is 10101110";
		i := i + 1;
	
	--- TEST 3: CALL with Spill ---
		
		--call until all windows are used
		W_s <= '0'; RD1_s <= '0'; RD2_s <= '0';	
		call_s <= '1';
		wait for ClkPeriod;
		assert spill_s = '0' and fill_s = '0' report "Error on Test " & integer'image(i) & ": neither SPILL nor FILL should occur";	
		i := i + 1;
		call_s <= '0';
		wait until ready_s = '1';
		call_s <= '1';
		wait for ClkPeriod;
		assert spill_s = '0' and fill_s = '0' report "Error on Test " & integer'image(i) & ": neither SPILL nor FILL should occur";	
		i := i + 1;
		call_s <= '0';
		wait until ready_s = '1';
		call_s <= '1';
		wait for ClkPeriod;
		assert spill_s = '0' and fill_s = '0' report "Error on Test " & integer'image(i) & ": neither SPILL nor FILL should occur";	
		i := i + 1;
		call_s <= '0';
		wait until ready_s = '1';

		-- next call will cause a SPILL
		call_s <= '1';
		wait for ClkPeriod;
		assert spill_s = '1' and fill_s = '0' report "Error on Test " & integer'image(i) & ": SPILL should occur (no FILL)";	
		i := i + 1;
		call_s <= '0'; ackIN_s <= '1';
		wait until RD1out_s'event;
		ackIN_s <= '0';
			--save into memory
		for i in 0 to 2*NBlockRegs-1 loop
			memW <= '1';
			memWaddr <= std_logic_vector(to_unsigned(i, memWaddr'length));
			memIN <= RD1out_s;
			wait until RD1out_s'event;
		end loop;
		wait until ready_s = '1';		

		--read first IN, previous OUT register
		W_s <= '0'; RD1_s <= '1'; RD2_s <= '0';
		logR1addr_s(4) <= '0'; 
		logR1addr_s(3 downto 0) <= "0000";
		wait for ClkPeriod;
		assert RD1out_s = "11001100" report "Error on Test " & integer'image(i) & ": expected output is 11001100";
		i := i + 1;

		--write first IN
		W_s <= '1'; RD1_s <= '0'; RD2_s <= '0';
		logR1addr_s(4) <= '0'; 
		logR1addr_s(3 downto 0) <= "0000";
		DATAIN_s <= "11100001";
		wait for ClkPeriod;

	--- TEST 4: Return without fill ---
		-- NWindows RETURNS are necessary to obtain a FILL (in this testbench, NWindows = 5)
		call_s <= '0'; rtrn_s <= '1'; ackIN_s <= '0'; 			-- a RETURN should be managed (the CU automatically enables the RegFile during the whole procedure)	
		W_s <= '0'; RD1_s <= '0'; RD2_s <= '0'; 
		wait for ClkPeriod;
		assert spill_s = '0' and fill_s = '0' report "Error on Test " & integer'image(i) & ": neither SPILL nor FILL should occur";
		i := i + 1;
		wait until ready_s = '1';

		--read first OUT, previous IN register
		W_s <= '0'; RD1_s <= '1'; RD2_s <= '0';
		logR1addr_s(4) <= '0'; 
		logR1addr_s(3 downto 0) <= "1000";
		wait for ClkPeriod;
		assert RD1out_s = "11100001" report "Error on Test " & integer'image(i) & "(read after RETURN): expected output is 11100001";
		i := i + 1;

	--- TEST 5: Return with spill ---
		call_s <= '0'; rtrn_s <= '1'; ackIN_s <= '0'; 			-- a RETURN should be managed (the CU automatically enables the RegFile during the whole procedure)	
		W_s <= '0'; RD1_s <= '0'; RD2_s <= '0'; 
		wait for ClkPeriod;
		assert spill_s = '0' and fill_s = '0' report "Error on Test " & integer'image(i) & ": neither SPILL nor FILL should occur";
		i := i + 1;
		wait until ready_s = '1';

		call_s <= '0'; rtrn_s <= '1'; ackIN_s <= '0'; 			-- a RETURN should be managed (the CU automatically enables the RegFile during the whole procedure)	
		W_s <= '0'; RD1_s <= '0'; RD2_s <= '0'; 
		wait for ClkPeriod;
		assert spill_s = '0' and fill_s = '0' report "Error on Test " & integer'image(i) & ": neither SPILL nor FILL should occur";
		i := i + 1;
		wait until ready_s = '1';

		call_s <= '0'; rtrn_s <= '1'; ackIN_s <= '0'; 			-- a RETURN should be managed (the CU automatically enables the RegFile during the whole procedure)	
		W_s <= '0'; RD1_s <= '0'; RD2_s <= '0'; 
		wait for ClkPeriod;
		assert spill_s = '0' and fill_s = '0' report "Error on Test " & integer'image(i) & ": neither SPILL nor FILL should occur";
		i := i + 1;
		wait until ready_s = '1';

		-- next RETURN will cause a FILL
		call_s <= '0'; rtrn_s <= '1'; ackIN_s <= '0'; 
		wait for ClkPeriod;
		assert spill_s = '0' and fill_s = '1' report "Error on Test " & integer'image(i) & ": FILL should occur (no SPILL)";	
		i := i + 1;
		rtrn_s <= '0'; ackIN_s <= '1';
		wait until ackOUT_s <= '1';								-- wait until the RegFile is ready to receive
		ackIN_s <= '0';
		wait until rising_edge(clk_s);
			--receive the latest spilt window from memory
		for i in 2*NBlockRegs-1 downto 0 loop					-- data is received in a LIFO style
			memR <= '1';
			memRaddr <= std_logic_vector(to_unsigned(i, memRaddr'length));
			DATAIN_s <= memOUT;
			wait for ClkPeriod;
		end loop;
		wait until ready_s = '1';		

		--check whether the spilt window corresponds to the filled window
		W_s <= '0'; RD1_s <= '1'; RD2_s <= '1';
		logR1addr_s(4) <= '0'; 
		logR1addr_s(3 downto 0) <= "0100";
		logR2addr_s(4) <= '0'; 
		logR2addr_s(3 downto 0) <= "1000";
		wait for ClkPeriod;
		assert RD1out_s = "11111111" report "Error on Test " & integer'image(i) & "a (read LOCAL block of the filled window): expected output is 11111111";
		assert RD2out_s = "10101010" report "Error on Test " & integer'image(i) & "b (read OUT block of the filled window): expected output is 10101010";
		i := i + 1;
		
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
