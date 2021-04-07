library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use WORK.constants.all;

entity RCA is
    generic (
        N     : integer := NumBit
    );

    port (
        A  : in  std_logic_vector(N-1 downto 0);
        B  : in  std_logic_vector(N-1 downto 0);
        Ci : in  std_logic;
        S  : out std_logic_vector(N-1 downto 0);
        Co : out std_logic
    );
  end RCA;

  --*************************
  -- behavioral arch 
  --*************************
architecture behavioral of RCA is
    signal S_N : std_logic_vector(N downto 0); 

begin 
   -- sum on N + 1 bits
    S_N <= ('0' & A) + ('0' & B) + Ci;
    Co <= S_N(N); -- Co = msb
    S <= S_N(N - 1 downto 0); -- actual sum

end architecture;

-- ****************************
-- structural arch
-- ****************************
architecture structural of RCA is 

    -- importing components
    component FA
        port (
            A  : in  std_logic;
            B  : in  std_logic;
            Ci : in  std_logic;
            S  : out std_logic;
            Co : out std_logic
        );
    end component;

    -- other signals
    signal tmp: std_logic_vector(N downto 0);

begin
    tmp(0) <= Ci;
    Co <= tmp(N);

    ADDER1: for i in 0 to N - 1 generate
        FAi : FA 
           port map (A(i), B(i), tmp(i), S(i), tmp(i + 1));
    end generate;
end architecture;


configuration CFG_RCA_STRUCTURAL of RCA is
    for STRUCTURAL
      for ADDER1
        for all : FA
          use configuration WORK.CFG_FA_BEHAVIORAL;
        end for;
      end for;
    end for;
  end CFG_RCA_STRUCTURAL;
  
  configuration CFG_RCA_BEHAVIORAL of RCA is
    for BEHAVIORAL
    end for;
  end CFG_RCA_BEHAVIORAL;
