library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_arith.all;
use ieee.numeric_std.all;
use WORK.constants.all;
use WORK.alu_types.all;

entity ALU is
  generic (N : integer := numBit);
  port (FUNC         : in  TYPE_OP;
        DATA1, DATA2 : in  std_logic_vector(N-1 downto 0);
        OUTALU       : out std_logic_vector(N-1 downto 0));
end ALU;

architecture BEHAVIOR of ALU is

begin

  P_ALU : process (FUNC, DATA1, DATA2)

  begin
    case FUNC is
      when ADD => OUTALU <= std_logic_vector(unsigned(DATA1) + unsigned(DATA2));
      
      when SUB => OUTALU <= std_logic_vector(unsigned(DATA1) - unsigned(DATA2));
      
      when MULT => OUTALU <= std_logic_vector(unsigned(DATA1((N-1)/2 downto 0)) * 
                             unsigned(DATA2((N-1)/2 downto 0)));
      
      when BITAND => OUTALU <= DATA1 and DATA2; -- bitwise and
      
      when BITOR => OUTALU <= DATA1 or DATA2;  -- bitwise or
        
      when BITXOR => OUTALU <= DATA1 xor DATA2; -- bitwise xor
      
      when FUNCLSL =>  -- barrel left shift  
        -- OUTALU <= DATA1(N-2 downto 0) & '0'; -- shifting bits and contatenating 0
        OUTALU <= std_logic_vector(unsigned(DATA1) sll to_integer(unsigned(DATA2)));
      when FUNCLSR =>  -- barrel right shift
        -- OUTALU <= '0' & DATA1(N - 1 downto 1); -- concatenating 0 and shifting bits 
        OUTALU <= std_logic_vector(unsigned(DATA1) srl to_integer(unsigned(DATA2)));

      when FUNCRL =>  -- Rotate Left  
        OUTALU <= DATA1(N - 2 downto 0) & DATA1(N - 1); -- concatenating least N-1 significant bits to msb
         
      when FUNCRR =>  -- Rotate Right
        OUTALU <= DATA1(0) & DATA1( N - 1 downto 1); -- concatenating lsb to [N-1:1] bits
    
      when others => null;
    end case;
  end process P_ALU;

end BEHAVIOR;

configuration CFG_ALU_BEHAVIORAL of ALU is
  for BEHAVIOR
  end for;
end CFG_ALU_BEHAVIORAL;
