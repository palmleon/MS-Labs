library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.myGlobals.all;

entity CARRY_SEL_cMin1out is
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
        S  : out std_logic_vector(N-1 downto 0);
        CoMin1 : out std_logic
    );
end entity;

-- ****************************
-- structural arch
-- ****************************
architecture structural of CARRY_SEL_BLOCK is 

    -- declaring components
    component RCA_cMin1out is
        generic
        (
            DRCAS : time    := DRCAS;
            DRCAC : time    := DRCAC;
            N     : integer := N
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
    signal CoMin1_0 : std_logic;
    signal CoMin1_1 : std_logic;

begin
    
    -- RCA declaration with respective carries
    RCA0 : RCA port map (A => A, B => B, Ci => '0', S => S0, CoMin1 => CoMin1_0);
    RCA1 : RCA port map (A => A, B => B, Ci => '1', S => S1, CoMin1 => CoMin1_1);

    MUX21: Mux2to1 port map (S0, S1, Ci, S);

    CoMin1 <= ( Ci AND CoMin1_1 ) OR CoMin1_0;  --evaluate the carry minus 1 output
    
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