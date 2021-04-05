library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

use WORK.constants.all;

entity MULTIPLIER_tb is
end MULTIPLIER_tb;


architecture TEST of MULTIPLIER_tb is


  constant numBit : integer := 16;    
                          --:=4  
                          --:=8    

  --  input	 
  signal A_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');
  signal B_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');

  -- output
  signal Y_mp_i : std_logic_vector(2*numBit-1 downto 0);


-- MUL component declaration
 component BOOTHMUL is
  generic (
      N : integer := numbit;
      RAD: integer
  );
  port (
     A: in std_logic_vector (N-1 downto 0); -- multiplicand
     B: in std_logic_vector (N-1 downto 0); -- multiplier
     P: out std_logic_vector(2*N - 1 downto 0) -- product 
  );
  end component;


begin

-- MUL instantiation
  MUL: BOOTHMUL generic map(numbit, RAD)
                port map(A_mp_i, B_mp_i, Y_mp_i);


-- PROCESS FOR TESTING TEST - COMLETE CYCLE ---------
  test: process
  begin

    -- cycle for operand A
    NumROW : for i in 0 to 2**(NumBit)-1 loop

        -- cycle for operand B
    	NumCOL : for j in 0 to 2**(NumBit)-1 loop
	    wait for 10 ns;
	    B_mp_i <= B_mp_i + '1';
	end loop NumCOL ;
        
	A_mp_i <= A_mp_i + '1'; 	
    end loop NumROW ;

    wait;          
  end process test;

--A_mp_i <= "1111" , "1010" after 10 ns;
--B_mp_i <= "0001", "1011" after 20 ns, "0111" after 30 ns, "0101" after 50 ns;
end TEST;
