library ieee;
use ieee.std_logic_1164.all;
use work.myGlobals.all;

entity add_sub is	
	generic 
	(
	    NBIT     : integer;  -- number of bit of single carry_sel_block
	    NBIT_PER_BLOCK : integer
	);
	port
	(
	    A  : in  std_logic_vector(NBIT-1 downto 0);
	    B  : in  std_logic_vector(NBIT-1 downto 0);
	    op : in  std_logic;
	    S  : out std_logic_vector(NBIT-1 downto 0);
	    Co : out std_logic
	);
end add_sub;

architecture structural of Add_sub is

	component P4_adder is
		generic 
			(
				NBIT     : integer;  -- number of bit of single carry_sel_block
				NBIT_PER_BLOCK : integer
			);
		port
			(
				A  : in  std_logic_vector(NBIT-1 downto 0);
				B  : in  std_logic_vector(NBIT-1 downto 0);
				Ci : in  std_logic;
				S  : out std_logic_vector(NBIT-1 downto 0);
				Co : out std_logic
			);
	end component P4_adder;

	signal B_muxed: std_logic_vector (NBIT-1 downto 0);

begin

	Adder: P4_adder generic map (NBIT => NBIT, NBIT_PER_BLOCK => NBIT_PER_BLOCK)
					port map (A => A, B => B_muxed, Ci => op, S => S, Co => Co);

	AdderMux: Mux2to1 generic map (N => NBIT) 
					  port map (in1 => B, in2 => not(B), sel => op, output => B_muxed);

end structural;
