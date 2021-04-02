library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use WORK.constants.all;

entity SUM_GENERATOR is
    generic 
    (
        N     : integer;  -- number of bit of single carry_sel_block
        M     : integer  -- number of carry_sel blocks
    );
    port
    (
        A  : in  std_logic_vector((N*M)-1 downto 0);
        B  : in  std_logic_vector((N*M)-1 downto 0);
        Ci : in  std_logic_vector(M-1 downto 0);
        S  : out std_logic_vector((N*M)-1 downto 0)
    );
  end entity;

architecture BEHAVIORAL of SUM_GENERATOR is

  --sum results
  signal S0: std_logic_vector(N-1 downto 0);
  signal S1: std_logic_vector(N-1 downto 0);

  begin
    CSBi: process (A, B, Ci)
    begin
      BLOCKdef: for i in 0 to M-1 loop
        S0 <= A(i*N+(N-1) downto i*N) + B(i*N+(N-1) downto i*N) + '0' after DRCAS;
        S1 <= A(i*N+(N-1) downto i*N) + B(i*N+(N-1) downto i*N) + '1' after DRCAS;

        case Ci(i) is
          when '0' => S(i*N+(N-1) downto i*N) <= S0 after TP_MUX;
          when others => S(i*N+(N-1) downto i*N) <= S1 after TP_MUX;
        end case;

      end loop;
    end process;
    
end architecture;

architecture STRUCTURAL of SUM_GENERATOR is

  component CARRY_SEL_BLOCK is
    generic
    (
     	DRCAS : time     := 0 ns;
        DRCAC : time     := 0 ns;
        DELAY_MUX : time := 0 ns;
        N     : integer  := N
    );
    port
    (
     	A  : in  std_logic_vector(N-1 downto 0);
        B  : in  std_logic_vector(N-1 downto 0);
        Ci : in  std_logic;
        S  : out std_logic_vector(N-1 downto 0)
    );
  end component;
  
  begin

    BLOCKgen: for i in 0 to M-1 generate
      CSBi: CARRY_SEL_BLOCK port map(A(i*N+(N-1) downto i*N), B(i*N+(N-1) downto i*N), Ci(i), S(i*N+(N-1) downto i*N));
    end generate;
    
end architecture;

configuration CFG_CSB_STRUCTURAL of SUM_GENERATOR is
    for STRUCTURAL
        for BLOCKgen
          for all: CARRY_SEL_BLOCK 
            use entity work.CARRY_SEL_BLOCK(structural);
          end for;
        end for;
    end for;
  end configuration;
  
configuration CFG_CSB_BEHAVIORAL of SUM_GENERATOR is
    for BEHAVIORAL
    end for;
end configuration;
