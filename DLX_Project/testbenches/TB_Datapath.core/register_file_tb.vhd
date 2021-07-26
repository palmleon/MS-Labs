library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use work.constants.all;

entity Tb_Register_File is
end Tb_Register_File;

architecture Test of Tb_Register_File is

  component Register_file is
    generic (
      NRegs : integer;
	  NData : integer;
      NAddr : integer);
    port (
      CLK     : in  std_logic;
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
      OUT2    : out std_logic_vector(NData-1 downto 0));
  end component register_file;

  constant clkPeriod : time := 10 ns;
  constant NRegs : integer := 3;
  constant NData : integer := 2;
  constant NAddr : integer := integer(ceil(log2(real(NRegs))));
  constant NTest : integer := 27;
  signal clk_s     : std_logic := '0';
  signal reset_s   : std_logic;
  signal enable_s  : std_logic;
  signal rd1_s     : std_logic;
  signal rd2_s     : std_logic;
  signal wr_s      : std_logic;
  signal add_wr_s  : std_logic_vector(NAddr-1 downto 0);
  signal add_rd1_s : std_logic_vector(NAddr-1 downto 0);
  signal add_rd2_s : std_logic_vector(NAddr-1 downto 0);
  signal datain_s  : std_logic_vector(NData-1 downto 0);
  signal out1_s    : std_logic_vector(NData-1 downto 0);
  signal out2_s    : std_logic_vector(NData-1 downto 0);
  type type_input_bits_matrix is array (1 to NTest) of std_logic_vector(0 to 4);
  type type_input_addr_data is array (0 to 3) of std_logic_vector(NAddr-1 downto 0);
  type type_input_addr_data_matrix is array (1 to Ntest) of type_input_addr_data;
  type type_expected_results is array (0 to 1) of std_logic_vector(NAddr-1 downto 0);
  type type_expected_results_matrix is array (1 to Ntest) of type_expected_results;
  constant input_enables: type_input_bits_matrix :=
		("11111", "00111", "01100", "01010", "01001", "01001", "01010", "01011", "01100", "01101",
		 "01110", "01000", "01000", "01001", "01010", "01011", "01011", "01100", "01101", "01101",
		 "01110", "01110", "01111", "01111", "01111", "01111", "01111");
  constant input_addrs_and_data: type_input_addr_data_matrix := 
		(("00", "00", "00", "01"), ("00", "00", "00", "01"), ("00", "11", "00", "01"), ("00", "00", "11", "01"), ("11", "00", "00", "01"),
		 ("00", "00", "00", "01"), ("00", "00", "00", "01"), ("00", "11", "00", "01"), ("00", "00", "00", "01"), ("00", "00", "00", "01"),
		 ("00", "00", "00", "01"), ("11", "11", "11", "01"), ("00", "01", "01", "01"), ("00", "00", "00", "01"), ("01", "00", "00", "01"),
		 ("00", "00", "01", "01"), ("00", "01", "00", "10"), ("00", "00", "01", "01"), ("01", "00", "01", "01"), ("00", "00", "01", "11"),
		 ("00", "01", "00", "01"), ("00", "01", "01", "01"), ("00", "01", "10", "01"), ("00", "01", "00", "01"), ("00", "00", "01", "10"),
		 ("00", "01", "01", "01"), ("00", "00", "00", "11"));
  constant expected_result : type_expected_results_matrix := 
		(("00", "00"), ("ZZ", "ZZ"), ("XX", "XX"), ("XX", "XX"), ("XX", "XX"), ("ZZ", "ZZ"), ("ZZ", "01"), ("ZZ", "01"), ("01", "ZZ"), ("01", "ZZ"),
		 ("01", "01"), ("ZZ", "ZZ"), ("ZZ", "ZZ"), ("ZZ", "ZZ"), ("ZZ", "01"), ("ZZ", "00"), ("ZZ", "10"), ("10", "ZZ"), ("10", "ZZ"), ("11", "ZZ"),
		 ("01", "11"), ("01", "01"), ("01", "00"), ("01", "01"), ("10", "01"), ("01", "01"), ("11", "11"));

