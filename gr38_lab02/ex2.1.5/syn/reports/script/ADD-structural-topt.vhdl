
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_63 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_63;

architecture SYN_BEHAVIORAL of FA_63 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_62 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_62;

architecture SYN_BEHAVIORAL of FA_62 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_61 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_61;

architecture SYN_BEHAVIORAL of FA_61 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_60 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_60;

architecture SYN_BEHAVIORAL of FA_60 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_59 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_59;

architecture SYN_BEHAVIORAL of FA_59 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_58 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_58;

architecture SYN_BEHAVIORAL of FA_58 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_57 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_57;

architecture SYN_BEHAVIORAL of FA_57 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_56 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_56;

architecture SYN_BEHAVIORAL of FA_56 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_55 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_55;

architecture SYN_BEHAVIORAL of FA_55 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_54 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_54;

architecture SYN_BEHAVIORAL of FA_54 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_53 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_53;

architecture SYN_BEHAVIORAL of FA_53 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_52 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_52;

architecture SYN_BEHAVIORAL of FA_52 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_51 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_51;

architecture SYN_BEHAVIORAL of FA_51 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_50 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_50;

architecture SYN_BEHAVIORAL of FA_50 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_49 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_49;

architecture SYN_BEHAVIORAL of FA_49 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_48 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_48;

architecture SYN_BEHAVIORAL of FA_48 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_47 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_47;

architecture SYN_BEHAVIORAL of FA_47 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_46 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_46;

architecture SYN_BEHAVIORAL of FA_46 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_45 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_45;

architecture SYN_BEHAVIORAL of FA_45 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_44 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_44;

architecture SYN_BEHAVIORAL of FA_44 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_43 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_43;

architecture SYN_BEHAVIORAL of FA_43 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_42 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_42;

architecture SYN_BEHAVIORAL of FA_42 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_41 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_41;

architecture SYN_BEHAVIORAL of FA_41 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_40 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_40;

architecture SYN_BEHAVIORAL of FA_40 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_39 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_39;

architecture SYN_BEHAVIORAL of FA_39 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_38 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_38;

architecture SYN_BEHAVIORAL of FA_38 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_37 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_37;

architecture SYN_BEHAVIORAL of FA_37 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_36 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_36;

architecture SYN_BEHAVIORAL of FA_36 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_35 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_35;

architecture SYN_BEHAVIORAL of FA_35 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_34 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_34;

architecture SYN_BEHAVIORAL of FA_34 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_33 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_33;

architecture SYN_BEHAVIORAL of FA_33 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_32 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_32;

architecture SYN_BEHAVIORAL of FA_32 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_31 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_31;

architecture SYN_BEHAVIORAL of FA_31 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_30 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_30;

architecture SYN_BEHAVIORAL of FA_30 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_29 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_29;

architecture SYN_BEHAVIORAL of FA_29 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_28 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_28;

architecture SYN_BEHAVIORAL of FA_28 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_27 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_27;

architecture SYN_BEHAVIORAL of FA_27 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_26 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_26;

architecture SYN_BEHAVIORAL of FA_26 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_25 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_25;

architecture SYN_BEHAVIORAL of FA_25 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_24 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_24;

architecture SYN_BEHAVIORAL of FA_24 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_23 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_23;

architecture SYN_BEHAVIORAL of FA_23 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_22 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_22;

architecture SYN_BEHAVIORAL of FA_22 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_21 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_21;

architecture SYN_BEHAVIORAL of FA_21 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_20 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_20;

architecture SYN_BEHAVIORAL of FA_20 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_19 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_19;

architecture SYN_BEHAVIORAL of FA_19 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_18 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_18;

architecture SYN_BEHAVIORAL of FA_18 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_17 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_17;

architecture SYN_BEHAVIORAL of FA_17 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_16 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_16;

architecture SYN_BEHAVIORAL of FA_16 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_15 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_15;

architecture SYN_BEHAVIORAL of FA_15 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_14 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_14;

architecture SYN_BEHAVIORAL of FA_14 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_13 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_13;

architecture SYN_BEHAVIORAL of FA_13 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_12 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_12;

architecture SYN_BEHAVIORAL of FA_12 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_11 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_11;

architecture SYN_BEHAVIORAL of FA_11 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_10 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_10;

architecture SYN_BEHAVIORAL of FA_10 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_9 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_9;

architecture SYN_BEHAVIORAL of FA_9 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_8 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_8;

architecture SYN_BEHAVIORAL of FA_8 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_7 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_7;

architecture SYN_BEHAVIORAL of FA_7 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_6 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_6;

architecture SYN_BEHAVIORAL of FA_6 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_5 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_5;

architecture SYN_BEHAVIORAL of FA_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_4 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_4;

architecture SYN_BEHAVIORAL of FA_4 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_3 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_3;

architecture SYN_BEHAVIORAL of FA_3 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_2 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_2;

architecture SYN_BEHAVIORAL of FA_2 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_1 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_1;

architecture SYN_BEHAVIORAL of FA_1 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n34, n35 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n34, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n34);
   U1 : INV_X1 port map( A => n35, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n34, B2 => Ci, ZN => n35);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity RCA_N4_15 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_15;

architecture SYN_structural of RCA_N4_15 is

   component FA_57
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_58
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_59
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_60
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal tmp_3_port, tmp_2_port, tmp_1_port : std_logic;

