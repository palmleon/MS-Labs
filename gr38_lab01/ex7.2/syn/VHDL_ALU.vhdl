
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ALU_N4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type TYPE_OP is (ADD, SUB, MULT, BITAND, BITOR, BITXOR, FUNCLSL, FUNCLSR, 
   FUNCRL, FUNCRR);
attribute ENUM_ENCODING of TYPE_OP : type is 
   "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001";
   
   -- Declarations for conversion functions.
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
               std_logic_vector;

end CONV_PACK_ALU_N4;

package body CONV_PACK_ALU_N4 is
   
   -- enum type to std_logic_vector function
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
   std_logic_vector is
   -- synopsys built_in SYN_FEED_THRU;
   begin
      case arg is
         when ADD => return "0000";
         when SUB => return "0001";
         when MULT => return "0010";
         when BITAND => return "0011";
         when BITOR => return "0100";
         when BITXOR => return "0101";
         when FUNCLSL => return "0110";
         when FUNCLSR => return "0111";
         when FUNCRL => return "1000";
         when FUNCRR => return "1001";
         when others => assert FALSE -- this should not happen.
               report "un-convertible value"
               severity warning;
               return "0000";
      end case;
   end;

end CONV_PACK_ALU_N4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU_N4.all;

entity ALU_N4 is

   port( FUNC : in TYPE_OP;  DATA1, DATA2 : in std_logic_vector (3 downto 0);  
         OUTALU : out std_logic_vector (3 downto 0));

end ALU_N4;