--T1(1, 1, 1, 1, 1, 0, 0, 0, 1) -> OUT1 = 0, OUT2 = 0
--T2(0, 0, 1, 1, 1, 0, 0, 0, 1) -> OUT1 = Z, OUT2 = Z
--T3(0, 1, 1, 0, 0, 0, Nregs, 0, 1) -> Invalid output
--T4(0, 1, 0, 1, 0, 0, 0, Nregs, 1) -> Invalid output
--T5(0, 1, 0, 0, 1, Nregs, 0, 0, 1) -> Invalid output
--T6(0, 1, 0, 0, 1, 0, 0, 0, 1) -> OUT1 = Z, OUT2 = Z 
--T7(0, 1, 0, 1, 0, 0, 0, 0, 1) -> OUT1 = Z, OUT2 = 1
--T8(0, 1, 0, 1, 1, 0, Nregs, 0, 1) -> OUT1 = Z, OUT2 = 1
--T9(0, 1, 1, 0, 0, 0, 0, 0, 1) -> OUT1 = 1, OUT2 = Z
--T10(0, 1, 1, 0, 1, 0, 0, 0, 1) -> OUT1 = 1, OUT2 = Z
--T11(0, 1, 1, 1, 0, 0, 0, 0, 1) -> OUT1 = 1, OUT2 = 1
--T12(0, 1, 0, 0, 0, Nregs, Nregs, Nregs, 1) -> OUT1 = Z, OUT2 = Z
--T13(0, 1, 0, 0, 0, 0, 1, 1, 1) -> OUT1 = Z, OUT2 = Z 
--T14(0, 1, 0, 0, 1, 0, 0, 0, 1) -> OUT1 = Z, OUT2 = Z 
--T15(0, 1, 0, 1, 0, 1, 0, 0, 1) -> OUT1 = Z, OUT2 = Z 
--T16(0, 1, 0, 1, 1, 0, 0, 1, 1) -> OUT1 = Z, OUT2 = 1 
--T17(0, 1, 0, 1, 1, 0, 1, 0, 2) -> OUT1 = Z, OUT2 = 2
--T18(0, 1, 1, 0, 0, 0, 0, 1, 1) -> OUT1 = 1, OUT2 = Z 
--T19(0, 1, 1, 0, 1, 1, 0, 1, 1) -> OUT1 = 2, OUT2 = Z 
--T20(0, 1, 1, 0, 1, 0, 0, 1, 3) -> OUT1 = 3, OUT2 = Z 
--T21(0, 1, 1, 1, 0, 0, 1, 0, 1) -> OUT1 = 1, OUT2 = 3 
--T22(0, 1, 1, 1, 0, 0, 1, 1, 1) -> OUT1 = 1, OUT2 = 1 
--T23(0, 1, 1, 1, 1, 0, 1, 2, 1) -> OUT1 = 1, OUT2 = 0 
--T24(0, 1, 1, 1, 1, 0, 1, 0, 1) -> OUT1 = 1, OUT2 = 1 
--T25(0, 1, 1, 1, 1, 0, 0, 1, 2) -> OUT1 = 2, OUT2 = 1 
--T26(0, 1, 1, 1, 1, 0, 1, 1, 1) -> OUT1 = 1, OUT2 = 1 
--T27(0, 1, 1, 1, 1, 0, 0, 0, 3) -> OUT1 = 3, OUT2 = 3 

begin

  RG : register_file generic map (
      NRegs => NRegs,
	  NData => NData,
      NAddr => NAddr)
    port map (
      CLK     => clk_s,
      RESET   => reset_s,
      ENABLE  => enable_s,
      RD1     => rd1_s,
      RD2     => rd2_s,
      WR      => wr_s,
      ADD_WR  => add_wr_s,
      ADD_RD1 => add_rd1_s,
      ADD_RD2 => add_rd2_s,
      DATAIN  => datain_s,
      OUT1    => out1_s,
      OUT2    => out2_s);

  TestProc: process
	function print(arg: std_logic_vector) return string is		-- function used to print expected results
			constant arg_vect: std_logic_vector(0 to arg'length-1) := arg; -- used because arg indexes are unknown
			constant bit_pos: integer := 2;
			variable vector_bit_image: string(1 to 3);
			variable bit_to_print: character; 
		begin
			if (arg'length > 0) then
				vector_bit_image := std_logic'image(arg_vect(0));	-- extract the bit from the vector (in '1' or '0' format)
				bit_to_print := vector_bit_image(bit_pos);
				return bit_to_print & print(arg_vect(1 to arg'length-1));
			else
				return "";
		end if;
	end function print;
	procedure print_results (i : in integer) is
		begin
			assert out1_s = expected_result(i)(0) and out2_s = expected_result(i)(1) report "Test " & integer'image(i) & " - Expected: OUT1 = " & print(expected_result(i)(0)) & ", OUT2 = " & print(expected_result(i)(1)) & "; Actual: OUT1 = " & print(out1_s) & ", OUT2 = " & print(out2_s);
	end print_results;
  begin
	for i in 1 to NTest loop
		if (i < 3 or i > 5) then
			reset_s <= input_enables(i)(0);
			enable_s <= input_enables(i)(1);
			rd1_s <= input_enables(i)(2);
			rd2_s <= input_enables(i)(3);
			wr_s <= input_enables(i)(4);
			add_wr_s <= input_addrs_and_data(i)(0);
			add_rd1_s <= input_addrs_and_data(i)(1);
			add_rd2_s <= input_addrs_and_data(i)(2);
			datain_s <= input_addrs_and_data(i)(3);
			wait for clkPeriod;
			print_results(i);
		end if;
	end loop;
	wait;
  end process;

  ClkProc: process(clk_s)
  begin
    clk_s <= not(clk_s) after clkPeriod/2;
  end process;

end Test;

