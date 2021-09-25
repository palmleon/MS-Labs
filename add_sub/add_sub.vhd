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

	component Mux2to1 is
		generic 
			( N: integer := DATASIZE );
		port
			( in1, in2: in std_logic_vector (N-1 downto 0);
			  sel: in std_logic;
			  output: out std_logic_vector (N-1 downto 0)); 
	end component Mux2to1;

	signal not_B, B_muxed: std_logic_vector (NBIT-1 downto 0);

begin

	Adder: P4_adder generic map (NBIT => NBIT, NBIT_PER_BLOCK => NBIT_PER_BLOCK)
					port map (A => A, B => B_muxed, Ci => op, S => S, Co => Co);

	AdderMux: Mux2to1 generic map (N => NBIT) 
					  port map (in1 => B, in2 => not_B, sel => op, output => B_muxed);

	not_B <= not(B);

end structural;
