library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use WORK.constants.all;

entity P4_ADDER is
    generic 
    (
        NBIT     : integer;  -- number of bit of single carry_sel_block
        NBIT_PER_BLOCK : integer
    );
    port
    (
        A  : in  std_logic_vector(NBIT-1 downto 0);
        B  : in  std_logic_vector(NBIT-1 downto 0);
        Ci : in  std_logic;
        S  : out std_logic_vector(NBIT-1 downto 0);
        Co : out std_logic
    );
  end entity;

architecture structural of P4_ADDER is

    component carry_generator is
        generic (
            NBIT :	       integer := NBIT;
            NBIT_PER_BLOCK:    integer := NBIT_PER_BLOCK);
        port (
            A :		in	std_logic_vector(NBIT-1 downto 0);
            B :		in	std_logic_vector(NBIT-1 downto 0);
            Cin :	in	std_logic;
            Co :	out	std_logic_vector(NBIT/NBIT_PER_BLOCK-1 downto 0));
    end component;

    component SUM_GENERATOR is
        generic 
        (
            NBIT            : integer := NBIT;           -- number of bit
            NBIT_PER_BLOCK  : integer := NBIT_PER_BLOCK  -- number of bit of a single block
        );
        port
        (
            A  : in  std_logic_vector(NBIT-1 downto 0);
            B  : in  std_logic_vector(NBIT-1 downto 0);
            Ci : in  std_logic_vector(integer(ceil(real(NBIT)/real(NBIT_PER_BLOCK)))-1 downto 0);
            S  : out std_logic_vector(NBIT-1 downto 0)
        );
      end component;

    constant N: integer := NBIT/NBIT_PER_BLOCK; --number of carries out
    signal carries: std_logic_vector(N downto 0);

    begin
        carries(0) <= Ci;

        CarryG: carry_generator port map(A, B, Ci, carries(N downto 1));

        SumG: sum_generator port map(A, B, carries(N-1 downto 0), S);

        Co <= carries(N);
    
end architecture;

configuration CFG_P4_ADDER of P4_ADDER is
  for STRUCTURAL
    for CarryG : carry_generator
      use entity work.carry_generator(structural);
    end for;
    for SumG : sum_generator
      use entity work.sum_generator(structural);
    end for;
  end for;
end configuration;
