library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;

entity RMLwithRF is
	generic(
		NGlobal 	: integer;		-- n. global regs
		NBlockRegs 	: integer;		-- n. regs per block (N = 2**k for some integer k)
		NWindows	: integer;		-- n. windows
		NData		: integer		-- n. bit per reg
	);
	port(
		rst, clk:				in	std_logic;
		call, rtrn:				in	std_logic;			-- from the CU: they notify when context switching should be managed
		ack:					in 	std_logic; 			-- from Memory		
		W, RD1, RD2:			in  std_logic;			-- from instructions;	
		en:					    in  std_logic;			-- it is up to the CU to enable the RF every time, raising SPILL/FILL should notify the CU that the RF must be enabled to let the RML fill/spill the RF
		DATAIN  : 				in  std_logic_vector(NData-1 downto 0);	
		logWaddr, logR1addr, logR2addr: in std_logic_vector(integer(log2(real(NBlockRegs)))+2 downto 0);	-- the MSB tells whether we want to access a global register or a window register, the other bits are required to point up to 4NBlockRegs-1 locations
		spill, fill:			out	std_logic;			-- SPILL/FILL are used to inform both the CU and the MMU when SPILL/FILL occurs
		spillend, fillend:		out std_logic;			-- notify the CU when SPILL/FILL has terminated
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
			logWaddr, logR1addr, logR2addr: in std_logic_vector(integer(log2(real(N)))+2 downto 0);		-- the MSB tells whether we want to access a global register or a window register, the other bits are required to point up to 4N-1 locations
			phyWaddr, phyR1addr, phyR2addr: out std_logic_vector(integer(ceil(log2(real(2*N*F+M))))-1 downto 0);
			WtoRF, R1toRF, R2toRF:	out	std_logic;			-- during a SPILL/FILL, the RML must write/read to/from Memory, so it needs to control the signals that enable a read or a write in those cases	
			spill, fill:			out	std_logic;				-- SPILL/FILL are used to inform both the CU and the MMU when SPILL/FILL occurs
			spillend, fillend:		out std_logic			-- notify the CU when SPILL/FILL has terminated
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
	constant phyAddrSize: integer := integer(ceil(log2(real(2*NBlockRegs*NWindows+NGlobal))));
	signal phyWaddr, phyR1addr, phyR2addr: std_logic_vector(phyAddrSize-1 downto 0);
	signal WtoRF, R1toRF, R2toRF: std_logic;
begin

	RegisterMgmtLogic: RML generic map (M=>NGlobal, N=>NBlockRegs, F=>NWindows)
						   port map (call=>call, rtrn=>rtrn, ack=>ack, 
									 rst=>rst, clk=>clk,
									 Win=>W, R1in=>RD1, R2in=>RD2, 
									 logWaddr=>logWaddr, logR1addr=>logR1addr, logR2addr=>logR2addr,
									 phyWaddr=>phyWaddr, phyR1addr=>phyR1addr, phyR2addr=>phyR2addr,
									 WtoRF=>WtoRF, R1toRF=>R1toRF, R2toRF=>R2toRF,
									 spill=>spill, fill=>fill,
									 spillend=>spillend, fillend=>fillend);

	RegFile: register_file generic map (NData=>NData, NRegs=>2*NBlockRegs*NWindows+NGlobal, NAddr=>phyAddrSize)
						   port map (CLK=>clk, RESET=>rst, ENABLE=>en,  
									 RD1=>R1toRF, RD2=>R2toRF, WR=>WtoRF, 
									 ADD_WR=>phyWaddr, ADD_RD1=>phyR1addr, ADD_RD2 =>phyR2addr,
									 DATAIN=>DATAIN, OUT1=>RD1Out, OUT2=>RD2Out);

end Structural;

configuration CFG_RMLwithRF_Structural of RMLwithRF is
	for Structural
		for RegisterMgmtLogic: RML
			use configuration work.CFG_RML_HLSM;
		end for;
		for RegFile: register_file
			use configuration work.CFG_RF_BEH;
		end for;
	end for;
end configuration;
