library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use WORK.constants.all;

entity carry_generator is
	generic (
		NBIT :			integer := 32;
		NBIT_PER_BLOCK: integer := 4);
	port (
		A :		in	std_logic_vector(NBIT-1 downto 0);
		B :		in	std_logic_vector(NBIT-1 downto 0);
		Cin :	in	std_logic;
		Co :	out	std_logic_vector((NBIT/NBIT_PER_BLOCK)-1 downto 0));
end carry_generator;

  --*************************
  -- structural arch 
  --*************************

architecture structural of carry_generator is
	signal p, g: std_logic_vector(NBIT downto 1); -- propagate and generate provided by the PGnetwork
begin 
	PGnetwork: process(A, B) -- Since logic is trivial, it can be described behaviourally with no difference compared to its structural description
	begin
		for i in 0 to NBIT-1 loop
			p(i+1) <= a(i) xor b(i);
			g(i+1) <= a(i) and b(i);
		end loop;
	end process PGnetwork;

	-- TODO Sparse-Tree Structural Description
end architecture;

  --*************************
  -- configuration 
  --*************************

configuration CFG_carrygen_structural of carry_generator is
	for structural
    end for;
end CFG_carrygen_structural;
