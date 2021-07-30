library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.myGlobals.all;

entity CARRY_SEL_BLOCK is
    generic 
    (
		TP_MUX: time	 := 0 ns;
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
end CARRY_SEL_BLOCK;

  --*************************
  -- behavioral arch 
  --*************************

architecture behavioral of CARRY_SEL_BLOCK is
    
    -- Sum results
    signal S0: std_logic_vector(N-1 downto 0);
    signal S1: std_logic_vector(N-1 downto 0);

    begin
      -- sum operation
        S0 <= A + B + '0' after TP_MUX;
        S1 <= A + B + '1' after TP_MUX;

        process (S0, S1, Ci)
        begin
            case Ci is
                when '0' => S <= S0 after TP_MUX;
                when others => S <= S1 after TP_MUX;
            end case;
        end process;

end architecture;

-- ****************************
-- structural arch
-- ****************************
architecture structural of CARRY_SEL_BLOCK is 

    -- declaring components
    component RCA
        generic 
        (
            DRCAS : time := DRCAS;
            DRCAC : time := DRCAC;
            N     : integer := N
        );
        port
        (
            A  : in  std_logic_vector (N-1 downto 0);
            B  : in  std_logic_vector (N-1 downto 0);
            Ci : in  std_logic;
            S  : out std_logic_vector (N-1 downto 0);
            Co : out std_logic
        );
    end component;

	component Mux2to1 is
		generic 
			( N: integer := N );
		port
			( in1, in2: in std_logic_vector (N-1 downto 0);
			  sel: in std_logic;
			  output: out std_logic_vector (N-1 downto 0)); 
	end component Mux2to1;

    -- RCA outputs
    signal S0: std_logic_vector(N-1 downto 0);
    signal S1: std_logic_vector(N-1 downto 0);

begin
    
    -- RCA declaration with respective carries
    RCA0 : RCA port map (A, B, '0', S0);
    RCA1 : RCA port map (A, B, '1', S1);

    MUX21: Mux2to1 port map (S0, S1, Ci, S);
    
end architecture;


configuration CFG_CSB_STRUCTURAL of CARRY_SEL_BLOCK is
    for STRUCTURAL
        for RCA0: RCA 
            use entity work.RCA(structural);
        end for;
        for RCA1: RCA
            use entity work.RCA(structural);
        end for;
        for MUX21: Mux2to1 
            use entity work.Mux2to1(structural);
        end for;
    end for;
  end configuration;
  
configuration CFG_RSB_BEHAVIORAL of CARRY_SEL_BLOCK is
    for BEHAVIORAL
    end for;
end configuration;
