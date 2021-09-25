library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.math_real.all;
use WORK.myGlobals.all;

entity SUM_GENERATOR is
  generic 
  (
      NBIT            : integer;  -- total number of bit
      NBIT_PER_BLOCK  : integer   -- max number of bit in a single block
  );
  port
  (
      A  : in  std_logic_vector(NBIT-1 downto 0);
      B  : in  std_logic_vector(NBIT-1 downto 0);
      Ci : in  std_logic_vector(integer(ceil(real(NBIT)/real(NBIT_PER_BLOCK)))-1 downto 0);
      S  : out std_logic_vector(NBIT-1 downto 0);
      CoMin1 : out std_logic
  );
end entity;

-- ****************************
-- structural arch
-- ****************************
architecture structural of SUM_GENERATOR is 

  -- declaring components
  component CARRY_SEL_BLOCK is
      generic 
      (
          TP_MUX: time	   := 0 ns;
          DRCAS : time     := 0 ns;
          DRCAC : time     := 0 ns;
		  DELAY_MUX : time := 0 ns;
          N     : integer  := 2 
      );
      port 
      (
          A  : in  std_logic_vector(N-1 downto 0);
          B  : in  std_logic_vector(N-1 downto 0);
          Ci : in  std_logic;
          S  : out std_logic_vector(N-1 downto 0)
      );
  end component;

  component RCA_cMin1out is
    generic (
        DRCAS : time    := 0 ns;
        DRCAC : time    := 0 ns;
        N     : integer := 2
    );

    port (
        A  : in  std_logic_vector(N-1 downto 0);
        B  : in  std_logic_vector(N-1 downto 0);
        Ci : in  std_logic;
        S  : out std_logic_vector(N-1 downto 0);
        Co : out std_logic;
        CoMin1 : out std_logic
    );
  end component;
  
  function myRound(n: integer; m: integer) return integer is
      variable rounded: integer;
      variable not_rounded: integer;
      begin
          not_rounded := integer(ceil(real(n)/real(m)));
          rounded := integer(n/m);
          if rounded = not_rounded then
              rounded := rounded-1;
          end if;

          return rounded;
  end function;

  constant NBLOCKS_ROUNDED: integer := myRound(NBIT, NBIT_PER_BLOCK);
  constant LAST_SIZE: integer := NBIT-NBLOCKS_ROUNDED*NBIT_PER_BLOCK;
  constant N: integer := NBIT_PER_BLOCK;

begin
  
  BLOCKSgen: for i in 0 to NBLOCKS_ROUNDED-1 generate
      CSBi: CARRY_SEL_BLOCK
		generic map (N => N)
        port map(A(i*N+(N-1) downto i*N), B(i*N+(N-1) downto i*N), Ci(i), S(i*N+(N-1) downto i*N));
  end generate;

  CSBlast: CARRY_SEL_cMin1out
    generic map(N => LAST_SIZE)
    port map(A => A(NBIT-1 downto NBIT-LAST_SIZE), B => B(NBIT-1 downto NBIT-LAST_SIZE), Ci => Ci(NBLOCKS_ROUNDED), S => S(NBIT-1 downto NBIT-LAST_SIZE), CoMin1 => CoMin1);
  
end architecture;

configuration CFG_SUM_GEN_STRUCTURAL of SUM_GENERATOR is
    for STRUCTURAL
        for BLOCKSgen
            for all: CARRY_SEL_BLOCK 
                use entity work.CARRY_SEL_BLOCK(structural);
            end for;
        end for; 
        for CSBlast: CARRY_SEL_BLOCK 
            use entity work.CARRY_SEL_BLOCK(structural);
        end for;
    end for;
end configuration;