architecture SYN_BEHAVIOR of ALU_N4 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DLH_X1
      port( G, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port, N74, N75, N76, 
      N77, N78, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, 
      n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, 
      n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, 
      n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, 
      n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, 
      n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, 
      n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, 
      n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341 : 
      std_logic;

begin
   (FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port) <= 
      TYPE_OP_to_std_logic_vector(FUNC);
   
   OUTALU_reg_3_inst : DLH_X1 port map( G => N74, D => N78, Q => OUTALU(3));
   OUTALU_reg_2_inst : DLH_X1 port map( G => N74, D => N77, Q => OUTALU(2));
   OUTALU_reg_1_inst : DLH_X1 port map( G => N74, D => N76, Q => OUTALU(1));
   OUTALU_reg_0_inst : DLH_X1 port map( G => N74, D => N75, Q => OUTALU(0));
   U192 : OAI21_X1 port map( B1 => n249, B2 => n250, A => n251, ZN => N78);
   U193 : MUX2_X1 port map( A => n252, B => n253, S => FUNC_0_port, Z => n251);
   U194 : AOI211_X1 port map( C1 => n254, C2 => n255, A => n256, B => n257, ZN 
                           => n253);
   U195 : AND3_X1 port map( A1 => DATA2(3), A2 => DATA1(3), A3 => n258, ZN => 
                           n257);
   U196 : OAI22_X1 port map( A1 => n259, A2 => n260, B1 => n261, B2 => n262, ZN
                           => n256);
   U197 : XOR2_X1 port map( A => n263, B => n259, Z => n255);
   U198 : AOI221_X1 port map( B1 => n264, B2 => n254, C1 => FUNC_1_port, C2 => 
                           n265, A => n266, ZN => n252);
   U199 : INV_X1 port map( A => n267, ZN => n266);
   U200 : AOI22_X1 port map( A1 => n268, A2 => DATA1(2), B1 => n269, B2 => 
                           DATA2(3), ZN => n267);
   U201 : OAI22_X1 port map( A1 => n270, A2 => n271, B1 => n272, B2 => n273, ZN
                           => n265);
   U202 : AOI21_X1 port map( B1 => DATA1(1), B2 => n274, A => n275, ZN => n272)
                           ;
   U203 : XNOR2_X1 port map( A => n263, B => n259, ZN => n264);
   U204 : XNOR2_X1 port map( A => DATA2(3), B => DATA1(3), ZN => n259);
   U205 : OAI22_X1 port map( A1 => n276, A2 => n277, B1 => n278, B2 => n279, ZN
                           => n263);
   U206 : NOR2_X1 port map( A1 => n280, A2 => n281, ZN => n278);
   U207 : NAND2_X1 port map( A1 => n282, A2 => n283, ZN => N77);
   U208 : MUX2_X1 port map( A => n284, B => n285, S => FUNC_0_port, Z => n283);
   U209 : NAND2_X1 port map( A1 => DATA1(3), A2 => n268, ZN => n285);
   U210 : AOI22_X1 port map( A1 => FUNC_1_port, A2 => n286, B1 => DATA1(1), B2 
                           => n268, ZN => n284);
   U211 : OAI22_X1 port map( A1 => n275, A2 => n270, B1 => n273, B2 => n287, ZN
                           => n286);
   U212 : NAND2_X1 port map( A1 => DATA1(0), A2 => n274, ZN => n287);
   U213 : MUX2_X1 port map( A => n288, B => n289, S => DATA1(2), Z => n282);
   U214 : AOI211_X1 port map( C1 => n290, C2 => n254, A => n291, B => n292, ZN 
                           => n289);
   U215 : MUX2_X1 port map( A => n269, B => n293, S => DATA2(2), Z => n291);
   U216 : NOR2_X1 port map( A1 => n294, A2 => n295, ZN => n293);
   U217 : XOR2_X1 port map( A => n276, B => n280, Z => n290);
   U218 : INV_X1 port map( A => n281, ZN => n276);
   U219 : AOI22_X1 port map( A1 => n254, A2 => n296, B1 => DATA2(2), B2 => n269
                           , ZN => n288);
   U220 : XOR2_X1 port map( A => n280, B => n281, Z => n296);
   U221 : XOR2_X1 port map( A => DATA2(2), B => FUNC_0_port, Z => n281);
   U222 : INV_X1 port map( A => n277, ZN => n280);
   U223 : OAI21_X1 port map( B1 => n297, B2 => n298, A => n299, ZN => n277);
   U224 : INV_X1 port map( A => n300, ZN => n299);
   U225 : AOI21_X1 port map( B1 => n298, B2 => n297, A => DATA1(1), ZN => n300)
                           ;
   U226 : OAI221_X1 port map( B1 => n262, B2 => n301, C1 => n260, C2 => n302, A
                           => n303, ZN => N76);
   U227 : AOI22_X1 port map( A1 => n304, A2 => n254, B1 => FUNC_1_port, B2 => 
                           n305, ZN => n303);
   U228 : OAI221_X1 port map( B1 => n306, B2 => n307, C1 => n308, C2 => n270, A
                           => n309, ZN => n305);
   U229 : MUX2_X1 port map( A => n310, B => n311, S => FUNC_0_port, Z => n309);
   U230 : NOR2_X1 port map( A1 => n312, A2 => n313, ZN => n311);
   U231 : MUX2_X1 port map( A => n314, B => n315, S => DATA2(0), Z => n313);
   U232 : AND2_X1 port map( A1 => n316, A2 => DATA1(2), ZN => n315);
   U233 : NOR2_X1 port map( A1 => n250, A2 => n273, ZN => n314);
   U234 : INV_X1 port map( A => n317, ZN => n273);
   U235 : AOI22_X1 port map( A1 => n318, A2 => n319, B1 => n275, B2 => n316, ZN
                           => n310);
   U236 : MUX2_X1 port map( A => n320, B => n321, S => DATA2(1), Z => n318);
   U237 : NOR2_X1 port map( A1 => DATA1(1), A2 => n261, ZN => n321);
   U238 : NOR2_X1 port map( A1 => n274, A2 => n306, ZN => n320);
   U239 : INV_X1 port map( A => n312, ZN => n270);
   U240 : NOR3_X1 port map( A1 => n322, A2 => FUNC_2_port, A3 => n306, ZN => 
                           n312);
   U241 : INV_X1 port map( A => n323, ZN => n308);
   U242 : NAND2_X1 port map( A1 => n316, A2 => n274, ZN => n307);
   U243 : XOR2_X1 port map( A => n324, B => n297, Z => n304);
   U244 : XOR2_X1 port map( A => n322, B => n295, Z => n297);
   U245 : XOR2_X1 port map( A => n298, B => DATA1(1), Z => n324);
   U246 : OAI21_X1 port map( B1 => n325, B2 => n261, A => n326, ZN => n298);
   U247 : OAI21_X1 port map( B1 => DATA1(0), B2 => n327, A => FUNC_0_port, ZN 
                           => n326);
   U248 : MUX2_X1 port map( A => n306, B => n328, S => DATA2(1), Z => n302);
   U249 : INV_X1 port map( A => n269, ZN => n260);
   U250 : MUX2_X1 port map( A => n261, B => n279, S => FUNC_0_port, Z => n301);
   U251 : INV_X1 port map( A => DATA1(2), ZN => n279);
   U252 : NAND3_X1 port map( A1 => n329, A2 => n330, A3 => n331, ZN => N75);
   U253 : AOI222_X1 port map( A1 => n269, A2 => n323, B1 => n275, B2 => n258, 
                           C1 => n328, C2 => n268, ZN => n331);
   U254 : NAND2_X1 port map( A1 => n262, A2 => n332, ZN => n268);
   U255 : NAND3_X1 port map( A1 => FUNC_1_port, A2 => n316, A3 => DATA2(0), ZN 
                           => n332);
   U256 : NOR2_X1 port map( A1 => n306, A2 => n295, ZN => n328);
   U257 : INV_X1 port map( A => DATA1(1), ZN => n306);
   U258 : INV_X1 port map( A => n294, ZN => n258);
   U259 : NAND2_X1 port map( A1 => FUNC_1_port, A2 => n319, ZN => n294);
   U260 : INV_X1 port map( A => n271, ZN => n275);
   U261 : NAND2_X1 port map( A1 => DATA1(0), A2 => DATA2(0), ZN => n271);
   U262 : XNOR2_X1 port map( A => n261, B => DATA2(0), ZN => n323);
   U263 : INV_X1 port map( A => DATA1(0), ZN => n261);
   U264 : MUX2_X1 port map( A => n333, B => n334, S => FUNC_0_port, Z => n330);
   U265 : NAND3_X1 port map( A1 => n335, A2 => FUNC_1_port, A3 => n317, ZN => 
                           n334);
   U266 : NOR4_X1 port map( A1 => n322, A2 => n319, A3 => DATA2(2), A4 => 
                           DATA2(3), ZN => n317);
   U267 : INV_X1 port map( A => DATA2(1), ZN => n322);
   U268 : MUX2_X1 port map( A => DATA1(2), B => DATA1(3), S => DATA2(0), Z => 
                           n335);
   U269 : OR2_X1 port map( A1 => n262, A2 => n250, ZN => n333);
   U270 : INV_X1 port map( A => DATA1(3), ZN => n250);
   U271 : NAND2_X1 port map( A1 => FUNC_3_port, A2 => n336, ZN => n262);
   U272 : MUX2_X1 port map( A => n337, B => n338, S => DATA1(0), Z => n329);
   U273 : AOI21_X1 port map( B1 => n339, B2 => n254, A => n292, ZN => n338);
   U274 : INV_X1 port map( A => n249, ZN => n292);
   U275 : AOI22_X1 port map( A1 => n295, A2 => n269, B1 => n274, B2 => n316, ZN
                           => n249);
   U276 : NOR4_X1 port map( A1 => n319, A2 => DATA2(1), A3 => DATA2(2), A4 => 
                           DATA2(3), ZN => n316);
   U277 : NOR2_X1 port map( A1 => n319, A2 => FUNC_1_port, ZN => n269);
   U278 : INV_X1 port map( A => FUNC_2_port, ZN => n319);
   U279 : INV_X1 port map( A => n340, ZN => n339);
   U280 : NAND2_X1 port map( A1 => n254, A2 => n340, ZN => n337);
   U281 : XNOR2_X1 port map( A => n295, B => n327, ZN => n340);
   U282 : INV_X1 port map( A => n325, ZN => n327);
   U283 : XOR2_X1 port map( A => n274, B => FUNC_0_port, Z => n325);
   U284 : INV_X1 port map( A => DATA2(0), ZN => n274);
   U285 : INV_X1 port map( A => FUNC_0_port, ZN => n295);
   U286 : NOR2_X1 port map( A1 => n341, A2 => FUNC_3_port, ZN => n254);
   U287 : NAND2_X1 port map( A1 => FUNC_3_port, A2 => n341, ZN => N74);
   U288 : INV_X1 port map( A => n336, ZN => n341);
   U289 : NOR2_X1 port map( A1 => FUNC_1_port, A2 => FUNC_2_port, ZN => n336);

end SYN_BEHAVIOR;
