library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;

entity RML is
	generic(
		M : integer := 4;		-- global regs (we suppose that M <= 4N to avoid using full adders inside the DP)
		N : integer := 8;		-- block regs (we suppose that N=2**k for some integer k)
		F : integer := 5		-- windows
	);
	port(
		call, rtrn:				in	std_logic;			-- from the CU: they notify when context switching should be managed
		ack:					in 	std_logic; 			-- from Memory		
		rst, clk:				in	std_logic;
		Win, R1in, R2in:		in  std_logic;			-- from instructions;		
		logWaddr, logR1addr, logR2addr: in std_logic_vector(integer(log2(real(N)))+2 downto 0);		-- the MSB tells whether we want to access a global register or a window register, the other bits are required to point up to 4N-1 locations
		phyWaddr, phyR1addr, phyR2addr: out std_logic_vector(integer(ceil(log2(real(2*N*F+M))))-1 downto 0);
		WtoRF, R1toRF, R2toRF:	out	std_logic;			-- during a SPILL/FILL, the RML must write/read to/from Memory, so it needs to control the signals that enable a read or a write in those cases	
		spill, fill:			out	std_logic;			-- SPILL/FILL are used to inform both the CU and the MMU when SPILL/FILL occurs
		ready:					out std_logic			-- notify the CU that the RegFile is available from the next clk.cycle
	);  
end RML;

architecture HLSM of RML is
	type StateType is (Reset, Idle, Rtrn_NoFill, Rtrn_Fill1, Rtrn_Fill2, Rtrn_Fill3, Rtrn_Fill4, Call_NoSpill, Call_Spill1, Call_Spill2, Call_Spill3);
	signal CurrState, NextState: StateType;
	signal CurrSWP, NextSWP, CurrCWP, NextCWP, CurrCS, NextCS, CurrCR, NextCR: unsigned(integer(ceil(log2(real(F))))-1 downto 0); 	-- CS stands for CANSAVE, CR stands for CANRESTORE
	signal CurrMemCntr, NextMemCntr: unsigned(integer(real(log2(real(N)))) downto 0); -- used to access the window, one reg per time, during a SPILL/FILL (base address of the window = SWP)
