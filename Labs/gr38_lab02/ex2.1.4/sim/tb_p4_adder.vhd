library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;               -- we need a conversion to unsigned 
use WORK.constants.all;

entity TB_P4_ADDER is
end entity;

architecture TEST of TB_P4_ADDER is

  component P4_ADDER is
    generic 
    (
        NBIT           : integer := 32;  -- number of bit of single carry_sel_block
        NBIT_PER_BLOCK : integer := 4
    );
    port
    (
        A  : in  std_logic_vector(NBIT-1 downto 0);
        B  : in  std_logic_vector(NBIT-1 downto 0);
        Ci : in  std_logic;
        S  : out std_logic_vector(NBIT-1 downto 0);
        Co : out std_logic
    );
  end component;

  signal A, B, S: std_logic_vector(31 downto 0);
  signal Ci, Co : std_logic;

begin

-- Instanciate the sum generator
    P4: P4_ADDER
        port map (A, B, Ci, S, Co);

--configuration test
  A <= "11111111111111111111111111111111", "00000000000000000000000000100001" after 40 ns;
  B <= "00000000000000000000000000000001", "00000000000000001111111011101111" after 40 ns;

  Ci <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns;


end architecture;

configuration TEST_SUM_GEN_CONFIG of TB_P4_ADDER is
  for TEST
    for P4 : P4_ADDER
      use entity work.P4_ADDER(structural);
    end for;
  end for;
end configuration;
