library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use WORK.constants.all;


-------------------------------------------
-- Booth algorithm-based 
-- multiplier : Structural Implementation
-------------------------------------------

entity BOOTHMUL is
    generic (
        N : integer := numbit;
        RAD: integer := 3
    );
    port (
       A: in std_logic_vector (N-1 downto 0); -- multiplicand
       B: in std_logic_vector (N-1 downto 0); -- multiplier
       P: out std_logic_vector(2*N - 1 downto 0) -- product 
    );
end entity;


architecture struct of BOOTHMUL is 
    -----------------------
    -- components import 
    -----------------------
    component booth_first_row is
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
    end component;


    component booth_row is
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
    end component;
    

    -- custom type:
    -- matrix of (N/2 - 1) * (4*N - 1)
     type matrix_t is array(0 to N/2 - 1) of std_logic_vector(4*N-1 downto 0);
     signal add_mat: matrix_t; 
     ----------------
    -- signals
    -----------------
    signal firstB : std_logic_vector(RAD-1 downto 0);
    signal A_s : std_logic_vector(2*N-1 downto 0); -- double size because it needs to be resized (A*2^2)
begin
    firstB <= B(1 downto 0) & '0'; -- B[1,0,-1], B[-1] = '0'
    
    -- A  sign extension
    A_s <= std_logic_vector(resize(signed(A), A_s'length));

    glob_gen: for i in 0 to N/2 - 1 generate
        -- first level of Booth's mul
        lev1: if i = 0 generate
           first_row: booth_first_row generic map(2*N, RAD)
                                 port map(
                            -- explicit assig for readability
                                  A => A_s,
                                  encIn => firstB, 
                                  nextA => add_mat(i)(4*N-1 downto 2*N),
                                  sum => add_mat(i)(2*N-1 downto 0)
                                 ) ;
        end generate; 

        -- following levels of Booth's mul
        other_lvs: if i > 0 generate
           other_rows: booth_row generic map(2*N, RAD)
                                port map (
                                -- explicit assig for readability
                                currA =>  add_mat(i-1)(4*N-1 downto 2*N),
                                currSum => add_mat(i-1)(2*N-1 downto 0),
                                encIn => B(2*i+1 downto 2*i-1),
                                nextA => add_mat(i)(4*N-1 downto 2*N),
                                nextSum => add_mat(i)(2*N-1 downto 0)
                            );
        end generate;

    end generate;

    -- extracting product 
        P <=  add_mat(N/2-1)(2*N-1 downto 0);
end architecture;