begin
   
   FAi_0 : FA_60 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           tmp_1_port);
   FAi_1 : FA_59 port map( A => A(1), B => B(1), Ci => tmp_1_port, S => S(1), 
                           Co => tmp_2_port);
   FAi_2 : FA_58 port map( A => A(2), B => B(2), Ci => tmp_2_port, S => S(2), 
                           Co => tmp_3_port);
   FAi_3 : FA_57 port map( A => A(3), B => B(3), Ci => tmp_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity RCA_N4_14 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_14;

architecture SYN_structural of RCA_N4_14 is

   component FA_53
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_54
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_55
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_56
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal tmp_3_port, tmp_2_port, tmp_1_port : std_logic;

begin
   
   FAi_0 : FA_56 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           tmp_1_port);
   FAi_1 : FA_55 port map( A => A(1), B => B(1), Ci => tmp_1_port, S => S(1), 
                           Co => tmp_2_port);
   FAi_2 : FA_54 port map( A => A(2), B => B(2), Ci => tmp_2_port, S => S(2), 
                           Co => tmp_3_port);
   FAi_3 : FA_53 port map( A => A(3), B => B(3), Ci => tmp_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity RCA_N4_13 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_13;

architecture SYN_structural of RCA_N4_13 is

   component FA_49
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_50
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_51
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_52
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal tmp_3_port, tmp_2_port, tmp_1_port : std_logic;

begin
   
   FAi_0 : FA_52 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           tmp_1_port);
   FAi_1 : FA_51 port map( A => A(1), B => B(1), Ci => tmp_1_port, S => S(1), 
                           Co => tmp_2_port);
   FAi_2 : FA_50 port map( A => A(2), B => B(2), Ci => tmp_2_port, S => S(2), 
                           Co => tmp_3_port);
   FAi_3 : FA_49 port map( A => A(3), B => B(3), Ci => tmp_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity RCA_N4_12 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_12;

architecture SYN_structural of RCA_N4_12 is

   component FA_45
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_46
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_47
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_48
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal tmp_3_port, tmp_2_port, tmp_1_port : std_logic;

begin
   
   FAi_0 : FA_48 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           tmp_1_port);
   FAi_1 : FA_47 port map( A => A(1), B => B(1), Ci => tmp_1_port, S => S(1), 
                           Co => tmp_2_port);
   FAi_2 : FA_46 port map( A => A(2), B => B(2), Ci => tmp_2_port, S => S(2), 
                           Co => tmp_3_port);
   FAi_3 : FA_45 port map( A => A(3), B => B(3), Ci => tmp_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity RCA_N4_11 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_11;

architecture SYN_structural of RCA_N4_11 is

   component FA_41
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_42
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_43
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_44
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal tmp_3_port, tmp_2_port, tmp_1_port : std_logic;

begin
   
   FAi_0 : FA_44 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           tmp_1_port);
   FAi_1 : FA_43 port map( A => A(1), B => B(1), Ci => tmp_1_port, S => S(1), 
                           Co => tmp_2_port);
   FAi_2 : FA_42 port map( A => A(2), B => B(2), Ci => tmp_2_port, S => S(2), 
                           Co => tmp_3_port);
   FAi_3 : FA_41 port map( A => A(3), B => B(3), Ci => tmp_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity RCA_N4_10 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_10;

architecture SYN_structural of RCA_N4_10 is

   component FA_37
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_38
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_39
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_40
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal tmp_3_port, tmp_2_port, tmp_1_port : std_logic;

begin
   
   FAi_0 : FA_40 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           tmp_1_port);
   FAi_1 : FA_39 port map( A => A(1), B => B(1), Ci => tmp_1_port, S => S(1), 
                           Co => tmp_2_port);
   FAi_2 : FA_38 port map( A => A(2), B => B(2), Ci => tmp_2_port, S => S(2), 
                           Co => tmp_3_port);
   FAi_3 : FA_37 port map( A => A(3), B => B(3), Ci => tmp_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity RCA_N4_9 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_9;

architecture SYN_structural of RCA_N4_9 is

   component FA_33
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_34
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_35
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_36
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal tmp_3_port, tmp_2_port, tmp_1_port : std_logic;

begin
   
   FAi_0 : FA_36 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           tmp_1_port);
   FAi_1 : FA_35 port map( A => A(1), B => B(1), Ci => tmp_1_port, S => S(1), 
                           Co => tmp_2_port);
   FAi_2 : FA_34 port map( A => A(2), B => B(2), Ci => tmp_2_port, S => S(2), 
                           Co => tmp_3_port);
   FAi_3 : FA_33 port map( A => A(3), B => B(3), Ci => tmp_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity RCA_N4_8 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_8;

architecture SYN_structural of RCA_N4_8 is

   component FA_29
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_30
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_31
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_32
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal tmp_3_port, tmp_2_port, tmp_1_port : std_logic;

begin
   
   FAi_0 : FA_32 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           tmp_1_port);
   FAi_1 : FA_31 port map( A => A(1), B => B(1), Ci => tmp_1_port, S => S(1), 
                           Co => tmp_2_port);
   FAi_2 : FA_30 port map( A => A(2), B => B(2), Ci => tmp_2_port, S => S(2), 
                           Co => tmp_3_port);
   FAi_3 : FA_29 port map( A => A(3), B => B(3), Ci => tmp_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity RCA_N4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_7;

architecture SYN_structural of RCA_N4_7 is

   component FA_25
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_26
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_27
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_28
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal tmp_3_port, tmp_2_port, tmp_1_port : std_logic;

begin
   
   FAi_0 : FA_28 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           tmp_1_port);
   FAi_1 : FA_27 port map( A => A(1), B => B(1), Ci => tmp_1_port, S => S(1), 
                           Co => tmp_2_port);
   FAi_2 : FA_26 port map( A => A(2), B => B(2), Ci => tmp_2_port, S => S(2), 
                           Co => tmp_3_port);
   FAi_3 : FA_25 port map( A => A(3), B => B(3), Ci => tmp_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity RCA_N4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_6;

architecture SYN_structural of RCA_N4_6 is

   component FA_21
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_22
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_23
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_24
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal tmp_3_port, tmp_2_port, tmp_1_port : std_logic;

begin
   
   FAi_0 : FA_24 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           tmp_1_port);
   FAi_1 : FA_23 port map( A => A(1), B => B(1), Ci => tmp_1_port, S => S(1), 
                           Co => tmp_2_port);
   FAi_2 : FA_22 port map( A => A(2), B => B(2), Ci => tmp_2_port, S => S(2), 
                           Co => tmp_3_port);
   FAi_3 : FA_21 port map( A => A(3), B => B(3), Ci => tmp_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity RCA_N4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_5;

architecture SYN_structural of RCA_N4_5 is

   component FA_17
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_18
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_19
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_20
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal tmp_3_port, tmp_2_port, tmp_1_port : std_logic;

begin
   
   FAi_0 : FA_20 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           tmp_1_port);
   FAi_1 : FA_19 port map( A => A(1), B => B(1), Ci => tmp_1_port, S => S(1), 
                           Co => tmp_2_port);
   FAi_2 : FA_18 port map( A => A(2), B => B(2), Ci => tmp_2_port, S => S(2), 
                           Co => tmp_3_port);
   FAi_3 : FA_17 port map( A => A(3), B => B(3), Ci => tmp_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity RCA_N4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_4;

architecture SYN_structural of RCA_N4_4 is

   component FA_13
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_14
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_15
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_16
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal tmp_3_port, tmp_2_port, tmp_1_port : std_logic;

begin
   
   FAi_0 : FA_16 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           tmp_1_port);
   FAi_1 : FA_15 port map( A => A(1), B => B(1), Ci => tmp_1_port, S => S(1), 
                           Co => tmp_2_port);
   FAi_2 : FA_14 port map( A => A(2), B => B(2), Ci => tmp_2_port, S => S(2), 
                           Co => tmp_3_port);
   FAi_3 : FA_13 port map( A => A(3), B => B(3), Ci => tmp_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity RCA_N4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_3;

architecture SYN_structural of RCA_N4_3 is

   component FA_9
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_10
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_11
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_12
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal tmp_3_port, tmp_2_port, tmp_1_port : std_logic;

begin
   
   FAi_0 : FA_12 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           tmp_1_port);
   FAi_1 : FA_11 port map( A => A(1), B => B(1), Ci => tmp_1_port, S => S(1), 
                           Co => tmp_2_port);
   FAi_2 : FA_10 port map( A => A(2), B => B(2), Ci => tmp_2_port, S => S(2), 
                           Co => tmp_3_port);
   FAi_3 : FA_9 port map( A => A(3), B => B(3), Ci => tmp_3_port, S => S(3), Co
                           => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity RCA_N4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_2;

architecture SYN_structural of RCA_N4_2 is

   component FA_5
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_6
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_7
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_8
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal tmp_3_port, tmp_2_port, tmp_1_port : std_logic;

begin
   
   FAi_0 : FA_8 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           tmp_1_port);
   FAi_1 : FA_7 port map( A => A(1), B => B(1), Ci => tmp_1_port, S => S(1), Co
                           => tmp_2_port);
   FAi_2 : FA_6 port map( A => A(2), B => B(2), Ci => tmp_2_port, S => S(2), Co
                           => tmp_3_port);
   FAi_3 : FA_5 port map( A => A(3), B => B(3), Ci => tmp_3_port, S => S(3), Co
                           => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity RCA_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_1;

architecture SYN_structural of RCA_N4_1 is

   component FA_1
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_2
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_3
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_4
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal tmp_3_port, tmp_2_port, tmp_1_port : std_logic;

begin
   
   FAi_0 : FA_4 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           tmp_1_port);
   FAi_1 : FA_3 port map( A => A(1), B => B(1), Ci => tmp_1_port, S => S(1), Co
                           => tmp_2_port);
   FAi_2 : FA_2 port map( A => A(2), B => B(2), Ci => tmp_2_port, S => S(2), Co
                           => tmp_3_port);
   FAi_3 : FA_1 port map( A => A(3), B => B(3), Ci => tmp_3_port, S => S(3), Co
                           => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_5 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_5;

architecture SYN_behavioral of Gen_Prop_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U2 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);
   U3 : INV_X1 port map( A => n23, ZN => Gij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_25 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_25;

architecture SYN_behavioral of Gen_Prop_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_24 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_24;

architecture SYN_behavioral of Gen_Prop_24 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_23 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_23;

architecture SYN_behavioral of Gen_Prop_23 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_22 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_22;

architecture SYN_behavioral of Gen_Prop_22 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_20 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_20;

architecture SYN_behavioral of Gen_Prop_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_19 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_19;

architecture SYN_behavioral of Gen_Prop_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_18 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_18;

architecture SYN_behavioral of Gen_Prop_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_17 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_17;

architecture SYN_behavioral of Gen_Prop_17 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_16 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_16;

architecture SYN_behavioral of Gen_Prop_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_15 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_15;

architecture SYN_behavioral of Gen_Prop_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_14 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_14;

architecture SYN_behavioral of Gen_Prop_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_13 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_13;

architecture SYN_behavioral of Gen_Prop_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_11 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_11;

architecture SYN_behavioral of Gen_Prop_11 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_10 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_10;

architecture SYN_behavioral of Gen_Prop_10 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_9 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_9;

architecture SYN_behavioral of Gen_Prop_9 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_8 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_8;

architecture SYN_behavioral of Gen_Prop_8 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_7 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_7;

architecture SYN_behavioral of Gen_Prop_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_4 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_4;

architecture SYN_behavioral of Gen_Prop_4 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_21 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_21;

architecture SYN_behavioral of Gen_Prop_21 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n23, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_3 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_3;

architecture SYN_behavioral of Gen_Prop_3 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n23, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_2 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_2;

architecture SYN_behavioral of Gen_Prop_2 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n23, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_1 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_1;

architecture SYN_behavioral of Gen_Prop_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n23, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n23);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Gen_7 is

   port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);

end Gen_Gen_7;