begin
	SynchProc: process(clk)
	begin
		if (rst = '1') then
			CurrState <= Reset;
			CurrSWP <= (others => '0');
			CurrCWP <= (others => '0');
			CurrCS <= (others => '0');
			CurrCR <= (others => '0');
		elsif (rst = '0') then
			CurrState <= NextState;
			CurrSWP <= NextSWP;
			CurrCWP <= NextCWP;
			CurrCS <= NextCS;
			CurrCR <= NextCR;
		end if;
	end process;

	CombProc: process(CurrState, CurrSWP, CurrCWP, CurrCS, CurrCR, CurrMemCntr, call, rtrn, ack, Win, R1in, R2in, logWaddr, logR1addr, logR2addr)
	begin
		NextState <= CurrState; 	-- default behaviour
		NextCWP <= CurrCWP;
		NextSWP <= CurrSWP;
		NextCS <= CurrCS;
		NextCR <= CurrCR;
		NextMemCntr <= CurrMemCntr;
		ready <= '0';
		spill <= '0'; 	fill <= '0';	
		WtoRF <= '0';	R1toRF <= '0';	R2toRF <= '0';
		if (logWaddr(logWaddr'high) = '1') then												-- logical address points to a global register
			phyWaddr	<= std_logic_vector(to_unsigned(F + to_integer(unsigned'("" & logWaddr(logWaddr'high-1))), phyWaddr'length - logWaddr'length - 1)) & logWaddr(logWaddr'high-2 downto 0); -- sum F and logWaddr'MSB, then concatenate to the rest of the logical address
		else 																				-- logical address points to a window register
			phyWaddr	<= std_logic_vector(to_unsigned(to_integer(CurrCWP) + to_integer(unsigned'("" & logWaddr(logWaddr'high-1))), phyWaddr'length - logWaddr'length - 1)) & logWaddr(logWaddr'high-2 downto 0); -- sum CWP and logWaddr'MSB, then concatenate to the rest of the logical address
		end if;
		if (logR1addr(logR1addr'high) = '1') then 											-- same for the other address signals
			phyR1addr	<= std_logic_vector(to_unsigned(F + to_integer(unsigned'("" & logR1addr(logR1addr'high-1))), phyR1addr'length - logR1addr'length - 1)) & logR1addr(logR1addr'high-2 downto 0);
		else
			phyWaddr	<= std_logic_vector(to_unsigned(to_integer(CurrCWP) + to_integer(unsigned'("" & logR1addr(logR1addr'high-1))), phyR1addr'length - logR1addr'length - 1)) & logR1addr(logR1addr'high-2 downto 0);
		end if;
		if (logR2addr(logR2addr'high) = '1') then
			phyR2addr	<= std_logic_vector(to_unsigned(F + to_integer(unsigned'("" & logR2addr(logR2addr'high-1))), phyR2addr'length - logR2addr'length - 1)) & logR2addr(logR2addr'high-2 downto 0);
		else
			phyWaddr	<= std_logic_vector(to_unsigned(to_integer(CurrCWP) + to_integer(unsigned'("" & logR2addr(logR2addr'high-1))), phyR2addr'length - logR2addr'length - 1)) & logR2addr(logR2addr'high-2 downto 0);
		end if; 
		case CurrState is
			when Reset	 		=>
				NextCS <= to_unsigned(F, CurrCS'length);
				if (call = '1' and rtrn = '0') then									-- after reset, only a CALL is accepted; eventual RETURNs would not modify the window (FATAL ERROR, but SW-related)
					NextState <= Call_NoSpill;
				end if;
			when Idle	 		=>													-- state where we are within a certain Subroutine (neither CALL nor RETURN)
				WtoRF <= Win; 														-- in this state, W/R signals are passed through (transparent RML)
				R1toRF <= R1in;
				R2toRF <= R2in;
				if (call = '1' and rtrn = '0' and to_integer(CurrCS) /= 0) then
					NextState <= Call_NoSpill;
				elsif (call = '1' and rtrn = '0' and to_integer(CurrCS) = 0) then
					NextState <= Call_Spill1;
				elsif (call = '0' and rtrn = '1' and to_integer(CurrCR) /= 0) then
					NextState <= Rtrn_NoFill;
				elsif (call = '0' and rtrn = '1' and to_integer(CurrCR) = 0) then
					NextState <= Rtrn_Fill1;
				end if;
			when Call_NoSpill	=>
				NextCWP <= to_unsigned((to_integer(CurrCWP) + 1) mod F, NextCWP'length);
				NextCS <= to_unsigned(to_integer(CurrCS) - 1, NextCS'length);		-- after a CALL, n. free windows has decremented
				ready <= '1';
				NextState <= Idle;
			when Call_Spill1	=>
				spill <= '1';
				NextMemCntr <= (others => '0');										-- init window offset register 
				if (ack = '0') then													-- after a SPILL, we wait for an ack signal from the MMU before sending data to Memory
					NextState <= CurrState;
				elsif (ack = '1') then
					NextState <= Call_Spill2;
				end if;
				NextState <= Call_Spill2;	
			when Call_Spill2	=>													-- state where a window is sent to Memory
				NextMemCntr <= to_unsigned(to_integer(CurrMemCntr) + 1, NextMemCntr'length);			
				WtoRF <= '0';	R1toRF <= '1';	R2toRF <= '0';						-- the RML knows nothing about the DataBus, it only expects to read data to send to Memory
				phyR1addr <= std_logic_vector(CurrSWP & CurrMemCntr);				-- a window is 2N reg wide: the window number and the offset can be concatenated to obtain the physical address to access to
				if (to_integer(CurrMemCntr) = 2*N-1) then							-- terminating condition: 2N regs have been sent
					NextState <= Call_Spill3;
				elsif (to_integer(CurrMemCntr) /= 2*N-1) then
					NextState <= CurrState;
				end if;
			when Call_Spill3	=>
				ready <= '1';															-- notifies the CU so that it can resume instruction execution
				NextSWP <= to_unsigned((to_integer(CurrSWP) + 1) mod F, NextSWP'length);	-- finally, SWP and CWP are updated accordingly
				NextCWP <= to_unsigned((to_integer(CurrCWP) + 1) mod F, NextCWP'length);	-- CS is not updated since spill frees a window and re-occupies it at the same time								
				NextState <= Idle;
			when Rtrn_NoFill	=>
				NextCWP <= to_unsigned((to_integer(CurrCWP) - 1) mod F, NextCWP'length);
				NextCS <= to_unsigned(to_integer(CurrCS) + 1, NextCS'length);	-- after RETURN, one window has become available
				ready <= '1';
				NextState <= Idle;
			when Rtrn_Fill1		=>
				fill <= '1';
				if (ack = '1') then												-- after a FILL, we wait for an ack signal from the MMU before reading incoming data from Memory 
					NextState <= Rtrn_Fill2;
				elsif (ack = '0') then
					NextState <= CurrState;
				end if;
			when Rtrn_Fill2		=>
				NextSWP <= to_unsigned((to_integer(CurrSWP) - 1) mod F, NextSWP'length);			-- the base address of the window to restore is initialized
				NextMemCntr <= to_unsigned(2*N-1, NextMemCntr'length);				-- init window offset register (if Memory behaves like a stack, data is popped out from Memory as in a LIFO)
				NextState <= Rtrn_Fill3;
			when Rtrn_Fill3		=>												-- state where a window is read from Memory
				NextMemCntr <= to_unsigned(to_integer(CurrMemCntr) - 1, NextMemCntr'length);
				WtoRF <= '1';	R1toRF <= '0';	R2toRF <= '0';					-- the RML knows nothing about the DataBus, it only expects to receive data to store in the RegFile
				phyWaddr <= std_logic_vector(CurrSWP & CurrMemCntr);				-- a window is 2N reg wide: the window number and the offset can be concatenated to obtain the physical address to access to
				if (to_integer(CurrMemCntr) = 0) then							-- terminating condition: 2N regs have been stored in the RegFile
					NextState <= Rtrn_Fill4;
				elsif (to_integer(CurrMemCntr) /= 0) then
					NextState <= CurrState;
				end if;
			when Rtrn_Fill4		=>
				ready <= '1';													-- inform the CU that FILL has terminated and so that instruction execution resumes
				NextCWP <= to_unsigned((to_integer(CurrCWP) - 1) mod F, NextCWP'length);	-- update CWP
				NextState <= Idle;
		end case;
	end process;
end HLSM;

configuration CFG_RML_HLSM of RML is
  for HLSM
  end for;
end configuration;

