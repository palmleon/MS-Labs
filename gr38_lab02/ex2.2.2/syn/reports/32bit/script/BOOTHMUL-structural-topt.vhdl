
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_BOOTHMUL is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_BOOTHMUL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_231 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_231;

architecture SYN_BEHAVIORAL of FA_231 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n6, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_230 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_230;

architecture SYN_BEHAVIORAL of FA_230 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n6, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_229 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_229;

architecture SYN_BEHAVIORAL of FA_229 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n6, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_228 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_228;

architecture SYN_BEHAVIORAL of FA_228 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n6, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_227 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_227;

architecture SYN_BEHAVIORAL of FA_227 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n6, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_226 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_226;

architecture SYN_BEHAVIORAL of FA_226 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n6, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_225 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_225;

architecture SYN_BEHAVIORAL of FA_225 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal n5, n6 : std_logic;

begin
   
   U3 : XOR2_X1 port map( A => Ci, B => n5, Z => S);
   U4 : XOR2_X1 port map( A => A, B => B, Z => n5);
   U1 : INV_X1 port map( A => n6, ZN => Co);
   U2 : AOI22_X1 port map( A1 => B, A2 => A, B1 => n5, B2 => Ci, ZN => n6);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX51_GENERIC_N8_1 is

   port( posA, negA, pos2A, neg2A : in std_logic_vector (7 downto 0);  SEL : in
         std_logic_vector (2 downto 0);  Y : out std_logic_vector (7 downto 0)
         );

end MUX51_GENERIC_N8_1;

architecture SYN_behavioral of MUX51_GENERIC_N8_1 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
      n37, n38, n39, n40, n41, n42, n43, n44 : std_logic;

begin
   
   U26 : NOR3_X2 port map( A1 => SEL(0), A2 => SEL(2), A3 => n23, ZN => n42);
   U28 : NOR3_X2 port map( A1 => SEL(1), A2 => SEL(2), A3 => n24, ZN => n39);
   U29 : NOR3_X2 port map( A1 => n23, A2 => SEL(2), A3 => n24, ZN => n40);
   U2 : NAND2_X1 port map( A1 => n38, A2 => n37, ZN => Y(6));
   U3 : AOI22_X1 port map( A1 => negA(6), A2 => n42, B1 => neg2A(6), B2 => n41,
                           ZN => n37);
   U4 : AOI22_X1 port map( A1 => pos2A(6), A2 => n40, B1 => posA(6), B2 => n39,
                           ZN => n38);
   U5 : NAND2_X1 port map( A1 => n44, A2 => n43, ZN => Y(7));
   U6 : AOI22_X1 port map( A1 => negA(7), A2 => n42, B1 => neg2A(7), B2 => n41,
                           ZN => n43);
   U7 : AOI22_X1 port map( A1 => pos2A(7), A2 => n40, B1 => posA(7), B2 => n39,
                           ZN => n44);
   U8 : AND3_X1 port map( A1 => n24, A2 => n23, A3 => SEL(2), ZN => n41);
   U9 : INV_X1 port map( A => SEL(1), ZN => n23);
   U10 : INV_X1 port map( A => SEL(0), ZN => n24);
   U11 : NAND2_X1 port map( A1 => n32, A2 => n31, ZN => Y(3));
   U12 : AOI22_X1 port map( A1 => negA(3), A2 => n42, B1 => neg2A(3), B2 => n41
                           , ZN => n31);
   U13 : AOI22_X1 port map( A1 => pos2A(3), A2 => n40, B1 => posA(3), B2 => n39
                           , ZN => n32);
   U14 : NAND2_X1 port map( A1 => n34, A2 => n33, ZN => Y(4));
   U15 : AOI22_X1 port map( A1 => negA(4), A2 => n42, B1 => neg2A(4), B2 => n41
                           , ZN => n33);
   U16 : AOI22_X1 port map( A1 => pos2A(4), A2 => n40, B1 => posA(4), B2 => n39
                           , ZN => n34);
   U17 : NAND2_X1 port map( A1 => n36, A2 => n35, ZN => Y(5));
   U18 : AOI22_X1 port map( A1 => negA(5), A2 => n42, B1 => neg2A(5), B2 => n41
                           , ZN => n35);
   U19 : AOI22_X1 port map( A1 => pos2A(5), A2 => n40, B1 => posA(5), B2 => n39
                           , ZN => n36);
   U20 : NAND2_X1 port map( A1 => n30, A2 => n29, ZN => Y(2));
   U21 : AOI22_X1 port map( A1 => negA(2), A2 => n42, B1 => neg2A(2), B2 => n41
                           , ZN => n29);
   U22 : AOI22_X1 port map( A1 => pos2A(2), A2 => n40, B1 => posA(2), B2 => n39
                           , ZN => n30);
   U23 : NAND2_X1 port map( A1 => n26, A2 => n25, ZN => Y(0));
   U24 : AOI22_X1 port map( A1 => pos2A(0), A2 => n40, B1 => posA(0), B2 => n39
                           , ZN => n26);
   U25 : AOI22_X1 port map( A1 => negA(0), A2 => n42, B1 => neg2A(0), B2 => n41
                           , ZN => n25);
   U27 : NAND2_X1 port map( A1 => n28, A2 => n27, ZN => Y(1));
   U30 : AOI22_X1 port map( A1 => pos2A(1), A2 => n40, B1 => posA(1), B2 => n39
                           , ZN => n28);
   U31 : AOI22_X1 port map( A1 => negA(1), A2 => n42, B1 => neg2A(1), B2 => n41
                           , ZN => n27);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity encoder_9 is

   port( inc : in std_logic_vector (2 downto 0);  enc : out std_logic_vector (2
         downto 0));