architecture SYN_behavioral of Gen_Gen_7 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n18, n19 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => Pik, A2 => Gik, ZN => n18);
   U2 : NOR2_X1 port map( A1 => Gmj, A2 => Gik, ZN => n19);
   U3 : NOR2_X1 port map( A1 => n19, A2 => n18, ZN => Gij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Gen_4 is

   port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);

end Gen_Gen_4;

architecture SYN_behavioral of Gen_Gen_4 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n18, n19 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Gik, ZN => n18);
   U2 : NAND2_X1 port map( A1 => n19, A2 => n18, ZN => Gij);
   U3 : NAND2_X1 port map( A1 => Gmj, A2 => Pik, ZN => n19);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Gen_2 is

   port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);

end Gen_Gen_2;

architecture SYN_behavioral of Gen_Gen_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n18, n19 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Gik, ZN => n18);
   U2 : NAND2_X1 port map( A1 => Gmj, A2 => Pik, ZN => n19);
   U3 : NAND2_X1 port map( A1 => n19, A2 => n18, ZN => Gij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Gen_1 is

   port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);

end Gen_Gen_1;

architecture SYN_behavioral of Gen_Gen_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net11757, n18 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Gik, ZN => net11757);
   U2 : NAND2_X1 port map( A1 => Gmj, A2 => Pik, ZN => n18);
   U3 : NAND2_X1 port map( A1 => n18, A2 => net11757, ZN => Gij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_31 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_31;

architecture SYN_behavioral of PGnet_block_31 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_30 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_30;

architecture SYN_behavioral of PGnet_block_30 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_29 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_29;

architecture SYN_behavioral of PGnet_block_29 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_28 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_28;

architecture SYN_behavioral of PGnet_block_28 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_27 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_27;

architecture SYN_behavioral of PGnet_block_27 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_26 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_26;

architecture SYN_behavioral of PGnet_block_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_25 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_25;

architecture SYN_behavioral of PGnet_block_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_24 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_24;

architecture SYN_behavioral of PGnet_block_24 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_23 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_23;

architecture SYN_behavioral of PGnet_block_23 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_22 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_22;

architecture SYN_behavioral of PGnet_block_22 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_21 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_21;

architecture SYN_behavioral of PGnet_block_21 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_20 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_20;

architecture SYN_behavioral of PGnet_block_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_19 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_19;

architecture SYN_behavioral of PGnet_block_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_18 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_18;

architecture SYN_behavioral of PGnet_block_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_17 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_17;

architecture SYN_behavioral of PGnet_block_17 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_16 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_16;

architecture SYN_behavioral of PGnet_block_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_15 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_15;

architecture SYN_behavioral of PGnet_block_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_14 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_14;

architecture SYN_behavioral of PGnet_block_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_13 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_13;

architecture SYN_behavioral of PGnet_block_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_12 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_12;

architecture SYN_behavioral of PGnet_block_12 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_11 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_11;

architecture SYN_behavioral of PGnet_block_11 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_10 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_10;

architecture SYN_behavioral of PGnet_block_10 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_9 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_9;

architecture SYN_behavioral of PGnet_block_9 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_8 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_8;

architecture SYN_behavioral of PGnet_block_8 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_7 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_7;

architecture SYN_behavioral of PGnet_block_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_6 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_6;

architecture SYN_behavioral of PGnet_block_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_5 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_5;

architecture SYN_behavioral of PGnet_block_5 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_4 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_4;

architecture SYN_behavioral of PGnet_block_4 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_3 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_3;

architecture SYN_behavioral of PGnet_block_3 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_2 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_2;

architecture SYN_behavioral of PGnet_block_2 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_1 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_1;

architecture SYN_behavioral of PGnet_block_1 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity MUX21_GENERIC_N4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_6;

architecture SYN_behavioral of MUX21_GENERIC_N4_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n60, n61, n62, n63, n64, n65 : std_logic;

begin
   
   U1 : INV_X1 port map( A => SEL, ZN => n60);
   U2 : INV_X1 port map( A => n62, ZN => Y(1));
   U3 : INV_X1 port map( A => n63, ZN => Y(2));
   U4 : INV_X1 port map( A => n64, ZN => Y(3));
   U5 : INV_X1 port map( A => n61, ZN => Y(0));
   U6 : AOI22_X1 port map( A1 => A(3), A2 => n65, B1 => SEL, B2 => B(3), ZN => 
                           n64);
   U7 : AOI22_X1 port map( A1 => A(2), A2 => n60, B1 => B(2), B2 => SEL, ZN => 
                           n63);
   U8 : AOI22_X1 port map( A1 => A(1), A2 => n60, B1 => B(1), B2 => SEL, ZN => 
                           n62);
   U9 : AOI22_X1 port map( A1 => A(0), A2 => n65, B1 => B(0), B2 => SEL, ZN => 
                           n61);
   U10 : INV_X1 port map( A => SEL, ZN => n65);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity CARRY_SEL_BLOCK_N4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CARRY_SEL_BLOCK_N4_6;

architecture SYN_structural of CARRY_SEL_BLOCK_N4_6 is

   component MUX21_GENERIC_N4_6
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_11
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_12
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, S1_3_port, S1_2_port, S1_1_port, S1_0_port, n_1000, n_1001 : 
      std_logic;

begin
   
   RCA0 : RCA_N4_12 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic0_port, S(3) => S0_3_port, 
                           S(2) => S0_2_port, S(1) => S0_1_port, S(0) => 
                           S0_0_port, Co => n_1000);
   RCA1 : RCA_N4_11 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic1_port, S(3) => S1_3_port, 
                           S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1001);
   MUX21 : MUX21_GENERIC_N4_6 port map( A(3) => S0_3_port, A(2) => S0_2_port, 
                           A(1) => S0_1_port, A(0) => S0_0_port, B(3) => 
                           S1_3_port, B(2) => S1_2_port, B(1) => S1_1_port, 
                           B(0) => S1_0_port, SEL => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Gen_5 is

   port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);

end Gen_Gen_5;

architecture SYN_behavioral of Gen_Gen_5 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n13 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n13, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n13);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Gen_3 is

   port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);

end Gen_Gen_3;

architecture SYN_behavioral of Gen_Gen_3 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n13 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n13, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Gmj, B2 => Pik, A => Gik, ZN => n13);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity FA_0 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_0;

architecture SYN_BEHAVIORAL of FA_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n2, n3 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n3, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n3);
   U1 : INV_X1 port map( A => n2, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n3, B2 => Ci, ZN => n2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity MUX21_GENERIC_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_1;

architecture SYN_behavioral of MUX21_GENERIC_N4_1 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A(0), B => B(0), S => SEL, Z => Y(0));
   U2 : MUX2_X1 port map( A => A(2), B => B(2), S => SEL, Z => Y(2));
   U3 : MUX2_X1 port map( A => A(3), B => B(3), S => SEL, Z => Y(3));
   U4 : MUX2_X1 port map( A => A(1), B => B(1), S => SEL, Z => Y(1));

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity MUX21_GENERIC_N4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_2;

architecture SYN_behavioral of MUX21_GENERIC_N4_2 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A(0), B => B(0), S => SEL, Z => Y(0));
   U2 : MUX2_X1 port map( A => A(1), B => B(1), S => SEL, Z => Y(1));
   U3 : MUX2_X1 port map( A => A(2), B => B(2), S => SEL, Z => Y(2));
   U4 : MUX2_X1 port map( A => A(3), B => B(3), S => SEL, Z => Y(3));

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity MUX21_GENERIC_N4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_3;

architecture SYN_behavioral of MUX21_GENERIC_N4_3 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => A(0), B => B(0), S => SEL, Z => Y(0));
   U2 : MUX2_X1 port map( A => A(2), B => B(2), S => SEL, Z => Y(2));
   U3 : MUX2_X1 port map( A => A(1), B => B(1), S => SEL, Z => Y(1));
   U4 : MUX2_X1 port map( A => A(3), B => B(3), S => SEL, Z => Y(3));

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity MUX21_GENERIC_N4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_4;

architecture SYN_behavioral of MUX21_GENERIC_N4_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   signal n5, n7, n8, n9, net11695, net11764 : std_logic;

begin
   
   U1 : MUX2_X1 port map( A => A(3), B => B(3), S => SEL, Z => Y(3));
   U2 : INV_X1 port map( A => SEL, ZN => net11764);
   U3 : INV_X1 port map( A => SEL, ZN => net11695);
   U4 : INV_X1 port map( A => n8, ZN => Y(1));
   U5 : INV_X1 port map( A => n7, ZN => Y(2));
   U6 : INV_X1 port map( A => n9, ZN => Y(0));
   U7 : AOI22_X1 port map( A1 => net11764, A2 => A(2), B1 => SEL, B2 => B(2), 
                           ZN => n7);
   U8 : AOI22_X1 port map( A1 => n5, A2 => A(1), B1 => SEL, B2 => B(1), ZN => 
                           n8);
   U9 : AOI22_X1 port map( A1 => net11695, A2 => A(0), B1 => SEL, B2 => B(0), 
                           ZN => n9);
   U10 : INV_X1 port map( A => SEL, ZN => n5);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity MUX21_GENERIC_N4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_5;

