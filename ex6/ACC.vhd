library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity ACC is
    port 
    (
        A   : in std_logic_vector (N-1 downto 0);
        B   : in std_logic_vector (N-1 downto 0);
        CLK : in std_logic;
        RST_n: in std_logic;
        ACCUMULATE: in std_logic;
        -- ACC_EN_n  : in std_logic;  --enable
        Y: out std_logic_vector (N -1 downto 0)
    );
    
end entity;

--*****************************
-- Behavioral Architecture 
--*****************************
architecture behavioral of ACC is
    -- signals 
    signal mux_out   : std_logic_vector (N-1 downto 0);
    signal out_add   : std_logic_vector (N-1 downto 0);
    signal feed_back : std_logic_vector (N-1 downto 0);

    begin
        -- MUX21
        process (B, feed_back, ACCUMULATE)
        begin
            case acc_sel is
                when '0' => mux_out <= B after TP_MUX;
                when others => mux_out <= feed_back after TP_MUX;
            end case;
        end process;
        
        -- RCA
        process (A, mux_out) 
        begin
            out_add <= A + mux_out;
        end process;
        
        -- FD
        process (CLK)
        begin
            --if ACC_EN_n = '0' then
            if CLK'event and CLK = '1' then  -- positive edge triggered:
                if RST_n = '0' then
                    feed_back <= others => '0';
                else
                    feed_back <= out_add;
                end if;
            end if;
            --end if;
        end process;

        Y <= feed_back;

end architecture;

--****************************
-- Structural Architecture
--****************************
architecture structural of ACC is
    -- RCA definition
    component RCA is
        generic 
        (
            N     : integer;
            DRCAS : time    := 0 ns;
            DRCAC : time    := 0 ns
        );
        port 
        (
            A  : in  std_logic_vector(N-1 downto 0);
            B  : in  std_logic_vector(N-1 downto 0);
            Ci : in  std_logic;
            S  : out std_logic_vector(N-1 downto 0);
            Co : out std_logic
        );
    end component;

    -- MUX21 definition
    component MUX21_GENERIC is
        generic
        (
            N: integer;
            DELAY_MUX: time
        );
        port 
        (
            A: in std_logic_vector (N-1 downto 0);
            B: in std_logic_vector (N-1 downto 0);
            SEL: in std_logic;
            Y: out std_logic_vector (N -1 downto 0)
        );
    end component;
    
    -- FD definition
    component FD is
        generic
        (
            N : integer := 64
        );
        port 
        (
          D     : in  std_logic_vector(N-1 downto 0);
          CLK    : in  std_logic;
          RESET : in  std_logic;
          -- ENABLE : in std_logic;
          Q     : out std_logic_vector(N-1 downto 0)
        );
    end component;
    
    -- signals
    signal mux_out   : std_logic_vector (N-1 downto 0);
    signal out_add   : std_logic_vector (N-1 downto 0);
    signal feed_back : std_logic_vector (N-1 downto 0);
  
    begin
        mux : MUX21_GENERIC 
                    port map (B, feed_back, ACCUMULATE, mux_out);
        
        add : RCA   port map (A, mux_out, '0', out_add);
        
        reg : FD    port map (out_add, CLK, RST_n, feed_back);  --  !!!!  ADD ACC_EN_n ? !!!!

        Y <= feed_back;

end architecture;

--*********************
-- configurations 
--*********************
configuration ACC_GEN_BEHAVIORAL of ACC is

    for behavioral
    end for;

end configuration ACC_GEN_BEHAVIORAL;
  
configuration ACC_GEN_STRUCTURAL of ACC is
    
    for structural
    end for;

end configuration ACC_GEN_STRUCTURAL;
