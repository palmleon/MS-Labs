library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;               -- we need a conversion to unsigned 
use WORK.constants.all;

entity TB_CSB is
end entity;

architecture TEST of TB_CSB is
  constant NBIT : integer := 7;

  component LFSR16
    port (CLK, RESET, LD, EN : in  std_logic;
          DIN                : in  std_logic_vector(15 downto 0);
          PRN                : out std_logic_vector(15 downto 0);
          ZERO_D             : out std_logic);
  end component;

  component CARRY_SEL_BLOCK
    generic 
    (
      DRCAS : time     := 0 ns;
      DRCAC : time     := 0 ns;
      DELAY_MUX : time := 0 ns;
      N     : integer  := NBIT
    );
    port
    (
      A  : in  std_logic_vector(NBIT-1 downto 0);
      B  : in  std_logic_vector(NBIT-1 downto 0);
      Ci : in  std_logic;
      S  : out std_logic_vector(NBIT-1 downto 0)
    );
  end component;

  constant Period              : time      := 1 ns;  -- Clock period (1 GHz)
  signal CLK                   : std_logic := '0';
  signal RESET, LD, EN, ZERO_D : std_logic;
  signal DIN, PRN              : std_logic_vector(15 downto 0);

  signal A, B, S1, S2  : std_logic_vector(NBIT-1 downto 0);
  signal Ci, Co1, Co2, Co3 : std_logic;

begin

-- Instanciate the carry select block structural
  BLOCK_STR : CARRY_SEL_BLOCK
    port map (A, B, Ci, S1);

-- Instanciate the carry select block behavioral
  BLOCK_BEH : CARRY_SEL_BLOCK
    port map (A, B, Ci, S2);

-- Forcing adder input to LFSR output
  Ci   <= '0';
  A(0) <= PRN(0);
  A(5) <= PRN(2);
  A(3) <= PRN(4);
  A(1) <= PRN(6);
  A(4) <= PRN(8);
  A(2) <= PRN(10);
  A(6) <= '0';

  B(0) <= PRN(15);
  B(5) <= PRN(13);
  B(3) <= PRN(11);
  B(1) <= PRN(9);
  B(4) <= PRN(7);
  B(2) <= PRN(5);
  B(6) <= '0';

-- Instanciate the Unit Under Test (UUT)
  UUT : LFSR16 port map (CLK => CLK, RESET => RESET, LD => LD, EN => EN,
                         DIN => DIN, PRN => PRN, ZERO_D => ZERO_D);
-- Create the permanent Clock and the Reset pulse
  CLK   <= not CLK  after Period/2;
  RESET <= '1', '0' after Period;
-- Open file, make a load, and wait for a timeout in case of design error.
  STIMULUS1 : process
  begin
    DIN <= "0000000000000001";
    EN  <= '1';
    LD  <= '1';
    wait for 2 * PERIOD;
    LD  <= '0';
    wait for (65600 * PERIOD);
  end process STIMULUS1;

end architecture;

configuration CSB_TEST of TB_CSB is
  for TEST
    for BLOCK_STR : CARRY_SEL_BLOCK
      use entity work.CARRY_SEL_BLOCK(structural);
    end for;
    for BLOCK_BEH : CARRY_SEL_BLOCK
      use entity work.CARRY_SEL_BLOCK(behavioral);
    end for;
  end for;
end configuration;
