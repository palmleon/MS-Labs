
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACC_N64 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACC_N64;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64.all;

entity ACC_N64_DW01_add_0 is

   port( A, B : in std_logic_vector (63 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (63 downto 0);  CO : out std_logic);

end ACC_N64_DW01_add_0;

architecture SYN_rpl of ACC_N64_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_63_port, carry_62_port, carry_61_port, carry_60_port, 
      carry_59_port, carry_58_port, carry_57_port, carry_56_port, carry_55_port
      , carry_54_port, carry_53_port, carry_52_port, carry_51_port, 
      carry_50_port, carry_49_port, carry_48_port, carry_47_port, carry_46_port
      , carry_45_port, carry_44_port, carry_43_port, carry_42_port, 
      carry_41_port, carry_40_port, carry_39_port, carry_38_port, carry_37_port
      , carry_36_port, carry_35_port, carry_34_port, carry_33_port, 
      carry_32_port, carry_31_port, carry_30_port, carry_29_port, carry_28_port
      , carry_27_port, carry_26_port, carry_25_port, carry_24_port, 
      carry_23_port, carry_22_port, carry_21_port, carry_20_port, carry_19_port
      , carry_18_port, carry_17_port, carry_16_port, carry_15_port, 
      carry_14_port, carry_13_port, carry_12_port, carry_11_port, carry_10_port
      , carry_9_port, carry_8_port, carry_7_port, carry_6_port, carry_5_port, 
      carry_4_port, carry_3_port, carry_2_port, n1, n_1002 : std_logic;

begin
   
   U1_63 : FA_X1 port map( A => A(63), B => B(63), CI => carry_63_port, CO => 
                           n_1002, S => SUM(63));
   U1_62 : FA_X1 port map( A => A(62), B => B(62), CI => carry_62_port, CO => 
                           carry_63_port, S => SUM(62));
   U1_61 : FA_X1 port map( A => A(61), B => B(61), CI => carry_61_port, CO => 
                           carry_62_port, S => SUM(61));
   U1_60 : FA_X1 port map( A => A(60), B => B(60), CI => carry_60_port, CO => 
                           carry_61_port, S => SUM(60));
   U1_59 : FA_X1 port map( A => A(59), B => B(59), CI => carry_59_port, CO => 
                           carry_60_port, S => SUM(59));
   U1_58 : FA_X1 port map( A => A(58), B => B(58), CI => carry_58_port, CO => 
                           carry_59_port, S => SUM(58));
   U1_57 : FA_X1 port map( A => A(57), B => B(57), CI => carry_57_port, CO => 
                           carry_58_port, S => SUM(57));
   U1_56 : FA_X1 port map( A => A(56), B => B(56), CI => carry_56_port, CO => 
                           carry_57_port, S => SUM(56));
   U1_55 : FA_X1 port map( A => A(55), B => B(55), CI => carry_55_port, CO => 
                           carry_56_port, S => SUM(55));
   U1_54 : FA_X1 port map( A => A(54), B => B(54), CI => carry_54_port, CO => 
                           carry_55_port, S => SUM(54));
   U1_53 : FA_X1 port map( A => A(53), B => B(53), CI => carry_53_port, CO => 
                           carry_54_port, S => SUM(53));
   U1_52 : FA_X1 port map( A => A(52), B => B(52), CI => carry_52_port, CO => 
                           carry_53_port, S => SUM(52));
   U1_51 : FA_X1 port map( A => A(51), B => B(51), CI => carry_51_port, CO => 
                           carry_52_port, S => SUM(51));
   U1_50 : FA_X1 port map( A => A(50), B => B(50), CI => carry_50_port, CO => 
                           carry_51_port, S => SUM(50));
   U1_49 : FA_X1 port map( A => A(49), B => B(49), CI => carry_49_port, CO => 
                           carry_50_port, S => SUM(49));
   U1_48 : FA_X1 port map( A => A(48), B => B(48), CI => carry_48_port, CO => 
                           carry_49_port, S => SUM(48));
   U1_47 : FA_X1 port map( A => A(47), B => B(47), CI => carry_47_port, CO => 
                           carry_48_port, S => SUM(47));
   U1_46 : FA_X1 port map( A => A(46), B => B(46), CI => carry_46_port, CO => 
                           carry_47_port, S => SUM(46));
   U1_45 : FA_X1 port map( A => A(45), B => B(45), CI => carry_45_port, CO => 
                           carry_46_port, S => SUM(45));
   U1_44 : FA_X1 port map( A => A(44), B => B(44), CI => carry_44_port, CO => 
                           carry_45_port, S => SUM(44));
   U1_43 : FA_X1 port map( A => A(43), B => B(43), CI => carry_43_port, CO => 
                           carry_44_port, S => SUM(43));
   U1_42 : FA_X1 port map( A => A(42), B => B(42), CI => carry_42_port, CO => 
                           carry_43_port, S => SUM(42));
   U1_41 : FA_X1 port map( A => A(41), B => B(41), CI => carry_41_port, CO => 
                           carry_42_port, S => SUM(41));
   U1_40 : FA_X1 port map( A => A(40), B => B(40), CI => carry_40_port, CO => 
                           carry_41_port, S => SUM(40));
   U1_39 : FA_X1 port map( A => A(39), B => B(39), CI => carry_39_port, CO => 
                           carry_40_port, S => SUM(39));
   U1_38 : FA_X1 port map( A => A(38), B => B(38), CI => carry_38_port, CO => 
                           carry_39_port, S => SUM(38));
   U1_37 : FA_X1 port map( A => A(37), B => B(37), CI => carry_37_port, CO => 
                           carry_38_port, S => SUM(37));
   U1_36 : FA_X1 port map( A => A(36), B => B(36), CI => carry_36_port, CO => 
                           carry_37_port, S => SUM(36));
   U1_35 : FA_X1 port map( A => A(35), B => B(35), CI => carry_35_port, CO => 
                           carry_36_port, S => SUM(35));
   U1_34 : FA_X1 port map( A => A(34), B => B(34), CI => carry_34_port, CO => 
                           carry_35_port, S => SUM(34));
   U1_33 : FA_X1 port map( A => A(33), B => B(33), CI => carry_33_port, CO => 
                           carry_34_port, S => SUM(33));
   U1_32 : FA_X1 port map( A => A(32), B => B(32), CI => carry_32_port, CO => 
                           carry_33_port, S => SUM(32));
   U1_31 : FA_X1 port map( A => A(31), B => B(31), CI => carry_31_port, CO => 
                           carry_32_port, S => SUM(31));
   U1_30 : FA_X1 port map( A => A(30), B => B(30), CI => carry_30_port, CO => 
                           carry_31_port, S => SUM(30));
   U1_29 : FA_X1 port map( A => A(29), B => B(29), CI => carry_29_port, CO => 
                           carry_30_port, S => SUM(29));
   U1_28 : FA_X1 port map( A => A(28), B => B(28), CI => carry_28_port, CO => 
                           carry_29_port, S => SUM(28));
   U1_27 : FA_X1 port map( A => A(27), B => B(27), CI => carry_27_port, CO => 
                           carry_28_port, S => SUM(27));
   U1_26 : FA_X1 port map( A => A(26), B => B(26), CI => carry_26_port, CO => 
                           carry_27_port, S => SUM(26));
   U1_25 : FA_X1 port map( A => A(25), B => B(25), CI => carry_25_port, CO => 
                           carry_26_port, S => SUM(25));
   U1_24 : FA_X1 port map( A => A(24), B => B(24), CI => carry_24_port, CO => 
                           carry_25_port, S => SUM(24));
   U1_23 : FA_X1 port map( A => A(23), B => B(23), CI => carry_23_port, CO => 
                           carry_24_port, S => SUM(23));
   U1_22 : FA_X1 port map( A => A(22), B => B(22), CI => carry_22_port, CO => 
                           carry_23_port, S => SUM(22));
   U1_21 : FA_X1 port map( A => A(21), B => B(21), CI => carry_21_port, CO => 
                           carry_22_port, S => SUM(21));
   U1_20 : FA_X1 port map( A => A(20), B => B(20), CI => carry_20_port, CO => 
                           carry_21_port, S => SUM(20));
   U1_19 : FA_X1 port map( A => A(19), B => B(19), CI => carry_19_port, CO => 
                           carry_20_port, S => SUM(19));
   U1_18 : FA_X1 port map( A => A(18), B => B(18), CI => carry_18_port, CO => 
                           carry_19_port, S => SUM(18));
   U1_17 : FA_X1 port map( A => A(17), B => B(17), CI => carry_17_port, CO => 
                           carry_18_port, S => SUM(17));
   U1_16 : FA_X1 port map( A => A(16), B => B(16), CI => carry_16_port, CO => 
                           carry_17_port, S => SUM(16));
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           carry_16_port, S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B(14), CI => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B(13), CI => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B(12), CI => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_N64.all;

entity ACC_N64 is

   port( A, B : in std_logic_vector (63 downto 0);  CLK, RST_n, ACCUMULATE, 
         ACC_EN_n : in std_logic;  Y : out std_logic_vector (63 downto 0));

end ACC_N64;

architecture SYN_behavioral of ACC_N64 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component ACC_N64_DW01_add_0
      port( A, B : in std_logic_vector (63 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (63 downto 0);  CO : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Y_63_port, Y_62_port, Y_61_port, Y_60_port, Y_59_port, Y_58_port, 
      Y_57_port, Y_56_port, Y_55_port, Y_54_port, Y_53_port, Y_52_port, 
      Y_51_port, Y_50_port, Y_49_port, Y_48_port, Y_47_port, Y_46_port, 
      Y_45_port, Y_44_port, Y_43_port, Y_42_port, Y_41_port, Y_40_port, 
      Y_39_port, Y_38_port, Y_37_port, Y_36_port, Y_35_port, Y_34_port, 
      Y_33_port, Y_32_port, Y_31_port, Y_30_port, Y_29_port, Y_28_port, 
      Y_27_port, Y_26_port, Y_25_port, Y_24_port, Y_23_port, Y_22_port, 
      Y_21_port, Y_20_port, Y_19_port, Y_18_port, Y_17_port, Y_16_port, 
      Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, 
      Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, Y_0_port, out_add_63_port, out_add_62_port, 
      out_add_61_port, out_add_60_port, out_add_59_port, out_add_58_port, 
      out_add_57_port, out_add_56_port, out_add_55_port, out_add_54_port, 
      out_add_53_port, out_add_52_port, out_add_51_port, out_add_50_port, 
      out_add_49_port, out_add_48_port, out_add_47_port, out_add_46_port, 
      out_add_45_port, out_add_44_port, out_add_43_port, out_add_42_port, 
      out_add_41_port, out_add_40_port, out_add_39_port, out_add_38_port, 
      out_add_37_port, out_add_36_port, out_add_35_port, out_add_34_port, 
      out_add_33_port, out_add_32_port, out_add_31_port, out_add_30_port, 
      out_add_29_port, out_add_28_port, out_add_27_port, out_add_26_port, 
      out_add_25_port, out_add_24_port, out_add_23_port, out_add_22_port, 
      out_add_21_port, out_add_20_port, out_add_19_port, out_add_18_port, 
      out_add_17_port, out_add_16_port, out_add_15_port, out_add_14_port, 
      out_add_13_port, out_add_12_port, out_add_11_port, out_add_10_port, 
      out_add_9_port, out_add_8_port, out_add_7_port, out_add_6_port, 
      out_add_5_port, out_add_4_port, out_add_3_port, out_add_2_port, 
      out_add_1_port, out_add_0_port, n1, n197, n198, n199, n200, n201, n202, 
      n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, 
      n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, 
      n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, 
      n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, 
      n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, 
      n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, 
      n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, 
      n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, 
      n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, 
      n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, 
      n323, n324, n_1003, n_1004, n_1005, n_1006, n_1007, n_1008, n_1009, 
      n_1010, n_1011, n_1012, n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, 
      n_1019, n_1020, n_1021, n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, 
      n_1028, n_1029, n_1030, n_1031, n_1032, n_1033, n_1034, n_1035, n_1036, 
      n_1037, n_1038, n_1039, n_1040, n_1041, n_1042, n_1043, n_1044, n_1045, 
      n_1046, n_1047, n_1048, n_1049, n_1050, n_1051, n_1052, n_1053, n_1054, 
      n_1055, n_1056, n_1057, n_1058, n_1059, n_1060, n_1061, n_1062, n_1063, 
      n_1064, n_1065, n_1066, n_1067 : std_logic;

begin
   Y <= ( Y_63_port, Y_62_port, Y_61_port, Y_60_port, Y_59_port, Y_58_port, 
      Y_57_port, Y_56_port, Y_55_port, Y_54_port, Y_53_port, Y_52_port, 
      Y_51_port, Y_50_port, Y_49_port, Y_48_port, Y_47_port, Y_46_port, 
      Y_45_port, Y_44_port, Y_43_port, Y_42_port, Y_41_port, Y_40_port, 
      Y_39_port, Y_38_port, Y_37_port, Y_36_port, Y_35_port, Y_34_port, 
      Y_33_port, Y_32_port, Y_31_port, Y_30_port, Y_29_port, Y_28_port, 
      Y_27_port, Y_26_port, Y_25_port, Y_24_port, Y_23_port, Y_22_port, 
      Y_21_port, Y_20_port, Y_19_port, Y_18_port, Y_17_port, Y_16_port, 
      Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, 
      Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, Y_0_port );
   
   n1 <= '0';
   feed_back_reg_0_inst : DFFR_X1 port map( D => n260, CK => CLK, RN => RST_n, 
                           Q => Y_0_port, QN => n_1003);
   feed_back_reg_1_inst : DFFR_X1 port map( D => n259, CK => CLK, RN => RST_n, 
                           Q => Y_1_port, QN => n_1004);
   feed_back_reg_2_inst : DFFR_X1 port map( D => n258, CK => CLK, RN => RST_n, 
                           Q => Y_2_port, QN => n_1005);
   feed_back_reg_3_inst : DFFR_X1 port map( D => n257, CK => CLK, RN => RST_n, 
                           Q => Y_3_port, QN => n_1006);
   feed_back_reg_4_inst : DFFR_X1 port map( D => n256, CK => CLK, RN => RST_n, 
                           Q => Y_4_port, QN => n_1007);
   feed_back_reg_5_inst : DFFR_X1 port map( D => n255, CK => CLK, RN => RST_n, 
                           Q => Y_5_port, QN => n_1008);
   feed_back_reg_6_inst : DFFR_X1 port map( D => n254, CK => CLK, RN => RST_n, 
                           Q => Y_6_port, QN => n_1009);
   feed_back_reg_7_inst : DFFR_X1 port map( D => n253, CK => CLK, RN => RST_n, 
                           Q => Y_7_port, QN => n_1010);
   feed_back_reg_8_inst : DFFR_X1 port map( D => n252, CK => CLK, RN => RST_n, 
                           Q => Y_8_port, QN => n_1011);
   feed_back_reg_9_inst : DFFR_X1 port map( D => n251, CK => CLK, RN => RST_n, 
                           Q => Y_9_port, QN => n_1012);
   feed_back_reg_10_inst : DFFR_X1 port map( D => n250, CK => CLK, RN => RST_n,
                           Q => Y_10_port, QN => n_1013);
   feed_back_reg_11_inst : DFFR_X1 port map( D => n249, CK => CLK, RN => RST_n,
                           Q => Y_11_port, QN => n_1014);
   feed_back_reg_12_inst : DFFR_X1 port map( D => n248, CK => CLK, RN => RST_n,
                           Q => Y_12_port, QN => n_1015);
   feed_back_reg_13_inst : DFFR_X1 port map( D => n247, CK => CLK, RN => RST_n,
                           Q => Y_13_port, QN => n_1016);
   feed_back_reg_14_inst : DFFR_X1 port map( D => n246, CK => CLK, RN => RST_n,
                           Q => Y_14_port, QN => n_1017);
   feed_back_reg_15_inst : DFFR_X1 port map( D => n245, CK => CLK, RN => RST_n,
                           Q => Y_15_port, QN => n_1018);
   feed_back_reg_16_inst : DFFR_X1 port map( D => n244, CK => CLK, RN => RST_n,
                           Q => Y_16_port, QN => n_1019);
   feed_back_reg_17_inst : DFFR_X1 port map( D => n243, CK => CLK, RN => RST_n,
                           Q => Y_17_port, QN => n_1020);
   feed_back_reg_18_inst : DFFR_X1 port map( D => n242, CK => CLK, RN => RST_n,
                           Q => Y_18_port, QN => n_1021);
   feed_back_reg_19_inst : DFFR_X1 port map( D => n241, CK => CLK, RN => RST_n,
                           Q => Y_19_port, QN => n_1022);
   feed_back_reg_20_inst : DFFR_X1 port map( D => n240, CK => CLK, RN => RST_n,
                           Q => Y_20_port, QN => n_1023);
   feed_back_reg_21_inst : DFFR_X1 port map( D => n239, CK => CLK, RN => RST_n,
                           Q => Y_21_port, QN => n_1024);
   feed_back_reg_22_inst : DFFR_X1 port map( D => n238, CK => CLK, RN => RST_n,
                           Q => Y_22_port, QN => n_1025);
   feed_back_reg_23_inst : DFFR_X1 port map( D => n237, CK => CLK, RN => RST_n,
                           Q => Y_23_port, QN => n_1026);
   feed_back_reg_24_inst : DFFR_X1 port map( D => n236, CK => CLK, RN => RST_n,
                           Q => Y_24_port, QN => n_1027);
   feed_back_reg_25_inst : DFFR_X1 port map( D => n235, CK => CLK, RN => RST_n,
                           Q => Y_25_port, QN => n_1028);
   feed_back_reg_26_inst : DFFR_X1 port map( D => n234, CK => CLK, RN => RST_n,
                           Q => Y_26_port, QN => n_1029);
   feed_back_reg_27_inst : DFFR_X1 port map( D => n233, CK => CLK, RN => RST_n,
                           Q => Y_27_port, QN => n_1030);
   feed_back_reg_28_inst : DFFR_X1 port map( D => n232, CK => CLK, RN => RST_n,
                           Q => Y_28_port, QN => n_1031);
   feed_back_reg_29_inst : DFFR_X1 port map( D => n231, CK => CLK, RN => RST_n,
                           Q => Y_29_port, QN => n_1032);
   feed_back_reg_30_inst : DFFR_X1 port map( D => n230, CK => CLK, RN => RST_n,
                           Q => Y_30_port, QN => n_1033);
   feed_back_reg_31_inst : DFFR_X1 port map( D => n229, CK => CLK, RN => RST_n,
                           Q => Y_31_port, QN => n_1034);
   feed_back_reg_32_inst : DFFR_X1 port map( D => n228, CK => CLK, RN => RST_n,
                           Q => Y_32_port, QN => n_1035);
   feed_back_reg_33_inst : DFFR_X1 port map( D => n227, CK => CLK, RN => RST_n,
                           Q => Y_33_port, QN => n_1036);
   feed_back_reg_34_inst : DFFR_X1 port map( D => n226, CK => CLK, RN => RST_n,
                           Q => Y_34_port, QN => n_1037);
   feed_back_reg_35_inst : DFFR_X1 port map( D => n225, CK => CLK, RN => RST_n,
                           Q => Y_35_port, QN => n_1038);
   feed_back_reg_36_inst : DFFR_X1 port map( D => n224, CK => CLK, RN => RST_n,
                           Q => Y_36_port, QN => n_1039);
   feed_back_reg_37_inst : DFFR_X1 port map( D => n223, CK => CLK, RN => RST_n,
                           Q => Y_37_port, QN => n_1040);
   feed_back_reg_38_inst : DFFR_X1 port map( D => n222, CK => CLK, RN => RST_n,
                           Q => Y_38_port, QN => n_1041);
   feed_back_reg_39_inst : DFFR_X1 port map( D => n221, CK => CLK, RN => RST_n,
                           Q => Y_39_port, QN => n_1042);
   feed_back_reg_40_inst : DFFR_X1 port map( D => n220, CK => CLK, RN => RST_n,
                           Q => Y_40_port, QN => n_1043);
   feed_back_reg_41_inst : DFFR_X1 port map( D => n219, CK => CLK, RN => RST_n,
                           Q => Y_41_port, QN => n_1044);
   feed_back_reg_42_inst : DFFR_X1 port map( D => n218, CK => CLK, RN => RST_n,
                           Q => Y_42_port, QN => n_1045);
   feed_back_reg_43_inst : DFFR_X1 port map( D => n217, CK => CLK, RN => RST_n,
                           Q => Y_43_port, QN => n_1046);
   feed_back_reg_44_inst : DFFR_X1 port map( D => n216, CK => CLK, RN => RST_n,
                           Q => Y_44_port, QN => n_1047);
   feed_back_reg_45_inst : DFFR_X1 port map( D => n215, CK => CLK, RN => RST_n,
                           Q => Y_45_port, QN => n_1048);
   feed_back_reg_46_inst : DFFR_X1 port map( D => n214, CK => CLK, RN => RST_n,
                           Q => Y_46_port, QN => n_1049);
   feed_back_reg_47_inst : DFFR_X1 port map( D => n213, CK => CLK, RN => RST_n,
                           Q => Y_47_port, QN => n_1050);
   feed_back_reg_48_inst : DFFR_X1 port map( D => n212, CK => CLK, RN => RST_n,
                           Q => Y_48_port, QN => n_1051);
   feed_back_reg_49_inst : DFFR_X1 port map( D => n211, CK => CLK, RN => RST_n,
                           Q => Y_49_port, QN => n_1052);
   feed_back_reg_50_inst : DFFR_X1 port map( D => n210, CK => CLK, RN => RST_n,
                           Q => Y_50_port, QN => n_1053);
   feed_back_reg_51_inst : DFFR_X1 port map( D => n209, CK => CLK, RN => RST_n,
                           Q => Y_51_port, QN => n_1054);
   feed_back_reg_52_inst : DFFR_X1 port map( D => n208, CK => CLK, RN => RST_n,
                           Q => Y_52_port, QN => n_1055);
   feed_back_reg_53_inst : DFFR_X1 port map( D => n207, CK => CLK, RN => RST_n,
                           Q => Y_53_port, QN => n_1056);
   feed_back_reg_54_inst : DFFR_X1 port map( D => n206, CK => CLK, RN => RST_n,
                           Q => Y_54_port, QN => n_1057);
   feed_back_reg_55_inst : DFFR_X1 port map( D => n205, CK => CLK, RN => RST_n,
                           Q => Y_55_port, QN => n_1058);
   feed_back_reg_56_inst : DFFR_X1 port map( D => n204, CK => CLK, RN => RST_n,
                           Q => Y_56_port, QN => n_1059);
   feed_back_reg_57_inst : DFFR_X1 port map( D => n203, CK => CLK, RN => RST_n,
                           Q => Y_57_port, QN => n_1060);
   feed_back_reg_58_inst : DFFR_X1 port map( D => n202, CK => CLK, RN => RST_n,
                           Q => Y_58_port, QN => n_1061);
   feed_back_reg_59_inst : DFFR_X1 port map( D => n201, CK => CLK, RN => RST_n,
                           Q => Y_59_port, QN => n_1062);
   feed_back_reg_60_inst : DFFR_X1 port map( D => n200, CK => CLK, RN => RST_n,
                           Q => Y_60_port, QN => n_1063);
   feed_back_reg_61_inst : DFFR_X1 port map( D => n199, CK => CLK, RN => RST_n,
                           Q => Y_61_port, QN => n_1064);
   feed_back_reg_62_inst : DFFR_X1 port map( D => n198, CK => CLK, RN => RST_n,
                           Q => Y_62_port, QN => n_1065);
   feed_back_reg_63_inst : DFFR_X1 port map( D => n197, CK => CLK, RN => RST_n,
                           Q => Y_63_port, QN => n_1066);
   add_46 : ACC_N64_DW01_add_0 port map( A(63) => A(63), A(62) => A(62), A(61) 
                           => A(61), A(60) => A(60), A(59) => A(59), A(58) => 
                           A(58), A(57) => A(57), A(56) => A(56), A(55) => 
                           A(55), A(54) => A(54), A(53) => A(53), A(52) => 
                           A(52), A(51) => A(51), A(50) => A(50), A(49) => 
                           A(49), A(48) => A(48), A(47) => A(47), A(46) => 
                           A(46), A(45) => A(45), A(44) => A(44), A(43) => 
                           A(43), A(42) => A(42), A(41) => A(41), A(40) => 
                           A(40), A(39) => A(39), A(38) => A(38), A(37) => 
                           A(37), A(36) => A(36), A(35) => A(35), A(34) => 
                           A(34), A(33) => A(33), A(32) => A(32), A(31) => 
                           A(31), A(30) => A(30), A(29) => A(29), A(28) => 
                           A(28), A(27) => A(27), A(26) => A(26), A(25) => 
                           A(25), A(24) => A(24), A(23) => A(23), A(22) => 
                           A(22), A(21) => A(21), A(20) => A(20), A(19) => 
                           A(19), A(18) => A(18), A(17) => A(17), A(16) => 
                           A(16), A(15) => A(15), A(14) => A(14), A(13) => 
                           A(13), A(12) => A(12), A(11) => A(11), A(10) => 
                           A(10), A(9) => A(9), A(8) => A(8), A(7) => A(7), 
                           A(6) => A(6), A(5) => A(5), A(4) => A(4), A(3) => 
                           A(3), A(2) => A(2), A(1) => A(1), A(0) => A(0), 
                           B(63) => n261, B(62) => n262, B(61) => n263, B(60) 
                           => n264, B(59) => n265, B(58) => n266, B(57) => n267
                           , B(56) => n268, B(55) => n269, B(54) => n270, B(53)
                           => n271, B(52) => n272, B(51) => n273, B(50) => n274
                           , B(49) => n275, B(48) => n276, B(47) => n277, B(46)
                           => n278, B(45) => n279, B(44) => n280, B(43) => n281
                           , B(42) => n282, B(41) => n283, B(40) => n284, B(39)
                           => n285, B(38) => n286, B(37) => n287, B(36) => n288
                           , B(35) => n289, B(34) => n290, B(33) => n291, B(32)
                           => n292, B(31) => n293, B(30) => n294, B(29) => n295
                           , B(28) => n296, B(27) => n297, B(26) => n298, B(25)
                           => n299, B(24) => n300, B(23) => n301, B(22) => n302
                           , B(21) => n303, B(20) => n304, B(19) => n305, B(18)
                           => n306, B(17) => n307, B(16) => n308, B(15) => n309
                           , B(14) => n310, B(13) => n311, B(12) => n312, B(11)
                           => n313, B(10) => n314, B(9) => n315, B(8) => n316, 
                           B(7) => n317, B(6) => n318, B(5) => n319, B(4) => 
                           n320, B(3) => n321, B(2) => n322, B(1) => n323, B(0)
                           => n324, CI => n1, SUM(63) => out_add_63_port, 
                           SUM(62) => out_add_62_port, SUM(61) => 
                           out_add_61_port, SUM(60) => out_add_60_port, SUM(59)
                           => out_add_59_port, SUM(58) => out_add_58_port, 
                           SUM(57) => out_add_57_port, SUM(56) => 
                           out_add_56_port, SUM(55) => out_add_55_port, SUM(54)
                           => out_add_54_port, SUM(53) => out_add_53_port, 
                           SUM(52) => out_add_52_port, SUM(51) => 
                           out_add_51_port, SUM(50) => out_add_50_port, SUM(49)
                           => out_add_49_port, SUM(48) => out_add_48_port, 
                           SUM(47) => out_add_47_port, SUM(46) => 
                           out_add_46_port, SUM(45) => out_add_45_port, SUM(44)
                           => out_add_44_port, SUM(43) => out_add_43_port, 
                           SUM(42) => out_add_42_port, SUM(41) => 
                           out_add_41_port, SUM(40) => out_add_40_port, SUM(39)
                           => out_add_39_port, SUM(38) => out_add_38_port, 
                           SUM(37) => out_add_37_port, SUM(36) => 
                           out_add_36_port, SUM(35) => out_add_35_port, SUM(34)
                           => out_add_34_port, SUM(33) => out_add_33_port, 
                           SUM(32) => out_add_32_port, SUM(31) => 
                           out_add_31_port, SUM(30) => out_add_30_port, SUM(29)
                           => out_add_29_port, SUM(28) => out_add_28_port, 
                           SUM(27) => out_add_27_port, SUM(26) => 
                           out_add_26_port, SUM(25) => out_add_25_port, SUM(24)
                           => out_add_24_port, SUM(23) => out_add_23_port, 
                           SUM(22) => out_add_22_port, SUM(21) => 
                           out_add_21_port, SUM(20) => out_add_20_port, SUM(19)
                           => out_add_19_port, SUM(18) => out_add_18_port, 
                           SUM(17) => out_add_17_port, SUM(16) => 
                           out_add_16_port, SUM(15) => out_add_15_port, SUM(14)
                           => out_add_14_port, SUM(13) => out_add_13_port, 
                           SUM(12) => out_add_12_port, SUM(11) => 
                           out_add_11_port, SUM(10) => out_add_10_port, SUM(9) 
                           => out_add_9_port, SUM(8) => out_add_8_port, SUM(7) 
                           => out_add_7_port, SUM(6) => out_add_6_port, SUM(5) 
                           => out_add_5_port, SUM(4) => out_add_4_port, SUM(3) 
                           => out_add_3_port, SUM(2) => out_add_2_port, SUM(1) 
                           => out_add_1_port, SUM(0) => out_add_0_port, CO => 
                           n_1067);
   U261 : MUX2_X1 port map( A => B(0), B => Y_0_port, S => ACCUMULATE, Z => 
                           n324);
   U262 : MUX2_X1 port map( A => B(1), B => Y_1_port, S => ACCUMULATE, Z => 
                           n323);
   U263 : MUX2_X1 port map( A => B(2), B => Y_2_port, S => ACCUMULATE, Z => 
                           n322);
   U264 : MUX2_X1 port map( A => B(3), B => Y_3_port, S => ACCUMULATE, Z => 
                           n321);
   U265 : MUX2_X1 port map( A => B(4), B => Y_4_port, S => ACCUMULATE, Z => 
                           n320);
   U266 : MUX2_X1 port map( A => B(5), B => Y_5_port, S => ACCUMULATE, Z => 
                           n319);
   U267 : MUX2_X1 port map( A => B(6), B => Y_6_port, S => ACCUMULATE, Z => 
                           n318);
   U268 : MUX2_X1 port map( A => B(7), B => Y_7_port, S => ACCUMULATE, Z => 
                           n317);
   U269 : MUX2_X1 port map( A => B(8), B => Y_8_port, S => ACCUMULATE, Z => 
                           n316);
   U270 : MUX2_X1 port map( A => B(9), B => Y_9_port, S => ACCUMULATE, Z => 
                           n315);
   U271 : MUX2_X1 port map( A => B(10), B => Y_10_port, S => ACCUMULATE, Z => 
                           n314);
   U272 : MUX2_X1 port map( A => B(11), B => Y_11_port, S => ACCUMULATE, Z => 
                           n313);
   U273 : MUX2_X1 port map( A => B(12), B => Y_12_port, S => ACCUMULATE, Z => 
                           n312);
   U274 : MUX2_X1 port map( A => B(13), B => Y_13_port, S => ACCUMULATE, Z => 
                           n311);
   U275 : MUX2_X1 port map( A => B(14), B => Y_14_port, S => ACCUMULATE, Z => 
                           n310);
   U276 : MUX2_X1 port map( A => B(15), B => Y_15_port, S => ACCUMULATE, Z => 
                           n309);
   U277 : MUX2_X1 port map( A => B(16), B => Y_16_port, S => ACCUMULATE, Z => 
                           n308);
   U278 : MUX2_X1 port map( A => B(17), B => Y_17_port, S => ACCUMULATE, Z => 
                           n307);
   U279 : MUX2_X1 port map( A => B(18), B => Y_18_port, S => ACCUMULATE, Z => 
                           n306);
   U280 : MUX2_X1 port map( A => B(19), B => Y_19_port, S => ACCUMULATE, Z => 
                           n305);
   U281 : MUX2_X1 port map( A => B(20), B => Y_20_port, S => ACCUMULATE, Z => 
                           n304);
   U282 : MUX2_X1 port map( A => B(21), B => Y_21_port, S => ACCUMULATE, Z => 
                           n303);
   U283 : MUX2_X1 port map( A => B(22), B => Y_22_port, S => ACCUMULATE, Z => 
                           n302);
   U284 : MUX2_X1 port map( A => B(23), B => Y_23_port, S => ACCUMULATE, Z => 
                           n301);
   U285 : MUX2_X1 port map( A => B(24), B => Y_24_port, S => ACCUMULATE, Z => 
                           n300);
   U286 : MUX2_X1 port map( A => B(25), B => Y_25_port, S => ACCUMULATE, Z => 
                           n299);
   U287 : MUX2_X1 port map( A => B(26), B => Y_26_port, S => ACCUMULATE, Z => 
                           n298);
   U288 : MUX2_X1 port map( A => B(27), B => Y_27_port, S => ACCUMULATE, Z => 
                           n297);
   U289 : MUX2_X1 port map( A => B(28), B => Y_28_port, S => ACCUMULATE, Z => 
                           n296);
   U290 : MUX2_X1 port map( A => B(29), B => Y_29_port, S => ACCUMULATE, Z => 
                           n295);
   U291 : MUX2_X1 port map( A => B(30), B => Y_30_port, S => ACCUMULATE, Z => 
                           n294);
   U292 : MUX2_X1 port map( A => B(31), B => Y_31_port, S => ACCUMULATE, Z => 
                           n293);
   U293 : MUX2_X1 port map( A => B(32), B => Y_32_port, S => ACCUMULATE, Z => 
                           n292);
   U294 : MUX2_X1 port map( A => B(33), B => Y_33_port, S => ACCUMULATE, Z => 
                           n291);
   U295 : MUX2_X1 port map( A => B(34), B => Y_34_port, S => ACCUMULATE, Z => 
                           n290);
   U296 : MUX2_X1 port map( A => B(35), B => Y_35_port, S => ACCUMULATE, Z => 
                           n289);
   U297 : MUX2_X1 port map( A => B(36), B => Y_36_port, S => ACCUMULATE, Z => 
                           n288);
   U298 : MUX2_X1 port map( A => B(37), B => Y_37_port, S => ACCUMULATE, Z => 
                           n287);
   U299 : MUX2_X1 port map( A => B(38), B => Y_38_port, S => ACCUMULATE, Z => 
                           n286);
   U300 : MUX2_X1 port map( A => B(39), B => Y_39_port, S => ACCUMULATE, Z => 
                           n285);
   U301 : MUX2_X1 port map( A => B(40), B => Y_40_port, S => ACCUMULATE, Z => 
                           n284);
   U302 : MUX2_X1 port map( A => B(41), B => Y_41_port, S => ACCUMULATE, Z => 
                           n283);
   U303 : MUX2_X1 port map( A => B(42), B => Y_42_port, S => ACCUMULATE, Z => 
                           n282);
   U304 : MUX2_X1 port map( A => B(43), B => Y_43_port, S => ACCUMULATE, Z => 
                           n281);
   U305 : MUX2_X1 port map( A => B(44), B => Y_44_port, S => ACCUMULATE, Z => 
                           n280);
   U306 : MUX2_X1 port map( A => B(45), B => Y_45_port, S => ACCUMULATE, Z => 
                           n279);
   U307 : MUX2_X1 port map( A => B(46), B => Y_46_port, S => ACCUMULATE, Z => 
                           n278);
   U308 : MUX2_X1 port map( A => B(47), B => Y_47_port, S => ACCUMULATE, Z => 
                           n277);
   U309 : MUX2_X1 port map( A => B(48), B => Y_48_port, S => ACCUMULATE, Z => 
                           n276);
   U310 : MUX2_X1 port map( A => B(49), B => Y_49_port, S => ACCUMULATE, Z => 
                           n275);
   U311 : MUX2_X1 port map( A => B(50), B => Y_50_port, S => ACCUMULATE, Z => 
                           n274);
   U312 : MUX2_X1 port map( A => B(51), B => Y_51_port, S => ACCUMULATE, Z => 
                           n273);
   U313 : MUX2_X1 port map( A => B(52), B => Y_52_port, S => ACCUMULATE, Z => 
                           n272);
   U314 : MUX2_X1 port map( A => B(53), B => Y_53_port, S => ACCUMULATE, Z => 
                           n271);
   U315 : MUX2_X1 port map( A => B(54), B => Y_54_port, S => ACCUMULATE, Z => 
                           n270);
   U316 : MUX2_X1 port map( A => B(55), B => Y_55_port, S => ACCUMULATE, Z => 
                           n269);
   U317 : MUX2_X1 port map( A => B(56), B => Y_56_port, S => ACCUMULATE, Z => 
                           n268);
   U318 : MUX2_X1 port map( A => B(57), B => Y_57_port, S => ACCUMULATE, Z => 
                           n267);
   U319 : MUX2_X1 port map( A => B(58), B => Y_58_port, S => ACCUMULATE, Z => 
                           n266);
   U320 : MUX2_X1 port map( A => B(59), B => Y_59_port, S => ACCUMULATE, Z => 
                           n265);
   U321 : MUX2_X1 port map( A => B(60), B => Y_60_port, S => ACCUMULATE, Z => 
                           n264);
   U322 : MUX2_X1 port map( A => B(61), B => Y_61_port, S => ACCUMULATE, Z => 
                           n263);
   U323 : MUX2_X1 port map( A => B(62), B => Y_62_port, S => ACCUMULATE, Z => 
                           n262);
   U324 : MUX2_X1 port map( A => B(63), B => Y_63_port, S => ACCUMULATE, Z => 
                           n261);
   U325 : MUX2_X1 port map( A => out_add_0_port, B => Y_0_port, S => ACC_EN_n, 
                           Z => n260);
   U326 : MUX2_X1 port map( A => out_add_1_port, B => Y_1_port, S => ACC_EN_n, 
                           Z => n259);
   U327 : MUX2_X1 port map( A => out_add_2_port, B => Y_2_port, S => ACC_EN_n, 
                           Z => n258);
   U328 : MUX2_X1 port map( A => out_add_3_port, B => Y_3_port, S => ACC_EN_n, 
                           Z => n257);
   U329 : MUX2_X1 port map( A => out_add_4_port, B => Y_4_port, S => ACC_EN_n, 
                           Z => n256);
   U330 : MUX2_X1 port map( A => out_add_5_port, B => Y_5_port, S => ACC_EN_n, 
                           Z => n255);
   U331 : MUX2_X1 port map( A => out_add_6_port, B => Y_6_port, S => ACC_EN_n, 
                           Z => n254);
   U332 : MUX2_X1 port map( A => out_add_7_port, B => Y_7_port, S => ACC_EN_n, 
                           Z => n253);
   U333 : MUX2_X1 port map( A => out_add_8_port, B => Y_8_port, S => ACC_EN_n, 
                           Z => n252);
   U334 : MUX2_X1 port map( A => out_add_9_port, B => Y_9_port, S => ACC_EN_n, 
                           Z => n251);
   U335 : MUX2_X1 port map( A => out_add_10_port, B => Y_10_port, S => ACC_EN_n
                           , Z => n250);
   U336 : MUX2_X1 port map( A => out_add_11_port, B => Y_11_port, S => ACC_EN_n
                           , Z => n249);
   U337 : MUX2_X1 port map( A => out_add_12_port, B => Y_12_port, S => ACC_EN_n
                           , Z => n248);
   U338 : MUX2_X1 port map( A => out_add_13_port, B => Y_13_port, S => ACC_EN_n
                           , Z => n247);
   U339 : MUX2_X1 port map( A => out_add_14_port, B => Y_14_port, S => ACC_EN_n
                           , Z => n246);
   U340 : MUX2_X1 port map( A => out_add_15_port, B => Y_15_port, S => ACC_EN_n
                           , Z => n245);
   U341 : MUX2_X1 port map( A => out_add_16_port, B => Y_16_port, S => ACC_EN_n
                           , Z => n244);
   U342 : MUX2_X1 port map( A => out_add_17_port, B => Y_17_port, S => ACC_EN_n
                           , Z => n243);
   U343 : MUX2_X1 port map( A => out_add_18_port, B => Y_18_port, S => ACC_EN_n
                           , Z => n242);
   U344 : MUX2_X1 port map( A => out_add_19_port, B => Y_19_port, S => ACC_EN_n
                           , Z => n241);
   U345 : MUX2_X1 port map( A => out_add_20_port, B => Y_20_port, S => ACC_EN_n
                           , Z => n240);
   U346 : MUX2_X1 port map( A => out_add_21_port, B => Y_21_port, S => ACC_EN_n
                           , Z => n239);
   U347 : MUX2_X1 port map( A => out_add_22_port, B => Y_22_port, S => ACC_EN_n
                           , Z => n238);
   U348 : MUX2_X1 port map( A => out_add_23_port, B => Y_23_port, S => ACC_EN_n
                           , Z => n237);
   U349 : MUX2_X1 port map( A => out_add_24_port, B => Y_24_port, S => ACC_EN_n
                           , Z => n236);
   U350 : MUX2_X1 port map( A => out_add_25_port, B => Y_25_port, S => ACC_EN_n
                           , Z => n235);
   U351 : MUX2_X1 port map( A => out_add_26_port, B => Y_26_port, S => ACC_EN_n
                           , Z => n234);
   U352 : MUX2_X1 port map( A => out_add_27_port, B => Y_27_port, S => ACC_EN_n
                           , Z => n233);
   U353 : MUX2_X1 port map( A => out_add_28_port, B => Y_28_port, S => ACC_EN_n
                           , Z => n232);
   U354 : MUX2_X1 port map( A => out_add_29_port, B => Y_29_port, S => ACC_EN_n
                           , Z => n231);
   U355 : MUX2_X1 port map( A => out_add_30_port, B => Y_30_port, S => ACC_EN_n
                           , Z => n230);
   U356 : MUX2_X1 port map( A => out_add_31_port, B => Y_31_port, S => ACC_EN_n
                           , Z => n229);
   U357 : MUX2_X1 port map( A => out_add_32_port, B => Y_32_port, S => ACC_EN_n
                           , Z => n228);
   U358 : MUX2_X1 port map( A => out_add_33_port, B => Y_33_port, S => ACC_EN_n
                           , Z => n227);
   U359 : MUX2_X1 port map( A => out_add_34_port, B => Y_34_port, S => ACC_EN_n
                           , Z => n226);
   U360 : MUX2_X1 port map( A => out_add_35_port, B => Y_35_port, S => ACC_EN_n
                           , Z => n225);
   U361 : MUX2_X1 port map( A => out_add_36_port, B => Y_36_port, S => ACC_EN_n
                           , Z => n224);
   U362 : MUX2_X1 port map( A => out_add_37_port, B => Y_37_port, S => ACC_EN_n
                           , Z => n223);
   U363 : MUX2_X1 port map( A => out_add_38_port, B => Y_38_port, S => ACC_EN_n
                           , Z => n222);
   U364 : MUX2_X1 port map( A => out_add_39_port, B => Y_39_port, S => ACC_EN_n
                           , Z => n221);
   U365 : MUX2_X1 port map( A => out_add_40_port, B => Y_40_port, S => ACC_EN_n
                           , Z => n220);
   U366 : MUX2_X1 port map( A => out_add_41_port, B => Y_41_port, S => ACC_EN_n
                           , Z => n219);
   U367 : MUX2_X1 port map( A => out_add_42_port, B => Y_42_port, S => ACC_EN_n
                           , Z => n218);
   U368 : MUX2_X1 port map( A => out_add_43_port, B => Y_43_port, S => ACC_EN_n
                           , Z => n217);
   U369 : MUX2_X1 port map( A => out_add_44_port, B => Y_44_port, S => ACC_EN_n
                           , Z => n216);
   U370 : MUX2_X1 port map( A => out_add_45_port, B => Y_45_port, S => ACC_EN_n
                           , Z => n215);
   U371 : MUX2_X1 port map( A => out_add_46_port, B => Y_46_port, S => ACC_EN_n
                           , Z => n214);
   U372 : MUX2_X1 port map( A => out_add_47_port, B => Y_47_port, S => ACC_EN_n
                           , Z => n213);
   U373 : MUX2_X1 port map( A => out_add_48_port, B => Y_48_port, S => ACC_EN_n
                           , Z => n212);
   U374 : MUX2_X1 port map( A => out_add_49_port, B => Y_49_port, S => ACC_EN_n
                           , Z => n211);
   U375 : MUX2_X1 port map( A => out_add_50_port, B => Y_50_port, S => ACC_EN_n
                           , Z => n210);
   U376 : MUX2_X1 port map( A => out_add_51_port, B => Y_51_port, S => ACC_EN_n
                           , Z => n209);
   U377 : MUX2_X1 port map( A => out_add_52_port, B => Y_52_port, S => ACC_EN_n
                           , Z => n208);
   U378 : MUX2_X1 port map( A => out_add_53_port, B => Y_53_port, S => ACC_EN_n
                           , Z => n207);
   U379 : MUX2_X1 port map( A => out_add_54_port, B => Y_54_port, S => ACC_EN_n
                           , Z => n206);
   U380 : MUX2_X1 port map( A => out_add_55_port, B => Y_55_port, S => ACC_EN_n
                           , Z => n205);
   U381 : MUX2_X1 port map( A => out_add_56_port, B => Y_56_port, S => ACC_EN_n
                           , Z => n204);
   U382 : MUX2_X1 port map( A => out_add_57_port, B => Y_57_port, S => ACC_EN_n
                           , Z => n203);
   U383 : MUX2_X1 port map( A => out_add_58_port, B => Y_58_port, S => ACC_EN_n
                           , Z => n202);
   U384 : MUX2_X1 port map( A => out_add_59_port, B => Y_59_port, S => ACC_EN_n
                           , Z => n201);
   U385 : MUX2_X1 port map( A => out_add_60_port, B => Y_60_port, S => ACC_EN_n
                           , Z => n200);
   U386 : MUX2_X1 port map( A => out_add_61_port, B => Y_61_port, S => ACC_EN_n
                           , Z => n199);
   U387 : MUX2_X1 port map( A => out_add_62_port, B => Y_62_port, S => ACC_EN_n
                           , Z => n198);
   U388 : MUX2_X1 port map( A => out_add_63_port, B => Y_63_port, S => ACC_EN_n
                           , Z => n197);

end SYN_behavioral;