end encoder_9;

architecture SYN_behavioral of encoder_9 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n5, n7, n8 : std_logic;

begin
   
   U1 : OAI22_X1 port map( A1 => n8, A2 => n5, B1 => inc(2), B2 => n7, ZN => 
                           enc(1));
   U2 : INV_X1 port map( A => inc(2), ZN => n5);
   U3 : OAI21_X1 port map( B1 => inc(1), B2 => inc(0), A => n7, ZN => n8);
   U4 : AOI21_X1 port map( B1 => n8, B2 => n7, A => inc(2), ZN => enc(0));
   U5 : AND3_X1 port map( A1 => inc(2), A2 => n7, A3 => n8, ZN => enc(2));
   U6 : NAND2_X1 port map( A1 => inc(1), A2 => inc(0), ZN => n7);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity FA_224 is

   port( A, B, Ci : in std_logic;  S, Co : out std_logic);

end FA_224;

architecture SYN_BEHAVIORAL of FA_224 is

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

use work.CONV_PACK_BOOTHMUL.all;

entity shift_compl_N8_DW01_inc_1 is

   port( A : in std_logic_vector (7 downto 0);  SUM : out std_logic_vector (7 
         downto 0));

end shift_compl_N8_DW01_inc_1;

architecture SYN_rpl of shift_compl_N8_DW01_inc_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port 
      : std_logic;

