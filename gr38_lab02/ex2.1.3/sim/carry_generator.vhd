library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use IEEE.math_real.all;
use WORK.constants.all;

entity carry_generator is
	generic (
		NBIT :			integer := numBit;
		NBLOCKS:	 	integer := (numBit / 4));
	port (
		A :		in	std_logic_vector(NBIT-1 downto 0);
		B :		in	std_logic_vector(NBIT-1 downto 0);
		Cin :	in	std_logic;
		Co :	out	std_logic_vector(NBLOCKS-1 downto 0));
end carry_generator;

  --*************************
  -- structural arch 
  --*************************

architecture structural of carry_generator is	
	component Gen_Gen is
		generic (
			GDELAY : time := 2*IVDELAY + NRDELAY + NDDELAY);
		port (
			Pik, Gik, Gmj:	IN	std_logic;	-- m = k-1 by definition
			Gij:			OUT	std_logic);
	end component Gen_Gen;

	component Gen_Prop is
		generic (
		    PDELAY : time := IVDELAY + NDDELAY;
			GDELAY : time := 2*IVDELAY + NRDELAY + NDDELAY);
		port (
			Pik, Gik, Pmj, Gmj:	IN	std_logic;	-- m = k-1 by definition
			Pij, Gij:			OUT	std_logic);
	end component Gen_Prop;

	constant tree_height: integer := integer(log2(real(NBIT)));
	type SignalMatrix is array(NBIT downto 1) of std_logic_vector(NBIT downto 0);
	signal p, g: SignalMatrix; -- propagate and generate signal matrix (breadboard-like structure)
begin
	PGnetwork: process(A, B) -- Since logic is trivial, it can be described behaviourally with no difference compared to its structural description
	begin
		for i in 0 to NBIT-1 loop
			p(i+1)(i+1) <= a(i) xor b(i); -- by definition: P(i, i) = p_i
			g(i+1)(i+1) <= a(i) and b(i); -- by definition: G(i, i) = g_i
		end loop;
	end process PGnetwork;
	
	G_1_0:	Gen_Gen port map (Pik=>p(1)(1), Gik=>g(1)(1), Gmj=>Cin, Gij=>g(1)(0)); -- exceptional block where Cin is inserted
			
	main_tree: 
		-- given i, j for a PG or a G block, by definition: i = (pos+1) * 2^h, j = 1 + pos * 2^h
		-- h is the current height in the tree, where 0 is the height of the PG network (Blocks where i and j are the same)
		-- pos is the horizontal position, counting from the right (right-most block in a row is block 0 for that row)
		-- the main tree is the binary tree obtained when NBLOCKS = 1 (the only Cout is the one on the MSB) 
	for h in 1 to tree_height generate 
		main_tree_nested:
		for pos in 0 to NBIT/2**h-1 generate
			main_tree_G:
			if pos = 0 generate
				G_i_0: Gen_Gen port map    (Pik=>p((pos+1)*(2**h))(2**(h-1)+1), Gik=>g((pos+1)*(2**h))(2**(h-1)+1),
										 	Gmj=>g(2**(h-1))(0), 
										 	Gij=>g((pos+1)*(2**h))(0));
			end generate;
			main_tree_PG:
			if pos > 0 generate
				PG_i_j: Gen_Prop port map  (Pik=>p((pos+1)*(2**h))((2*pos+1)*2**(h-1)+1), 	Gik=>g((pos+1)*(2**h))((2*pos+1)*2**(h-1)+1), 
											Pmj=>p((2*pos+1)*2**(h-1))(pos*2**h+1), 		Gmj=>g((2*pos+1)*2**(h-1))(pos*2**h+1), 
											Pij=>p((pos+1)*(2**h))(pos*2**h+1), 			Gij=>g((pos+1)*(2**h))(pos*2**h+1));
			end generate;
	-- TODO Main Tree
		end generate;		
	end generate;	

	-- TODO Full Carry Tree
	
end architecture;

  --*************************
  -- configuration 
  --*************************

configuration CFG_carrygen_structural of carry_generator is
	for structural
		for G_1_0: Gen_Gen
			use configuration work.CFG_GeneralGenerate_BEHAVIORAL;
		end for;
		for main_tree
			for main_tree_nested
				for main_tree_G
					for all: Gen_Gen
						use configuration work.CFG_GeneralGenerate_BEHAVIORAL;
					end for;
				end for;
				for main_tree_PG
					for all: Gen_Prop
						use configuration work.CFG_GeneralPropagate_BEHAVIORAL;
					end for;
				end for;
			end for;
		end for;
    end for;
end CFG_carrygen_structural;