architecture SYN_behavioral of MUX21_GENERIC_N4_5 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7, n8, n9, n24 : std_logic;

begin
   
   U1 : INV_X1 port map( A => SEL, ZN => n24);
   U2 : INV_X1 port map( A => SEL, ZN => n5);
   U3 : INV_X1 port map( A => n8, ZN => Y(1));
   U4 : AOI22_X1 port map( A1 => n5, A2 => A(1), B1 => SEL, B2 => B(1), ZN => 
                           n8);
   U5 : INV_X1 port map( A => n7, ZN => Y(2));
   U6 : AOI22_X1 port map( A1 => n5, A2 => A(2), B1 => SEL, B2 => B(2), ZN => 
                           n7);
   U7 : INV_X1 port map( A => n6, ZN => Y(3));
   U8 : AOI22_X1 port map( A1 => n24, A2 => A(3), B1 => SEL, B2 => B(3), ZN => 
                           n6);
   U9 : INV_X1 port map( A => n9, ZN => Y(0));
   U10 : AOI22_X1 port map( A1 => n24, A2 => A(0), B1 => SEL, B2 => B(0), ZN =>
                           n9);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity MUX21_GENERIC_N4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_7;

architecture SYN_behavioral of MUX21_GENERIC_N4_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n8, ZN => Y(1));
   U2 : INV_X1 port map( A => n7, ZN => Y(2));
   U3 : INV_X1 port map( A => n6, ZN => Y(3));
   U4 : INV_X1 port map( A => n9, ZN => Y(0));
   U5 : AOI22_X1 port map( A1 => A(3), A2 => n5, B1 => SEL, B2 => B(3), ZN => 
                           n6);
   U6 : AOI22_X1 port map( A1 => A(2), A2 => n5, B1 => B(2), B2 => SEL, ZN => 
                           n7);
   U7 : AOI22_X1 port map( A1 => A(1), A2 => n5, B1 => B(1), B2 => SEL, ZN => 
                           n8);
   U8 : AOI22_X1 port map( A1 => A(0), A2 => n5, B1 => B(0), B2 => SEL, ZN => 
                           n9);
   U9 : INV_X1 port map( A => SEL, ZN => n5);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity MUX21_GENERIC_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_N4_0;

architecture SYN_behavioral of MUX21_GENERIC_N4_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n6, n7, n8, n9 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n9, ZN => Y(0));
   U2 : AOI22_X1 port map( A1 => A(0), A2 => n5, B1 => B(0), B2 => SEL, ZN => 
                           n9);
   U3 : INV_X1 port map( A => n8, ZN => Y(1));
   U4 : AOI22_X1 port map( A1 => A(1), A2 => n5, B1 => B(1), B2 => SEL, ZN => 
                           n8);
   U5 : INV_X1 port map( A => n7, ZN => Y(2));
   U6 : AOI22_X1 port map( A1 => A(2), A2 => n5, B1 => B(2), B2 => SEL, ZN => 
                           n7);
   U7 : INV_X1 port map( A => SEL, ZN => n5);
   U8 : INV_X1 port map( A => n6, ZN => Y(3));
   U9 : AOI22_X1 port map( A1 => A(3), A2 => n5, B1 => SEL, B2 => B(3), ZN => 
                           n6);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity RCA_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_N4_0;

architecture SYN_structural of RCA_N4_0 is

   component FA_61
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_62
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_63
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_0
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal tmp_3_port, tmp_2_port, tmp_1_port : std_logic;

begin
   
   FAi_0 : FA_0 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           tmp_1_port);
   FAi_1 : FA_63 port map( A => A(1), B => B(1), Ci => tmp_1_port, S => S(1), 
                           Co => tmp_2_port);
   FAi_2 : FA_62 port map( A => A(2), B => B(2), Ci => tmp_2_port, S => S(2), 
                           Co => tmp_3_port);
   FAi_3 : FA_61 port map( A => A(3), B => B(3), Ci => tmp_3_port, S => S(3), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity CARRY_SEL_BLOCK_N4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CARRY_SEL_BLOCK_N4_1;

architecture SYN_structural of CARRY_SEL_BLOCK_N4_1 is

   component MUX21_GENERIC_N4_1
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, S1_3_port, S1_2_port, S1_1_port, S1_0_port, n_1002, n_1003 : 
      std_logic;

begin
   
   RCA0 : RCA_N4_2 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) => 
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic0_port, S(3) => S0_3_port, 
                           S(2) => S0_2_port, S(1) => S0_1_port, S(0) => 
                           S0_0_port, Co => n_1002);
   RCA1 : RCA_N4_1 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) => 
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic1_port, S(3) => S1_3_port, 
                           S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1003);
   MUX21 : MUX21_GENERIC_N4_1 port map( A(3) => S0_3_port, A(2) => S0_2_port, 
                           A(1) => S0_1_port, A(0) => S0_0_port, B(3) => 
                           S1_3_port, B(2) => S1_2_port, B(1) => S1_1_port, 
                           B(0) => S1_0_port, SEL => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity CARRY_SEL_BLOCK_N4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CARRY_SEL_BLOCK_N4_2;

architecture SYN_structural of CARRY_SEL_BLOCK_N4_2 is

   component MUX21_GENERIC_N4_2
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, S1_3_port, S1_2_port, S1_1_port, S1_0_port, n_1004, n_1005 : 
      std_logic;

begin
   
   RCA0 : RCA_N4_4 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) => 
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic0_port, S(3) => S0_3_port, 
                           S(2) => S0_2_port, S(1) => S0_1_port, S(0) => 
                           S0_0_port, Co => n_1004);
   RCA1 : RCA_N4_3 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) => 
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic1_port, S(3) => S1_3_port, 
                           S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1005);
   MUX21 : MUX21_GENERIC_N4_2 port map( A(3) => S0_3_port, A(2) => S0_2_port, 
                           A(1) => S0_1_port, A(0) => S0_0_port, B(3) => 
                           S1_3_port, B(2) => S1_2_port, B(1) => S1_1_port, 
                           B(0) => S1_0_port, SEL => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity CARRY_SEL_BLOCK_N4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CARRY_SEL_BLOCK_N4_3;

architecture SYN_structural of CARRY_SEL_BLOCK_N4_3 is

   component MUX21_GENERIC_N4_3
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, S1_3_port, S1_2_port, S1_1_port, S1_0_port, n_1006, n_1007 : 
      std_logic;

begin
   
   RCA0 : RCA_N4_6 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) => 
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic0_port, S(3) => S0_3_port, 
                           S(2) => S0_2_port, S(1) => S0_1_port, S(0) => 
                           S0_0_port, Co => n_1006);
   RCA1 : RCA_N4_5 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) => 
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic1_port, S(3) => S1_3_port, 
                           S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1007);
   MUX21 : MUX21_GENERIC_N4_3 port map( A(3) => S0_3_port, A(2) => S0_2_port, 
                           A(1) => S0_1_port, A(0) => S0_0_port, B(3) => 
                           S1_3_port, B(2) => S1_2_port, B(1) => S1_1_port, 
                           B(0) => S1_0_port, SEL => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity CARRY_SEL_BLOCK_N4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CARRY_SEL_BLOCK_N4_4;

architecture SYN_structural of CARRY_SEL_BLOCK_N4_4 is

   component MUX21_GENERIC_N4_4
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_8
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, S1_3_port, S1_2_port, S1_1_port, S1_0_port, n_1008, n_1009 : 
      std_logic;

begin
   
   RCA0 : RCA_N4_8 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) => 
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic0_port, S(3) => S0_3_port, 
                           S(2) => S0_2_port, S(1) => S0_1_port, S(0) => 
                           S0_0_port, Co => n_1008);
   RCA1 : RCA_N4_7 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) => 
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic1_port, S(3) => S1_3_port, 
                           S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1009);
   MUX21 : MUX21_GENERIC_N4_4 port map( A(3) => S0_3_port, A(2) => S0_2_port, 
                           A(1) => S0_1_port, A(0) => S0_0_port, B(3) => 
                           S1_3_port, B(2) => S1_2_port, B(1) => S1_1_port, 
                           B(0) => S1_0_port, SEL => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity CARRY_SEL_BLOCK_N4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CARRY_SEL_BLOCK_N4_5;

architecture SYN_structural of CARRY_SEL_BLOCK_N4_5 is

   component MUX21_GENERIC_N4_5
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_9
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_10
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, S1_3_port, S1_2_port, S1_1_port, S1_0_port, n_1010, n_1011 : 
      std_logic;

begin
   
   RCA0 : RCA_N4_10 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic0_port, S(3) => S0_3_port, 
                           S(2) => S0_2_port, S(1) => S0_1_port, S(0) => 
                           S0_0_port, Co => n_1010);
   RCA1 : RCA_N4_9 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) => 
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic1_port, S(3) => S1_3_port, 
                           S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1011);
   MUX21 : MUX21_GENERIC_N4_5 port map( A(3) => S0_3_port, A(2) => S0_2_port, 
                           A(1) => S0_1_port, A(0) => S0_0_port, B(3) => 
                           S1_3_port, B(2) => S1_2_port, B(1) => S1_1_port, 
                           B(0) => S1_0_port, SEL => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity CARRY_SEL_BLOCK_N4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CARRY_SEL_BLOCK_N4_7;

architecture SYN_structural of CARRY_SEL_BLOCK_N4_7 is

   component MUX21_GENERIC_N4_7
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_13
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_14
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, S1_3_port, S1_2_port, S1_1_port, S1_0_port, n_1012, n_1013 : 
      std_logic;

begin
   
   RCA0 : RCA_N4_14 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic0_port, S(3) => S0_3_port, 
                           S(2) => S0_2_port, S(1) => S0_1_port, S(0) => 
                           S0_0_port, Co => n_1012);
   RCA1 : RCA_N4_13 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic1_port, S(3) => S1_3_port, 
                           S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1013);
   MUX21 : MUX21_GENERIC_N4_7 port map( A(3) => S0_3_port, A(2) => S0_2_port, 
                           A(1) => S0_1_port, A(0) => S0_0_port, B(3) => 
                           S1_3_port, B(2) => S1_2_port, B(1) => S1_1_port, 
                           B(0) => S1_0_port, SEL => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity CARRY_SEL_BLOCK_N4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0));

