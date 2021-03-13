
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_MUX21_GENERIC_N16 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_MUX21_GENERIC_N16;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_N16.all;

entity MUX21_GENERIC_N16 is

   port( A, B : in std_logic_vector (15 downto 0);  SEL : in std_logic;  Y : 
         out std_logic_vector (15 downto 0));

end MUX21_GENERIC_N16;

architecture SYN_behavioral of MUX21_GENERIC_N16 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U34 : MUX2_X1 port map( A => A(9), B => B(9), S => SEL, Z => Y(9));
   U35 : MUX2_X1 port map( A => A(8), B => B(8), S => SEL, Z => Y(8));
   U36 : MUX2_X1 port map( A => A(7), B => B(7), S => SEL, Z => Y(7));
   U37 : MUX2_X1 port map( A => A(6), B => B(6), S => SEL, Z => Y(6));
   U38 : MUX2_X1 port map( A => A(5), B => B(5), S => SEL, Z => Y(5));
   U39 : MUX2_X1 port map( A => A(4), B => B(4), S => SEL, Z => Y(4));
   U40 : MUX2_X1 port map( A => A(3), B => B(3), S => SEL, Z => Y(3));
   U41 : MUX2_X1 port map( A => A(2), B => B(2), S => SEL, Z => Y(2));
   U42 : MUX2_X1 port map( A => A(1), B => B(1), S => SEL, Z => Y(1));
   U43 : MUX2_X1 port map( A => A(15), B => B(15), S => SEL, Z => Y(15));
   U44 : MUX2_X1 port map( A => A(14), B => B(14), S => SEL, Z => Y(14));
   U45 : MUX2_X1 port map( A => A(13), B => B(13), S => SEL, Z => Y(13));
   U46 : MUX2_X1 port map( A => A(12), B => B(12), S => SEL, Z => Y(12));
   U47 : MUX2_X1 port map( A => A(11), B => B(11), S => SEL, Z => Y(11));
   U48 : MUX2_X1 port map( A => A(10), B => B(10), S => SEL, Z => Y(10));
   U49 : MUX2_X1 port map( A => A(0), B => B(0), S => SEL, Z => Y(0));

end SYN_behavioral;
