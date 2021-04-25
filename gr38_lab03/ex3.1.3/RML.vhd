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
		call, rtrn:			in	std_logic;			-- from the CU: they notify when context switching should be managed
		ack:				in 	std_logic; 			-- from memory		
		rst, clk:			in	std_logic;
		log_Waddr, log_R1addr, log_R2addr: in std_logic_vector(log2(N)+2 downto 0);					-- the MSB tells whether we want to access a global register or a window register, the other bits are required to point up to 3N locations
		phy_Waddr, phy_R1addr, phy_R2addr: out std_logic_vector(ceil(log2(2*N*F+M))-1 downto 0);
		en, spill, fill:	out	std_logic;			-- enabling the regfile is up to the RML, while SPILL/FILL are used to inform both the CU and the MMU when SPILL/FILL occurs
		spillend, fillend:	out std_logic;			-- notify the CU when SPILL/FILL has terminated
	);  
end RML;

architecture HLSM of RML is
	type StateType is (Reset, Idle, Rtrn_NoFill, Rtrn_Fill1, Rtrn_Fill2, Rtrn_Fill3, Rtrn_Fill4, Call_NoSpill, Call_Spill1, Call_Spill2, CallSpill3);
	signal CurrState, NextState: StateType;
	signal SWP, CWP, cansave, canrestore: std_logic_vector(ceil(log2(F))+ downto 0);
begin
	SynchProc: process(clk)

	end process;

	CombProc:  process(-- TODO insert all signal of the combinational net)

	end process;
end HLSM;

configuration CFG_RML_HLSM of RML is
  for HLSM
  end for;
end configuration;