end CARRY_SEL_BLOCK_N4_0;

architecture SYN_structural of CARRY_SEL_BLOCK_N4_0 is

   component MUX21_GENERIC_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_N4_15
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, S0_3_port, S0_2_port, S0_1_port, 
      S0_0_port, S1_3_port, S1_2_port, S1_1_port, S1_0_port, n_1014, n_1015 : 
      std_logic;

begin
   
   RCA0 : RCA_N4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) => 
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic0_port, S(3) => S0_3_port, 
                           S(2) => S0_2_port, S(1) => S0_1_port, S(0) => 
                           S0_0_port, Co => n_1014);
   RCA1 : RCA_N4_15 port map( A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0) =>
                           A(0), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), Ci => X_Logic1_port, S(3) => S1_3_port, 
                           S(2) => S1_2_port, S(1) => S1_1_port, S(0) => 
                           S1_0_port, Co => n_1015);
   MUX21 : MUX21_GENERIC_N4_0 port map( A(3) => S0_3_port, A(2) => S0_2_port, 
                           A(1) => S0_1_port, A(0) => S0_0_port, B(3) => 
                           S1_3_port, B(2) => S1_2_port, B(1) => S1_1_port, 
                           B(0) => S1_0_port, SEL => Ci, Y(3) => S(3), Y(2) => 
                           S(2), Y(1) => S(1), Y(0) => S(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Gen_6 is

   port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);

end Gen_Gen_6;

architecture SYN_behavioral of Gen_Gen_6 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal net11812, n19 : std_logic;

begin
   
   U1 : INV_X1 port map( A => Gik, ZN => net11812);
   U2 : NAND2_X1 port map( A1 => Gmj, A2 => Pik, ZN => n19);
   U3 : NAND2_X1 port map( A1 => n19, A2 => net11812, ZN => Gij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_6 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_6;

architecture SYN_behavioral of Gen_Prop_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => Gij);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_12 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_12;

architecture SYN_behavioral of Gen_Prop_12 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n2);
   U2 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);
   U3 : INV_X1 port map( A => n2, ZN => Gij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Gen_8 is

   port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);

end Gen_Gen_8;

architecture SYN_behavioral of Gen_Gen_8 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n18, n19 : std_logic;

begin
   
   U1 : NOR2_X1 port map( A1 => Gik, A2 => Pik, ZN => n18);
   U2 : NOR2_X1 port map( A1 => Gmj, A2 => Gik, ZN => n19);
   U3 : NOR2_X1 port map( A1 => n19, A2 => n18, ZN => Gij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_26 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_26;

architecture SYN_behavioral of Gen_Prop_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n2, ZN => Gij);
   U2 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n2);
   U3 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Prop_0 is

   port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);

end Gen_Prop_0;

architecture SYN_behavioral of Gen_Prop_0 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AND2_X1 port map( A1 => Pmj, A2 => Pik, ZN => Pij);
   U2 : INV_X1 port map( A => n2, ZN => Gij);
   U3 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n2);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Gen_9 is

   port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);

end Gen_Gen_9;

architecture SYN_behavioral of Gen_Gen_9 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Gmj, B2 => Pik, A => Gik, ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => Gij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity Gen_Gen_0 is

   port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);

end Gen_Gen_0;

architecture SYN_behavioral of Gen_Gen_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2 : std_logic;

begin
   
   U1 : AOI21_X1 port map( B1 => Pik, B2 => Gmj, A => Gik, ZN => n2);
   U2 : INV_X1 port map( A => n2, ZN => Gij);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity PGnet_block_0 is

   port( A, B : in std_logic;  Pii, Gii : out std_logic);

end PGnet_block_0;

architecture SYN_behavioral of PGnet_block_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U2 : XOR2_X1 port map( A => B, B => A, Z => Pii);
   U1 : AND2_X1 port map( A1 => B, A2 => A, ZN => Gii);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity SUM_GENERATOR_NBIT32_NBIT_PER_BLOCK4 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector (7
         downto 0);  S : out std_logic_vector (31 downto 0));

end SUM_GENERATOR_NBIT32_NBIT_PER_BLOCK4;

architecture SYN_structural of SUM_GENERATOR_NBIT32_NBIT_PER_BLOCK4 is

   component CARRY_SEL_BLOCK_N4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CARRY_SEL_BLOCK_N4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CARRY_SEL_BLOCK_N4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CARRY_SEL_BLOCK_N4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CARRY_SEL_BLOCK_N4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CARRY_SEL_BLOCK_N4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CARRY_SEL_BLOCK_N4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component CARRY_SEL_BLOCK_N4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0));
   end component;

begin
   
   CSBi_0 : CARRY_SEL_BLOCK_N4_0 port map( A(3) => A(3), A(2) => A(2), A(1) => 
                           A(1), A(0) => A(0), B(3) => B(3), B(2) => B(2), B(1)
                           => B(1), B(0) => B(0), Ci => Ci(0), S(3) => S(3), 
                           S(2) => S(2), S(1) => S(1), S(0) => S(0));
   CSBi_1 : CARRY_SEL_BLOCK_N4_7 port map( A(3) => A(7), A(2) => A(6), A(1) => 
                           A(5), A(0) => A(4), B(3) => B(7), B(2) => B(6), B(1)
                           => B(5), B(0) => B(4), Ci => Ci(1), S(3) => S(7), 
                           S(2) => S(6), S(1) => S(5), S(0) => S(4));
   CSBi_2 : CARRY_SEL_BLOCK_N4_6 port map( A(3) => A(11), A(2) => A(10), A(1) 
                           => A(9), A(0) => A(8), B(3) => B(11), B(2) => B(10),
                           B(1) => B(9), B(0) => B(8), Ci => Ci(2), S(3) => 
                           S(11), S(2) => S(10), S(1) => S(9), S(0) => S(8));
   CSBi_3 : CARRY_SEL_BLOCK_N4_5 port map( A(3) => A(15), A(2) => A(14), A(1) 
                           => A(13), A(0) => A(12), B(3) => B(15), B(2) => 
                           B(14), B(1) => B(13), B(0) => B(12), Ci => Ci(3), 
                           S(3) => S(15), S(2) => S(14), S(1) => S(13), S(0) =>
                           S(12));
   CSBi_4 : CARRY_SEL_BLOCK_N4_4 port map( A(3) => A(19), A(2) => A(18), A(1) 
                           => A(17), A(0) => A(16), B(3) => B(19), B(2) => 
                           B(18), B(1) => B(17), B(0) => B(16), Ci => Ci(4), 
                           S(3) => S(19), S(2) => S(18), S(1) => S(17), S(0) =>
                           S(16));
   CSBi_5 : CARRY_SEL_BLOCK_N4_3 port map( A(3) => A(23), A(2) => A(22), A(1) 
                           => A(21), A(0) => A(20), B(3) => B(23), B(2) => 
                           B(22), B(1) => B(21), B(0) => B(20), Ci => Ci(5), 
                           S(3) => S(23), S(2) => S(22), S(1) => S(21), S(0) =>
                           S(20));
   CSBi_6 : CARRY_SEL_BLOCK_N4_2 port map( A(3) => A(27), A(2) => A(26), A(1) 
                           => A(25), A(0) => A(24), B(3) => B(27), B(2) => 
                           B(26), B(1) => B(25), B(0) => B(24), Ci => Ci(6), 
                           S(3) => S(27), S(2) => S(26), S(1) => S(25), S(0) =>
                           S(24));
   CSBlast : CARRY_SEL_BLOCK_N4_1 port map( A(3) => A(31), A(2) => A(30), A(1) 
                           => A(29), A(0) => A(28), B(3) => B(31), B(2) => 
                           B(30), B(1) => B(29), B(0) => B(28), Ci => Ci(7), 
                           S(3) => S(31), S(2) => S(30), S(1) => S(29), S(0) =>
                           S(28));

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity carry_generator_NBIT32_NBIT_PER_BLOCK4 is

   port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co : 
         out std_logic_vector (7 downto 0));

