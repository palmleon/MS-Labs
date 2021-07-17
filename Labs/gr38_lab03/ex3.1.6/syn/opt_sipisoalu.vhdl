
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_SIPISOALU is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_SIPISOALU;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity sipisoAluControl is

   port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
         shiftC, startC : out std_logic);

end sipisoAluControl;

architecture SYN_FSM_OPC of sipisoAluControl is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X2
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X2
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal NEXT_STATE_4_port, NEXT_STATE_2_port, NEXT_STATE_1_port, 
      NEXT_STATE_0_port, n6, n7, n8, n9, n5, loadB_port, n1, n2, n3, n4, n10, 
      n11, n12, n13, n14, n15, n16, n17, n18, loadC_port, n20, n21, n22, n23, 
      n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38
      , n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n53, 
      n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64 : std_logic;

begin
   loadB <= loadB_port;
   loadC <= loadC_port;
   startC <= loadC_port;
   
   CURRENT_STATE_reg_4_inst : DFFR_X2 port map( D => NEXT_STATE_4_port, CK => 
                           clk, RN => n1, Q => n20, QN => n6);
   CURRENT_STATE_reg_3_inst : DFFR_X2 port map( D => n4, CK => clk, RN => n1, Q
                           => n21, QN => n7);
   CURRENT_STATE_reg_0_inst : DFFR_X2 port map( D => NEXT_STATE_0_port, CK => 
                           clk, RN => n1, Q => n5, QN => n22);
   CURRENT_STATE_reg_1_inst : DFFR_X2 port map( D => NEXT_STATE_1_port, CK => 
                           clk, RN => n1, Q => n24, QN => n9);
   CURRENT_STATE_reg_2_inst : DFFR_X2 port map( D => NEXT_STATE_2_port, CK => 
                           clk, RN => n1, Q => n25, QN => n8);
   U23 : NOR3_X1 port map( A1 => n26, A2 => n7, A3 => n22, ZN => 
                           NEXT_STATE_4_port);
   U24 : NOR4_X1 port map( A1 => loadC_port, A2 => n28, A3 => n29, A4 => n30, 
                           ZN => n27);
   U25 : AOI21_X1 port map( B1 => n16, B2 => n31, A => n32, ZN => n29);
   U26 : NAND2_X1 port map( A1 => n34, A2 => n35, ZN => NEXT_STATE_2_port);
   U27 : AOI22_X1 port map( A1 => n36, A2 => n37, B1 => n18, B2 => n2, ZN => 
                           n34);
   U28 : OAI21_X1 port map( B1 => n39, B2 => n40, A => n12, ZN => n36);
   U29 : NAND2_X1 port map( A1 => n5, A2 => n24, ZN => n40);
   U30 : NAND2_X1 port map( A1 => n42, A2 => n43, ZN => NEXT_STATE_1_port);
   U31 : AOI21_X1 port map( B1 => n44, B2 => n2, A => n45, ZN => n43);
   U32 : NOR4_X1 port map( A1 => n10, A2 => n46, A3 => n47, A4 => n39, ZN => 
                           n45);
   U33 : NOR2_X1 port map( A1 => n9, A2 => n22, ZN => n47);
   U34 : NAND2_X1 port map( A1 => n48, A2 => n14, ZN => n44);
   U35 : AOI21_X1 port map( B1 => n32, B2 => n41, A => n3, ZN => n42);
   U36 : AOI21_X1 port map( B1 => n49, B2 => n32, A => n50, ZN => n35);
   U37 : OAI21_X1 port map( B1 => n14, B2 => n8, A => n33, ZN => n50);
   U40 : NOR2_X1 port map( A1 => n20, A2 => n24, ZN => n51);
   U41 : NAND2_X1 port map( A1 => n53, A2 => n54, ZN => NEXT_STATE_0_port);
   U42 : AOI21_X1 port map( B1 => n32, B2 => n55, A => n56, ZN => n54);
   U43 : OAI21_X1 port map( B1 => n57, B2 => n39, A => n14, ZN => n56);
   U44 : NOR2_X1 port map( A1 => n31, A2 => n9, ZN => n28);
   U45 : AOI21_X1 port map( B1 => n22, B2 => n24, A => n10, ZN => n57);
   U46 : OR2_X1 port map( A1 => n49, A2 => n30, ZN => n55);
   U47 : NAND2_X1 port map( A1 => n48, A2 => n38, ZN => n30);
   U48 : NAND2_X1 port map( A1 => n58, A2 => n24, ZN => n38);
   U49 : NAND2_X1 port map( A1 => n58, A2 => n9, ZN => n48);
   U50 : NOR4_X1 port map( A1 => n7, A2 => n22, A3 => n20, A4 => n25, ZN => n58
                           );
   U51 : AOI22_X1 port map( A1 => n10, A2 => n49, B1 => n41, B2 => n2, ZN => 
                           n53);
   U52 : NOR2_X1 port map( A1 => n11, A2 => strobeA, ZN => n32);
   U53 : OAI21_X1 port map( B1 => n5, B2 => n16, A => n59, ZN => n41);
   U54 : OAI21_X1 port map( B1 => n13, B2 => n60, A => n25, ZN => n59);
   U55 : NOR3_X1 port map( A1 => n21, A2 => n20, A3 => n24, ZN => n60);
   U56 : NAND2_X1 port map( A1 => n61, A2 => n62, ZN => n49);
   U57 : NOR2_X1 port map( A1 => n63, A2 => n64, ZN => n62);
   U58 : NOR3_X1 port map( A1 => n25, A2 => n24, A3 => n31, ZN => n64);
   U61 : AOI22_X1 port map( A1 => n17, A2 => n46, B1 => loadB_port, B2 => n5, 
                           ZN => n61);
   U62 : NOR2_X1 port map( A1 => n21, A2 => n26, ZN => loadB_port);
   U65 : NAND2_X1 port map( A1 => strobeA, A2 => n11, ZN => n37);
   U66 : OAI21_X1 port map( B1 => n7, B2 => n26, A => n15, ZN => shiftC);
   U67 : NOR4_X1 port map( A1 => n6, A2 => n21, A3 => n25, A4 => n23, ZN => n63
                           );
   U70 : NOR3_X1 port map( A1 => n25, A2 => n46, A3 => n20, ZN => shiftA);
   U71 : NOR2_X1 port map( A1 => n24, A2 => n5, ZN => n46);
   U3 : NAND4_X2 port map( A1 => n5, A2 => n25, A3 => n21, A4 => n51, ZN => n33
                           );
   U4 : NAND3_X2 port map( A1 => n6, A2 => n7, A3 => n8, ZN => n39);
   U5 : NAND3_X2 port map( A1 => n24, A2 => n25, A3 => n6, ZN => n26);
   U6 : NAND3_X2 port map( A1 => n21, A2 => n22, A3 => n6, ZN => n31);
   U7 : INV_X1 port map( A => loadB_port, ZN => n16);
   U8 : INV_X1 port map( A => n33, ZN => loadC_port);
   U9 : INV_X1 port map( A => n27, ZN => n4);
   U10 : INV_X1 port map( A => n28, ZN => n14);
   U11 : INV_X1 port map( A => n38, ZN => n18);
   U12 : INV_X1 port map( A => n41, ZN => n12);
   U13 : INV_X1 port map( A => n35, ZN => n3);
   U14 : INV_X1 port map( A => n32, ZN => n2);
   U15 : INV_X1 port map( A => n37, ZN => n10);
   U16 : INV_X1 port map( A => n31, ZN => n13);
   U17 : INV_X1 port map( A => n63, ZN => n15);
   U18 : INV_X1 port map( A => n39, ZN => n17);
   U19 : INV_X1 port map( A => n46, ZN => n23);
   U20 : INV_X1 port map( A => rst, ZN => n1);
   U21 : INV_X1 port map( A => strobeB, ZN => n11);

