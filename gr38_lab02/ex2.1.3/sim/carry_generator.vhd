library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use IEEE.math_real.all;
use WORK.constants.all;

entity carry_generator is
	generic (
		NBIT :				integer := numBit;
		NBIT_PER_BLOCK:	 	integer := (numBit / 4));
	port (
		A :		in	std_logic_vector(NBIT-1 downto 0);
		B :		in	std_logic_vector(NBIT-1 downto 0);
		Cin :	in	std_logic;
		Co :	out	std_logic_vector(NBIT/NBIT_PER_BLOCK-1 downto 0));
end carry_generator;

  --*************************
  -- structural arch 
  --*************************

architecture structural of carry_generator is	

	component PGnet_block is
		generic (
			PDELAY:		time := 3*NDDELAY;
			GDELAY:		time := NDDELAY + IVDELAY);
		port (
			A :			in	std_logic;
			B :			in	std_logic;
			Pii, Gii :	out	std_logic);
	end component PGnet_block;

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

	constant NBLOCKS: integer := NBIT/NBIT_PER_BLOCK;
	constant tree_height: integer := integer(log2(real(NBIT)));
	constant log2nblocks: integer := integer(log2(real(NBLOCKS)));
	type SignalVector is array(NBIT downto 0) of std_logic;
	type SignalMatrix is array(NBIT downto 1) of SignalVector;
	signal p, g: SignalMatrix; -- propagate and generate signal matrix (breadboard-like structure)
begin
	PGnetwork:
	for i in 0 to NBIT-1 generate
		PG_i_i: PGnet_block port map (A=>a(i), B=>b(i), Pii=>p(i+1)(i+1), Gii=>g(i+1)(i+1));
	end generate;
	
	G_1_0:	Gen_Gen port map (Pik=>p(1)(1), Gik=>g(1)(1), Gmj=>Cin, Gij=>g(1)(0)); -- exceptional block where Cin is inserted
			
	main_tree: 
		-- given i, j for a PG block, by definition: i = (pos+1) * 2**h, j = 1 + pos * 2**h (for a G block, j = 0 always)
		-- h is the current height in the tree, where 0 is the height of the PG network (Blocks where i and j are the same)
		-- pos is the horizontal position, counting from the right (right-most block in a row is block 0 for that row)
		-- the main tree is the binary tree obtained when NBLOCKS = 1 (the only Cout is the one on the MSB) 
	for h in 1 to tree_height generate 
		main_tree_nested:
		for pos in 0 to NBIT/2**h-1 generate
				constant i: integer := (pos+1)*(2**h);
				constant j: integer := 1 + pos*(2**h);
				constant k: integer := (2*pos+1)*2**(h-1)+1;
			begin
				main_tree_G:
				if pos = 0 generate
					G_i_0: Gen_Gen port map    (Pik=>p(i)(k), 		Gik=>g(i)(k),
											 	Gmj=>g(k-1)(0), 
											 	Gij=>g(i)(0));
				end generate;
				main_tree_PG:
				if pos > 0 generate
					PG_i_j: Gen_Prop port map  (Pik=>p(i)(k), 		Gik=>g(i)(k), 
												Pmj=>p(k-1)(j), 	Gmj=>g(k-1)(j), 
												Pij=>p(i)(j), 		Gij=>g(i)(j));
			end generate;
		end generate;		
	end generate;	
	
	-- The Full Carry Tree contains all the blocks requested and it is built starting from its core: the Main Tree
	-- Given a column i whose Co is requested, we generate the corresponding G block and define all the signals it requires.
	-- For every block (PG or G), we want that the highest n.bits should be provided by the Main Tree.
	-- For this reason, the RIB (Right Input Block - k-1 to j) is defined as the nearest block in the Main Tree that provides the highest possible n.bits
	-- In this way, we only need to build the required blocks at column i, since the RIB has been already built
	full_tree:
	-- for Cindex in 1 to NBLOCKS generate
	for step_width in 2 to log2nblocks generate												-- every iteration changes the Current Step, dividing it by 2 every time
		constant CurrStep : integer := NBIT / 2**step_width;
		begin
		full_tree_nested:
		for Cindex in 1 to NBIT/(2*CurrStep) - 1 generate									-- every cycle build the blocks related to a columns whose index is are multiple of the current step
			constant i: integer := (2*Cindex + 1) * CurrStep;								-- the index is such that we never build a generate block on a column that already has it
			begin					  																			
			column_build:
			for h in 1 to tree_height generate												-- we want to provide all the P and the G signals required
				PG_build:																
				if (i > 2**h and i mod 2**h > 2**(h-1)) generate							-- given a level h, the nbits we have to manage at that level is (i mod 2**h)
					constant j: integer := (i / 2**h) * 2**h + 1;						-- given a level h, we can manage number of bits from 2**(h-1) up to 2**h included
					constant k: integer := (i / 2**(h-1)) * 2**(h-1) + 1;				-- if we have to manage less bits, we do not need to build a block as they are managed elsewhere
					begin																-- the first condition is used to avoid building another G block (to build later) 
					PG_i_j: Gen_Prop port map  (Pik=>p(i)(k), 		Gik=>g(i)(k), 
												Pmj=>p(k-1)(j), 	Gmj=>g(k-1)(j), 
												Pij=>p(i)(j), 		Gij=>g(i)(j));
				end generate;
				G_build:
				if (i < 2**h and i > 2**(h-1)) generate										-- both the condition avoid to build multiple G blocks
					G_i_0: Gen_Gen port map    (Pik=>p(i)(2**(h-1) + 1),					-- generation of the corresponding G block
									 		 	Gik=>g(i)(2**(h-1) + 1),
									 		 	Gmj=>g(2**(h-1))(0), 
									 		 	Gij=>g(i)(0));
				end generate;
			end generate;
		end generate;
	end generate;	

	output_assignment:
	for Cindex in 1 to NBLOCKS generate
		constant i: integer := NBIT/NBLOCKS*Cindex;
		begin
		Co(Cindex-1) <= g(i)(0);															-- connecting the g(i)(0) signal to C
	end generate;
	

end architecture;

  --*************************
  -- configuration 
  --*************************

configuration CFG_carrygen_structural of carry_generator is
	for structural
		for PGnetwork
			for PG_i_i: PGnet_block
				use configuration work.CFG_pgnetblock_BEHAVIORAL;
			end for;
		end for;
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
		for full_tree
			for full_tree_nested
				for column_build
					for PG_build
						for PG_i_j: Gen_Prop
							use configuration work.CFG_GeneralPropagate_BEHAVIORAL;
						end for;
					end for;
					for G_build
						for G_i_0: Gen_Gen
							use configuration work.CFG_GeneralGenerate_BEHAVIORAL;
						end for;
					end for;
				end for;
			end for;
		end for;
    end for;
end CFG_carrygen_structural;
