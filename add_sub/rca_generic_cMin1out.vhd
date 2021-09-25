library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RCA_cMin1out is
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
  end entity;

-- ****************************
-- structural arch
-- ****************************
architecture structural of RCA_cMin1out is 

    -- importing components
    component FA
        generic (
            DFAS : time := 0 ns;
            DFAC : time := 0 ns
        );

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
    CoMin1 <= tmp(N-1);

    ADDER1: for i in 0 to N - 1 generate
        FAi : FA
           generic map(DRCAS, DRCAC)
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