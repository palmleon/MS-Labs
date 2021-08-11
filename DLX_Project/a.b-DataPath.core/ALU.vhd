library ieee;
use ieee.std_logic_1164.all;
use work.myGlobals.all;

entity ALU is
	generic
		(N: integer := DATASIZE); 
	port 
		(inA, inB: in std_logic_vector (N-1 downto 0);
		 op_sel: in std_logic_vector (ALUOPCSIZE-1 downto 0);
		 output: out std_logic_vector (N-1 downto 0));
end ALU;

architecture structural of ALU is
	
	component Add_sub is	
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
	end component;	

	signal addsub_output: std_logic_vector (N-1 downto 0);
	signal addsub_op_sel, addsub_co: std_logic;				-- at this time, we have not defined yet how to route the adder_op_sel signal

begin

	Adder_subtractor: Add_sub generic map (NBIT => N, NBIT_PER_BLOCK => 4)
					 		  port map (A => inA, B => inB, op => addsub_op_sel, S => addsub_output, Co => addsub_co);


	-- TODO: define how to route adder_op_sel
	addsub_op_sel <= op_sel(0);

	-- TODO: latch the adder enable to optimize power consumption
 
	output <= addsub_output; -- TODO TO REMOVE WHEN ADDITIONAL FUNCTIONAL UNIT ARE IMPLEMENTED

end structural;