end carry_generator_NBIT32_NBIT_PER_BLOCK4;

architecture SYN_structural of carry_generator_NBIT32_NBIT_PER_BLOCK4 is

   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component Gen_Gen_1
      port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);
   end component;
   
   component Gen_Prop_1
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Gen_2
      port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);
   end component;
   
   component Gen_Gen_3
      port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);
   end component;
   
   component Gen_Gen_4
      port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);
   end component;
   
   component Gen_Gen_5
      port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);
   end component;
   
   component Gen_Prop_2
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Gen_6
      port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);
   end component;
   
   component Gen_Prop_3
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_4
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_5
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Gen_7
      port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);
   end component;
   
   component Gen_Prop_6
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_7
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_8
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_9
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_10
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_11
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_12
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Gen_8
      port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);
   end component;
   
   component Gen_Prop_13
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_14
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_15
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_16
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_17
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_18
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_19
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_20
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_21
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_22
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_23
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_24
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_25
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_26
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Prop_0
      port( Pik, Gik, Pmj, Gmj : in std_logic;  Pij, Gij : out std_logic);
   end component;
   
   component Gen_Gen_9
      port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);
   end component;
   
   component Gen_Gen_0
      port( Pik, Gik, Gmj : in std_logic;  Gij : out std_logic);
   end component;
   
   component PGnet_block_1
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_2
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_3
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_4
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_5
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_6
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_7
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_8
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_9
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_10
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_11
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_12
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_13
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_14
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_15
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_16
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_17
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_18
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_19
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_20
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_21
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_22
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_23
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_24
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_25
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_26
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_27
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_28
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_29
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_30
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_31
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   component PGnet_block_0
      port( A, B : in std_logic;  Pii, Gii : out std_logic);
   end component;
   
   signal Co_7_port, Co_6_port, Co_5_port, Co_4_port, n5, Co_2_port, n6, n7, 
      g_16_16_port, g_16_15_port, g_16_13_port, g_16_9_port, g_15_15_port, 
      g_14_14_port, g_14_13_port, g_13_13_port, g_12_12_port, g_12_11_port, 
      g_12_9_port, g_11_11_port, g_10_10_port, g_10_9_port, g_9_9_port, 
      g_8_8_port, g_8_7_port, g_8_5_port, g_7_7_port, g_6_6_port, g_6_5_port, 
      g_5_5_port, g_4_4_port, g_4_3_port, g_3_3_port, g_2_2_port, g_2_0_port, 
      g_1_1_port, g_1_0_port, p_16_16_port, p_16_15_port, p_16_13_port, 
      p_16_9_port, p_15_15_port, p_14_14_port, p_14_13_port, p_13_13_port, 
      p_12_12_port, p_12_11_port, p_12_9_port, p_11_11_port, p_10_10_port, 
      p_10_9_port, p_9_9_port, p_8_8_port, p_8_7_port, p_8_5_port, p_7_7_port, 
      p_6_6_port, p_6_5_port, p_5_5_port, p_4_4_port, p_4_3_port, p_3_3_port, 
      p_2_2_port, p_1_1_port, g_32_32_port, g_32_31_port, g_32_29_port, 
      g_32_25_port, g_32_17_port, g_31_31_port, g_30_30_port, g_30_29_port, 
      g_29_29_port, g_28_28_port, g_28_27_port, g_28_25_port, g_28_17_port, 
      g_27_27_port, g_26_26_port, g_26_25_port, g_25_25_port, g_24_24_port, 
      g_24_23_port, g_24_21_port, g_24_17_port, g_23_23_port, g_22_22_port, 
      g_22_21_port, g_21_21_port, g_20_20_port, g_20_19_port, g_20_17_port, 
      g_19_19_port, g_18_18_port, g_18_17_port, g_17_17_port, p_32_32_port, 
      p_32_31_port, p_32_29_port, p_32_25_port, p_32_17_port, p_31_31_port, 
      p_30_30_port, p_30_29_port, p_29_29_port, p_28_28_port, p_28_27_port, 
      p_28_25_port, p_28_17_port, p_27_27_port, p_26_26_port, p_26_25_port, 
      p_25_25_port, p_24_24_port, p_24_23_port, p_24_21_port, p_24_17_port, 
      p_23_23_port, p_22_22_port, p_22_21_port, p_21_21_port, p_20_20_port, 
      p_20_19_port, p_20_17_port, p_19_19_port, p_18_18_port, p_18_17_port, 
      p_17_17_port, Co_3_port, n45, Co_0_port, Co_1_port : std_logic;

