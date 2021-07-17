library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use WORK.constants.all;

entity TB_SUM_GENERATOR is
end entity;

architecture TEST of TB_SUM_GENERATOR is
  constant NBIT           : integer := 31;
  constant NBIT_PER_BLOCK : integer := 4;

  component LFSR16
    port (CLK, RESET, LD, EN : in  std_logic;
          DIN                : in  std_logic_vector(15 downto 0);
          PRN                : out std_logic_vector(15 downto 0);
          ZERO_D             : out std_logic);
  end component;

  component SUM_GENERATOR
    generic 
      (
        NBIT            : integer := NBIT;           -- total number of bit
        NBIT_PER_BLOCK  : integer := NBIT_PER_BLOCK  -- max number of bit in a single block
      );
    port
      (
        A  : in  std_logic_vector(NBIT-1 downto 0);
        B  : in  std_logic_vector(NBIT-1 downto 0);
        Ci : in  std_logic_vector(integer(ceil(real(NBIT)/real(NBIT_PER_BLOCK)))-1 downto 0);
        S  : out std_logic_vector(NBIT-1 downto 0)
      );
  end component;

  constant Period              : time      := 1 ns;  -- Clock period (1 GHz)
  signal CLK                   : std_logic := '0';
  signal RESET, LD, EN, ZERO_D : std_logic;
  signal DIN, PRN              : std_logic_vector(15 downto 0);

  signal A, B, S_str, S_beh : std_logic_vector(30 downto 0);
  signal C : std_logic_vector (7 downto 0);

begin

-- Instanciate the sum generator
    SUM_GEN_STR: SUM_GENERATOR
        port map (A, B, C, S_str);
    
    SUM_GEN_BEH: SUM_GENERATOR
        port map (A, B, C, S_beh);

-- Forcing adder input to LFSR output
    A(3 downto 0)   <= PRN(3 downto 0);
    A(7 downto 4)   <= PRN(4 downto 1);
    A(11 downto 8)  <= PRN(5 downto 2);
    A(15 downto 12) <= PRN(6 downto 3);
    A(19 downto 16) <= PRN(7 downto 4);
    A(23 downto 20) <= PRN(8 downto 5);
    A(27 downto 24) <= PRN(9 downto 6);
    A(30 downto 28) <= PRN(10 downto 8);

    B(3 downto 0)   <= PRN(8 downto 5);
    B(7 downto 4)   <= PRN(9 downto 6);
    B(11 downto 8)  <= PRN(10 downto 7);
    B(15 downto 12) <= PRN(11 downto 8);
    B(19 downto 16) <= PRN(12 downto 9);
    B(23 downto 20) <= PRN(13 downto 10);
    B(27 downto 24) <= PRN(14 downto 11);
    B(30 downto 28) <= PRN(15 downto 13);

    --assign the carries
    C(0) <= PRN(5);
    C(1) <= PRN(9);
    C(2) <= PRN(7);
    C(3) <= PRN(11);
    C(4) <= PRN(15);
    C(5) <= PRN(1);
    C(6) <= PRN(3);
    C(7) <= PRN(13);

-- Instanciate lfsr
  LSFR : LFSR16 port map (CLK => CLK, RESET => RESET, LD => LD, EN => EN,
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

configuration TEST_SUM_GEN_CONFIG of TB_SUM_GENERATOR is
  for TEST
    for SUM_GEN_STR : SUM_GENERATOR
      use entity work.SUM_GENERATOR(structural);
    end for;
    for SUM_GEN_BEH : SUM_GENERATOR
      use entity work.SUM_GENERATOR(behavioral);
    end for;
    for LSFR : LFSR16
      use entity work.LFSR16(RTL);
    end for;
  end for;
end configuration;
