library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use WORK.constants.all;

entity ACC is
    generic
    (
        N : integer
    );
    port 
    (
        A   : in std_logic_vector (N-1 downto 0);
        B   : in std_logic_vector (N-1 downto 0);
        CLK : in std_logic;
        RST_n: in std_logic;
        ACCUMULATE: in std_logic;
        ACC_EN_n  : in std_logic;  --enable
        Y: out std_logic_vector (N-1 downto 0)
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
            case ACCUMULATE is
                when '0' => mux_out <= B; --after TP_MUX;
                when others => mux_out <= feed_back; --after TP_MUX;
            end case;
        end process;
        
        -- RCA
        process (A, mux_out) 
        begin
            out_add <= std_logic_vector(unsigned(A) + unsigned(mux_out)); --after DRCAS;
        end process;
        
        -- FD
        process (CLK, RST_n)
        begin
            if RST_n = '0' then
                feed_back <= (others => '0');
            
            elsif ACC_EN_n = '0' then
                if CLK'event and CLK = '1' then  -- positive edge triggered:    
                    feed_back <= out_add;
                end if;
            end if;
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
            N     : integer := N;
            DRCAS : time    := DRCAS;
            DRCAC : time    := DRCAC
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
            N: integer := N;
            DELAY_MUX: time := TP_MUX
        );
        port 
        (
            A: in std_logic_vector (N-1 downto 0);
            B: in std_logic_vector (N-1 downto 0);
            SEL: in std_logic;
            Y: out std_logic_vector (N-1 downto 0)
        );
    end component;
    
    -- FD definition
    component FD_GENERIC is
        generic
        (
            N : integer := N
        );
        port 
        (
          D     : in  std_logic_vector(N-1 downto 0);
          CK    : in  std_logic;
          RESET : in  std_logic;
          ENABLE : in std_logic;
          Q     : out std_logic_vector(N-1 downto 0)
        );
    end component;
    
    -- signals
    signal mux_out   : std_logic_vector (N-1 downto 0);
    signal out_add   : std_logic_vector (N-1 downto 0);
    signal feed_back : std_logic_vector (N-1 downto 0);
    signal rst       : std_logic;
    signal en        : std_logic;
  
    begin
        mux : MUX21_GENERIC 
                    port map (B, feed_back, ACCUMULATE, mux_out);
        
        add : RCA   port map (A, mux_out, '0', out_add);
        
        reg : FD_GENERIC
                    port map (out_add, CLK, rst, en, feed_back);

        en  <= not ACC_EN_n;
        rst <= not RST_n;
        Y   <= feed_back;
        

end architecture;

--*********************
-- configurations 
--*********************
configuration CFG_ACC_BEHAVIORAL of ACC is

    for behavioral
    end for;

end configuration CFG_ACC_BEHAVIORAL;
  
configuration CFG_ACC_STRUCTURAL of ACC is
    
    for structural
        for add : RCA
            use configuration WORK.CFG_RCA_STRUCTURAL;
        end for;

        for reg : FD_GENERIC
            use configuration WORK.CFG_FD_ASYNCARCH;
        end for;
        
        for mux : MUX21_GENERIC
            use configuration WORK.CFG_MUX21_GEN_STRUCTURAL;
        end for;
    end for;

end configuration CFG_ACC_STRUCTURAL;
