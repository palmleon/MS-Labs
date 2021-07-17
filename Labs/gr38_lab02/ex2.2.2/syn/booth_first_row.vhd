library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use WORK.constants.all;

entity booth_first_row is
    generic(
      N: integer;
      RAD: integer
    );
    port(
        A     : in  std_logic_vector(N-1 downto 0);
        encIn : in  std_logic_vector(RAD-1 downto 0);
        nextA : out std_logic_vector(N-1 downto 0);
        sum   : out std_logic_vector(N-1 downto 0)
    );
end entity;

architecture arch of booth_first_row is
   -- components
   component encoder is
    port (
        inc : in std_logic_vector (3 - 1 downto 0); 
        enc : out std_logic_vector(3 - 1 downto 0)
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

    signal enc_to_mux : std_logic_vector(3-1 downto 0);
    -- mux inputs (p = '+', m = '-')
    signal m2A, mA, p2A : std_logic_vector(N - 1  downto 0);    
begin
    enc: encoder port map (encIn, enc_to_mux);
    
    p2A <= A(N-2 downto 0) & '0'; -- left shift
    mA <= std_logic_vector(unsigned(not A) + 1); -- 2's cmpl
    m2A <= std_logic_vector(unsigned(not p2A) + 1); -- 2's cmpl

    mux : MUX51_GENERIC generic map(N) 
                        port map (
                         A, 
                         mA, 
                         p2A, 
                         m2A, 
                         enc_to_mux, -- select
                         sum         -- output
                        );

    
    -- storing next A for following stages
    nextA <= p2A; 
end arch ;
