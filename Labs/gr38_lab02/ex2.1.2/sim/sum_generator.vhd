library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.math_real.all;
use WORK.constants.all;

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
      S  : out std_logic_vector(NBIT-1 downto 0)
  );
end entity;

--*************************
-- behavioral arch 
--*************************
architecture behavioral of SUM_GENERATOR is
  
  -- Sum results
  signal S0: std_logic_vector(NBIT-1 downto 0);
  signal S1: std_logic_vector(NBIT-1 downto 0);

  -- constants
  constant NBLOCKS: integer := integer(ceil(real(NBIT)/real(NBIT_PER_BLOCK)));
  constant NBLOCKS_ROUNDED: integer := integer(NBIT/NBIT_PER_BLOCK);
  constant LAST_SIZE: integer := NBIT-NBLOCKS_ROUNDED*NBIT_PER_BLOCK;
  constant N: integer := NBIT_PER_BLOCK;

  begin
      --process to generate a sum of all blocks, the last one is not included if it differs in bit number
      CSBi: process (A, B, Ci)
      begin
          BLOCKSdef: for i in 0 to NBLOCKS_ROUNDED-1 loop
              --sum definition for each group of bits 
              S0 <= A(i*N+(N-1) downto i*N) + B(i*N+(N-1) downto i*N) + '0';
              S1 <= A(i*N+(N-1) downto i*N) + B(i*N+(N-1) downto i*N) + '1';
              
              --mux process
              case Ci(i) is
                  when '0' => S(i*N+(N-1) downto i*N) <= S0 after TP_MUX;
                  when others => S(i*N+(N-1) downto i*N) <= S1 after TP_MUX;
              end case;
              
          end loop;

          --last block, eventually. it has LAST_SIZE bits
          if NBLOCKS > NBLOCKS_ROUNDED then
              S0(LAST_SIZE-1 downto 0) <= A(NBIT-1 downto NBIT-LAST_SIZE-1) + B(NBIT-1 downto NBIT-LAST_SIZE-1) + '0';
              S1(LAST_SIZE-1 downto 0) <= A(NBIT-1 downto NBIT-LAST_SIZE-1) + B(NBIT-1 downto NBIT-LAST_SIZE-1) + '1';
              
              case Ci(NBLOCKS_ROUNDED) is
                  when '0' => S(NBIT-1 downto NBIT-LAST_SIZE-1) <= S0(LAST_SIZE-1 downto 0) after TP_MUX;
                  when others => S(NBIT-1 downto NBIT-LAST_SIZE-1) <= S1(LAST_SIZE-1 downto 0) after TP_MUX;
              end case;
          end if;

      end process;

end architecture;

-- ****************************
-- structural arch
-- ****************************
architecture structural of SUM_GENERATOR is 

  -- declaring components
  component CARRY_SEL_BLOCK is
      generic 
      (
          DRCAS : time    := 0 ns;
          DRCAC : time    := 0 ns;
          N     : integer := NBIT_PER_BLOCK    
      );
      port 
      (
          A  : in  std_logic_vector(N-1 downto 0);
          B  : in  std_logic_vector(N-1 downto 0);
          Ci : in  std_logic;
          S  : out std_logic_vector(N-1 downto 0)
      );
  end component;
  
  --function that calculate the number of blocks-1 regardless the ratio
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

  --constants definition
  constant NBLOCKS_ROUNDED: integer := myRound(NBIT, NBIT_PER_BLOCK);
  constant LAST_SIZE: integer := NBIT-NBLOCKS_ROUNDED*NBIT_PER_BLOCK;
  constant N: integer := NBIT_PER_BLOCK;

begin
  
  --generate all blocks except the last one
  BLOCKSgen: for i in 0 to NBLOCKS_ROUNDED-1 generate
      CSBi: CARRY_SEL_BLOCK
        port map(A(i*N+(N-1) downto i*N), B(i*N+(N-1) downto i*N), Ci(i), S(i*N+(N-1) downto i*N));
  end generate;

  --generate the last one
  CSBlast: CARRY_SEL_BLOCK
    generic map(N => LAST_SIZE)
    port map(A(NBIT-1 downto NBIT-LAST_SIZE), B(NBIT-1 downto NBIT-LAST_SIZE), Ci(NBLOCKS_ROUNDED), S(NBIT-1 downto NBIT-LAST_SIZE));
  
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
  
configuration CFG_SUM_GEN_BEHAVIORAL of SUM_GENERATOR is
    for BEHAVIORAL
    end for;
end configuration;