end SYN_FSM_OPC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity SIPISOALU is

   port( CLK, RESET, STARTA, A, LOADB : in std_logic;  B : in std_logic_vector 
         (3 downto 0);  STARTC, C : out std_logic);

end SIPISOALU;

architecture SYN_A of SIPISOALU is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X2
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component sipisoAluControl
      port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
            shiftC, startC : out std_logic);
   end component;
   
   signal EA, LDB, LDC, SHIFTC, n31, n39, n40, n41, n42, n43, n44, n46, n48, 
      n49, n50, n51, n82, n83, n84, n116, n117, n118, n119, n120, n121, n122, 
      n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, 
      n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, 
      n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, 
      n159, n160, n_1000, n_1001 : std_logic;

begin
   
   control : sipisoAluControl port map( clk => CLK, rst => RESET, strobeA => 
                           STARTA, strobeB => LOADB, shiftA => EA, loadB => LDB
                           , loadC => LDC, shiftC => SHIFTC, startC => STARTC);
   PIPO_reg_1_inst : DFFR_X2 port map( D => n40, CK => CLK, RN => n118, Q => 
                           n128, QN => n120);
   PIPO_reg_0_inst : DFFR_X2 port map( D => n39, CK => CLK, RN => n118, Q => 
                           n84, QN => n121);
   PIPO_reg_3_inst : DFFR_X2 port map( D => n42, CK => CLK, RN => n118, Q => 
                           n129, QN => n122);
   SIPO_reg_2_inst : DFFR_X2 port map( D => n43, CK => CLK, RN => n118, Q => 
                           n130, QN => n123);
   SIPO_reg_0_inst : DFFR_X2 port map( D => n46, CK => CLK, RN => n118, Q => 
                           n131, QN => n124);
   PIPO_reg_2_inst : DFFR_X2 port map( D => n41, CK => CLK, RN => n118, Q => 
                           n_1000, QN => n83);
   PISO_reg_3_inst : DFFR_X2 port map( D => n49, CK => CLK, RN => n118, Q => 
                           n132, QN => n_1001);
   SIPO_reg_1_inst : DFFR_X2 port map( D => n44, CK => CLK, RN => n118, Q => 
                           n125, QN => n82);
   PISO_reg_1_inst : DFFR_X2 port map( D => n51, CK => CLK, RN => n118, Q => 
                           n133, QN => n126);
   PISO_reg_2_inst : DFFR_X2 port map( D => n50, CK => CLK, RN => n118, Q => 
                           n134, QN => n127);
   PISO_reg_0_inst : DFFR_X2 port map( D => n48, CK => CLK, RN => n118, Q => C,
                           QN => n31);
   U92 : OAI21_X1 port map( B1 => n116, B2 => n126, A => n135, ZN => n51);
   U93 : AOI22_X1 port map( A1 => n134, A2 => n136, B1 => LDC, B2 => n137, ZN 
                           => n135);
   U94 : XNOR2_X1 port map( A => n138, B => n139, ZN => n137);
   U95 : XNOR2_X1 port map( A => n124, B => n128, ZN => n139);
   U96 : NAND2_X1 port map( A1 => A, A2 => n84, ZN => n138);
   U97 : OAI21_X1 port map( B1 => n127, B2 => n116, A => n140, ZN => n50);
   U98 : AOI22_X1 port map( A1 => n132, A2 => n136, B1 => n141, B2 => LDC, ZN 
                           => n140);
   U100 : XNOR2_X1 port map( A => n83, B => n125, ZN => n142);
   U101 : OAI21_X1 port map( B1 => n143, B2 => n117, A => n144, ZN => n49);
   U102 : NAND2_X1 port map( A1 => n132, A2 => n145, ZN => n144);
   U103 : XOR2_X1 port map( A => n146, B => n147, Z => n143);
   U104 : AOI22_X1 port map( A1 => n83, A2 => n148, B1 => n119, B2 => n82, ZN 
                           => n147);
   U105 : NAND2_X1 port map( A1 => n125, A2 => n149, ZN => n148);
   U106 : OAI21_X1 port map( B1 => n121, B2 => n150, A => n151, ZN => n149);
   U107 : NAND2_X1 port map( A1 => n128, A2 => n131, ZN => n151);
   U108 : OAI21_X1 port map( B1 => n128, B2 => n131, A => A, ZN => n150);
   U109 : XNOR2_X1 port map( A => n129, B => n130, ZN => n146);
   U110 : OAI21_X1 port map( B1 => n31, B2 => n116, A => n152, ZN => n48);
   U111 : AOI22_X1 port map( A1 => LDC, A2 => n153, B1 => n133, B2 => n136, ZN 
                           => n152);
   U112 : NOR2_X1 port map( A1 => n145, A2 => LDC, ZN => n136);
   U113 : XNOR2_X1 port map( A => n121, B => A, ZN => n153);
   U114 : NOR2_X1 port map( A1 => LDC, A2 => SHIFTC, ZN => n145);
   U115 : OAI21_X1 port map( B1 => EA, B2 => n124, A => n154, ZN => n46);
   U116 : NAND2_X1 port map( A1 => EA, A2 => A, ZN => n154);
   U117 : OAI21_X1 port map( B1 => n82, B2 => EA, A => n155, ZN => n44);
   U118 : NAND2_X1 port map( A1 => EA, A2 => n131, ZN => n155);
   U119 : OAI21_X1 port map( B1 => EA, B2 => n123, A => n156, ZN => n43);
   U120 : NAND2_X1 port map( A1 => EA, A2 => n125, ZN => n156);
   U121 : OAI21_X1 port map( B1 => LDB, B2 => n122, A => n157, ZN => n42);
   U122 : NAND2_X1 port map( A1 => LDB, A2 => B(3), ZN => n157);
   U123 : OAI21_X1 port map( B1 => n83, B2 => LDB, A => n158, ZN => n41);
   U124 : NAND2_X1 port map( A1 => B(2), A2 => LDB, ZN => n158);
   U125 : OAI21_X1 port map( B1 => LDB, B2 => n120, A => n159, ZN => n40);
   U126 : NAND2_X1 port map( A1 => B(1), A2 => LDB, ZN => n159);
   U127 : OAI21_X1 port map( B1 => LDB, B2 => n121, A => n160, ZN => n39);
   U128 : NAND2_X1 port map( A1 => B(0), A2 => LDB, ZN => n160);
   U129 : XOR2_X1 port map( A => n149, B => n142, Z => n141);
   U130 : INV_X1 port map( A => n145, ZN => n116);
   U131 : INV_X1 port map( A => n149, ZN => n119);
   U132 : INV_X1 port map( A => LDC, ZN => n117);
   U133 : INV_X1 port map( A => RESET, ZN => n118);

end SYN_A;
