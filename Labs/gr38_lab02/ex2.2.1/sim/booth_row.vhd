library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use WORK.constants.all;

----------------------------------------------
-- @brief this component represents
--        the generic row (not the first one)
--        of the Booth's algorithm-based multiplier
-- 
--@description provides updated val of A and current 
--             partial sum
------------------------------------------------

entity booth_row is
    generic(
        N: integer;
        RAD: integer
    );
    port(
       currA: in std_logic_vector(N-1 downto 0); -- current A
       currSum :  in std_logic_vector(N-1 downto 0); -- current sum
       encIn :  in std_logic_vector(RAD-1 downto 0);
       nextA: out std_logic_vector(N-1 downto 0); -- updated A
       nextSum: out std_logic_vector(N-1 downto 0)  -- updated sum
    );
end entity;


---------------------------------
-- @component shift_compl 
-- @component ripple_carry_adder
-- @component encoder
-- @component mux51_generic
---------------------------------
architecture struct of booth_row is
    -- components
    component encoder is
        port (
            inc : in std_logic_vector (3 - 1 downto 0); 
            enc : out std_logic_vector(3 - 1 downto 0)
        );
    end component;

    component shift_compl is 
        generic(
            N: integer := NumBit
        );
	port (
        -- p = "+" (e.g. p2A stands for 2A )
        -- m = "-" (e.g. m2A stands for -2A)
        A : in std_logic_vector( N - 1 downto 0);
        p2A, m2A, p4A: out std_logic_vector(N - 1 downto 0);
        m4A: out std_logic_vector( N - 1 downto 0)       
    );

    end component;

    component MUX51_GENERIC is
        generic(
            N: integer := numbit
        );
        port (
            posA: in std_logic_vector (N-1 downto 0);
            negA: in std_logic_vector (N-1 downto 0);
            pos2A: in std_logic_vector(N-1 downto 0);
            neg2A : in std_logic_vector(N-1 downto 0);
            SEL: in std_logic_vector ( 3 - 1 downto 0);
            Y: out std_logic_vector (N -1 downto 0)
        );    
    end component;

    component RCA is
        generic (
            DRCAS : time    := 0 ns;
            DRCAC : time    := 0 ns;
            N     : integer := NumBit
        );
    
        port (
            A  : in  std_logic_vector(N-1 downto 0);
            B  : in  std_logic_vector(N-1 downto 0);
            Ci : in  std_logic;
            S  : out std_logic_vector(N-1 downto 0);
            Co : out std_logic
        );
    end component;
    

    -- signals
    signal  enc_to_mux : std_logic_vector(3-1 downto 0);
    signal mux_to_add : std_logic_vector(N-1 downto 0);
    signal p2A_s, m2A_s, p4A_s, m4A_s : std_logic_vector(N-1 downto 0);

begin
    -- components instantiation
    enc: encoder port map(encIn, enc_to_mux);
    
    sh_and_cmpl: shift_compl generic map(N) 
                             port map(currA, p2A_s, m2A_s, p4A_s, m4A_s);

    mux : MUX51_GENERIC generic map(N) 
                        port map(p2A_s, m2A_s, p4A_s, m4A_s, enc_to_mux, mux_to_add);

    add: RCA generic map(N => N) 
                     port map (mux_to_add, currSum, '0', nextSum);
    
    -- output
    nextA <= p4A_s;
end architecture;
