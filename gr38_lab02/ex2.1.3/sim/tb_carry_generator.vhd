library ieee; 
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use STD.textio.all;
use WORK.constants.all;

entity TB_CARRY_GENERATOR is 
end TB_CARRY_GENERATOR; 

architecture TEST of TB_CARRY_GENERATOR is

	component carry_generator is
		generic (
			NBIT :			integer := numBit;
			NBLOCKS:	 	integer := (numBit / 4));
		port (
			A :		in	std_logic_vector(NBIT-1 downto 0);
			B :		in	std_logic_vector(NBIT-1 downto 0);
			Cin :	in	std_logic;
			Co :	out	std_logic_vector(NBLOCKS-1 downto 0));
	end component carry_generator;
	constant Nbit: integer := 16;								-- FOR TESTING, MODIFY THIS FIELD! 
	constant Nblocks: integer := 4;								-- FOR TESTING, MODIFY THIS FIELD!
	signal A_s, B_s: std_logic_vector(Nbit-1 downto 0);
	signal Cin_s: std_logic;
	signal Co_s: std_logic_vector(Nblocks-1 downto 0);
begin
	DUT: carry_generator generic map (Nbit, Nblocks)
						 port map (A_s, B_s, Cin_s, Co_s);

	Test: process
		file 	 testfile: text;
		variable testline: line;
		variable A, B: bit_vector(Nbit-1 downto 0);
		variable Cin: bit; 
		variable Cout_exp: bit_vector(Nblocks-1 downto 0);
		variable char: character;
		variable cnt: integer := 1;
	begin
		file_open(testfile, "tb_data.mem", read_mode);
		while not endfile(testfile) loop
			-- format of test line: A B Cin Cout(expected)
			readline(testfile, testline);
			read(testline, A); 		read(testline, char);
			read(testline, B); 		read(testline, char);
			read(testline, Cin);	read(testline, char);
			read(testline, Cout_exp);
			A_s <= to_stdlogicvector(A);
			B_s <= to_stdlogicvector(B);
			if Cin = '0' then Cin_s <= '0';
			elsif Cin = '1' then Cin_s <= '1';
			end if;
			wait for 50 ns; -- long interval to be sure that computation has terminated
			assert Co_s = to_stdlogicvector(Cout_exp) report "ERROR on Test " & integer'image(cnt);
			cnt := cnt + 1;
		end loop;
		file_close(testfile);
		wait;
	end process;
end TEST;

configuration CFG_CarryGenTest of tb_carry_generator is
	for TEST
		for DUT: carry_generator
			use	configuration work.CFG_carrygen_structural;
		end for;
	end for;
end configuration;