begin
   Co <= ( Co_7_port, Co_6_port, Co_5_port, Co_4_port, Co_3_port, Co_2_port, 
      Co_1_port, Co_0_port );
   
   PG_i_i_0 : PGnet_block_0 port map( A => A(0), B => B(0), Pii => p_1_1_port, 
                           Gii => g_1_1_port);
   PG_i_i_1 : PGnet_block_31 port map( A => A(1), B => B(1), Pii => p_2_2_port,
                           Gii => g_2_2_port);
   PG_i_i_2 : PGnet_block_30 port map( A => A(2), B => B(2), Pii => p_3_3_port,
                           Gii => g_3_3_port);
   PG_i_i_3 : PGnet_block_29 port map( A => A(3), B => B(3), Pii => p_4_4_port,
                           Gii => g_4_4_port);
   PG_i_i_4 : PGnet_block_28 port map( A => A(4), B => B(4), Pii => p_5_5_port,
                           Gii => g_5_5_port);
   PG_i_i_5 : PGnet_block_27 port map( A => A(5), B => B(5), Pii => p_6_6_port,
                           Gii => g_6_6_port);
   PG_i_i_6 : PGnet_block_26 port map( A => A(6), B => B(6), Pii => p_7_7_port,
                           Gii => g_7_7_port);
   PG_i_i_7 : PGnet_block_25 port map( A => A(7), B => B(7), Pii => p_8_8_port,
                           Gii => g_8_8_port);
   PG_i_i_8 : PGnet_block_24 port map( A => A(8), B => B(8), Pii => p_9_9_port,
                           Gii => g_9_9_port);
   PG_i_i_9 : PGnet_block_23 port map( A => A(9), B => B(9), Pii => 
                           p_10_10_port, Gii => g_10_10_port);
   PG_i_i_10 : PGnet_block_22 port map( A => A(10), B => B(10), Pii => 
                           p_11_11_port, Gii => g_11_11_port);
   PG_i_i_11 : PGnet_block_21 port map( A => A(11), B => B(11), Pii => 
                           p_12_12_port, Gii => g_12_12_port);
   PG_i_i_12 : PGnet_block_20 port map( A => A(12), B => B(12), Pii => 
                           p_13_13_port, Gii => g_13_13_port);
   PG_i_i_13 : PGnet_block_19 port map( A => A(13), B => B(13), Pii => 
                           p_14_14_port, Gii => g_14_14_port);
   PG_i_i_14 : PGnet_block_18 port map( A => A(14), B => B(14), Pii => 
                           p_15_15_port, Gii => g_15_15_port);
   PG_i_i_15 : PGnet_block_17 port map( A => A(15), B => B(15), Pii => 
                           p_16_16_port, Gii => g_16_16_port);
   PG_i_i_16 : PGnet_block_16 port map( A => A(16), B => B(16), Pii => 
                           p_17_17_port, Gii => g_17_17_port);
   PG_i_i_17 : PGnet_block_15 port map( A => A(17), B => B(17), Pii => 
                           p_18_18_port, Gii => g_18_18_port);
   PG_i_i_18 : PGnet_block_14 port map( A => A(18), B => B(18), Pii => 
                           p_19_19_port, Gii => g_19_19_port);
   PG_i_i_19 : PGnet_block_13 port map( A => A(19), B => B(19), Pii => 
                           p_20_20_port, Gii => g_20_20_port);
   PG_i_i_20 : PGnet_block_12 port map( A => A(20), B => B(20), Pii => 
                           p_21_21_port, Gii => g_21_21_port);
   PG_i_i_21 : PGnet_block_11 port map( A => A(21), B => B(21), Pii => 
                           p_22_22_port, Gii => g_22_22_port);
   PG_i_i_22 : PGnet_block_10 port map( A => A(22), B => B(22), Pii => 
                           p_23_23_port, Gii => g_23_23_port);
   PG_i_i_23 : PGnet_block_9 port map( A => A(23), B => B(23), Pii => 
                           p_24_24_port, Gii => g_24_24_port);
   PG_i_i_24 : PGnet_block_8 port map( A => A(24), B => B(24), Pii => 
                           p_25_25_port, Gii => g_25_25_port);
   PG_i_i_25 : PGnet_block_7 port map( A => A(25), B => B(25), Pii => 
                           p_26_26_port, Gii => g_26_26_port);
   PG_i_i_26 : PGnet_block_6 port map( A => A(26), B => B(26), Pii => 
                           p_27_27_port, Gii => g_27_27_port);
   PG_i_i_27 : PGnet_block_5 port map( A => A(27), B => B(27), Pii => 
                           p_28_28_port, Gii => g_28_28_port);
   PG_i_i_28 : PGnet_block_4 port map( A => A(28), B => B(28), Pii => 
                           p_29_29_port, Gii => g_29_29_port);
   PG_i_i_29 : PGnet_block_3 port map( A => A(29), B => B(29), Pii => 
                           p_30_30_port, Gii => g_30_30_port);
   PG_i_i_30 : PGnet_block_2 port map( A => A(30), B => B(30), Pii => 
                           p_31_31_port, Gii => g_31_31_port);
   PG_i_i_31 : PGnet_block_1 port map( A => A(31), B => B(31), Pii => 
                           p_32_32_port, Gii => g_32_32_port);
   G_1_0 : Gen_Gen_0 port map( Pik => p_1_1_port, Gik => g_1_1_port, Gmj => Cin
                           , Gij => g_1_0_port);
   G_i_0_1_0 : Gen_Gen_9 port map( Pik => p_2_2_port, Gik => g_2_2_port, Gmj =>
                           g_1_0_port, Gij => g_2_0_port);
   PG_i_j_1_1 : Gen_Prop_0 port map( Pik => p_4_4_port, Gik => g_4_4_port, Pmj 
                           => p_3_3_port, Gmj => g_3_3_port, Pij => p_4_3_port,
                           Gij => g_4_3_port);
   PG_i_j_1_2 : Gen_Prop_26 port map( Pik => p_6_6_port, Gik => g_6_6_port, Pmj
                           => p_5_5_port, Gmj => g_5_5_port, Pij => p_6_5_port,
                           Gij => g_6_5_port);
   PG_i_j_1_3 : Gen_Prop_25 port map( Pik => p_8_8_port, Gik => g_8_8_port, Pmj
                           => p_7_7_port, Gmj => g_7_7_port, Pij => p_8_7_port,
                           Gij => g_8_7_port);
   PG_i_j_1_4 : Gen_Prop_24 port map( Pik => p_10_10_port, Gik => g_10_10_port,
                           Pmj => p_9_9_port, Gmj => g_9_9_port, Pij => 
                           p_10_9_port, Gij => g_10_9_port);
   PG_i_j_1_5 : Gen_Prop_23 port map( Pik => p_12_12_port, Gik => g_12_12_port,
                           Pmj => p_11_11_port, Gmj => g_11_11_port, Pij => 
                           p_12_11_port, Gij => g_12_11_port);
   PG_i_j_1_6 : Gen_Prop_22 port map( Pik => p_14_14_port, Gik => g_14_14_port,
                           Pmj => p_13_13_port, Gmj => g_13_13_port, Pij => 
                           p_14_13_port, Gij => g_14_13_port);
   PG_i_j_1_7 : Gen_Prop_21 port map( Pik => p_16_16_port, Gik => g_16_16_port,
                           Pmj => p_15_15_port, Gmj => g_15_15_port, Pij => 
                           p_16_15_port, Gij => g_16_15_port);
   PG_i_j_1_8 : Gen_Prop_20 port map( Pik => p_18_18_port, Gik => g_18_18_port,
                           Pmj => p_17_17_port, Gmj => g_17_17_port, Pij => 
                           p_18_17_port, Gij => g_18_17_port);
   PG_i_j_1_9 : Gen_Prop_19 port map( Pik => p_20_20_port, Gik => g_20_20_port,
                           Pmj => p_19_19_port, Gmj => g_19_19_port, Pij => 
                           p_20_19_port, Gij => g_20_19_port);
   PG_i_j_1_10 : Gen_Prop_18 port map( Pik => p_22_22_port, Gik => g_22_22_port
                           , Pmj => p_21_21_port, Gmj => g_21_21_port, Pij => 
                           p_22_21_port, Gij => g_22_21_port);
   PG_i_j_1_11 : Gen_Prop_17 port map( Pik => p_24_24_port, Gik => g_24_24_port
                           , Pmj => p_23_23_port, Gmj => g_23_23_port, Pij => 
                           p_24_23_port, Gij => g_24_23_port);
   PG_i_j_1_12 : Gen_Prop_16 port map( Pik => p_26_26_port, Gik => g_26_26_port
                           , Pmj => p_25_25_port, Gmj => g_25_25_port, Pij => 
                           p_26_25_port, Gij => g_26_25_port);
   PG_i_j_1_13 : Gen_Prop_15 port map( Pik => p_28_28_port, Gik => g_28_28_port
                           , Pmj => p_27_27_port, Gmj => g_27_27_port, Pij => 
                           p_28_27_port, Gij => g_28_27_port);
   PG_i_j_1_14 : Gen_Prop_14 port map( Pik => p_30_30_port, Gik => g_30_30_port
                           , Pmj => p_29_29_port, Gmj => g_29_29_port, Pij => 
                           p_30_29_port, Gij => g_30_29_port);
   PG_i_j_1_15 : Gen_Prop_13 port map( Pik => p_32_32_port, Gik => g_32_32_port
                           , Pmj => p_31_31_port, Gmj => g_31_31_port, Pij => 
                           p_32_31_port, Gij => g_32_31_port);
   G_i_0_2_0 : Gen_Gen_8 port map( Pik => p_4_3_port, Gik => g_4_3_port, Gmj =>
                           g_2_0_port, Gij => n7);
   PG_i_j_2_1 : Gen_Prop_12 port map( Pik => p_8_7_port, Gik => g_8_7_port, Pmj
                           => p_6_5_port, Gmj => g_6_5_port, Pij => p_8_5_port,
                           Gij => g_8_5_port);
   PG_i_j_2_2 : Gen_Prop_11 port map( Pik => p_12_11_port, Gik => g_12_11_port,
                           Pmj => p_10_9_port, Gmj => g_10_9_port, Pij => 
                           p_12_9_port, Gij => g_12_9_port);
   PG_i_j_2_3 : Gen_Prop_10 port map( Pik => p_16_15_port, Gik => g_16_15_port,
                           Pmj => p_14_13_port, Gmj => g_14_13_port, Pij => 
                           p_16_13_port, Gij => g_16_13_port);
   PG_i_j_2_4 : Gen_Prop_9 port map( Pik => p_20_19_port, Gik => g_20_19_port, 
                           Pmj => p_18_17_port, Gmj => g_18_17_port, Pij => 
                           p_20_17_port, Gij => g_20_17_port);
   PG_i_j_2_5 : Gen_Prop_8 port map( Pik => p_24_23_port, Gik => g_24_23_port, 
                           Pmj => p_22_21_port, Gmj => g_22_21_port, Pij => 
                           p_24_21_port, Gij => g_24_21_port);
   PG_i_j_2_6 : Gen_Prop_7 port map( Pik => p_28_27_port, Gik => g_28_27_port, 
                           Pmj => p_26_25_port, Gmj => g_26_25_port, Pij => 
                           p_28_25_port, Gij => g_28_25_port);
   PG_i_j_2_7 : Gen_Prop_6 port map( Pik => p_32_31_port, Gik => g_32_31_port, 
                           Pmj => p_30_29_port, Gmj => g_30_29_port, Pij => 
                           p_32_29_port, Gij => g_32_29_port);
   G_i_0_3_0 : Gen_Gen_7 port map( Pik => p_8_5_port, Gik => g_8_5_port, Gmj =>
                           n7, Gij => n6);
   PG_i_j_3_1 : Gen_Prop_5 port map( Pik => p_16_13_port, Gik => g_16_13_port, 
                           Pmj => p_12_9_port, Gmj => g_12_9_port, Pij => 
                           p_16_9_port, Gij => g_16_9_port);
   PG_i_j_3_2 : Gen_Prop_4 port map( Pik => p_24_21_port, Gik => g_24_21_port, 
                           Pmj => p_20_17_port, Gmj => g_20_17_port, Pij => 
                           p_24_17_port, Gij => g_24_17_port);
   PG_i_j_3_3 : Gen_Prop_3 port map( Pik => p_32_29_port, Gik => g_32_29_port, 
                           Pmj => p_28_25_port, Gmj => g_28_25_port, Pij => 
                           p_32_25_port, Gij => g_32_25_port);
   G_i_0_4_0 : Gen_Gen_6 port map( Pik => p_16_9_port, Gik => g_16_9_port, Gmj 
                           => n6, Gij => n5);
   PG_i_j_4_1 : Gen_Prop_2 port map( Pik => p_32_25_port, Gik => g_32_25_port, 
                           Pmj => p_24_17_port, Gmj => g_24_17_port, Pij => 
                           p_32_17_port, Gij => g_32_17_port);
   G_i_0_5_0 : Gen_Gen_5 port map( Pik => p_32_17_port, Gik => g_32_17_port, 
                           Gmj => Co_3_port, Gij => Co_7_port);
   G_i_0_2_1_5 : Gen_Gen_4 port map( Pik => p_24_17_port, Gik => g_24_17_port, 
                           Gmj => n5, Gij => Co_5_port);
   G_i_0_3_1_4 : Gen_Gen_3 port map( Pik => p_12_9_port, Gik => g_12_9_port, 
                           Gmj => n45, Gij => Co_2_port);
   G_i_0_3_2_5 : Gen_Gen_2 port map( Pik => p_20_17_port, Gik => g_20_17_port, 
                           Gmj => n5, Gij => Co_4_port);
   PG_i_j_3_3_4 : Gen_Prop_1 port map( Pik => p_28_25_port, Gik => g_28_25_port
                           , Pmj => p_24_17_port, Gmj => g_24_17_port, Pij => 
                           p_28_17_port, Gij => g_28_17_port);
   G_i_0_3_3_5 : Gen_Gen_1 port map( Pik => p_28_17_port, Gik => g_28_17_port, 
                           Gmj => n5, Gij => Co_6_port);
   U1 : BUF_X1 port map( A => n6, Z => n45);
   U2 : BUF_X2 port map( A => n5, Z => Co_3_port);
   U3 : CLKBUF_X1 port map( A => n7, Z => Co_0_port);
   U4 : CLKBUF_X1 port map( A => n45, Z => Co_1_port);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_ADDER_NBIT32_NBIT_PER_BLOCK4.all;