begin
   
   U1_1_6 : HA_X1 port map( A => A(6), B => carry_6_port, CO => carry_7_port, S
                           => SUM(6));
   U1_1_5 : HA_X1 port map( A => A(5), B => carry_5_port, CO => carry_6_port, S
                           => SUM(5));
   U1_1_4 : HA_X1 port map( A => A(4), B => carry_4_port, CO => carry_5_port, S
                           => SUM(4));
   U1_1_3 : HA_X1 port map( A => A(3), B => carry_3_port, CO => carry_4_port, S
                           => SUM(3));
   U1_1_2 : HA_X1 port map( A => A(2), B => A(1), CO => carry_3_port, S => 
                           SUM(2));
   U2 : XOR2_X1 port map( A => carry_7_port, B => A(7), Z => SUM(7));
   U1 : INV_X1 port map( A => A(1), ZN => SUM(1));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity RCA_N8 is

   port( A, B : in std_logic_vector (7 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (7 downto 0);  Co : out std_logic);

end RCA_N8;

architecture SYN_structural of RCA_N8 is

   component FA_225
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_226
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_227
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_228
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_229
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_230
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_231
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   component FA_224
      port( A, B, Ci : in std_logic;  S, Co : out std_logic);
   end component;
   
   signal tmp_7_port, tmp_6_port, tmp_5_port, tmp_4_port, tmp_3_port, 
      tmp_2_port, tmp_1_port : std_logic;

begin
   
   FAi_0 : FA_224 port map( A => A(0), B => B(0), Ci => Ci, S => S(0), Co => 
                           tmp_1_port);
   FAi_1 : FA_231 port map( A => A(1), B => B(1), Ci => tmp_1_port, S => S(1), 
                           Co => tmp_2_port);
   FAi_2 : FA_230 port map( A => A(2), B => B(2), Ci => tmp_2_port, S => S(2), 
                           Co => tmp_3_port);
   FAi_3 : FA_229 port map( A => A(3), B => B(3), Ci => tmp_3_port, S => S(3), 
                           Co => tmp_4_port);
   FAi_4 : FA_228 port map( A => A(4), B => B(4), Ci => tmp_4_port, S => S(4), 
                           Co => tmp_5_port);
   FAi_5 : FA_227 port map( A => A(5), B => B(5), Ci => tmp_5_port, S => S(5), 
                           Co => tmp_6_port);
   FAi_6 : FA_226 port map( A => A(6), B => B(6), Ci => tmp_6_port, S => S(6), 
                           Co => tmp_7_port);
   FAi_7 : FA_225 port map( A => A(7), B => B(7), Ci => tmp_7_port, S => S(7), 
                           Co => Co);

end SYN_structural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity shift_compl_N8 is

   port( A : in std_logic_vector (7 downto 0);  p2A, m2A, p4A, m4A : out 
         std_logic_vector (7 downto 0));

end shift_compl_N8;

architecture SYN_beh of shift_compl_N8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component shift_compl_N8_DW01_inc_1
      port( A : in std_logic_vector (7 downto 0);  SUM : out std_logic_vector 
            (7 downto 0));
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal X_Logic0_port, m4A_7_port, m4A_6_port, m4A_5_port, m4A_4_port, 
      m4A_3_port, m4A_0_port, add_34_carry_4_port, add_34_carry_5_port, 
      add_34_carry_6_port, add_34_carry_7_port, m4A_1_port, n2, n4, n5, n6, n7,
      n8, n9, n10, n_1002 : std_logic;

begin
   p2A <= ( A(6), A(5), A(4), A(3), A(2), A(1), A(0), X_Logic0_port );
   p4A <= ( A(5), A(4), A(3), A(2), A(1), A(0), X_Logic0_port, X_Logic0_port );
   m4A <= ( m4A_7_port, m4A_6_port, m4A_5_port, m4A_4_port, m4A_3_port, A(0), 
      m4A_1_port, m4A_0_port );
   
   X_Logic0_port <= '0';
   add_34_U1_1_3 : HA_X1 port map( A => n10, B => n7, CO => add_34_carry_4_port
                           , S => m4A_3_port);
   add_34_U1_1_4 : HA_X1 port map( A => n9, B => add_34_carry_4_port, CO => 
                           add_34_carry_5_port, S => m4A_4_port);
   add_34_U1_1_5 : HA_X1 port map( A => n8, B => add_34_carry_5_port, CO => 
                           add_34_carry_6_port, S => m4A_5_port);
   add_34_U1_1_6 : HA_X1 port map( A => n4, B => add_34_carry_6_port, CO => 
                           add_34_carry_7_port, S => m4A_6_port);
   m4A_1_port <= '0';
   m2A(0) <= '0';
   m4A_0_port <= '0';
   n2 <= '1';
   U15 : XOR2_X1 port map( A => n5, B => add_34_carry_7_port, Z => m4A_7_port);
   add_33 : shift_compl_N8_DW01_inc_1 port map( A(7) => n6, A(6) => n5, A(5) =>
                           n4, A(4) => n8, A(3) => n9, A(2) => n10, A(1) => n7,
                           A(0) => n2, SUM(7) => m2A(7), SUM(6) => m2A(6), 
                           SUM(5) => m2A(5), SUM(4) => m2A(4), SUM(3) => m2A(3)
                           , SUM(2) => m2A(2), SUM(1) => m2A(1), SUM(0) => 
                           n_1002);
   U3 : INV_X1 port map( A => A(4), ZN => n4);
   U5 : INV_X1 port map( A => A(5), ZN => n5);
   U6 : INV_X1 port map( A => A(1), ZN => n10);
   U7 : INV_X1 port map( A => A(2), ZN => n9);
   U8 : INV_X1 port map( A => A(3), ZN => n8);
   U9 : INV_X1 port map( A => A(0), ZN => n7);
   U10 : INV_X1 port map( A => A(6), ZN => n6);

end SYN_beh;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity booth_first_row_N8_RAD3_DW01_inc_0 is

   port( A : in std_logic_vector (7 downto 0);  SUM : out std_logic_vector (7 
         downto 0));

end booth_first_row_N8_RAD3_DW01_inc_0;

architecture SYN_rpl of booth_first_row_N8_RAD3_DW01_inc_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component HA_X1
      port( A, B : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port 
      : std_logic;

begin
   
   U1_1_6 : HA_X1 port map( A => A(6), B => carry_6_port, CO => carry_7_port, S
                           => SUM(6));
   U1_1_5 : HA_X1 port map( A => A(5), B => carry_5_port, CO => carry_6_port, S
                           => SUM(5));
   U1_1_4 : HA_X1 port map( A => A(4), B => carry_4_port, CO => carry_5_port, S
                           => SUM(4));
   U1_1_3 : HA_X1 port map( A => A(3), B => carry_3_port, CO => carry_4_port, S
                           => SUM(3));
   U1_1_2 : HA_X1 port map( A => A(2), B => A(1), CO => carry_3_port, S => 
                           SUM(2));
   U2 : XOR2_X1 port map( A => carry_7_port, B => A(7), Z => SUM(7));
   U1 : INV_X1 port map( A => A(1), ZN => SUM(1));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity MUX51_GENERIC_N8_0 is

   port( posA, negA, pos2A, neg2A : in std_logic_vector (7 downto 0);  SEL : in
         std_logic_vector (2 downto 0);  Y : out std_logic_vector (7 downto 0)
         );

end MUX51_GENERIC_N8_0;

architecture SYN_behavioral of MUX51_GENERIC_N8_0 is

   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, 
      n18, n19, n20, n21, n22, n23, n24 : std_logic;

begin
   
   U26 : NOR3_X2 port map( A1 => SEL(0), A2 => SEL(2), A3 => n24, ZN => n5);
   U28 : NOR3_X2 port map( A1 => SEL(1), A2 => SEL(2), A3 => n23, ZN => n8);
   U29 : NOR3_X2 port map( A1 => n24, A2 => SEL(2), A3 => n23, ZN => n7);
   U2 : NAND2_X1 port map( A1 => n13, A2 => n14, ZN => Y(4));
   U3 : AOI22_X1 port map( A1 => negA(4), A2 => n5, B1 => neg2A(4), B2 => n6, 
                           ZN => n14);
   U4 : AOI22_X1 port map( A1 => pos2A(4), A2 => n7, B1 => posA(4), B2 => n8, 
                           ZN => n13);
   U5 : NAND2_X1 port map( A1 => n9, A2 => n10, ZN => Y(6));
   U6 : AOI22_X1 port map( A1 => pos2A(6), A2 => n7, B1 => posA(6), B2 => n8, 
                           ZN => n9);
   U7 : AOI22_X1 port map( A1 => negA(6), A2 => n5, B1 => neg2A(6), B2 => n6, 
                           ZN => n10);
   U8 : AND3_X1 port map( A1 => n23, A2 => n24, A3 => SEL(2), ZN => n6);
   U9 : NAND2_X1 port map( A1 => n11, A2 => n12, ZN => Y(5));
   U10 : AOI22_X1 port map( A1 => negA(5), A2 => n5, B1 => neg2A(5), B2 => n6, 
                           ZN => n12);
   U11 : AOI22_X1 port map( A1 => pos2A(5), A2 => n7, B1 => posA(5), B2 => n8, 
                           ZN => n11);
   U12 : INV_X1 port map( A => SEL(1), ZN => n24);
   U13 : INV_X1 port map( A => SEL(0), ZN => n23);
   U14 : NAND2_X1 port map( A1 => n19, A2 => n20, ZN => Y(1));
   U15 : AOI22_X1 port map( A1 => negA(1), A2 => n5, B1 => neg2A(1), B2 => n6, 
                           ZN => n20);
   U16 : AOI22_X1 port map( A1 => pos2A(1), A2 => n7, B1 => posA(1), B2 => n8, 
                           ZN => n19);
   U17 : NAND2_X1 port map( A1 => n17, A2 => n18, ZN => Y(2));
   U18 : AOI22_X1 port map( A1 => negA(2), A2 => n5, B1 => neg2A(2), B2 => n6, 
                           ZN => n18);
   U19 : AOI22_X1 port map( A1 => pos2A(2), A2 => n7, B1 => posA(2), B2 => n8, 
                           ZN => n17);
   U20 : NAND2_X1 port map( A1 => n15, A2 => n16, ZN => Y(3));
   U21 : AOI22_X1 port map( A1 => negA(3), A2 => n5, B1 => neg2A(3), B2 => n6, 
                           ZN => n16);
   U22 : AOI22_X1 port map( A1 => pos2A(3), A2 => n7, B1 => posA(3), B2 => n8, 
                           ZN => n15);
   U23 : NAND2_X1 port map( A1 => n3, A2 => n4, ZN => Y(7));
   U24 : AOI22_X1 port map( A1 => pos2A(7), A2 => n7, B1 => posA(7), B2 => n8, 
                           ZN => n3);
   U25 : AOI22_X1 port map( A1 => negA(7), A2 => n5, B1 => neg2A(7), B2 => n6, 
                           ZN => n4);
   U27 : NAND2_X1 port map( A1 => n21, A2 => n22, ZN => Y(0));
   U30 : AOI22_X1 port map( A1 => negA(0), A2 => n5, B1 => neg2A(0), B2 => n6, 
                           ZN => n22);
   U31 : AOI22_X1 port map( A1 => pos2A(0), A2 => n7, B1 => posA(0), B2 => n8, 
                           ZN => n21);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity encoder_8 is

   port( inc : in std_logic_vector (2 downto 0);  enc : out std_logic_vector (2
         downto 0));

end encoder_8;

architecture SYN_behavioral of encoder_8 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n2, n3, n5 : std_logic;

begin
   
   U1 : OAI22_X1 port map( A1 => n2, A2 => n5, B1 => inc(2), B2 => n3, ZN => 
                           enc(1));
   U2 : INV_X1 port map( A => inc(2), ZN => n5);
   U3 : OAI21_X1 port map( B1 => inc(1), B2 => inc(0), A => n3, ZN => n2);
   U4 : AOI21_X1 port map( B1 => n2, B2 => n3, A => inc(2), ZN => enc(0));
   U5 : AND3_X1 port map( A1 => inc(2), A2 => n3, A3 => n2, ZN => enc(2));
   U6 : NAND2_X1 port map( A1 => inc(1), A2 => inc(0), ZN => n3);

end SYN_behavioral;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity booth_row_N8_RAD3 is

   port( currA, currSum : in std_logic_vector (7 downto 0);  encIn : in 
         std_logic_vector (2 downto 0);  nextA, nextSum : out std_logic_vector 
         (7 downto 0));

end booth_row_N8_RAD3;

architecture SYN_struct of booth_row_N8_RAD3 is

   component RCA_N8
      port( A, B : in std_logic_vector (7 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (7 downto 0);  Co : out std_logic);
   end component;
   
   component MUX51_GENERIC_N8_1
      port( posA, negA, pos2A, neg2A : in std_logic_vector (7 downto 0);  SEL :
            in std_logic_vector (2 downto 0);  Y : out std_logic_vector (7 
            downto 0));
   end component;
   
   component shift_compl_N8
      port( A : in std_logic_vector (7 downto 0);  p2A, m2A, p4A, m4A : out 
            std_logic_vector (7 downto 0));
   end component;
   
   component encoder_9
      port( inc : in std_logic_vector (2 downto 0);  enc : out std_logic_vector
            (2 downto 0));
   end component;
   
   signal X_Logic0_port, nextA_7_port, nextA_6_port, nextA_5_port, nextA_4_port
      , nextA_3_port, nextA_2_port, nextA_1_port, nextA_0_port, 
      enc_to_mux_2_port, enc_to_mux_1_port, enc_to_mux_0_port, p2A_s_7_port, 
      p2A_s_6_port, p2A_s_5_port, p2A_s_4_port, p2A_s_3_port, p2A_s_2_port, 
      p2A_s_1_port, p2A_s_0_port, m2A_s_7_port, m2A_s_6_port, m2A_s_5_port, 
      m2A_s_4_port, m2A_s_3_port, m2A_s_2_port, m2A_s_1_port, m2A_s_0_port, 
      m4A_s_7_port, m4A_s_6_port, m4A_s_5_port, m4A_s_4_port, m4A_s_3_port, 
      m4A_s_2_port, m4A_s_1_port, m4A_s_0_port, mux_to_add_7_port, 
      mux_to_add_6_port, mux_to_add_5_port, mux_to_add_4_port, 
      mux_to_add_3_port, mux_to_add_2_port, mux_to_add_1_port, 
      mux_to_add_0_port, n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, n_1011
      : std_logic;

begin
   nextA <= ( nextA_7_port, nextA_6_port, nextA_5_port, nextA_4_port, 
      nextA_3_port, nextA_2_port, nextA_1_port, nextA_0_port );
   
   X_Logic0_port <= '0';
   m4A_s_0_port <= '0';
   m4A_s_1_port <= '0';
   nextA_0_port <= '0';
   nextA_1_port <= '0';
   m2A_s_0_port <= '0';
   p2A_s_0_port <= '0';
   enc : encoder_9 port map( inc(2) => encIn(2), inc(1) => encIn(1), inc(0) => 
                           encIn(0), enc(2) => enc_to_mux_2_port, enc(1) => 
                           enc_to_mux_1_port, enc(0) => enc_to_mux_0_port);
   sh_and_cmpl : shift_compl_N8 port map( A(7) => currA(7), A(6) => currA(6), 
                           A(5) => currA(5), A(4) => currA(4), A(3) => currA(3)
                           , A(2) => currA(2), A(1) => currA(1), A(0) => 
                           currA(0), p2A(7) => p2A_s_7_port, p2A(6) => 
                           p2A_s_6_port, p2A(5) => p2A_s_5_port, p2A(4) => 
                           p2A_s_4_port, p2A(3) => p2A_s_3_port, p2A(2) => 
                           p2A_s_2_port, p2A(1) => p2A_s_1_port, p2A(0) => 
                           n_1005, m2A(7) => m2A_s_7_port, m2A(6) => 
                           m2A_s_6_port, m2A(5) => m2A_s_5_port, m2A(4) => 
                           m2A_s_4_port, m2A(3) => m2A_s_3_port, m2A(2) => 
                           m2A_s_2_port, m2A(1) => m2A_s_1_port, m2A(0) => 
                           n_1006, p4A(7) => nextA_7_port, p4A(6) => 
                           nextA_6_port, p4A(5) => nextA_5_port, p4A(4) => 
                           nextA_4_port, p4A(3) => nextA_3_port, p4A(2) => 
                           nextA_2_port, p4A(1) => n_1007, p4A(0) => n_1008, 
                           m4A(7) => m4A_s_7_port, m4A(6) => m4A_s_6_port, 
                           m4A(5) => m4A_s_5_port, m4A(4) => m4A_s_4_port, 
                           m4A(3) => m4A_s_3_port, m4A(2) => m4A_s_2_port, 
                           m4A(1) => n_1009, m4A(0) => n_1010);
   mux : MUX51_GENERIC_N8_1 port map( posA(7) => p2A_s_7_port, posA(6) => 
                           p2A_s_6_port, posA(5) => p2A_s_5_port, posA(4) => 
                           p2A_s_4_port, posA(3) => p2A_s_3_port, posA(2) => 
                           p2A_s_2_port, posA(1) => p2A_s_1_port, posA(0) => 
                           p2A_s_0_port, negA(7) => m2A_s_7_port, negA(6) => 
                           m2A_s_6_port, negA(5) => m2A_s_5_port, negA(4) => 
                           m2A_s_4_port, negA(3) => m2A_s_3_port, negA(2) => 
                           m2A_s_2_port, negA(1) => m2A_s_1_port, negA(0) => 
                           m2A_s_0_port, pos2A(7) => nextA_7_port, pos2A(6) => 
                           nextA_6_port, pos2A(5) => nextA_5_port, pos2A(4) => 
                           nextA_4_port, pos2A(3) => nextA_3_port, pos2A(2) => 
                           nextA_2_port, pos2A(1) => nextA_1_port, pos2A(0) => 
                           nextA_0_port, neg2A(7) => m4A_s_7_port, neg2A(6) => 
                           m4A_s_6_port, neg2A(5) => m4A_s_5_port, neg2A(4) => 
                           m4A_s_4_port, neg2A(3) => m4A_s_3_port, neg2A(2) => 
                           m4A_s_2_port, neg2A(1) => m4A_s_1_port, neg2A(0) => 
                           m4A_s_0_port, SEL(2) => enc_to_mux_2_port, SEL(1) =>
                           enc_to_mux_1_port, SEL(0) => enc_to_mux_0_port, Y(7)
                           => mux_to_add_7_port, Y(6) => mux_to_add_6_port, 
                           Y(5) => mux_to_add_5_port, Y(4) => mux_to_add_4_port
                           , Y(3) => mux_to_add_3_port, Y(2) => 
                           mux_to_add_2_port, Y(1) => mux_to_add_1_port, Y(0) 
                           => mux_to_add_0_port);
   add : RCA_N8 port map( A(7) => mux_to_add_7_port, A(6) => mux_to_add_6_port,
                           A(5) => mux_to_add_5_port, A(4) => mux_to_add_4_port
                           , A(3) => mux_to_add_3_port, A(2) => 
                           mux_to_add_2_port, A(1) => mux_to_add_1_port, A(0) 
                           => mux_to_add_0_port, B(7) => currSum(7), B(6) => 
                           currSum(6), B(5) => currSum(5), B(4) => currSum(4), 
                           B(3) => currSum(3), B(2) => currSum(2), B(1) => 
                           currSum(1), B(0) => currSum(0), Ci => X_Logic0_port,
                           S(7) => nextSum(7), S(6) => nextSum(6), S(5) => 
                           nextSum(5), S(4) => nextSum(4), S(3) => nextSum(3), 
                           S(2) => nextSum(2), S(1) => nextSum(1), S(0) => 
                           nextSum(0), Co => n_1011);

end SYN_struct;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity booth_first_row_N8_RAD3 is

   port( A : in std_logic_vector (7 downto 0);  encIn : in std_logic_vector (2 
         downto 0);  nextA, sum : out std_logic_vector (7 downto 0));

end booth_first_row_N8_RAD3;

architecture SYN_arch of booth_first_row_N8_RAD3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component booth_first_row_N8_RAD3_DW01_inc_0
      port( A : in std_logic_vector (7 downto 0);  SUM : out std_logic_vector 
            (7 downto 0));
   end component;
   
   component MUX51_GENERIC_N8_0
      port( posA, negA, pos2A, neg2A : in std_logic_vector (7 downto 0);  SEL :
            in std_logic_vector (2 downto 0);  Y : out std_logic_vector (7 
            downto 0));
   end component;
   
   component encoder_8
      port( inc : in std_logic_vector (2 downto 0);  enc : out std_logic_vector
            (2 downto 0));
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal X_Logic0_port, enc_to_mux_2_port, enc_to_mux_1_port, 
      enc_to_mux_0_port, m2A_7_port, m2A_6_port, m2A_5_port, m2A_4_port, 
      m2A_3_port, m2A_2_port, m2A_1_port, m2A_0_port, n1, n2, n4, n5, n6, n7, 
      n8, n9, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, 
      n_1012 : std_logic;

begin
   nextA <= ( A(6), A(5), A(4), A(3), A(2), A(1), A(0), X_Logic0_port );
   
   X_Logic0_port <= '0';
   m2A_0_port <= '0';
   n9 <= '1';
   U23 : XOR2_X1 port map( A => n17, B => A(7), Z => n8);
   U25 : NAND3_X1 port map( A1 => n23, A2 => n24, A3 => n20, ZN => n22);
   enc : encoder_8 port map( inc(2) => encIn(2), inc(1) => encIn(1), inc(0) => 
                           encIn(0), enc(2) => enc_to_mux_2_port, enc(1) => 
                           enc_to_mux_1_port, enc(0) => enc_to_mux_0_port);
   mux : MUX51_GENERIC_N8_0 port map( posA(7) => A(7), posA(6) => A(6), posA(5)
                           => A(5), posA(4) => A(4), posA(3) => A(3), posA(2) 
                           => A(2), posA(1) => A(1), posA(0) => A(0), negA(7) 
                           => n8, negA(6) => n2, negA(5) => n4, negA(4) => n5, 
                           negA(3) => n6, negA(2) => n7, negA(1) => n1, negA(0)
                           => A(0), pos2A(7) => A(6), pos2A(6) => A(5), 
                           pos2A(5) => A(4), pos2A(4) => A(3), pos2A(3) => A(2)
                           , pos2A(2) => A(1), pos2A(1) => A(0), pos2A(0) => 
                           X_Logic0_port, neg2A(7) => m2A_7_port, neg2A(6) => 
                           m2A_6_port, neg2A(5) => m2A_5_port, neg2A(4) => 
                           m2A_4_port, neg2A(3) => m2A_3_port, neg2A(2) => 
                           m2A_2_port, neg2A(1) => m2A_1_port, neg2A(0) => 
                           m2A_0_port, SEL(2) => enc_to_mux_2_port, SEL(1) => 
                           enc_to_mux_1_port, SEL(0) => enc_to_mux_0_port, Y(7)
                           => sum(7), Y(6) => sum(6), Y(5) => sum(5), Y(4) => 
                           sum(4), Y(3) => sum(3), Y(2) => sum(2), Y(1) => 
                           sum(1), Y(0) => sum(0));
   add_51 : booth_first_row_N8_RAD3_DW01_inc_0 port map( A(7) => n26, A(6) => 
                           n25, A(5) => n24, A(4) => n23, A(3) => n27, A(2) => 
                           n28, A(1) => n29, A(0) => n9, SUM(7) => m2A_7_port, 
                           SUM(6) => m2A_6_port, SUM(5) => m2A_5_port, SUM(4) 
                           => m2A_4_port, SUM(3) => m2A_3_port, SUM(2) => 
                           m2A_2_port, SUM(1) => m2A_1_port, SUM(0) => n_1012);
   U4 : NOR2_X1 port map( A1 => n22, A2 => A(5), ZN => n18);
   U5 : XNOR2_X1 port map( A => A(4), B => n21, ZN => n5);
   U6 : XNOR2_X1 port map( A => n18, B => A(6), ZN => n2);
   U7 : XNOR2_X1 port map( A => n22, B => n25, ZN => n4);
   U8 : AND2_X1 port map( A1 => n23, A2 => n20, ZN => n21);
   U9 : NAND2_X1 port map( A1 => n18, A2 => n26, ZN => n17);
   U10 : NOR3_X1 port map( A1 => A(2), A2 => A(0), A3 => A(1), ZN => n20);
   U11 : INV_X1 port map( A => A(2), ZN => n27);
   U12 : NOR2_X1 port map( A1 => A(1), A2 => A(0), ZN => n19);
   U13 : XNOR2_X1 port map( A => n29, B => A(1), ZN => n1);
   U14 : INV_X1 port map( A => A(0), ZN => n29);
   U15 : XNOR2_X1 port map( A => A(2), B => n19, ZN => n7);
   U16 : XNOR2_X1 port map( A => n20, B => A(3), ZN => n6);
   U17 : INV_X1 port map( A => A(5), ZN => n25);
   U18 : INV_X1 port map( A => A(3), ZN => n23);
   U19 : INV_X1 port map( A => A(1), ZN => n28);
   U20 : INV_X1 port map( A => A(6), ZN => n26);
   U21 : INV_X1 port map( A => A(4), ZN => n24);

end SYN_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL.all;

entity BOOTHMUL is

   port( A, B : in std_logic_vector (3 downto 0);  P : out std_logic_vector (7 
         downto 0));

end BOOTHMUL;

architecture SYN_struct of BOOTHMUL is

   component booth_row_N8_RAD3
      port( currA, currSum : in std_logic_vector (7 downto 0);  encIn : in 
            std_logic_vector (2 downto 0);  nextA, nextSum : out 
            std_logic_vector (7 downto 0));
   end component;
   
   component booth_first_row_N8_RAD3
      port( A : in std_logic_vector (7 downto 0);  encIn : in std_logic_vector 
            (2 downto 0);  nextA, sum : out std_logic_vector (7 downto 0));
   end component;
   
   signal X_Logic0_port, add_mat_0_15_port, add_mat_0_14_port, 
      add_mat_0_13_port, add_mat_0_12_port, add_mat_0_11_port, 
      add_mat_0_10_port, add_mat_0_9_port, add_mat_0_8_port, add_mat_0_7_port, 
      add_mat_0_6_port, add_mat_0_5_port, add_mat_0_4_port, add_mat_0_3_port, 
      add_mat_0_2_port, add_mat_0_1_port, add_mat_0_0_port, n_1013, n_1014, 
      n_1015, n_1016, n_1017, n_1018, n_1019, n_1020, n_1021 : std_logic;

begin
   
   X_Logic0_port <= '0';
   add_mat_0_8_port <= '0';
   first_row_0 : booth_first_row_N8_RAD3 port map( A(7) => A(3), A(6) => A(3), 
                           A(5) => A(3), A(4) => A(3), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), encIn(2) => B(1), 
                           encIn(1) => B(0), encIn(0) => X_Logic0_port, 
                           nextA(7) => add_mat_0_15_port, nextA(6) => 
                           add_mat_0_14_port, nextA(5) => add_mat_0_13_port, 
                           nextA(4) => add_mat_0_12_port, nextA(3) => 
                           add_mat_0_11_port, nextA(2) => add_mat_0_10_port, 
                           nextA(1) => add_mat_0_9_port, nextA(0) => n_1013, 
                           sum(7) => add_mat_0_7_port, sum(6) => 
                           add_mat_0_6_port, sum(5) => add_mat_0_5_port, sum(4)
                           => add_mat_0_4_port, sum(3) => add_mat_0_3_port, 
                           sum(2) => add_mat_0_2_port, sum(1) => 
                           add_mat_0_1_port, sum(0) => add_mat_0_0_port);
   other_rows_1 : booth_row_N8_RAD3 port map( currA(7) => add_mat_0_15_port, 
                           currA(6) => add_mat_0_14_port, currA(5) => 
                           add_mat_0_13_port, currA(4) => add_mat_0_12_port, 
                           currA(3) => add_mat_0_11_port, currA(2) => 
                           add_mat_0_10_port, currA(1) => add_mat_0_9_port, 
                           currA(0) => add_mat_0_8_port, currSum(7) => 
                           add_mat_0_7_port, currSum(6) => add_mat_0_6_port, 
                           currSum(5) => add_mat_0_5_port, currSum(4) => 
                           add_mat_0_4_port, currSum(3) => add_mat_0_3_port, 
                           currSum(2) => add_mat_0_2_port, currSum(1) => 
                           add_mat_0_1_port, currSum(0) => add_mat_0_0_port, 
                           encIn(2) => B(3), encIn(1) => B(2), encIn(0) => B(1)
                           , nextA(7) => n_1014, nextA(6) => n_1015, nextA(5) 
                           => n_1016, nextA(4) => n_1017, nextA(3) => n_1018, 
                           nextA(2) => n_1019, nextA(1) => n_1020, nextA(0) => 
                           n_1021, nextSum(7) => P(7), nextSum(6) => P(6), 
                           nextSum(5) => P(5), nextSum(4) => P(4), nextSum(3) 
                           => P(3), nextSum(2) => P(2), nextSum(1) => P(1), 
                           nextSum(0) => P(0));

end SYN_struct;
