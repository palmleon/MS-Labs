library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use WORK.constansts.all;


entity Booth_Mul is
    port (

    );
end entity;


architecture struct of Booth_Mul is 
    -----------------------
    -- components import 
    -----------------------
    component encoder is
        port (
            inc : in std_logic_vector (3 - 1 downto 0); 
            enc : out std_logic_vector(3 - 1 downto 0)
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

    -- custom type 
    type vector_t is array(natural range <>) of std_logic_vector(2*N-1 downot 0); 
    -------------
    -- signals
    -------------
    --mux
    signal sig0, sigA, sig2A, sig_mA, sig_m2A : vector_t ( N/2 - 1 downto 0); 

    -- encoder
    signal enc_in : std_logic_vector(N downto 0);
    signal enc_out : std_logic_vector(N/2 * 3 - 1 downto 0);

    -- other signals

begin
    -- components instantiations
    

    -- output 
end architecture;