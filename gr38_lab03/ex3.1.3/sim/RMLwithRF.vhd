library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;

entity RMLwithRF is
	generic(
		NGlobal 	: integer;		-- n. global regs
		NBlocks 	: integer;		-- n. regs per block (N = 2**k for some integer k)
		NWindows	: integer;		-- n. windows
		NData		: integer;		-- n. bit per reg
	);
	port(
		rst, clk:				in	std_logic;
		call, rtrn:				in	std_logic;			-- from the CU: they notify when context switching should be managed
		ack:					in 	std_logic; 			-- from Memory		
		W, RD1, RD2		:		in  std_logic;			-- from instructions;		
		logWaddr, logR1addr, logR2addr: in std_logic_vector(log2(N)+2 downto 0);	-- the MSB tells whether we want to access a global register or a window register, the other bits are required to point up to 4N-1 locations
		spill, fill:			out	std_logic;			-- SPILL/FILL are used to inform both the CU and the MMU when SPILL/FILL occurs
		spillend, fillend:		out std_logic;			-- notify the CU when SPILL/FILL has terminated
		en		: in  std_logic;						-- it is up to the CU to enable the RF every time, raising SPILL/FILL should notify the CU that the RF must be enabled to let the RML fill/spill the RF
		DATAIN  : in  std_logic_vector(NData-1 downto 0);
		RD1Out  : out std_logic_vector(NData-1 downto 0);
		RD2Out  : out std_logic_vector(NData-1 downto 0)
	);
end RMLwithRF;

architecture Structural of RMLwithRF is

	component RML is
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
			logWaddr, logR1addr, logR2addr: in std_logic_vector(log2(N)+2 downto 0);		-- the MSB tells whether we want to access a global register or a window register, the other bits are required to point up to 4N-1 locations
			phyWaddr, phyR1addr, phyR2addr: out std_logic_vector(ceil(log2(2*N*F+M))-1 downto 0);
			WtoRF, R1toRF, R2toRF:	out	std_logic;			-- during a SPILL/FILL, the RML must write/read to/from Memory, so it needs to control the signals that enable a read or a write in those cases	
			spill, fill:			out	std_logic;				-- SPILL/FILL are used to inform both the CU and the MMU when SPILL/FILL occurs
			spillend, fillend:		out std_logic;			-- notify the CU when SPILL/FILL has terminated
		); 
	end component RML;

	component register_file is
		generic (
		  NData : integer;
		  NRegs : integer; 
		  NAddr : integer
	   );
	   port (CLK     : in  std_logic;
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
	end component register_file;

	
begin

	RegisterMgmtLogic: RML generic map (M=>NGlobal, N=>NBlocks, F=>NWindows)
						   port map ();

	RegFile: register_file generic map (NData=>NData, NRegs=>, NAddr=>)
						   port map ();

end Structural;

configuration CFG_RMLwithRF_Structural of RMLwithRF is
	for Structural
		-- TODO finish to define the config 
	end for;
end configuration;