entity P4_ADDER_NBIT32_NBIT_PER_BLOCK4 is

   port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (31 downto 0);  Co : out std_logic);

end P4_ADDER_NBIT32_NBIT_PER_BLOCK4;

architecture SYN_structural of P4_ADDER_NBIT32_NBIT_PER_BLOCK4 is

   component BUF_X2
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component SUM_GENERATOR_NBIT32_NBIT_PER_BLOCK4
      port( A, B : in std_logic_vector (31 downto 0);  Ci : in std_logic_vector
            (7 downto 0);  S : out std_logic_vector (31 downto 0));
   end component;
   
   component carry_generator_NBIT32_NBIT_PER_BLOCK4
      port( A, B : in std_logic_vector (31 downto 0);  Cin : in std_logic;  Co 
            : out std_logic_vector (7 downto 0));
   end component;
   
   signal carries_7_port, carries_6_port, carries_5_port, carries_4_port, 
      carries_3_port, carries_2_port, carries_1_port, n11 : std_logic;

begin
   
   CarryG : carry_generator_NBIT32_NBIT_PER_BLOCK4 port map( A(31) => A(31), 
                           A(30) => A(30), A(29) => A(29), A(28) => A(28), 
                           A(27) => A(27), A(26) => A(26), A(25) => A(25), 
                           A(24) => A(24), A(23) => A(23), A(22) => A(22), 
                           A(21) => A(21), A(20) => A(20), A(19) => A(19), 
                           A(18) => A(18), A(17) => A(17), A(16) => A(16), 
                           A(15) => A(15), A(14) => A(14), A(13) => A(13), 
                           A(12) => A(12), A(11) => A(11), A(10) => A(10), A(9)
                           => A(9), A(8) => A(8), A(7) => A(7), A(6) => A(6), 
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(31) => B(31), 
                           B(30) => B(30), B(29) => B(29), B(28) => B(28), 
                           B(27) => B(27), B(26) => B(26), B(25) => B(25), 
                           B(24) => B(24), B(23) => B(23), B(22) => B(22), 
                           B(21) => B(21), B(20) => B(20), B(19) => B(19), 
                           B(18) => B(18), B(17) => B(17), B(16) => B(16), 
                           B(15) => B(15), B(14) => B(14), B(13) => B(13), 
                           B(12) => B(12), B(11) => B(11), B(10) => B(10), B(9)
                           => B(9), B(8) => B(8), B(7) => B(7), B(6) => B(6), 
                           B(5) => B(5), B(4) => B(4), B(3) => B(3), B(2) => 
                           B(2), B(1) => B(1), B(0) => B(0), Cin => Ci, Co(7) 
                           => Co, Co(6) => carries_7_port, Co(5) => 
                           carries_6_port, Co(4) => carries_5_port, Co(3) => 
                           carries_4_port, Co(2) => carries_3_port, Co(1) => 
                           carries_2_port, Co(0) => carries_1_port);
   SumG : SUM_GENERATOR_NBIT32_NBIT_PER_BLOCK4 port map( A(31) => A(31), A(30) 
                           => A(30), A(29) => A(29), A(28) => A(28), A(27) => 
                           A(27), A(26) => A(26), A(25) => A(25), A(24) => 
                           A(24), A(23) => A(23), A(22) => A(22), A(21) => 
                           A(21), A(20) => A(20), A(19) => A(19), A(18) => 
                           A(18), A(17) => A(17), A(16) => A(16), A(15) => 
                           A(15), A(14) => A(14), A(13) => A(13), A(12) => 
                           A(12), A(11) => A(11), A(10) => A(10), A(9) => A(9),
                           A(8) => A(8), A(7) => A(7), A(6) => A(6), A(5) => 
                           A(5), A(4) => A(4), A(3) => A(3), A(2) => A(2), A(1)
                           => A(1), A(0) => n11, B(31) => B(31), B(30) => B(30)
                           , B(29) => B(29), B(28) => B(28), B(27) => B(27), 
                           B(26) => B(26), B(25) => B(25), B(24) => B(24), 
                           B(23) => B(23), B(22) => B(22), B(21) => B(21), 
                           B(20) => B(20), B(19) => B(19), B(18) => B(18), 
                           B(17) => B(17), B(16) => B(16), B(15) => B(15), 
                           B(14) => B(14), B(13) => B(13), B(12) => B(12), 
                           B(11) => B(11), B(10) => B(10), B(9) => B(9), B(8) 
                           => B(8), B(7) => B(7), B(6) => B(6), B(5) => B(5), 
                           B(4) => B(4), B(3) => B(3), B(2) => B(2), B(1) => 
                           B(1), B(0) => B(0), Ci(7) => carries_7_port, Ci(6) 
                           => carries_6_port, Ci(5) => carries_5_port, Ci(4) =>
                           carries_4_port, Ci(3) => carries_3_port, Ci(2) => 
                           carries_2_port, Ci(1) => carries_1_port, Ci(0) => Ci
                           , S(31) => S(31), S(30) => S(30), S(29) => S(29), 
                           S(28) => S(28), S(27) => S(27), S(26) => S(26), 
                           S(25) => S(25), S(24) => S(24), S(23) => S(23), 
                           S(22) => S(22), S(21) => S(21), S(20) => S(20), 
                           S(19) => S(19), S(18) => S(18), S(17) => S(17), 
                           S(16) => S(16), S(15) => S(15), S(14) => S(14), 
                           S(13) => S(13), S(12) => S(12), S(11) => S(11), 
                           S(10) => S(10), S(9) => S(9), S(8) => S(8), S(7) => 
                           S(7), S(6) => S(6), S(5) => S(5), S(4) => S(4), S(3)
                           => S(3), S(2) => S(2), S(1) => S(1), S(0) => S(0));
   U1 : BUF_X2 port map( A => A(0), Z => n11);

end SYN_structural;
