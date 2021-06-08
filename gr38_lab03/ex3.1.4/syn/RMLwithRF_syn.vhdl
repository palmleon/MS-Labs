
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_RMLwithRF_NGlobal5_NBlockRegs4_NWindows5_NData8 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_RMLwithRF_NGlobal5_NBlockRegs4_NWindows5_NData8;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RMLwithRF_NGlobal5_NBlockRegs4_NWindows5_NData8.all;

entity register_file_NData8_NRegs45_NAddr6 is

   port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
         ADD_RD2 : in std_logic_vector (5 downto 0);  DATAIN : in 
         std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector (7 
         downto 0));

end register_file_NData8_NRegs45_NAddr6;

architecture SYN_A of register_file_NData8_NRegs45_NAddr6 is

   component GTECH_NOT
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component SELECT_OP
      generic( num_inputs, input_width : integer );
      port( DATA : in std_logic_vector( num_inputs* input_width - 1 downto 0 );
            CONTROL : in std_logic_vector( num_inputs - 1 downto 0 ); Z : out 
            std_logic_vector( input_width - 1 downto 0 ) );
   end component;
   
   component GTECH_BUF
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_AND3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_AND4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_AND5
      port( A, B, C, D, E : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_AND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component SYNOP_BASIC_THREE_STATE
      port( function_port, three_state : in std_logic;  output : out std_logic
            );
   end component;
   
   component SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
      generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
      port(
         clear, preset, enable, data_in, synch_clear, synch_preset, 
            synch_toggle, synch_enable, next_state, clocked_on : in std_logic;
         Q, QN : buffer std_logic
      );
   end component;
   
   signal N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
      N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30
      , N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, 
      N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59
      , N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, 
      N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88
      , N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102
      , N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, N114,
      N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, 
      N127, N128, N129, N130, N131, N132, N133, N134, N135, N136, N137, N138, 
      N139, N140, N141, N142, N143, N144, N145, N146, N147, N148, N149, N150, 
      N151, N152, N153, N154, N155, N156, N157, N158, N159, N160, N161, N162, 
      N163, N164, N165, N166, N167, N168, N169, N170, N171, N172, N173, N174, 
      N175, N176, N177, N178, N179, N180, N181, N182, N183, N184, N185, N186, 
      N187, N188, N189, N190, N191, N192, N193, N194, N195, N196, N197, N198, 
      N199, N200, N201, N202, N203, N204, N205, N206, N207, N208, N209, N210, 
      N211, N212, N213, N214, N215, N216, N217, N218, N219, N220, N221, N222, 
      N223, N224, N225, N226, N227, N228, N229, N230, N231, N232, N233, N234, 
      N235, N236, N237, N238, N239, N240, N241, N242, N243, N244, N245, N246, 
      N247, N248, N249, N250, N251, N252, N253, N254, N255, N256, N257, N258, 
      N259, N260, N261, N262, N263, N264, N265, N266, N267, N268, N269, N270, 
      N271, N272, N273, N274, N275, N276, N277, N278, N279, N280, N281, N282, 
      N283, N284, N285, N286, N287, N288, N289, N290, N291, N292, N293, N294, 
      N295, N296, N297, N298, N299, N300, N301, N302, N303, N304, N305, N306, 
      N307, N308, N309, N310, N311, N312, N313, N314, N315, N316, N317, N318, 
      N319, N320, N321, N322, N323, N324, N325, N326, N327, N328, N329, N330, 
      N331, N332, N333, N334, N335, N336, N337, N338, N339, N340, N341, N342, 
      N343, N344, N345, N346, N347, N348, N349, N350, N351, N352, N353, N354, 
      N355, N356, N357, N358, N359, N360, N361, N362, N363, N364, N365, N366, 
      N367, N368, N369, N370, N371, N372, N373, N374, N375, N376, N377, N378, 
      N379, N380, N381, N382, N383, N384, N385, N386, N387, N388, N389, N390, 
      N391, N392, N393, N394, N395, N396, N397, N398, N399, N400, N401, N402, 
      N403, N404, N405, N406, N407, N408, N409, N410, N411, N412, N413, N414, 
      N415, N416, N417, N418, N419, N420, N421, N422, N423, N424, N425, N426, 
      N427, N428, N429, N430, N431, N432, N433, N434, N435, N436, N437, N438, 
      N439, N440, N441, N442, N443, N444, N445, N446, N447, N448, N449, N450, 
      N451, N452, N453, N454, N455, N456, N457, X_Logic1_port, X_Logic0_port, 
      CLK_port, DATAIN_7_port, DATAIN_6_port, DATAIN_5_port, DATAIN_4_port, 
      DATAIN_3_port, DATAIN_2_port, DATAIN_1_port, DATAIN_0_port, 
      REGISTERS_0_7_port, REGISTERS_0_6_port, REGISTERS_0_5_port, 
      REGISTERS_0_4_port, REGISTERS_0_3_port, REGISTERS_0_2_port, 
      REGISTERS_0_1_port, REGISTERS_0_0_port, REGISTERS_1_7_port, 
      REGISTERS_1_6_port, REGISTERS_1_5_port, REGISTERS_1_4_port, 
      REGISTERS_1_3_port, REGISTERS_1_2_port, REGISTERS_1_1_port, 
      REGISTERS_1_0_port, REGISTERS_2_7_port, REGISTERS_2_6_port, 
      REGISTERS_2_5_port, REGISTERS_2_4_port, REGISTERS_2_3_port, 
      REGISTERS_2_2_port, REGISTERS_2_1_port, REGISTERS_2_0_port, 
      REGISTERS_3_7_port, REGISTERS_3_6_port, REGISTERS_3_5_port, 
      REGISTERS_3_4_port, REGISTERS_3_3_port, REGISTERS_3_2_port, 
      REGISTERS_3_1_port, REGISTERS_3_0_port, REGISTERS_4_7_port, 
      REGISTERS_4_6_port, REGISTERS_4_5_port, REGISTERS_4_4_port, 
      REGISTERS_4_3_port, REGISTERS_4_2_port, REGISTERS_4_1_port, 
      REGISTERS_4_0_port, REGISTERS_5_7_port, REGISTERS_5_6_port, 
      REGISTERS_5_5_port, REGISTERS_5_4_port, REGISTERS_5_3_port, 
      REGISTERS_5_2_port, REGISTERS_5_1_port, REGISTERS_5_0_port, 
      REGISTERS_6_7_port, REGISTERS_6_6_port, REGISTERS_6_5_port, 
      REGISTERS_6_4_port, REGISTERS_6_3_port, REGISTERS_6_2_port, 
      REGISTERS_6_1_port, REGISTERS_6_0_port, REGISTERS_7_7_port, 
      REGISTERS_7_6_port, REGISTERS_7_5_port, REGISTERS_7_4_port, 
      REGISTERS_7_3_port, REGISTERS_7_2_port, REGISTERS_7_1_port, 
      REGISTERS_7_0_port, REGISTERS_8_7_port, REGISTERS_8_6_port, 
      REGISTERS_8_5_port, REGISTERS_8_4_port, REGISTERS_8_3_port, 
      REGISTERS_8_2_port, REGISTERS_8_1_port, REGISTERS_8_0_port, 
      REGISTERS_9_7_port, REGISTERS_9_6_port, REGISTERS_9_5_port, 
      REGISTERS_9_4_port, REGISTERS_9_3_port, REGISTERS_9_2_port, 
      REGISTERS_9_1_port, REGISTERS_9_0_port, REGISTERS_10_7_port, 
      REGISTERS_10_6_port, REGISTERS_10_5_port, REGISTERS_10_4_port, 
      REGISTERS_10_3_port, REGISTERS_10_2_port, REGISTERS_10_1_port, 
      REGISTERS_10_0_port, REGISTERS_11_7_port, REGISTERS_11_6_port, 
      REGISTERS_11_5_port, REGISTERS_11_4_port, REGISTERS_11_3_port, 
      REGISTERS_11_2_port, REGISTERS_11_1_port, REGISTERS_11_0_port, 
      REGISTERS_12_7_port, REGISTERS_12_6_port, REGISTERS_12_5_port, 
      REGISTERS_12_4_port, REGISTERS_12_3_port, REGISTERS_12_2_port, 
      REGISTERS_12_1_port, REGISTERS_12_0_port, REGISTERS_13_7_port, 
      REGISTERS_13_6_port, REGISTERS_13_5_port, REGISTERS_13_4_port, 
      REGISTERS_13_3_port, REGISTERS_13_2_port, REGISTERS_13_1_port, 
      REGISTERS_13_0_port, REGISTERS_14_7_port, REGISTERS_14_6_port, 
      REGISTERS_14_5_port, REGISTERS_14_4_port, REGISTERS_14_3_port, 
      REGISTERS_14_2_port, REGISTERS_14_1_port, REGISTERS_14_0_port, 
      REGISTERS_15_7_port, REGISTERS_15_6_port, REGISTERS_15_5_port, 
      REGISTERS_15_4_port, REGISTERS_15_3_port, REGISTERS_15_2_port, 
      REGISTERS_15_1_port, REGISTERS_15_0_port, REGISTERS_16_7_port, 
      REGISTERS_16_6_port, REGISTERS_16_5_port, REGISTERS_16_4_port, 
      REGISTERS_16_3_port, REGISTERS_16_2_port, REGISTERS_16_1_port, 
      REGISTERS_16_0_port, REGISTERS_17_7_port, REGISTERS_17_6_port, 
      REGISTERS_17_5_port, REGISTERS_17_4_port, REGISTERS_17_3_port, 
      REGISTERS_17_2_port, REGISTERS_17_1_port, REGISTERS_17_0_port, 
      REGISTERS_18_7_port, REGISTERS_18_6_port, REGISTERS_18_5_port, 
      REGISTERS_18_4_port, REGISTERS_18_3_port, REGISTERS_18_2_port, 
      REGISTERS_18_1_port, REGISTERS_18_0_port, REGISTERS_19_7_port, 
      REGISTERS_19_6_port, REGISTERS_19_5_port, REGISTERS_19_4_port, 
      REGISTERS_19_3_port, REGISTERS_19_2_port, REGISTERS_19_1_port, 
      REGISTERS_19_0_port, REGISTERS_20_7_port, REGISTERS_20_6_port, 
      REGISTERS_20_5_port, REGISTERS_20_4_port, REGISTERS_20_3_port, 
      REGISTERS_20_2_port, REGISTERS_20_1_port, REGISTERS_20_0_port, 
      REGISTERS_21_7_port, REGISTERS_21_6_port, REGISTERS_21_5_port, 
      REGISTERS_21_4_port, REGISTERS_21_3_port, REGISTERS_21_2_port, 
      REGISTERS_21_1_port, REGISTERS_21_0_port, REGISTERS_22_7_port, 
      REGISTERS_22_6_port, REGISTERS_22_5_port, REGISTERS_22_4_port, 
      REGISTERS_22_3_port, REGISTERS_22_2_port, REGISTERS_22_1_port, 
      REGISTERS_22_0_port, REGISTERS_23_7_port, REGISTERS_23_6_port, 
      REGISTERS_23_5_port, REGISTERS_23_4_port, REGISTERS_23_3_port, 
      REGISTERS_23_2_port, REGISTERS_23_1_port, REGISTERS_23_0_port, 
      REGISTERS_24_7_port, REGISTERS_24_6_port, REGISTERS_24_5_port, 
      REGISTERS_24_4_port, REGISTERS_24_3_port, REGISTERS_24_2_port, 
      REGISTERS_24_1_port, REGISTERS_24_0_port, REGISTERS_25_7_port, 
      REGISTERS_25_6_port, REGISTERS_25_5_port, REGISTERS_25_4_port, 
      REGISTERS_25_3_port, REGISTERS_25_2_port, REGISTERS_25_1_port, 
      REGISTERS_25_0_port, REGISTERS_26_7_port, REGISTERS_26_6_port, 
      REGISTERS_26_5_port, REGISTERS_26_4_port, REGISTERS_26_3_port, 
      REGISTERS_26_2_port, REGISTERS_26_1_port, REGISTERS_26_0_port, 
      REGISTERS_27_7_port, REGISTERS_27_6_port, REGISTERS_27_5_port, 
      REGISTERS_27_4_port, REGISTERS_27_3_port, REGISTERS_27_2_port, 
      REGISTERS_27_1_port, REGISTERS_27_0_port, REGISTERS_28_7_port, 
      REGISTERS_28_6_port, REGISTERS_28_5_port, REGISTERS_28_4_port, 
      REGISTERS_28_3_port, REGISTERS_28_2_port, REGISTERS_28_1_port, 
      REGISTERS_28_0_port, REGISTERS_29_7_port, REGISTERS_29_6_port, 
      REGISTERS_29_5_port, REGISTERS_29_4_port, REGISTERS_29_3_port, 
      REGISTERS_29_2_port, REGISTERS_29_1_port, REGISTERS_29_0_port, 
      REGISTERS_30_7_port, REGISTERS_30_6_port, REGISTERS_30_5_port, 
      REGISTERS_30_4_port, REGISTERS_30_3_port, REGISTERS_30_2_port, 
      REGISTERS_30_1_port, REGISTERS_30_0_port, REGISTERS_31_7_port, 
      REGISTERS_31_6_port, REGISTERS_31_5_port, REGISTERS_31_4_port, 
      REGISTERS_31_3_port, REGISTERS_31_2_port, REGISTERS_31_1_port, 
      REGISTERS_31_0_port, REGISTERS_32_7_port, REGISTERS_32_6_port, 
      REGISTERS_32_5_port, REGISTERS_32_4_port, REGISTERS_32_3_port, 
      REGISTERS_32_2_port, REGISTERS_32_1_port, REGISTERS_32_0_port, 
      REGISTERS_33_7_port, REGISTERS_33_6_port, REGISTERS_33_5_port, 
      REGISTERS_33_4_port, REGISTERS_33_3_port, REGISTERS_33_2_port, 
      REGISTERS_33_1_port, REGISTERS_33_0_port, REGISTERS_34_7_port, 
      REGISTERS_34_6_port, REGISTERS_34_5_port, REGISTERS_34_4_port, 
      REGISTERS_34_3_port, REGISTERS_34_2_port, REGISTERS_34_1_port, 
      REGISTERS_34_0_port, REGISTERS_35_7_port, REGISTERS_35_6_port, 
      REGISTERS_35_5_port, REGISTERS_35_4_port, REGISTERS_35_3_port, 
      REGISTERS_35_2_port, REGISTERS_35_1_port, REGISTERS_35_0_port, 
      REGISTERS_36_7_port, REGISTERS_36_6_port, REGISTERS_36_5_port, 
      REGISTERS_36_4_port, REGISTERS_36_3_port, REGISTERS_36_2_port, 
      REGISTERS_36_1_port, REGISTERS_36_0_port, REGISTERS_37_7_port, 
      REGISTERS_37_6_port, REGISTERS_37_5_port, REGISTERS_37_4_port, 
      REGISTERS_37_3_port, REGISTERS_37_2_port, REGISTERS_37_1_port, 
      REGISTERS_37_0_port, REGISTERS_38_7_port, REGISTERS_38_6_port, 
      REGISTERS_38_5_port, REGISTERS_38_4_port, REGISTERS_38_3_port, 
      REGISTERS_38_2_port, REGISTERS_38_1_port, REGISTERS_38_0_port, 
      REGISTERS_39_7_port, REGISTERS_39_6_port, REGISTERS_39_5_port, 
      REGISTERS_39_4_port, REGISTERS_39_3_port, REGISTERS_39_2_port, 
      REGISTERS_39_1_port, REGISTERS_39_0_port, REGISTERS_40_7_port, 
      REGISTERS_40_6_port, REGISTERS_40_5_port, REGISTERS_40_4_port, 
      REGISTERS_40_3_port, REGISTERS_40_2_port, REGISTERS_40_1_port, 
      REGISTERS_40_0_port, REGISTERS_41_7_port, REGISTERS_41_6_port, 
      REGISTERS_41_5_port, REGISTERS_41_4_port, REGISTERS_41_3_port, 
      REGISTERS_41_2_port, REGISTERS_41_1_port, REGISTERS_41_0_port, 
      REGISTERS_42_7_port, REGISTERS_42_6_port, REGISTERS_42_5_port, 
      REGISTERS_42_4_port, REGISTERS_42_3_port, REGISTERS_42_2_port, 
      REGISTERS_42_1_port, REGISTERS_42_0_port, REGISTERS_43_7_port, 
      REGISTERS_43_6_port, REGISTERS_43_5_port, REGISTERS_43_4_port, 
      REGISTERS_43_3_port, REGISTERS_43_2_port, REGISTERS_43_1_port, 
      REGISTERS_43_0_port, REGISTERS_44_7_port, REGISTERS_44_6_port, 
      REGISTERS_44_5_port, REGISTERS_44_4_port, REGISTERS_44_3_port, 
      REGISTERS_44_2_port, REGISTERS_44_1_port, REGISTERS_44_0_port, N458, N459
      , N460, N461, N462, N463, N464, N465, N466, N467, N468, N469, N470, N471,
      N472, N473, N474, N475, N476, N477, N478, N479, N480, N481, N482, N483, 
      N484, N485, N486, N487, N488, N489, N490, N491, N492, N493, N494, N495, 
      N496, N497, N498, N499, N500, N501, N502, N503, N504, N505, N506, N507, 
      N508, N509, N510, N511, N512, N513, N514, N515, N516, N517, N518, N519, 
      N520, N521, N522, N523, N524, N525, N526, N527, N528, N529, N530, N531, 
      N532, N533, N534, N535, N536, N537, N538, N539, N540, N541, N542, N543, 
      N544, N545, N546, N547, N548, N549, N550, N551, N552, N553, N554, N555, 
      N556, N557, N558, N559, N560, N561, N562, N563, N564, N565, N566, N567, 
      N568, N569, N570, N571, N572, N573, N574, N575, N576, N577, N578, N579, 
      N580, N581, N582, N583, N584, N585, N586, N587, N588, N589, N590, N591, 
      N592, N593, N594, N595, N596, N597, N598, N599, N600, N601, N602, N603, 
      N604, N605, N606, N607, N608, N609, N610, N611, N612, N613, N614, N615, 
      N616, N617, N618, N619, N620, N621, N622, N623, N624, N625, N626, N627, 
      N628, N629, N630, N631, N632, N633, N634, N635, N636, N637, N638, N639, 
      N640, N641, N642, N643, N644, N645, N646, N647, N648, N649, N650, N651, 
      N652, N653, N654, N655, N656, N657, N658, N659, N660, N661, N662, N663, 
      N664, N665, N666, N667, N668, N669, N670, N671, N672, N673, N674, N675, 
      N676, N677, N678, N679, N680, N681, N682, N683, N684, N685, N686, N687, 
      N688, N689, N690, N691, N692, N693, N694, N695, N696, N697, N698, N699, 
      N700, N701, N702, N703, N704, N705, N706, N707, N708, N709, N710, N711, 
      N712, N713, N714, N715, N716, N717, N718, N719, N720, N721, N722, N723, 
      N724, N725, N726, N727, N728, N729, N730, N731, N732, N733, N734, N735, 
      N736, N737, N738, N739, N740, N741, N742, N743, N744, N745, N746, N747, 
      N748, N749, N750, N751, N752, N753, N754, N755, N756, N757, N758, N759, 
      N760, N761, N762, N763, N764, N765, N766, N767, N768, N769, N770, N771, 
      N772, N773, N774, N775, N776, N777, N778, N779, N780, N781, N782, N783, 
      N784, N785, N786, N787, N788, N789, N790, N791, N792, N793, N794, N795, 
      N796, N797, N798, N799, N800, N801, N802, N803, N804, N805, N806, N807, 
      N808, N809, N810, N811, N812, N813, N814, N815, N816, N817, N818, N819, 
      N820, N821, N822, N823, N824, N825, N826, N827, N828, N829, N830, N831, 
      N832, N833, N834, N835, N836, N837, N838, N839, N840, N841, N842, N843, 
      N844, N845, N846, N847, N848, N849, N850, N851, N852, N853, N854, N855, 
      N856, N857, N858, N859, N860, N861, N862, N863, N864, N865, N866, N867, 
      N868, N869, N870, N871, N872, N873, N874, N875, N876, N877, N878, N879, 
      N880, N881, N882, N883, N884, N885, N886, N887, N888, N889, N890, N891, 
      N892, N893, N894, N895, N896, N897, N898, N899, N900, N901, N902, N903, 
      N904, N905, net521, net522, net523, net524, net525, net526, net527, 
      net528, net529, net530, net531, net532, net533, net534, net535, net536, 
      net537, net538, net539, net540, net541, net542, net543, net544, net545, 
      net546, net547, net548, net549, net550, net551, net552, net553, net554, 
      net555, net556, net557, net558, net559, net560, net561, net562, net563, 
      net564, net565, net566, net567, net568, n_1000, n_1001, n_1002, n_1003, 
      n_1004, n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, n_1011, n_1012, 
      n_1013, n_1014, n_1015, n_1016, n_1017, n_1018, n_1019, n_1020, n_1021, 
      n_1022, n_1023, n_1024, n_1025, n_1026, n_1027, n_1028, n_1029, n_1030, 
      n_1031, n_1032, n_1033, n_1034, n_1035, n_1036, n_1037, n_1038, n_1039, 
      n_1040, n_1041, n_1042, n_1043, n_1044, n_1045, n_1046, n_1047, n_1048, 
      n_1049, n_1050, n_1051, n_1052, n_1053, n_1054, n_1055, n_1056, n_1057, 
      n_1058, n_1059, n_1060, n_1061, n_1062, n_1063, n_1064, n_1065, n_1066, 
      n_1067, n_1068, n_1069, n_1070, n_1071, n_1072, n_1073, n_1074, n_1075, 
      n_1076, n_1077, n_1078, n_1079, n_1080, n_1081, n_1082, n_1083, n_1084, 
      n_1085, n_1086, n_1087, n_1088, n_1089, n_1090, n_1091, n_1092, n_1093, 
      n_1094, n_1095, n_1096, n_1097, n_1098, n_1099, n_1100, n_1101, n_1102, 
      n_1103, n_1104, n_1105, n_1106, n_1107, n_1108, n_1109, n_1110, n_1111, 
      n_1112, n_1113, n_1114, n_1115, n_1116, n_1117, n_1118, n_1119, n_1120, 
      n_1121, n_1122, n_1123, n_1124, n_1125, n_1126, n_1127, n_1128, n_1129, 
      n_1130, n_1131, n_1132, n_1133, n_1134, n_1135, n_1136, n_1137, n_1138, 
      n_1139, n_1140, n_1141, n_1142, n_1143, n_1144, n_1145, n_1146, n_1147, 
      n_1148, n_1149, n_1150, n_1151, n_1152, n_1153, n_1154, n_1155, n_1156, 
      n_1157, n_1158, n_1159, n_1160, n_1161, n_1162, n_1163, n_1164, n_1165, 
      n_1166, n_1167, n_1168, n_1169, n_1170, n_1171, n_1172, n_1173, n_1174, 
      n_1175, n_1176, n_1177, n_1178, n_1179, n_1180, n_1181, n_1182, n_1183, 
      n_1184, n_1185, n_1186, n_1187, n_1188, n_1189, n_1190, n_1191, n_1192, 
      n_1193, n_1194, n_1195, n_1196, n_1197, n_1198, n_1199, n_1200, n_1201, 
      n_1202, n_1203, n_1204, n_1205, n_1206, n_1207, n_1208, n_1209, n_1210, 
      n_1211, n_1212, n_1213, n_1214, n_1215, n_1216, n_1217, n_1218, n_1219, 
      n_1220, n_1221, n_1222, n_1223, n_1224, n_1225, n_1226, n_1227, n_1228, 
      n_1229, n_1230, n_1231, n_1232, n_1233, n_1234, n_1235, n_1236, n_1237, 
      n_1238, n_1239, n_1240, n_1241, n_1242, n_1243, n_1244, n_1245, n_1246, 
      n_1247, n_1248, n_1249, n_1250, n_1251, n_1252, n_1253, n_1254, n_1255, 
      n_1256, n_1257, n_1258, n_1259, n_1260, n_1261, n_1262, n_1263, n_1264, 
      n_1265, n_1266, n_1267, n_1268, n_1269, n_1270, n_1271, n_1272, n_1273, 
      n_1274, n_1275, n_1276, n_1277, n_1278, n_1279, n_1280, n_1281, n_1282, 
      n_1283, n_1284, n_1285, n_1286, n_1287, n_1288, n_1289, n_1290, n_1291, 
      n_1292, n_1293, n_1294, n_1295, n_1296, n_1297, n_1298, n_1299, n_1300, 
      n_1301, n_1302, n_1303, n_1304, n_1305, n_1306, n_1307, n_1308, n_1309, 
      n_1310, n_1311, n_1312, n_1313, n_1314, n_1315, n_1316, n_1317, n_1318, 
      n_1319, n_1320, n_1321, n_1322, n_1323, n_1324, n_1325, n_1326, n_1327, 
      n_1328, n_1329, n_1330, n_1331, n_1332, n_1333, n_1334, n_1335, n_1336, 
      n_1337, n_1338, n_1339, n_1340, n_1341, n_1342, n_1343, n_1344, n_1345, 
      n_1346, n_1347, n_1348, n_1349, n_1350, n_1351, n_1352, n_1353, n_1354, 
      n_1355, n_1356, n_1357, n_1358, n_1359, n_1360, n_1361, n_1362, n_1363, 
      n_1364, n_1365, n_1366, n_1367, n_1368, n_1369, n_1370, n_1371, n_1372, 
      n_1373, n_1374, n_1375, n_1376, n_1377, n_1378, n_1379, n_1380, n_1381, 
      n_1382, n_1383, n_1384, n_1385, n_1386, n_1387, n_1388, n_1389, n_1390, 
      n_1391 : std_logic;

begin
   CLK_port <= CLK;
   ( DATAIN_7_port, DATAIN_6_port, DATAIN_5_port, DATAIN_4_port, DATAIN_3_port,
      DATAIN_2_port, DATAIN_1_port, DATAIN_0_port ) <= DATAIN;
   
   OUT2_reg_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N784, next_state => N584, 
               clocked_on => CLK_port, Q => N786, QN => n_1000);
   OUT2_tri_enable_reg_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => net566, preset => net567, enable => X_Logic0_port,
               data_in => net568, synch_clear => X_Logic0_port, synch_preset =>
               X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable => 
               N784, next_state => N785, clocked_on => CLK_port, Q => N787, QN 
               => n_1001);
   OUT2_tri_7_inst : SYNOP_BASIC_THREE_STATE port map( function_port => N786, 
                           three_state => N0, output => OUT2(7));
   I_0 : GTECH_NOT port map( A => N788, Z => N0);
   OUT2_reg_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N784, next_state => N583, 
               clocked_on => CLK_port, Q => N789, QN => n_1002);
   OUT2_tri_enable_reg_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => net563, preset => net564, enable => X_Logic0_port,
               data_in => net565, synch_clear => X_Logic0_port, synch_preset =>
               X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable => 
               N784, next_state => N785, clocked_on => CLK_port, Q => N790, QN 
               => n_1003);
   OUT2_tri_6_inst : SYNOP_BASIC_THREE_STATE port map( function_port => N789, 
                           three_state => N1, output => OUT2(6));
   I_1 : GTECH_NOT port map( A => N791, Z => N1);
   OUT2_reg_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N784, next_state => N582, 
               clocked_on => CLK_port, Q => N792, QN => n_1004);
   OUT2_tri_enable_reg_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => net560, preset => net561, enable => X_Logic0_port,
               data_in => net562, synch_clear => X_Logic0_port, synch_preset =>
               X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable => 
               N784, next_state => N785, clocked_on => CLK_port, Q => N793, QN 
               => n_1005);
   OUT2_tri_5_inst : SYNOP_BASIC_THREE_STATE port map( function_port => N792, 
                           three_state => N2, output => OUT2(5));
   I_2 : GTECH_NOT port map( A => N794, Z => N2);
   OUT2_reg_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N784, next_state => N581, 
               clocked_on => CLK_port, Q => N795, QN => n_1006);
   OUT2_tri_enable_reg_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => net557, preset => net558, enable => X_Logic0_port,
               data_in => net559, synch_clear => X_Logic0_port, synch_preset =>
               X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable => 
               N784, next_state => N785, clocked_on => CLK_port, Q => N796, QN 
               => n_1007);
   OUT2_tri_4_inst : SYNOP_BASIC_THREE_STATE port map( function_port => N795, 
                           three_state => N3, output => OUT2(4));
   I_3 : GTECH_NOT port map( A => N797, Z => N3);
   OUT2_reg_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N784, next_state => N580, 
               clocked_on => CLK_port, Q => N798, QN => n_1008);
   OUT2_tri_enable_reg_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => net554, preset => net555, enable => X_Logic0_port,
               data_in => net556, synch_clear => X_Logic0_port, synch_preset =>
               X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable => 
               N784, next_state => N785, clocked_on => CLK_port, Q => N799, QN 
               => n_1009);
   OUT2_tri_3_inst : SYNOP_BASIC_THREE_STATE port map( function_port => N798, 
                           three_state => N4, output => OUT2(3));
   I_4 : GTECH_NOT port map( A => N800, Z => N4);
   OUT2_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N784, next_state => N579, 
               clocked_on => CLK_port, Q => N801, QN => n_1010);
   OUT2_tri_enable_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => net551, preset => net552, enable => X_Logic0_port,
               data_in => net553, synch_clear => X_Logic0_port, synch_preset =>
               X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable => 
               N784, next_state => N785, clocked_on => CLK_port, Q => N802, QN 
               => n_1011);
   OUT2_tri_2_inst : SYNOP_BASIC_THREE_STATE port map( function_port => N801, 
                           three_state => N5, output => OUT2(2));
   I_5 : GTECH_NOT port map( A => N803, Z => N5);
   OUT2_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N784, next_state => N578, 
               clocked_on => CLK_port, Q => N804, QN => n_1012);
   OUT2_tri_enable_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => net548, preset => net549, enable => X_Logic0_port,
               data_in => net550, synch_clear => X_Logic0_port, synch_preset =>
               X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable => 
               N784, next_state => N785, clocked_on => CLK_port, Q => N805, QN 
               => n_1013);
   OUT2_tri_1_inst : SYNOP_BASIC_THREE_STATE port map( function_port => N804, 
                           three_state => N6, output => OUT2(1));
   I_6 : GTECH_NOT port map( A => N806, Z => N6);
   OUT2_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N784, next_state => N576, 
               clocked_on => CLK_port, Q => N807, QN => n_1014);
   OUT2_tri_enable_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => net545, preset => net546, enable => X_Logic0_port,
               data_in => net547, synch_clear => X_Logic0_port, synch_preset =>
               X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable => 
               N784, next_state => N785, clocked_on => CLK_port, Q => N808, QN 
               => n_1015);
   OUT2_tri_0_inst : SYNOP_BASIC_THREE_STATE port map( function_port => N807, 
                           three_state => N7, output => OUT2(0));
   I_7 : GTECH_NOT port map( A => N809, Z => N7);
   REGISTERS_reg_0_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N781, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_0_7_port, QN => n_1016);
   REGISTERS_reg_0_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N781, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_0_6_port, QN => n_1017);
   REGISTERS_reg_0_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N781, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_0_5_port, QN => n_1018);
   REGISTERS_reg_0_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N781, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_0_4_port, QN => n_1019);
   REGISTERS_reg_0_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N781, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_0_3_port, QN => n_1020);
   REGISTERS_reg_0_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N781, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_0_2_port, QN => n_1021);
   REGISTERS_reg_0_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N781, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_0_1_port, QN => n_1022);
   REGISTERS_reg_0_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N781, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_0_0_port, QN => n_1023);
   REGISTERS_reg_1_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N780, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_1_7_port, QN => n_1024);
   REGISTERS_reg_1_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N780, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_1_6_port, QN => n_1025);
   REGISTERS_reg_1_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N780, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_1_5_port, QN => n_1026);
   REGISTERS_reg_1_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N780, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_1_4_port, QN => n_1027);
   REGISTERS_reg_1_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N780, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_1_3_port, QN => n_1028);
   REGISTERS_reg_1_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N780, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_1_2_port, QN => n_1029);
   REGISTERS_reg_1_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N780, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_1_1_port, QN => n_1030);
   REGISTERS_reg_1_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N780, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_1_0_port, QN => n_1031);
   REGISTERS_reg_2_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N779, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_2_7_port, QN => n_1032);
   REGISTERS_reg_2_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N779, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_2_6_port, QN => n_1033);
   REGISTERS_reg_2_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N779, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_2_5_port, QN => n_1034);
   REGISTERS_reg_2_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N779, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_2_4_port, QN => n_1035);
   REGISTERS_reg_2_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N779, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_2_3_port, QN => n_1036);
   REGISTERS_reg_2_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N779, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_2_2_port, QN => n_1037);
   REGISTERS_reg_2_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N779, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_2_1_port, QN => n_1038);
   REGISTERS_reg_2_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N779, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_2_0_port, QN => n_1039);
   REGISTERS_reg_3_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N778, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_3_7_port, QN => n_1040);
   REGISTERS_reg_3_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N778, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_3_6_port, QN => n_1041);
   REGISTERS_reg_3_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N778, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_3_5_port, QN => n_1042);
   REGISTERS_reg_3_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N778, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_3_4_port, QN => n_1043);
   REGISTERS_reg_3_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N778, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_3_3_port, QN => n_1044);
   REGISTERS_reg_3_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N778, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_3_2_port, QN => n_1045);
   REGISTERS_reg_3_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N778, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_3_1_port, QN => n_1046);
   REGISTERS_reg_3_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N778, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_3_0_port, QN => n_1047);
   REGISTERS_reg_4_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N777, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_4_7_port, QN => n_1048);
   REGISTERS_reg_4_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N777, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_4_6_port, QN => n_1049);
   REGISTERS_reg_4_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N777, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_4_5_port, QN => n_1050);
   REGISTERS_reg_4_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N777, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_4_4_port, QN => n_1051);
   REGISTERS_reg_4_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N777, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_4_3_port, QN => n_1052);
   REGISTERS_reg_4_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N777, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_4_2_port, QN => n_1053);
   REGISTERS_reg_4_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N777, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_4_1_port, QN => n_1054);
   REGISTERS_reg_4_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N777, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_4_0_port, QN => n_1055);
   REGISTERS_reg_5_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N776, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_5_7_port, QN => n_1056);
   REGISTERS_reg_5_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N776, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_5_6_port, QN => n_1057);
   REGISTERS_reg_5_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N776, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_5_5_port, QN => n_1058);
   REGISTERS_reg_5_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N776, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_5_4_port, QN => n_1059);
   REGISTERS_reg_5_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N776, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_5_3_port, QN => n_1060);
   REGISTERS_reg_5_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N776, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_5_2_port, QN => n_1061);
   REGISTERS_reg_5_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N776, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_5_1_port, QN => n_1062);
   REGISTERS_reg_5_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N776, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_5_0_port, QN => n_1063);
   REGISTERS_reg_6_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N775, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_6_7_port, QN => n_1064);
   REGISTERS_reg_6_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N775, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_6_6_port, QN => n_1065);
   REGISTERS_reg_6_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N775, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_6_5_port, QN => n_1066);
   REGISTERS_reg_6_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N775, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_6_4_port, QN => n_1067);
   REGISTERS_reg_6_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N775, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_6_3_port, QN => n_1068);
   REGISTERS_reg_6_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N775, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_6_2_port, QN => n_1069);
   REGISTERS_reg_6_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N775, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_6_1_port, QN => n_1070);
   REGISTERS_reg_6_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N775, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_6_0_port, QN => n_1071);
   REGISTERS_reg_7_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N774, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_7_7_port, QN => n_1072);
   REGISTERS_reg_7_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N774, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_7_6_port, QN => n_1073);
   REGISTERS_reg_7_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N774, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_7_5_port, QN => n_1074);
   REGISTERS_reg_7_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N774, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_7_4_port, QN => n_1075);
   REGISTERS_reg_7_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N774, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_7_3_port, QN => n_1076);
   REGISTERS_reg_7_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N774, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_7_2_port, QN => n_1077);
   REGISTERS_reg_7_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N774, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_7_1_port, QN => n_1078);
   REGISTERS_reg_7_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N774, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_7_0_port, QN => n_1079);
   REGISTERS_reg_8_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N773, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_8_7_port, QN => n_1080);
   REGISTERS_reg_8_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N773, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_8_6_port, QN => n_1081);
   REGISTERS_reg_8_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N773, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_8_5_port, QN => n_1082);
   REGISTERS_reg_8_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N773, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_8_4_port, QN => n_1083);
   REGISTERS_reg_8_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N773, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_8_3_port, QN => n_1084);
   REGISTERS_reg_8_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N773, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_8_2_port, QN => n_1085);
   REGISTERS_reg_8_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N773, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_8_1_port, QN => n_1086);
   REGISTERS_reg_8_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N773, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_8_0_port, QN => n_1087);
   REGISTERS_reg_9_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N772, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_9_7_port, QN => n_1088);
   REGISTERS_reg_9_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N772, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_9_6_port, QN => n_1089);
   REGISTERS_reg_9_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N772, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_9_5_port, QN => n_1090);
   REGISTERS_reg_9_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N772, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_9_4_port, QN => n_1091);
   REGISTERS_reg_9_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N772, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_9_3_port, QN => n_1092);
   REGISTERS_reg_9_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N772, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_9_2_port, QN => n_1093);
   REGISTERS_reg_9_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N772, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_9_1_port, QN => n_1094);
   REGISTERS_reg_9_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N772, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_9_0_port, QN => n_1095);
   REGISTERS_reg_10_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N771, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_10_7_port, QN => n_1096);
   REGISTERS_reg_10_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N771, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_10_6_port, QN => n_1097);
   REGISTERS_reg_10_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N771, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_10_5_port, QN => n_1098);
   REGISTERS_reg_10_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N771, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_10_4_port, QN => n_1099);
   REGISTERS_reg_10_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N771, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_10_3_port, QN => n_1100);
   REGISTERS_reg_10_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N771, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_10_2_port, QN => n_1101);
   REGISTERS_reg_10_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N771, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_10_1_port, QN => n_1102);
   REGISTERS_reg_10_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N771, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_10_0_port, QN => n_1103);
   REGISTERS_reg_11_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N770, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_11_7_port, QN => n_1104);
   REGISTERS_reg_11_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N770, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_11_6_port, QN => n_1105);
   REGISTERS_reg_11_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N770, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_11_5_port, QN => n_1106);
   REGISTERS_reg_11_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N770, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_11_4_port, QN => n_1107);
   REGISTERS_reg_11_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N770, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_11_3_port, QN => n_1108);
   REGISTERS_reg_11_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N770, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_11_2_port, QN => n_1109);
   REGISTERS_reg_11_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N770, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_11_1_port, QN => n_1110);
   REGISTERS_reg_11_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N770, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_11_0_port, QN => n_1111);
   REGISTERS_reg_12_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N769, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_12_7_port, QN => n_1112);
   REGISTERS_reg_12_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N769, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_12_6_port, QN => n_1113);
   REGISTERS_reg_12_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N769, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_12_5_port, QN => n_1114);
   REGISTERS_reg_12_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N769, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_12_4_port, QN => n_1115);
   REGISTERS_reg_12_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N769, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_12_3_port, QN => n_1116);
   REGISTERS_reg_12_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N769, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_12_2_port, QN => n_1117);
   REGISTERS_reg_12_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N769, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_12_1_port, QN => n_1118);
   REGISTERS_reg_12_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N769, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_12_0_port, QN => n_1119);
   REGISTERS_reg_13_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N768, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_13_7_port, QN => n_1120);
   REGISTERS_reg_13_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N768, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_13_6_port, QN => n_1121);
   REGISTERS_reg_13_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N768, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_13_5_port, QN => n_1122);
   REGISTERS_reg_13_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N768, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_13_4_port, QN => n_1123);
   REGISTERS_reg_13_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N768, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_13_3_port, QN => n_1124);
   REGISTERS_reg_13_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N768, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_13_2_port, QN => n_1125);
   REGISTERS_reg_13_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N768, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_13_1_port, QN => n_1126);
   REGISTERS_reg_13_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N768, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_13_0_port, QN => n_1127);
   REGISTERS_reg_14_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N767, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_14_7_port, QN => n_1128);
   REGISTERS_reg_14_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N767, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_14_6_port, QN => n_1129);
   REGISTERS_reg_14_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N767, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_14_5_port, QN => n_1130);
   REGISTERS_reg_14_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N767, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_14_4_port, QN => n_1131);
   REGISTERS_reg_14_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N767, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_14_3_port, QN => n_1132);
   REGISTERS_reg_14_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N767, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_14_2_port, QN => n_1133);
   REGISTERS_reg_14_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N767, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_14_1_port, QN => n_1134);
   REGISTERS_reg_14_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N767, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_14_0_port, QN => n_1135);
   REGISTERS_reg_15_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N766, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_15_7_port, QN => n_1136);
   REGISTERS_reg_15_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N766, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_15_6_port, QN => n_1137);
   REGISTERS_reg_15_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N766, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_15_5_port, QN => n_1138);
   REGISTERS_reg_15_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N766, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_15_4_port, QN => n_1139);
   REGISTERS_reg_15_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N766, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_15_3_port, QN => n_1140);
   REGISTERS_reg_15_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N766, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_15_2_port, QN => n_1141);
   REGISTERS_reg_15_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N766, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_15_1_port, QN => n_1142);
   REGISTERS_reg_15_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N766, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_15_0_port, QN => n_1143);
   REGISTERS_reg_16_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N765, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_16_7_port, QN => n_1144);
   REGISTERS_reg_16_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N765, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_16_6_port, QN => n_1145);
   REGISTERS_reg_16_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N765, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_16_5_port, QN => n_1146);
   REGISTERS_reg_16_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N765, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_16_4_port, QN => n_1147);
   REGISTERS_reg_16_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N765, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_16_3_port, QN => n_1148);
   REGISTERS_reg_16_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N765, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_16_2_port, QN => n_1149);
   REGISTERS_reg_16_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N765, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_16_1_port, QN => n_1150);
   REGISTERS_reg_16_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N765, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_16_0_port, QN => n_1151);
   REGISTERS_reg_17_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N764, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_17_7_port, QN => n_1152);
   REGISTERS_reg_17_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N764, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_17_6_port, QN => n_1153);
   REGISTERS_reg_17_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N764, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_17_5_port, QN => n_1154);
   REGISTERS_reg_17_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N764, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_17_4_port, QN => n_1155);
   REGISTERS_reg_17_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N764, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_17_3_port, QN => n_1156);
   REGISTERS_reg_17_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N764, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_17_2_port, QN => n_1157);
   REGISTERS_reg_17_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N764, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_17_1_port, QN => n_1158);
   REGISTERS_reg_17_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N764, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_17_0_port, QN => n_1159);
   REGISTERS_reg_18_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N763, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_18_7_port, QN => n_1160);
   REGISTERS_reg_18_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N763, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_18_6_port, QN => n_1161);
   REGISTERS_reg_18_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N763, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_18_5_port, QN => n_1162);
   REGISTERS_reg_18_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N763, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_18_4_port, QN => n_1163);
   REGISTERS_reg_18_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N763, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_18_3_port, QN => n_1164);
   REGISTERS_reg_18_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N763, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_18_2_port, QN => n_1165);
   REGISTERS_reg_18_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N763, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_18_1_port, QN => n_1166);
   REGISTERS_reg_18_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N763, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_18_0_port, QN => n_1167);
   REGISTERS_reg_19_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N762, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_19_7_port, QN => n_1168);
   REGISTERS_reg_19_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N762, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_19_6_port, QN => n_1169);
   REGISTERS_reg_19_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N762, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_19_5_port, QN => n_1170);
   REGISTERS_reg_19_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N762, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_19_4_port, QN => n_1171);
   REGISTERS_reg_19_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N762, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_19_3_port, QN => n_1172);
   REGISTERS_reg_19_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N762, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_19_2_port, QN => n_1173);
   REGISTERS_reg_19_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N762, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_19_1_port, QN => n_1174);
   REGISTERS_reg_19_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N762, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_19_0_port, QN => n_1175);
   REGISTERS_reg_20_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N761, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_20_7_port, QN => n_1176);
   REGISTERS_reg_20_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N761, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_20_6_port, QN => n_1177);
   REGISTERS_reg_20_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N761, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_20_5_port, QN => n_1178);
   REGISTERS_reg_20_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N761, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_20_4_port, QN => n_1179);
   REGISTERS_reg_20_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N761, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_20_3_port, QN => n_1180);
   REGISTERS_reg_20_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N761, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_20_2_port, QN => n_1181);
   REGISTERS_reg_20_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N761, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_20_1_port, QN => n_1182);
   REGISTERS_reg_20_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N761, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_20_0_port, QN => n_1183);
   REGISTERS_reg_21_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N760, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_21_7_port, QN => n_1184);
   REGISTERS_reg_21_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N760, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_21_6_port, QN => n_1185);
   REGISTERS_reg_21_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N760, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_21_5_port, QN => n_1186);
   REGISTERS_reg_21_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N760, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_21_4_port, QN => n_1187);
   REGISTERS_reg_21_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N760, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_21_3_port, QN => n_1188);
   REGISTERS_reg_21_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N760, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_21_2_port, QN => n_1189);
   REGISTERS_reg_21_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N760, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_21_1_port, QN => n_1190);
   REGISTERS_reg_21_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N760, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_21_0_port, QN => n_1191);
   REGISTERS_reg_22_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N759, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_22_7_port, QN => n_1192);
   REGISTERS_reg_22_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N759, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_22_6_port, QN => n_1193);
   REGISTERS_reg_22_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N759, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_22_5_port, QN => n_1194);
   REGISTERS_reg_22_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N759, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_22_4_port, QN => n_1195);
   REGISTERS_reg_22_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N759, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_22_3_port, QN => n_1196);
   REGISTERS_reg_22_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N759, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_22_2_port, QN => n_1197);
   REGISTERS_reg_22_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N759, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_22_1_port, QN => n_1198);
   REGISTERS_reg_22_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N759, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_22_0_port, QN => n_1199);
   REGISTERS_reg_23_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N758, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_23_7_port, QN => n_1200);
   REGISTERS_reg_23_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N758, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_23_6_port, QN => n_1201);
   REGISTERS_reg_23_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N758, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_23_5_port, QN => n_1202);
   REGISTERS_reg_23_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N758, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_23_4_port, QN => n_1203);
   REGISTERS_reg_23_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N758, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_23_3_port, QN => n_1204);
   REGISTERS_reg_23_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N758, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_23_2_port, QN => n_1205);
   REGISTERS_reg_23_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N758, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_23_1_port, QN => n_1206);
   REGISTERS_reg_23_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N758, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_23_0_port, QN => n_1207);
   REGISTERS_reg_24_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N757, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_24_7_port, QN => n_1208);
   REGISTERS_reg_24_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N757, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_24_6_port, QN => n_1209);
   REGISTERS_reg_24_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N757, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_24_5_port, QN => n_1210);
   REGISTERS_reg_24_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N757, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_24_4_port, QN => n_1211);
   REGISTERS_reg_24_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N757, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_24_3_port, QN => n_1212);
   REGISTERS_reg_24_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N757, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_24_2_port, QN => n_1213);
   REGISTERS_reg_24_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N757, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_24_1_port, QN => n_1214);
   REGISTERS_reg_24_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N757, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_24_0_port, QN => n_1215);
   REGISTERS_reg_25_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N756, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_25_7_port, QN => n_1216);
   REGISTERS_reg_25_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N756, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_25_6_port, QN => n_1217);
   REGISTERS_reg_25_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N756, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_25_5_port, QN => n_1218);
   REGISTERS_reg_25_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N756, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_25_4_port, QN => n_1219);
   REGISTERS_reg_25_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N756, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_25_3_port, QN => n_1220);
   REGISTERS_reg_25_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N756, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_25_2_port, QN => n_1221);
   REGISTERS_reg_25_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N756, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_25_1_port, QN => n_1222);
   REGISTERS_reg_25_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N756, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_25_0_port, QN => n_1223);
   REGISTERS_reg_26_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N755, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_26_7_port, QN => n_1224);
   REGISTERS_reg_26_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N755, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_26_6_port, QN => n_1225);
   REGISTERS_reg_26_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N755, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_26_5_port, QN => n_1226);
   REGISTERS_reg_26_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N755, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_26_4_port, QN => n_1227);
   REGISTERS_reg_26_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N755, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_26_3_port, QN => n_1228);
   REGISTERS_reg_26_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N755, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_26_2_port, QN => n_1229);
   REGISTERS_reg_26_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N755, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_26_1_port, QN => n_1230);
   REGISTERS_reg_26_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N755, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_26_0_port, QN => n_1231);
   REGISTERS_reg_27_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N754, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_27_7_port, QN => n_1232);
   REGISTERS_reg_27_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N754, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_27_6_port, QN => n_1233);
   REGISTERS_reg_27_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N754, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_27_5_port, QN => n_1234);
   REGISTERS_reg_27_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N754, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_27_4_port, QN => n_1235);
   REGISTERS_reg_27_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N754, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_27_3_port, QN => n_1236);
   REGISTERS_reg_27_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N754, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_27_2_port, QN => n_1237);
   REGISTERS_reg_27_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N754, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_27_1_port, QN => n_1238);
   REGISTERS_reg_27_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N754, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_27_0_port, QN => n_1239);
   REGISTERS_reg_28_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N753, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_28_7_port, QN => n_1240);
   REGISTERS_reg_28_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N753, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_28_6_port, QN => n_1241);
   REGISTERS_reg_28_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N753, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_28_5_port, QN => n_1242);
   REGISTERS_reg_28_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N753, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_28_4_port, QN => n_1243);
   REGISTERS_reg_28_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N753, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_28_3_port, QN => n_1244);
   REGISTERS_reg_28_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N753, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_28_2_port, QN => n_1245);
   REGISTERS_reg_28_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N753, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_28_1_port, QN => n_1246);
   REGISTERS_reg_28_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N753, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_28_0_port, QN => n_1247);
   REGISTERS_reg_29_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N752, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_29_7_port, QN => n_1248);
   REGISTERS_reg_29_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N752, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_29_6_port, QN => n_1249);
   REGISTERS_reg_29_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N752, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_29_5_port, QN => n_1250);
   REGISTERS_reg_29_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N752, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_29_4_port, QN => n_1251);
   REGISTERS_reg_29_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N752, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_29_3_port, QN => n_1252);
   REGISTERS_reg_29_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N752, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_29_2_port, QN => n_1253);
   REGISTERS_reg_29_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N752, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_29_1_port, QN => n_1254);
   REGISTERS_reg_29_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N752, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_29_0_port, QN => n_1255);
   REGISTERS_reg_30_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N751, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_30_7_port, QN => n_1256);
   REGISTERS_reg_30_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N751, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_30_6_port, QN => n_1257);
   REGISTERS_reg_30_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N751, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_30_5_port, QN => n_1258);
   REGISTERS_reg_30_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N751, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_30_4_port, QN => n_1259);
   REGISTERS_reg_30_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N751, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_30_3_port, QN => n_1260);
   REGISTERS_reg_30_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N751, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_30_2_port, QN => n_1261);
   REGISTERS_reg_30_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N751, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_30_1_port, QN => n_1262);
   REGISTERS_reg_30_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N751, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_30_0_port, QN => n_1263);
   REGISTERS_reg_31_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N750, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_31_7_port, QN => n_1264);
   REGISTERS_reg_31_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N750, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_31_6_port, QN => n_1265);
   REGISTERS_reg_31_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N750, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_31_5_port, QN => n_1266);
   REGISTERS_reg_31_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N750, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_31_4_port, QN => n_1267);
   REGISTERS_reg_31_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N750, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_31_3_port, QN => n_1268);
   REGISTERS_reg_31_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N750, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_31_2_port, QN => n_1269);
   REGISTERS_reg_31_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N750, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_31_1_port, QN => n_1270);
   REGISTERS_reg_31_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N750, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_31_0_port, QN => n_1271);
   REGISTERS_reg_32_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N749, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_32_7_port, QN => n_1272);
   REGISTERS_reg_32_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N749, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_32_6_port, QN => n_1273);
   REGISTERS_reg_32_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N749, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_32_5_port, QN => n_1274);
   REGISTERS_reg_32_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N749, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_32_4_port, QN => n_1275);
   REGISTERS_reg_32_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N749, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_32_3_port, QN => n_1276);
   REGISTERS_reg_32_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N749, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_32_2_port, QN => n_1277);
   REGISTERS_reg_32_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N749, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_32_1_port, QN => n_1278);
   REGISTERS_reg_32_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N749, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_32_0_port, QN => n_1279);
   REGISTERS_reg_33_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N748, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_33_7_port, QN => n_1280);
   REGISTERS_reg_33_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N748, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_33_6_port, QN => n_1281);
   REGISTERS_reg_33_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N748, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_33_5_port, QN => n_1282);
   REGISTERS_reg_33_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N748, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_33_4_port, QN => n_1283);
   REGISTERS_reg_33_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N748, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_33_3_port, QN => n_1284);
   REGISTERS_reg_33_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N748, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_33_2_port, QN => n_1285);
   REGISTERS_reg_33_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N748, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_33_1_port, QN => n_1286);
   REGISTERS_reg_33_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N748, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_33_0_port, QN => n_1287);
   REGISTERS_reg_34_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N747, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_34_7_port, QN => n_1288);
   REGISTERS_reg_34_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N747, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_34_6_port, QN => n_1289);
   REGISTERS_reg_34_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N747, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_34_5_port, QN => n_1290);
   REGISTERS_reg_34_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N747, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_34_4_port, QN => n_1291);
   REGISTERS_reg_34_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N747, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_34_3_port, QN => n_1292);
   REGISTERS_reg_34_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N747, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_34_2_port, QN => n_1293);
   REGISTERS_reg_34_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N747, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_34_1_port, QN => n_1294);
   REGISTERS_reg_34_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N747, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_34_0_port, QN => n_1295);
   REGISTERS_reg_35_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N746, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_35_7_port, QN => n_1296);
   REGISTERS_reg_35_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N746, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_35_6_port, QN => n_1297);
   REGISTERS_reg_35_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N746, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_35_5_port, QN => n_1298);
   REGISTERS_reg_35_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N746, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_35_4_port, QN => n_1299);
   REGISTERS_reg_35_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N746, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_35_3_port, QN => n_1300);
   REGISTERS_reg_35_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N746, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_35_2_port, QN => n_1301);
   REGISTERS_reg_35_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N746, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_35_1_port, QN => n_1302);
   REGISTERS_reg_35_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N746, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_35_0_port, QN => n_1303);
   REGISTERS_reg_36_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N745, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_36_7_port, QN => n_1304);
   REGISTERS_reg_36_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N745, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_36_6_port, QN => n_1305);
   REGISTERS_reg_36_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N745, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_36_5_port, QN => n_1306);
   REGISTERS_reg_36_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N745, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_36_4_port, QN => n_1307);
   REGISTERS_reg_36_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N745, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_36_3_port, QN => n_1308);
   REGISTERS_reg_36_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N745, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_36_2_port, QN => n_1309);
   REGISTERS_reg_36_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N745, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_36_1_port, QN => n_1310);
   REGISTERS_reg_36_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N745, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_36_0_port, QN => n_1311);
   REGISTERS_reg_37_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N744, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_37_7_port, QN => n_1312);
   REGISTERS_reg_37_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N744, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_37_6_port, QN => n_1313);
   REGISTERS_reg_37_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N744, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_37_5_port, QN => n_1314);
   REGISTERS_reg_37_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N744, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_37_4_port, QN => n_1315);
   REGISTERS_reg_37_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N744, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_37_3_port, QN => n_1316);
   REGISTERS_reg_37_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N744, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_37_2_port, QN => n_1317);
   REGISTERS_reg_37_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N744, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_37_1_port, QN => n_1318);
   REGISTERS_reg_37_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N744, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_37_0_port, QN => n_1319);
   REGISTERS_reg_38_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N743, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_38_7_port, QN => n_1320);
   REGISTERS_reg_38_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N743, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_38_6_port, QN => n_1321);
   REGISTERS_reg_38_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N743, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_38_5_port, QN => n_1322);
   REGISTERS_reg_38_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N743, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_38_4_port, QN => n_1323);
   REGISTERS_reg_38_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N743, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_38_3_port, QN => n_1324);
   REGISTERS_reg_38_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N743, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_38_2_port, QN => n_1325);
   REGISTERS_reg_38_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N743, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_38_1_port, QN => n_1326);
   REGISTERS_reg_38_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N743, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_38_0_port, QN => n_1327);
   REGISTERS_reg_39_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N742, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_39_7_port, QN => n_1328);
   REGISTERS_reg_39_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N742, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_39_6_port, QN => n_1329);
   REGISTERS_reg_39_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N742, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_39_5_port, QN => n_1330);
   REGISTERS_reg_39_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N742, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_39_4_port, QN => n_1331);
   REGISTERS_reg_39_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N742, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_39_3_port, QN => n_1332);
   REGISTERS_reg_39_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N742, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_39_2_port, QN => n_1333);
   REGISTERS_reg_39_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N742, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_39_1_port, QN => n_1334);
   REGISTERS_reg_39_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N742, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_39_0_port, QN => n_1335);
   REGISTERS_reg_40_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N741, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_40_7_port, QN => n_1336);
   REGISTERS_reg_40_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N741, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_40_6_port, QN => n_1337);
   REGISTERS_reg_40_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N741, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_40_5_port, QN => n_1338);
   REGISTERS_reg_40_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N741, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_40_4_port, QN => n_1339);
   REGISTERS_reg_40_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N741, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_40_3_port, QN => n_1340);
   REGISTERS_reg_40_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N741, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_40_2_port, QN => n_1341);
   REGISTERS_reg_40_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N741, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_40_1_port, QN => n_1342);
   REGISTERS_reg_40_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N741, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_40_0_port, QN => n_1343);
   REGISTERS_reg_41_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N740, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_41_7_port, QN => n_1344);
   REGISTERS_reg_41_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N740, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_41_6_port, QN => n_1345);
   REGISTERS_reg_41_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N740, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_41_5_port, QN => n_1346);
   REGISTERS_reg_41_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N740, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_41_4_port, QN => n_1347);
   REGISTERS_reg_41_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N740, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_41_3_port, QN => n_1348);
   REGISTERS_reg_41_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N740, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_41_2_port, QN => n_1349);
   REGISTERS_reg_41_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N740, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_41_1_port, QN => n_1350);
   REGISTERS_reg_41_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N740, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_41_0_port, QN => n_1351);
   REGISTERS_reg_42_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N739, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_42_7_port, QN => n_1352);
   REGISTERS_reg_42_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N739, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_42_6_port, QN => n_1353);
   REGISTERS_reg_42_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N739, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_42_5_port, QN => n_1354);
   REGISTERS_reg_42_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N739, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_42_4_port, QN => n_1355);
   REGISTERS_reg_42_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N739, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_42_3_port, QN => n_1356);
   REGISTERS_reg_42_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N739, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_42_2_port, QN => n_1357);
   REGISTERS_reg_42_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N739, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_42_1_port, QN => n_1358);
   REGISTERS_reg_42_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N739, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_42_0_port, QN => n_1359);
   REGISTERS_reg_43_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N738, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_43_7_port, QN => n_1360);
   REGISTERS_reg_43_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N738, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_43_6_port, QN => n_1361);
   REGISTERS_reg_43_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N738, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_43_5_port, QN => n_1362);
   REGISTERS_reg_43_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N738, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_43_4_port, QN => n_1363);
   REGISTERS_reg_43_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N738, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_43_3_port, QN => n_1364);
   REGISTERS_reg_43_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N738, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_43_2_port, QN => n_1365);
   REGISTERS_reg_43_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N738, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_43_1_port, QN => n_1366);
   REGISTERS_reg_43_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N738, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_43_0_port, QN => n_1367);
   REGISTERS_reg_44_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N729, next_state => N737, 
               clocked_on => CLK_port, Q => REGISTERS_44_7_port, QN => n_1368);
   REGISTERS_reg_44_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N729, next_state => N736, 
               clocked_on => CLK_port, Q => REGISTERS_44_6_port, QN => n_1369);
   REGISTERS_reg_44_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N729, next_state => N735, 
               clocked_on => CLK_port, Q => REGISTERS_44_5_port, QN => n_1370);
   REGISTERS_reg_44_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N729, next_state => N734, 
               clocked_on => CLK_port, Q => REGISTERS_44_4_port, QN => n_1371);
   REGISTERS_reg_44_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N729, next_state => N733, 
               clocked_on => CLK_port, Q => REGISTERS_44_3_port, QN => n_1372);
   REGISTERS_reg_44_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N729, next_state => N732, 
               clocked_on => CLK_port, Q => REGISTERS_44_2_port, QN => n_1373);
   REGISTERS_reg_44_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N729, next_state => N731, 
               clocked_on => CLK_port, Q => REGISTERS_44_1_port, QN => n_1374);
   REGISTERS_reg_44_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N729, next_state => N730, 
               clocked_on => CLK_port, Q => REGISTERS_44_0_port, QN => n_1375);
   OUT1_reg_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N782, next_state => N521, 
               clocked_on => CLK_port, Q => N810, QN => n_1376);
   OUT1_tri_enable_reg_7_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => net542, preset => net543, enable => X_Logic0_port,
               data_in => net544, synch_clear => X_Logic0_port, synch_preset =>
               X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable => 
               N782, next_state => N783, clocked_on => CLK_port, Q => N811, QN 
               => n_1377);
   OUT1_tri_7_inst : SYNOP_BASIC_THREE_STATE port map( function_port => N810, 
                           three_state => N8, output => OUT1(7));
   I_8 : GTECH_NOT port map( A => N812, Z => N8);
   OUT1_reg_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N782, next_state => N520, 
               clocked_on => CLK_port, Q => N813, QN => n_1378);
   OUT1_tri_enable_reg_6_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => net539, preset => net540, enable => X_Logic0_port,
               data_in => net541, synch_clear => X_Logic0_port, synch_preset =>
               X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable => 
               N782, next_state => N783, clocked_on => CLK_port, Q => N814, QN 
               => n_1379);
   OUT1_tri_6_inst : SYNOP_BASIC_THREE_STATE port map( function_port => N813, 
                           three_state => N9, output => OUT1(6));
   I_9 : GTECH_NOT port map( A => N815, Z => N9);
   OUT1_reg_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N782, next_state => N519, 
               clocked_on => CLK_port, Q => N816, QN => n_1380);
   OUT1_tri_enable_reg_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => net536, preset => net537, enable => X_Logic0_port,
               data_in => net538, synch_clear => X_Logic0_port, synch_preset =>
               X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable => 
               N782, next_state => N783, clocked_on => CLK_port, Q => N817, QN 
               => n_1381);
   OUT1_tri_5_inst : SYNOP_BASIC_THREE_STATE port map( function_port => N816, 
                           three_state => N10, output => OUT1(5));
   I_10 : GTECH_NOT port map( A => N818, Z => N10);
   OUT1_reg_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N782, next_state => N518, 
               clocked_on => CLK_port, Q => N819, QN => n_1382);
   OUT1_tri_enable_reg_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => net533, preset => net534, enable => X_Logic0_port,
               data_in => net535, synch_clear => X_Logic0_port, synch_preset =>
               X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable => 
               N782, next_state => N783, clocked_on => CLK_port, Q => N820, QN 
               => n_1383);
   OUT1_tri_4_inst : SYNOP_BASIC_THREE_STATE port map( function_port => N819, 
                           three_state => N11, output => OUT1(4));
   I_11 : GTECH_NOT port map( A => N821, Z => N11);
   OUT1_reg_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N782, next_state => N517, 
               clocked_on => CLK_port, Q => N822, QN => n_1384);
   OUT1_tri_enable_reg_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => net530, preset => net531, enable => X_Logic0_port,
               data_in => net532, synch_clear => X_Logic0_port, synch_preset =>
               X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable => 
               N782, next_state => N783, clocked_on => CLK_port, Q => N823, QN 
               => n_1385);
   OUT1_tri_3_inst : SYNOP_BASIC_THREE_STATE port map( function_port => N822, 
                           three_state => N12, output => OUT1(3));
   I_12 : GTECH_NOT port map( A => N824, Z => N12);
   OUT1_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N782, next_state => N516, 
               clocked_on => CLK_port, Q => N825, QN => n_1386);
   OUT1_tri_enable_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => net527, preset => net528, enable => X_Logic0_port,
               data_in => net529, synch_clear => X_Logic0_port, synch_preset =>
               X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable => 
               N782, next_state => N783, clocked_on => CLK_port, Q => N826, QN 
               => n_1387);
   OUT1_tri_2_inst : SYNOP_BASIC_THREE_STATE port map( function_port => N825, 
                           three_state => N13, output => OUT1(2));
   I_13 : GTECH_NOT port map( A => N827, Z => N13);
   OUT1_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N782, next_state => N515, 
               clocked_on => CLK_port, Q => N828, QN => n_1388);
   OUT1_tri_enable_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => net524, preset => net525, enable => X_Logic0_port,
               data_in => net526, synch_clear => X_Logic0_port, synch_preset =>
               X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable => 
               N782, next_state => N783, clocked_on => CLK_port, Q => N829, QN 
               => n_1389);
   OUT1_tri_1_inst : SYNOP_BASIC_THREE_STATE port map( function_port => N828, 
                           three_state => N14, output => OUT1(1));
   I_14 : GTECH_NOT port map( A => N830, Z => N14);
   OUT1_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N782, next_state => N513, 
               clocked_on => CLK_port, Q => N831, QN => n_1390);
   OUT1_tri_enable_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => net521, preset => net522, enable => X_Logic0_port,
               data_in => net523, synch_clear => X_Logic0_port, synch_preset =>
               X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable => 
               N782, next_state => N783, clocked_on => CLK_port, Q => N832, QN 
               => n_1391);
   OUT1_tri_0_inst : SYNOP_BASIC_THREE_STATE port map( function_port => N831, 
                           three_state => N15, output => OUT1(0));
   I_15 : GTECH_NOT port map( A => N833, Z => N15);
   I_16 : GTECH_NOT port map( A => RD2, Z => N834);
   I_17 : GTECH_NOT port map( A => RD1, Z => N835);
   I_18 : GTECH_NOT port map( A => RESET, Z => N836);
   I_19 : GTECH_NOT port map( A => ADD_WR(5), Z => N837);
   C4527 : GTECH_AND2 port map( A => ADD_WR(3), B => ADD_WR(4), Z => N838);
   C4528 : GTECH_AND2 port map( A => N16, B => ADD_WR(4), Z => N839);
   I_20 : GTECH_NOT port map( A => ADD_WR(3), Z => N16);
   C4529 : GTECH_AND2 port map( A => ADD_WR(3), B => N17, Z => N840);
   I_21 : GTECH_NOT port map( A => ADD_WR(4), Z => N17);
   C4530 : GTECH_AND2 port map( A => N18, B => N19, Z => N841);
   I_22 : GTECH_NOT port map( A => ADD_WR(3), Z => N18);
   I_23 : GTECH_NOT port map( A => ADD_WR(4), Z => N19);
   C4533 : GTECH_AND2 port map( A => ADD_WR(5), B => N840, Z => N842);
   C4534 : GTECH_AND2 port map( A => ADD_WR(5), B => N841, Z => N843);
   C4535 : GTECH_AND2 port map( A => N837, B => N838, Z => N844);
   C4536 : GTECH_AND2 port map( A => N837, B => N839, Z => N845);
   C4537 : GTECH_AND2 port map( A => N837, B => N840, Z => N846);
   C4538 : GTECH_AND2 port map( A => N837, B => N841, Z => N847);
   I_24 : GTECH_NOT port map( A => ADD_WR(2), Z => N848);
   C4540 : GTECH_AND2 port map( A => ADD_WR(0), B => ADD_WR(1), Z => N849);
   C4541 : GTECH_AND2 port map( A => N20, B => ADD_WR(1), Z => N850);
   I_25 : GTECH_NOT port map( A => ADD_WR(0), Z => N20);
   C4542 : GTECH_AND2 port map( A => ADD_WR(0), B => N21, Z => N851);
   I_26 : GTECH_NOT port map( A => ADD_WR(1), Z => N21);
   C4543 : GTECH_AND2 port map( A => N22, B => N23, Z => N852);
   I_27 : GTECH_NOT port map( A => ADD_WR(0), Z => N22);
   I_28 : GTECH_NOT port map( A => ADD_WR(1), Z => N23);
   C4544 : GTECH_AND2 port map( A => ADD_WR(2), B => N849, Z => N853);
   C4545 : GTECH_AND2 port map( A => ADD_WR(2), B => N850, Z => N854);
   C4546 : GTECH_AND2 port map( A => ADD_WR(2), B => N851, Z => N855);
   C4547 : GTECH_AND2 port map( A => ADD_WR(2), B => N852, Z => N856);
   C4548 : GTECH_AND2 port map( A => N848, B => N849, Z => N857);
   C4549 : GTECH_AND2 port map( A => N848, B => N850, Z => N858);
   C4550 : GTECH_AND2 port map( A => N848, B => N851, Z => N859);
   C4551 : GTECH_AND2 port map( A => N848, B => N852, Z => N860);
   C4571 : GTECH_AND2 port map( A => N842, B => N856, Z => N861);
   C4572 : GTECH_AND2 port map( A => N842, B => N857, Z => N862);
   C4573 : GTECH_AND2 port map( A => N842, B => N858, Z => N863);
   C4574 : GTECH_AND2 port map( A => N842, B => N859, Z => N864);
   C4575 : GTECH_AND2 port map( A => N842, B => N860, Z => N865);
   C4576 : GTECH_AND2 port map( A => N843, B => N853, Z => N866);
   C4577 : GTECH_AND2 port map( A => N843, B => N854, Z => N867);
   C4578 : GTECH_AND2 port map( A => N843, B => N855, Z => N868);
   C4579 : GTECH_AND2 port map( A => N843, B => N856, Z => N869);
   C4580 : GTECH_AND2 port map( A => N843, B => N857, Z => N870);
   C4581 : GTECH_AND2 port map( A => N843, B => N858, Z => N871);
   C4582 : GTECH_AND2 port map( A => N843, B => N859, Z => N872);
   C4583 : GTECH_AND2 port map( A => N843, B => N860, Z => N873);
   C4584 : GTECH_AND2 port map( A => N844, B => N853, Z => N874);
   C4585 : GTECH_AND2 port map( A => N844, B => N854, Z => N875);
   C4586 : GTECH_AND2 port map( A => N844, B => N855, Z => N876);
   C4587 : GTECH_AND2 port map( A => N844, B => N856, Z => N877);
   C4588 : GTECH_AND2 port map( A => N844, B => N857, Z => N878);
   C4589 : GTECH_AND2 port map( A => N844, B => N858, Z => N879);
   C4590 : GTECH_AND2 port map( A => N844, B => N859, Z => N880);
   C4591 : GTECH_AND2 port map( A => N844, B => N860, Z => N881);
   C4592 : GTECH_AND2 port map( A => N845, B => N853, Z => N882);
   C4593 : GTECH_AND2 port map( A => N845, B => N854, Z => N883);
   C4594 : GTECH_AND2 port map( A => N845, B => N855, Z => N884);
   C4595 : GTECH_AND2 port map( A => N845, B => N856, Z => N885);
   C4596 : GTECH_AND2 port map( A => N845, B => N857, Z => N886);
   C4597 : GTECH_AND2 port map( A => N845, B => N858, Z => N887);
   C4598 : GTECH_AND2 port map( A => N845, B => N859, Z => N888);
   C4599 : GTECH_AND2 port map( A => N845, B => N860, Z => N889);
   C4600 : GTECH_AND2 port map( A => N846, B => N853, Z => N890);
   C4601 : GTECH_AND2 port map( A => N846, B => N854, Z => N891);
   C4602 : GTECH_AND2 port map( A => N846, B => N855, Z => N892);
   C4603 : GTECH_AND2 port map( A => N846, B => N856, Z => N893);
   C4604 : GTECH_AND2 port map( A => N846, B => N857, Z => N894);
   C4605 : GTECH_AND2 port map( A => N846, B => N858, Z => N895);
   C4606 : GTECH_AND2 port map( A => N846, B => N859, Z => N896);
   C4607 : GTECH_AND2 port map( A => N846, B => N860, Z => N897);
   C4608 : GTECH_AND2 port map( A => N847, B => N853, Z => N898);
   C4609 : GTECH_AND2 port map( A => N847, B => N854, Z => N899);
   C4610 : GTECH_AND2 port map( A => N847, B => N855, Z => N900);
   C4611 : GTECH_AND2 port map( A => N847, B => N856, Z => N901);
   C4612 : GTECH_AND2 port map( A => N847, B => N857, Z => N902);
   C4613 : GTECH_AND2 port map( A => N847, B => N858, Z => N903);
   C4614 : GTECH_AND2 port map( A => N847, B => N859, Z => N904);
   C4615 : GTECH_AND2 port map( A => N847, B => N860, Z => N905);
   C4635_1 : GTECH_AND2 port map( A => N28, B => N29, Z => N24);
   C4635_2 : GTECH_AND2 port map( A => N24, B => N30, Z => N25);
   C4635_3 : GTECH_AND2 port map( A => N25, B => N31, Z => N26);
   C4635_4 : GTECH_AND2 port map( A => N26, B => N32, Z => N27);
   C4635_5 : GTECH_AND2 port map( A => N27, B => N33, Z => N522);
   I_29 : GTECH_NOT port map( A => ADD_RD2(5), Z => N28);
   I_30 : GTECH_NOT port map( A => ADD_RD2(4), Z => N29);
   I_31 : GTECH_NOT port map( A => ADD_RD2(3), Z => N30);
   I_32 : GTECH_NOT port map( A => ADD_RD2(2), Z => N31);
   I_33 : GTECH_NOT port map( A => ADD_RD2(0), Z => N32);
   I_34 : GTECH_NOT port map( A => ADD_RD2(1), Z => N33);
   C4636 : GTECH_AND5 port map( A => ADD_RD2(5), B => N34, C => N35, D => N36, 
                           E => N37, Z => N523);
   I_35 : GTECH_NOT port map( A => ADD_RD2(3), Z => N34);
   I_36 : GTECH_NOT port map( A => ADD_RD2(2), Z => N35);
   I_37 : GTECH_NOT port map( A => ADD_RD2(0), Z => N36);
   I_38 : GTECH_NOT port map( A => ADD_RD2(1), Z => N37);
   C4637_1 : GTECH_AND2 port map( A => N42, B => N43, Z => N38);
   C4637_2 : GTECH_AND2 port map( A => N38, B => N44, Z => N39);
   C4637_3 : GTECH_AND2 port map( A => N39, B => N45, Z => N40);
   C4637_4 : GTECH_AND2 port map( A => N40, B => ADD_RD2(0), Z => N41);
   C4637_5 : GTECH_AND2 port map( A => N41, B => N46, Z => N524);
   I_39 : GTECH_NOT port map( A => ADD_RD2(5), Z => N42);
   I_40 : GTECH_NOT port map( A => ADD_RD2(4), Z => N43);
   I_41 : GTECH_NOT port map( A => ADD_RD2(3), Z => N44);
   I_42 : GTECH_NOT port map( A => ADD_RD2(2), Z => N45);
   I_43 : GTECH_NOT port map( A => ADD_RD2(1), Z => N46);
   C4638_1 : GTECH_AND2 port map( A => N51, B => N52, Z => N47);
   C4638_2 : GTECH_AND2 port map( A => N47, B => N53, Z => N48);
   C4638_3 : GTECH_AND2 port map( A => N48, B => N54, Z => N49);
   C4638_4 : GTECH_AND2 port map( A => N49, B => N55, Z => N50);
   C4638_5 : GTECH_AND2 port map( A => N50, B => ADD_RD2(1), Z => N526);
   I_44 : GTECH_NOT port map( A => ADD_RD2(5), Z => N51);
   I_45 : GTECH_NOT port map( A => ADD_RD2(4), Z => N52);
   I_46 : GTECH_NOT port map( A => ADD_RD2(3), Z => N53);
   I_47 : GTECH_NOT port map( A => ADD_RD2(2), Z => N54);
   I_48 : GTECH_NOT port map( A => ADD_RD2(0), Z => N55);
   C4639_1 : GTECH_AND2 port map( A => N60, B => N61, Z => N56);
   C4639_2 : GTECH_AND2 port map( A => N56, B => N62, Z => N57);
   C4639_3 : GTECH_AND2 port map( A => N57, B => N63, Z => N58);
   C4639_4 : GTECH_AND2 port map( A => N58, B => ADD_RD2(0), Z => N59);
   C4639_5 : GTECH_AND2 port map( A => N59, B => ADD_RD2(1), Z => N528);
   I_49 : GTECH_NOT port map( A => ADD_RD2(5), Z => N60);
   I_50 : GTECH_NOT port map( A => ADD_RD2(4), Z => N61);
   I_51 : GTECH_NOT port map( A => ADD_RD2(3), Z => N62);
   I_52 : GTECH_NOT port map( A => ADD_RD2(2), Z => N63);
   C4640_1 : GTECH_AND2 port map( A => N68, B => N69, Z => N64);
   C4640_2 : GTECH_AND2 port map( A => N64, B => N70, Z => N65);
   C4640_3 : GTECH_AND2 port map( A => N65, B => ADD_RD2(2), Z => N66);
   C4640_4 : GTECH_AND2 port map( A => N66, B => N71, Z => N67);
   C4640_5 : GTECH_AND2 port map( A => N67, B => N72, Z => N530);
   I_53 : GTECH_NOT port map( A => ADD_RD2(5), Z => N68);
   I_54 : GTECH_NOT port map( A => ADD_RD2(4), Z => N69);
   I_55 : GTECH_NOT port map( A => ADD_RD2(3), Z => N70);
   I_56 : GTECH_NOT port map( A => ADD_RD2(0), Z => N71);
   I_57 : GTECH_NOT port map( A => ADD_RD2(1), Z => N72);
   C4641_1 : GTECH_AND2 port map( A => N77, B => N78, Z => N73);
   C4641_2 : GTECH_AND2 port map( A => N73, B => N79, Z => N74);
   C4641_3 : GTECH_AND2 port map( A => N74, B => ADD_RD2(2), Z => N75);
   C4641_4 : GTECH_AND2 port map( A => N75, B => ADD_RD2(0), Z => N76);
   C4641_5 : GTECH_AND2 port map( A => N76, B => N80, Z => N532);
   I_58 : GTECH_NOT port map( A => ADD_RD2(5), Z => N77);
   I_59 : GTECH_NOT port map( A => ADD_RD2(4), Z => N78);
   I_60 : GTECH_NOT port map( A => ADD_RD2(3), Z => N79);
   I_61 : GTECH_NOT port map( A => ADD_RD2(1), Z => N80);
   C4642_1 : GTECH_AND2 port map( A => N85, B => N86, Z => N81);
   C4642_2 : GTECH_AND2 port map( A => N81, B => N87, Z => N82);
   C4642_3 : GTECH_AND2 port map( A => N82, B => ADD_RD2(2), Z => N83);
   C4642_4 : GTECH_AND2 port map( A => N83, B => N88, Z => N84);
   C4642_5 : GTECH_AND2 port map( A => N84, B => ADD_RD2(1), Z => N534);
   I_62 : GTECH_NOT port map( A => ADD_RD2(5), Z => N85);
   I_63 : GTECH_NOT port map( A => ADD_RD2(4), Z => N86);
   I_64 : GTECH_NOT port map( A => ADD_RD2(3), Z => N87);
   I_65 : GTECH_NOT port map( A => ADD_RD2(0), Z => N88);
   C4643_1 : GTECH_AND2 port map( A => N93, B => N94, Z => N89);
   C4643_2 : GTECH_AND2 port map( A => N89, B => N95, Z => N90);
   C4643_3 : GTECH_AND2 port map( A => N90, B => ADD_RD2(2), Z => N91);
   C4643_4 : GTECH_AND2 port map( A => N91, B => ADD_RD2(0), Z => N92);
   C4643_5 : GTECH_AND2 port map( A => N92, B => ADD_RD2(1), Z => N536);
   I_66 : GTECH_NOT port map( A => ADD_RD2(5), Z => N93);
   I_67 : GTECH_NOT port map( A => ADD_RD2(4), Z => N94);
   I_68 : GTECH_NOT port map( A => ADD_RD2(3), Z => N95);
   C4644_1 : GTECH_AND2 port map( A => N100, B => N101, Z => N96);
   C4644_2 : GTECH_AND2 port map( A => N96, B => ADD_RD2(3), Z => N97);
   C4644_3 : GTECH_AND2 port map( A => N97, B => N102, Z => N98);
   C4644_4 : GTECH_AND2 port map( A => N98, B => N103, Z => N99);
   C4644_5 : GTECH_AND2 port map( A => N99, B => N104, Z => N538);
   I_69 : GTECH_NOT port map( A => ADD_RD2(5), Z => N100);
   I_70 : GTECH_NOT port map( A => ADD_RD2(4), Z => N101);
   I_71 : GTECH_NOT port map( A => ADD_RD2(2), Z => N102);
   I_72 : GTECH_NOT port map( A => ADD_RD2(0), Z => N103);
   I_73 : GTECH_NOT port map( A => ADD_RD2(1), Z => N104);
   C4645_1 : GTECH_AND2 port map( A => N109, B => N110, Z => N105);
   C4645_2 : GTECH_AND2 port map( A => N105, B => ADD_RD2(3), Z => N106);
   C4645_3 : GTECH_AND2 port map( A => N106, B => N111, Z => N107);
   C4645_4 : GTECH_AND2 port map( A => N107, B => ADD_RD2(0), Z => N108);
   C4645_5 : GTECH_AND2 port map( A => N108, B => N112, Z => N540);
   I_74 : GTECH_NOT port map( A => ADD_RD2(5), Z => N109);
   I_75 : GTECH_NOT port map( A => ADD_RD2(4), Z => N110);
   I_76 : GTECH_NOT port map( A => ADD_RD2(2), Z => N111);
   I_77 : GTECH_NOT port map( A => ADD_RD2(1), Z => N112);
   C4646_1 : GTECH_AND2 port map( A => N117, B => N118, Z => N113);
   C4646_2 : GTECH_AND2 port map( A => N113, B => ADD_RD2(3), Z => N114);
   C4646_3 : GTECH_AND2 port map( A => N114, B => N119, Z => N115);
   C4646_4 : GTECH_AND2 port map( A => N115, B => N120, Z => N116);
   C4646_5 : GTECH_AND2 port map( A => N116, B => ADD_RD2(1), Z => N542);
   I_78 : GTECH_NOT port map( A => ADD_RD2(5), Z => N117);
   I_79 : GTECH_NOT port map( A => ADD_RD2(4), Z => N118);
   I_80 : GTECH_NOT port map( A => ADD_RD2(2), Z => N119);
   I_81 : GTECH_NOT port map( A => ADD_RD2(0), Z => N120);
   C4647_1 : GTECH_AND2 port map( A => N125, B => N126, Z => N121);
   C4647_2 : GTECH_AND2 port map( A => N121, B => ADD_RD2(3), Z => N122);
   C4647_3 : GTECH_AND2 port map( A => N122, B => N127, Z => N123);
   C4647_4 : GTECH_AND2 port map( A => N123, B => ADD_RD2(0), Z => N124);
   C4647_5 : GTECH_AND2 port map( A => N124, B => ADD_RD2(1), Z => N544);
   I_82 : GTECH_NOT port map( A => ADD_RD2(5), Z => N125);
   I_83 : GTECH_NOT port map( A => ADD_RD2(4), Z => N126);
   I_84 : GTECH_NOT port map( A => ADD_RD2(2), Z => N127);
   C4648_1 : GTECH_AND2 port map( A => N132, B => N133, Z => N128);
   C4648_2 : GTECH_AND2 port map( A => N128, B => ADD_RD2(3), Z => N129);
   C4648_3 : GTECH_AND2 port map( A => N129, B => ADD_RD2(2), Z => N130);
   C4648_4 : GTECH_AND2 port map( A => N130, B => N134, Z => N131);
   C4648_5 : GTECH_AND2 port map( A => N131, B => N135, Z => N546);
   I_85 : GTECH_NOT port map( A => ADD_RD2(5), Z => N132);
   I_86 : GTECH_NOT port map( A => ADD_RD2(4), Z => N133);
   I_87 : GTECH_NOT port map( A => ADD_RD2(0), Z => N134);
   I_88 : GTECH_NOT port map( A => ADD_RD2(1), Z => N135);
   C4649 : GTECH_AND5 port map( A => N136, B => ADD_RD2(3), C => ADD_RD2(2), D 
                           => ADD_RD2(0), E => N137, Z => N548);
   I_89 : GTECH_NOT port map( A => ADD_RD2(4), Z => N136);
   I_90 : GTECH_NOT port map( A => ADD_RD2(1), Z => N137);
   C4650 : GTECH_AND5 port map( A => N138, B => ADD_RD2(3), C => ADD_RD2(2), D 
                           => N139, E => ADD_RD2(1), Z => N549);
   I_91 : GTECH_NOT port map( A => ADD_RD2(4), Z => N138);
   I_92 : GTECH_NOT port map( A => ADD_RD2(0), Z => N139);
   C4651 : GTECH_AND5 port map( A => N140, B => ADD_RD2(3), C => ADD_RD2(2), D 
                           => ADD_RD2(0), E => ADD_RD2(1), Z => N550);
   I_93 : GTECH_NOT port map( A => ADD_RD2(4), Z => N140);
   C4652 : GTECH_AND5 port map( A => ADD_RD2(4), B => N141, C => N142, D => 
                           N143, E => N144, Z => N551);
   I_94 : GTECH_NOT port map( A => ADD_RD2(3), Z => N141);
   I_95 : GTECH_NOT port map( A => ADD_RD2(2), Z => N142);
   I_96 : GTECH_NOT port map( A => ADD_RD2(0), Z => N143);
   I_97 : GTECH_NOT port map( A => ADD_RD2(1), Z => N144);
   C4653 : GTECH_AND5 port map( A => ADD_RD2(4), B => N145, C => N146, D => 
                           ADD_RD2(0), E => N147, Z => N552);
   I_98 : GTECH_NOT port map( A => ADD_RD2(3), Z => N145);
   I_99 : GTECH_NOT port map( A => ADD_RD2(2), Z => N146);
   I_100 : GTECH_NOT port map( A => ADD_RD2(1), Z => N147);
   C4654 : GTECH_AND5 port map( A => ADD_RD2(4), B => N148, C => N149, D => 
                           N150, E => ADD_RD2(1), Z => N553);
   I_101 : GTECH_NOT port map( A => ADD_RD2(3), Z => N148);
   I_102 : GTECH_NOT port map( A => ADD_RD2(2), Z => N149);
   I_103 : GTECH_NOT port map( A => ADD_RD2(0), Z => N150);
   C4655 : GTECH_AND5 port map( A => ADD_RD2(4), B => N151, C => N152, D => 
                           ADD_RD2(0), E => ADD_RD2(1), Z => N554);
   I_104 : GTECH_NOT port map( A => ADD_RD2(3), Z => N151);
   I_105 : GTECH_NOT port map( A => ADD_RD2(2), Z => N152);
   C4656 : GTECH_AND5 port map( A => ADD_RD2(4), B => N153, C => ADD_RD2(2), D 
                           => N154, E => N155, Z => N555);
   I_106 : GTECH_NOT port map( A => ADD_RD2(3), Z => N153);
   I_107 : GTECH_NOT port map( A => ADD_RD2(0), Z => N154);
   I_108 : GTECH_NOT port map( A => ADD_RD2(1), Z => N155);
   C4657 : GTECH_AND5 port map( A => ADD_RD2(4), B => N156, C => ADD_RD2(2), D 
                           => ADD_RD2(0), E => N157, Z => N556);
   I_109 : GTECH_NOT port map( A => ADD_RD2(3), Z => N156);
   I_110 : GTECH_NOT port map( A => ADD_RD2(1), Z => N157);
   C4658 : GTECH_AND5 port map( A => ADD_RD2(4), B => N158, C => ADD_RD2(2), D 
                           => N159, E => ADD_RD2(1), Z => N557);
   I_111 : GTECH_NOT port map( A => ADD_RD2(3), Z => N158);
   I_112 : GTECH_NOT port map( A => ADD_RD2(0), Z => N159);
   C4659 : GTECH_AND5 port map( A => ADD_RD2(4), B => N160, C => ADD_RD2(2), D 
                           => ADD_RD2(0), E => ADD_RD2(1), Z => N558);
   I_113 : GTECH_NOT port map( A => ADD_RD2(3), Z => N160);
   C4660 : GTECH_AND5 port map( A => ADD_RD2(4), B => ADD_RD2(3), C => N161, D 
                           => N162, E => N163, Z => N559);
   I_114 : GTECH_NOT port map( A => ADD_RD2(2), Z => N161);
   I_115 : GTECH_NOT port map( A => ADD_RD2(0), Z => N162);
   I_116 : GTECH_NOT port map( A => ADD_RD2(1), Z => N163);
   C4661 : GTECH_AND5 port map( A => ADD_RD2(4), B => ADD_RD2(3), C => N164, D 
                           => ADD_RD2(0), E => N165, Z => N560);
   I_117 : GTECH_NOT port map( A => ADD_RD2(2), Z => N164);
   I_118 : GTECH_NOT port map( A => ADD_RD2(1), Z => N165);
   C4662 : GTECH_AND5 port map( A => ADD_RD2(4), B => ADD_RD2(3), C => N166, D 
                           => N167, E => ADD_RD2(1), Z => N561);
   I_119 : GTECH_NOT port map( A => ADD_RD2(2), Z => N166);
   I_120 : GTECH_NOT port map( A => ADD_RD2(0), Z => N167);
   C4663 : GTECH_AND5 port map( A => ADD_RD2(4), B => ADD_RD2(3), C => N168, D 
                           => ADD_RD2(0), E => ADD_RD2(1), Z => N562);
   I_121 : GTECH_NOT port map( A => ADD_RD2(2), Z => N168);
   C4664 : GTECH_AND5 port map( A => ADD_RD2(4), B => ADD_RD2(3), C => 
                           ADD_RD2(2), D => N169, E => N170, Z => N563);
   I_122 : GTECH_NOT port map( A => ADD_RD2(0), Z => N169);
   I_123 : GTECH_NOT port map( A => ADD_RD2(1), Z => N170);
   C4665 : GTECH_AND5 port map( A => ADD_RD2(4), B => ADD_RD2(3), C => 
                           ADD_RD2(2), D => ADD_RD2(0), E => N171, Z => N564);
   I_124 : GTECH_NOT port map( A => ADD_RD2(1), Z => N171);
   C4666 : GTECH_AND5 port map( A => ADD_RD2(4), B => ADD_RD2(3), C => 
                           ADD_RD2(2), D => N172, E => ADD_RD2(1), Z => N565);
   I_125 : GTECH_NOT port map( A => ADD_RD2(0), Z => N172);
   C4667 : GTECH_AND5 port map( A => ADD_RD2(4), B => ADD_RD2(3), C => 
                           ADD_RD2(2), D => ADD_RD2(0), E => ADD_RD2(1), Z => 
                           N566);
   C4668 : GTECH_AND5 port map( A => ADD_RD2(5), B => N173, C => N174, D => 
                           ADD_RD2(0), E => N175, Z => N525);
   I_126 : GTECH_NOT port map( A => ADD_RD2(3), Z => N173);
   I_127 : GTECH_NOT port map( A => ADD_RD2(2), Z => N174);
   I_128 : GTECH_NOT port map( A => ADD_RD2(1), Z => N175);
   C4669 : GTECH_AND5 port map( A => ADD_RD2(5), B => N176, C => N177, D => 
                           N178, E => ADD_RD2(1), Z => N527);
   I_129 : GTECH_NOT port map( A => ADD_RD2(3), Z => N176);
   I_130 : GTECH_NOT port map( A => ADD_RD2(2), Z => N177);
   I_131 : GTECH_NOT port map( A => ADD_RD2(0), Z => N178);
   C4670 : GTECH_AND5 port map( A => ADD_RD2(5), B => N179, C => N180, D => 
                           ADD_RD2(0), E => ADD_RD2(1), Z => N529);
   I_132 : GTECH_NOT port map( A => ADD_RD2(3), Z => N179);
   I_133 : GTECH_NOT port map( A => ADD_RD2(2), Z => N180);
   C4671 : GTECH_AND5 port map( A => ADD_RD2(5), B => N181, C => ADD_RD2(2), D 
                           => N182, E => N183, Z => N531);
   I_134 : GTECH_NOT port map( A => ADD_RD2(3), Z => N181);
   I_135 : GTECH_NOT port map( A => ADD_RD2(0), Z => N182);
   I_136 : GTECH_NOT port map( A => ADD_RD2(1), Z => N183);
   C4672 : GTECH_AND4 port map( A => ADD_RD2(5), B => ADD_RD2(2), C => 
                           ADD_RD2(0), D => N184, Z => N533);
   I_137 : GTECH_NOT port map( A => ADD_RD2(1), Z => N184);
   C4673 : GTECH_AND4 port map( A => ADD_RD2(5), B => ADD_RD2(2), C => N185, D 
                           => ADD_RD2(1), Z => N535);
   I_138 : GTECH_NOT port map( A => ADD_RD2(0), Z => N185);
   C4674 : GTECH_AND4 port map( A => ADD_RD2(5), B => ADD_RD2(2), C => 
                           ADD_RD2(0), D => ADD_RD2(1), Z => N537);
   C4675 : GTECH_AND5 port map( A => ADD_RD2(5), B => ADD_RD2(3), C => N186, D 
                           => N187, E => N188, Z => N539);
   I_139 : GTECH_NOT port map( A => ADD_RD2(2), Z => N186);
   I_140 : GTECH_NOT port map( A => ADD_RD2(0), Z => N187);
   I_141 : GTECH_NOT port map( A => ADD_RD2(1), Z => N188);
   C4676 : GTECH_AND4 port map( A => ADD_RD2(5), B => ADD_RD2(3), C => 
                           ADD_RD2(0), D => N189, Z => N541);
   I_142 : GTECH_NOT port map( A => ADD_RD2(1), Z => N189);
   C4677 : GTECH_AND4 port map( A => ADD_RD2(5), B => ADD_RD2(3), C => N190, D 
                           => ADD_RD2(1), Z => N543);
   I_143 : GTECH_NOT port map( A => ADD_RD2(0), Z => N190);
   C4678 : GTECH_AND4 port map( A => ADD_RD2(5), B => ADD_RD2(3), C => 
                           ADD_RD2(0), D => ADD_RD2(1), Z => N545);
   C4679 : GTECH_AND3 port map( A => ADD_RD2(5), B => ADD_RD2(3), C => 
                           ADD_RD2(2), Z => N547);
   C4699_1 : GTECH_AND2 port map( A => N195, B => N196, Z => N191);
   C4699_2 : GTECH_AND2 port map( A => N191, B => N197, Z => N192);
   C4699_3 : GTECH_AND2 port map( A => N192, B => N198, Z => N193);
   C4699_4 : GTECH_AND2 port map( A => N193, B => N199, Z => N194);
   C4699_5 : GTECH_AND2 port map( A => N194, B => N200, Z => N459);
   I_144 : GTECH_NOT port map( A => ADD_RD1(5), Z => N195);
   I_145 : GTECH_NOT port map( A => ADD_RD1(4), Z => N196);
   I_146 : GTECH_NOT port map( A => ADD_RD1(3), Z => N197);
   I_147 : GTECH_NOT port map( A => ADD_RD1(2), Z => N198);
   I_148 : GTECH_NOT port map( A => ADD_RD1(0), Z => N199);
   I_149 : GTECH_NOT port map( A => ADD_RD1(1), Z => N200);
   C4700 : GTECH_AND5 port map( A => ADD_RD1(5), B => N201, C => N202, D => 
                           N203, E => N204, Z => N460);
   I_150 : GTECH_NOT port map( A => ADD_RD1(3), Z => N201);
   I_151 : GTECH_NOT port map( A => ADD_RD1(2), Z => N202);
   I_152 : GTECH_NOT port map( A => ADD_RD1(0), Z => N203);
   I_153 : GTECH_NOT port map( A => ADD_RD1(1), Z => N204);
   C4701_1 : GTECH_AND2 port map( A => N209, B => N210, Z => N205);
   C4701_2 : GTECH_AND2 port map( A => N205, B => N211, Z => N206);
   C4701_3 : GTECH_AND2 port map( A => N206, B => N212, Z => N207);
   C4701_4 : GTECH_AND2 port map( A => N207, B => ADD_RD1(0), Z => N208);
   C4701_5 : GTECH_AND2 port map( A => N208, B => N213, Z => N461);
   I_154 : GTECH_NOT port map( A => ADD_RD1(5), Z => N209);
   I_155 : GTECH_NOT port map( A => ADD_RD1(4), Z => N210);
   I_156 : GTECH_NOT port map( A => ADD_RD1(3), Z => N211);
   I_157 : GTECH_NOT port map( A => ADD_RD1(2), Z => N212);
   I_158 : GTECH_NOT port map( A => ADD_RD1(1), Z => N213);
   C4702_1 : GTECH_AND2 port map( A => N218, B => N219, Z => N214);
   C4702_2 : GTECH_AND2 port map( A => N214, B => N220, Z => N215);
   C4702_3 : GTECH_AND2 port map( A => N215, B => N221, Z => N216);
   C4702_4 : GTECH_AND2 port map( A => N216, B => N222, Z => N217);
   C4702_5 : GTECH_AND2 port map( A => N217, B => ADD_RD1(1), Z => N463);
   I_159 : GTECH_NOT port map( A => ADD_RD1(5), Z => N218);
   I_160 : GTECH_NOT port map( A => ADD_RD1(4), Z => N219);
   I_161 : GTECH_NOT port map( A => ADD_RD1(3), Z => N220);
   I_162 : GTECH_NOT port map( A => ADD_RD1(2), Z => N221);
   I_163 : GTECH_NOT port map( A => ADD_RD1(0), Z => N222);
   C4703_1 : GTECH_AND2 port map( A => N227, B => N228, Z => N223);
   C4703_2 : GTECH_AND2 port map( A => N223, B => N229, Z => N224);
   C4703_3 : GTECH_AND2 port map( A => N224, B => N230, Z => N225);
   C4703_4 : GTECH_AND2 port map( A => N225, B => ADD_RD1(0), Z => N226);
   C4703_5 : GTECH_AND2 port map( A => N226, B => ADD_RD1(1), Z => N465);
   I_164 : GTECH_NOT port map( A => ADD_RD1(5), Z => N227);
   I_165 : GTECH_NOT port map( A => ADD_RD1(4), Z => N228);
   I_166 : GTECH_NOT port map( A => ADD_RD1(3), Z => N229);
   I_167 : GTECH_NOT port map( A => ADD_RD1(2), Z => N230);
   C4704_1 : GTECH_AND2 port map( A => N235, B => N236, Z => N231);
   C4704_2 : GTECH_AND2 port map( A => N231, B => N237, Z => N232);
   C4704_3 : GTECH_AND2 port map( A => N232, B => ADD_RD1(2), Z => N233);
   C4704_4 : GTECH_AND2 port map( A => N233, B => N238, Z => N234);
   C4704_5 : GTECH_AND2 port map( A => N234, B => N239, Z => N467);
   I_168 : GTECH_NOT port map( A => ADD_RD1(5), Z => N235);
   I_169 : GTECH_NOT port map( A => ADD_RD1(4), Z => N236);
   I_170 : GTECH_NOT port map( A => ADD_RD1(3), Z => N237);
   I_171 : GTECH_NOT port map( A => ADD_RD1(0), Z => N238);
   I_172 : GTECH_NOT port map( A => ADD_RD1(1), Z => N239);
   C4705_1 : GTECH_AND2 port map( A => N244, B => N245, Z => N240);
   C4705_2 : GTECH_AND2 port map( A => N240, B => N246, Z => N241);
   C4705_3 : GTECH_AND2 port map( A => N241, B => ADD_RD1(2), Z => N242);
   C4705_4 : GTECH_AND2 port map( A => N242, B => ADD_RD1(0), Z => N243);
   C4705_5 : GTECH_AND2 port map( A => N243, B => N247, Z => N469);
   I_173 : GTECH_NOT port map( A => ADD_RD1(5), Z => N244);
   I_174 : GTECH_NOT port map( A => ADD_RD1(4), Z => N245);
   I_175 : GTECH_NOT port map( A => ADD_RD1(3), Z => N246);
   I_176 : GTECH_NOT port map( A => ADD_RD1(1), Z => N247);
   C4706_1 : GTECH_AND2 port map( A => N252, B => N253, Z => N248);
   C4706_2 : GTECH_AND2 port map( A => N248, B => N254, Z => N249);
   C4706_3 : GTECH_AND2 port map( A => N249, B => ADD_RD1(2), Z => N250);
   C4706_4 : GTECH_AND2 port map( A => N250, B => N255, Z => N251);
   C4706_5 : GTECH_AND2 port map( A => N251, B => ADD_RD1(1), Z => N471);
   I_177 : GTECH_NOT port map( A => ADD_RD1(5), Z => N252);
   I_178 : GTECH_NOT port map( A => ADD_RD1(4), Z => N253);
   I_179 : GTECH_NOT port map( A => ADD_RD1(3), Z => N254);
   I_180 : GTECH_NOT port map( A => ADD_RD1(0), Z => N255);
   C4707_1 : GTECH_AND2 port map( A => N260, B => N261, Z => N256);
   C4707_2 : GTECH_AND2 port map( A => N256, B => N262, Z => N257);
   C4707_3 : GTECH_AND2 port map( A => N257, B => ADD_RD1(2), Z => N258);
   C4707_4 : GTECH_AND2 port map( A => N258, B => ADD_RD1(0), Z => N259);
   C4707_5 : GTECH_AND2 port map( A => N259, B => ADD_RD1(1), Z => N473);
   I_181 : GTECH_NOT port map( A => ADD_RD1(5), Z => N260);
   I_182 : GTECH_NOT port map( A => ADD_RD1(4), Z => N261);
   I_183 : GTECH_NOT port map( A => ADD_RD1(3), Z => N262);
   C4708_1 : GTECH_AND2 port map( A => N267, B => N268, Z => N263);
   C4708_2 : GTECH_AND2 port map( A => N263, B => ADD_RD1(3), Z => N264);
   C4708_3 : GTECH_AND2 port map( A => N264, B => N269, Z => N265);
   C4708_4 : GTECH_AND2 port map( A => N265, B => N270, Z => N266);
   C4708_5 : GTECH_AND2 port map( A => N266, B => N271, Z => N475);
   I_184 : GTECH_NOT port map( A => ADD_RD1(5), Z => N267);
   I_185 : GTECH_NOT port map( A => ADD_RD1(4), Z => N268);
   I_186 : GTECH_NOT port map( A => ADD_RD1(2), Z => N269);
   I_187 : GTECH_NOT port map( A => ADD_RD1(0), Z => N270);
   I_188 : GTECH_NOT port map( A => ADD_RD1(1), Z => N271);
   C4709_1 : GTECH_AND2 port map( A => N276, B => N277, Z => N272);
   C4709_2 : GTECH_AND2 port map( A => N272, B => ADD_RD1(3), Z => N273);
   C4709_3 : GTECH_AND2 port map( A => N273, B => N278, Z => N274);
   C4709_4 : GTECH_AND2 port map( A => N274, B => ADD_RD1(0), Z => N275);
   C4709_5 : GTECH_AND2 port map( A => N275, B => N279, Z => N477);
   I_189 : GTECH_NOT port map( A => ADD_RD1(5), Z => N276);
   I_190 : GTECH_NOT port map( A => ADD_RD1(4), Z => N277);
   I_191 : GTECH_NOT port map( A => ADD_RD1(2), Z => N278);
   I_192 : GTECH_NOT port map( A => ADD_RD1(1), Z => N279);
   C4710_1 : GTECH_AND2 port map( A => N284, B => N285, Z => N280);
   C4710_2 : GTECH_AND2 port map( A => N280, B => ADD_RD1(3), Z => N281);
   C4710_3 : GTECH_AND2 port map( A => N281, B => N286, Z => N282);
   C4710_4 : GTECH_AND2 port map( A => N282, B => N287, Z => N283);
   C4710_5 : GTECH_AND2 port map( A => N283, B => ADD_RD1(1), Z => N479);
   I_193 : GTECH_NOT port map( A => ADD_RD1(5), Z => N284);
   I_194 : GTECH_NOT port map( A => ADD_RD1(4), Z => N285);
   I_195 : GTECH_NOT port map( A => ADD_RD1(2), Z => N286);
   I_196 : GTECH_NOT port map( A => ADD_RD1(0), Z => N287);
   C4711_1 : GTECH_AND2 port map( A => N292, B => N293, Z => N288);
   C4711_2 : GTECH_AND2 port map( A => N288, B => ADD_RD1(3), Z => N289);
   C4711_3 : GTECH_AND2 port map( A => N289, B => N294, Z => N290);
   C4711_4 : GTECH_AND2 port map( A => N290, B => ADD_RD1(0), Z => N291);
   C4711_5 : GTECH_AND2 port map( A => N291, B => ADD_RD1(1), Z => N481);
   I_197 : GTECH_NOT port map( A => ADD_RD1(5), Z => N292);
   I_198 : GTECH_NOT port map( A => ADD_RD1(4), Z => N293);
   I_199 : GTECH_NOT port map( A => ADD_RD1(2), Z => N294);
   C4712_1 : GTECH_AND2 port map( A => N299, B => N300, Z => N295);
   C4712_2 : GTECH_AND2 port map( A => N295, B => ADD_RD1(3), Z => N296);
   C4712_3 : GTECH_AND2 port map( A => N296, B => ADD_RD1(2), Z => N297);
   C4712_4 : GTECH_AND2 port map( A => N297, B => N301, Z => N298);
   C4712_5 : GTECH_AND2 port map( A => N298, B => N302, Z => N483);
   I_200 : GTECH_NOT port map( A => ADD_RD1(5), Z => N299);
   I_201 : GTECH_NOT port map( A => ADD_RD1(4), Z => N300);
   I_202 : GTECH_NOT port map( A => ADD_RD1(0), Z => N301);
   I_203 : GTECH_NOT port map( A => ADD_RD1(1), Z => N302);
   C4713 : GTECH_AND5 port map( A => N303, B => ADD_RD1(3), C => ADD_RD1(2), D 
                           => ADD_RD1(0), E => N304, Z => N485);
   I_204 : GTECH_NOT port map( A => ADD_RD1(4), Z => N303);
   I_205 : GTECH_NOT port map( A => ADD_RD1(1), Z => N304);
   C4714 : GTECH_AND5 port map( A => N305, B => ADD_RD1(3), C => ADD_RD1(2), D 
                           => N306, E => ADD_RD1(1), Z => N486);
   I_206 : GTECH_NOT port map( A => ADD_RD1(4), Z => N305);
   I_207 : GTECH_NOT port map( A => ADD_RD1(0), Z => N306);
   C4715 : GTECH_AND5 port map( A => N307, B => ADD_RD1(3), C => ADD_RD1(2), D 
                           => ADD_RD1(0), E => ADD_RD1(1), Z => N487);
   I_208 : GTECH_NOT port map( A => ADD_RD1(4), Z => N307);
   C4716 : GTECH_AND5 port map( A => ADD_RD1(4), B => N308, C => N309, D => 
                           N310, E => N311, Z => N488);
   I_209 : GTECH_NOT port map( A => ADD_RD1(3), Z => N308);
   I_210 : GTECH_NOT port map( A => ADD_RD1(2), Z => N309);
   I_211 : GTECH_NOT port map( A => ADD_RD1(0), Z => N310);
   I_212 : GTECH_NOT port map( A => ADD_RD1(1), Z => N311);
   C4717 : GTECH_AND5 port map( A => ADD_RD1(4), B => N312, C => N313, D => 
                           ADD_RD1(0), E => N314, Z => N489);
   I_213 : GTECH_NOT port map( A => ADD_RD1(3), Z => N312);
   I_214 : GTECH_NOT port map( A => ADD_RD1(2), Z => N313);
   I_215 : GTECH_NOT port map( A => ADD_RD1(1), Z => N314);
   C4718 : GTECH_AND5 port map( A => ADD_RD1(4), B => N315, C => N316, D => 
                           N317, E => ADD_RD1(1), Z => N490);
   I_216 : GTECH_NOT port map( A => ADD_RD1(3), Z => N315);
   I_217 : GTECH_NOT port map( A => ADD_RD1(2), Z => N316);
   I_218 : GTECH_NOT port map( A => ADD_RD1(0), Z => N317);
   C4719 : GTECH_AND5 port map( A => ADD_RD1(4), B => N318, C => N319, D => 
                           ADD_RD1(0), E => ADD_RD1(1), Z => N491);
   I_219 : GTECH_NOT port map( A => ADD_RD1(3), Z => N318);
   I_220 : GTECH_NOT port map( A => ADD_RD1(2), Z => N319);
   C4720 : GTECH_AND5 port map( A => ADD_RD1(4), B => N320, C => ADD_RD1(2), D 
                           => N321, E => N322, Z => N492);
   I_221 : GTECH_NOT port map( A => ADD_RD1(3), Z => N320);
   I_222 : GTECH_NOT port map( A => ADD_RD1(0), Z => N321);
   I_223 : GTECH_NOT port map( A => ADD_RD1(1), Z => N322);
   C4721 : GTECH_AND5 port map( A => ADD_RD1(4), B => N323, C => ADD_RD1(2), D 
                           => ADD_RD1(0), E => N324, Z => N493);
   I_224 : GTECH_NOT port map( A => ADD_RD1(3), Z => N323);
   I_225 : GTECH_NOT port map( A => ADD_RD1(1), Z => N324);
   C4722 : GTECH_AND5 port map( A => ADD_RD1(4), B => N325, C => ADD_RD1(2), D 
                           => N326, E => ADD_RD1(1), Z => N494);
   I_226 : GTECH_NOT port map( A => ADD_RD1(3), Z => N325);
   I_227 : GTECH_NOT port map( A => ADD_RD1(0), Z => N326);
   C4723 : GTECH_AND5 port map( A => ADD_RD1(4), B => N327, C => ADD_RD1(2), D 
                           => ADD_RD1(0), E => ADD_RD1(1), Z => N495);
   I_228 : GTECH_NOT port map( A => ADD_RD1(3), Z => N327);
   C4724 : GTECH_AND5 port map( A => ADD_RD1(4), B => ADD_RD1(3), C => N328, D 
                           => N329, E => N330, Z => N496);
   I_229 : GTECH_NOT port map( A => ADD_RD1(2), Z => N328);
   I_230 : GTECH_NOT port map( A => ADD_RD1(0), Z => N329);
   I_231 : GTECH_NOT port map( A => ADD_RD1(1), Z => N330);
   C4725 : GTECH_AND5 port map( A => ADD_RD1(4), B => ADD_RD1(3), C => N331, D 
                           => ADD_RD1(0), E => N332, Z => N497);
   I_232 : GTECH_NOT port map( A => ADD_RD1(2), Z => N331);
   I_233 : GTECH_NOT port map( A => ADD_RD1(1), Z => N332);
   C4726 : GTECH_AND5 port map( A => ADD_RD1(4), B => ADD_RD1(3), C => N333, D 
                           => N334, E => ADD_RD1(1), Z => N498);
   I_234 : GTECH_NOT port map( A => ADD_RD1(2), Z => N333);
   I_235 : GTECH_NOT port map( A => ADD_RD1(0), Z => N334);
   C4727 : GTECH_AND5 port map( A => ADD_RD1(4), B => ADD_RD1(3), C => N335, D 
                           => ADD_RD1(0), E => ADD_RD1(1), Z => N499);
   I_236 : GTECH_NOT port map( A => ADD_RD1(2), Z => N335);
   C4728 : GTECH_AND5 port map( A => ADD_RD1(4), B => ADD_RD1(3), C => 
                           ADD_RD1(2), D => N336, E => N337, Z => N500);
   I_237 : GTECH_NOT port map( A => ADD_RD1(0), Z => N336);
   I_238 : GTECH_NOT port map( A => ADD_RD1(1), Z => N337);
   C4729 : GTECH_AND5 port map( A => ADD_RD1(4), B => ADD_RD1(3), C => 
                           ADD_RD1(2), D => ADD_RD1(0), E => N338, Z => N501);
   I_239 : GTECH_NOT port map( A => ADD_RD1(1), Z => N338);
   C4730 : GTECH_AND5 port map( A => ADD_RD1(4), B => ADD_RD1(3), C => 
                           ADD_RD1(2), D => N339, E => ADD_RD1(1), Z => N502);
   I_240 : GTECH_NOT port map( A => ADD_RD1(0), Z => N339);
   C4731 : GTECH_AND5 port map( A => ADD_RD1(4), B => ADD_RD1(3), C => 
                           ADD_RD1(2), D => ADD_RD1(0), E => ADD_RD1(1), Z => 
                           N503);
   C4732 : GTECH_AND5 port map( A => ADD_RD1(5), B => N340, C => N341, D => 
                           ADD_RD1(0), E => N342, Z => N462);
   I_241 : GTECH_NOT port map( A => ADD_RD1(3), Z => N340);
   I_242 : GTECH_NOT port map( A => ADD_RD1(2), Z => N341);
   I_243 : GTECH_NOT port map( A => ADD_RD1(1), Z => N342);
   C4733 : GTECH_AND5 port map( A => ADD_RD1(5), B => N343, C => N344, D => 
                           N345, E => ADD_RD1(1), Z => N464);
   I_244 : GTECH_NOT port map( A => ADD_RD1(3), Z => N343);
   I_245 : GTECH_NOT port map( A => ADD_RD1(2), Z => N344);
   I_246 : GTECH_NOT port map( A => ADD_RD1(0), Z => N345);
   C4734 : GTECH_AND5 port map( A => ADD_RD1(5), B => N346, C => N347, D => 
                           ADD_RD1(0), E => ADD_RD1(1), Z => N466);
   I_247 : GTECH_NOT port map( A => ADD_RD1(3), Z => N346);
   I_248 : GTECH_NOT port map( A => ADD_RD1(2), Z => N347);
   C4735 : GTECH_AND5 port map( A => ADD_RD1(5), B => N348, C => ADD_RD1(2), D 
                           => N349, E => N350, Z => N468);
   I_249 : GTECH_NOT port map( A => ADD_RD1(3), Z => N348);
   I_250 : GTECH_NOT port map( A => ADD_RD1(0), Z => N349);
   I_251 : GTECH_NOT port map( A => ADD_RD1(1), Z => N350);
   C4736 : GTECH_AND4 port map( A => ADD_RD1(5), B => ADD_RD1(2), C => 
                           ADD_RD1(0), D => N351, Z => N470);
   I_252 : GTECH_NOT port map( A => ADD_RD1(1), Z => N351);
   C4737 : GTECH_AND4 port map( A => ADD_RD1(5), B => ADD_RD1(2), C => N352, D 
                           => ADD_RD1(1), Z => N472);
   I_253 : GTECH_NOT port map( A => ADD_RD1(0), Z => N352);
   C4738 : GTECH_AND4 port map( A => ADD_RD1(5), B => ADD_RD1(2), C => 
                           ADD_RD1(0), D => ADD_RD1(1), Z => N474);
   C4739 : GTECH_AND5 port map( A => ADD_RD1(5), B => ADD_RD1(3), C => N353, D 
                           => N354, E => N355, Z => N476);
   I_254 : GTECH_NOT port map( A => ADD_RD1(2), Z => N353);
   I_255 : GTECH_NOT port map( A => ADD_RD1(0), Z => N354);
   I_256 : GTECH_NOT port map( A => ADD_RD1(1), Z => N355);
   C4740 : GTECH_AND4 port map( A => ADD_RD1(5), B => ADD_RD1(3), C => 
                           ADD_RD1(0), D => N356, Z => N478);
   I_257 : GTECH_NOT port map( A => ADD_RD1(1), Z => N356);
   C4741 : GTECH_AND4 port map( A => ADD_RD1(5), B => ADD_RD1(3), C => N357, D 
                           => ADD_RD1(1), Z => N480);
   I_258 : GTECH_NOT port map( A => ADD_RD1(0), Z => N357);
   C4742 : GTECH_AND4 port map( A => ADD_RD1(5), B => ADD_RD1(3), C => 
                           ADD_RD1(0), D => ADD_RD1(1), Z => N482);
   C4743 : GTECH_AND3 port map( A => ADD_RD1(5), B => ADD_RD1(3), C => 
                           ADD_RD1(2), Z => N484);
   C4744_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => X_Logic1_port, 
         -- Connections to port 'DATA2'
         DATA(1) => N835, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N358, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N359, 
         -- Connections to port 'Z'
         Z(0) => N512 );
   B_0 : GTECH_BUF port map( A => RD1, Z => N358);
   B_1 : GTECH_BUF port map( A => N835, Z => N359);
   C4745_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 8 )
      port map(
         -- Connections to port 'DATA1'
         DATA(7) => N504, DATA(6) => N505, DATA(5) => N506, DATA(4) => N507, 
               DATA(3) => N508, DATA(2) => N509, DATA(1) => N510, DATA(0) => 
               N511, 
         -- Connections to port 'DATA2'
         DATA(15) => X_Logic0_port, DATA(14) => X_Logic0_port, DATA(13) => 
               X_Logic0_port, DATA(12) => X_Logic0_port, DATA(11) => 
               X_Logic0_port, DATA(10) => X_Logic0_port, DATA(9) => 
               X_Logic0_port, DATA(8) => X_Logic0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N358, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N359, 
         -- Connections to port 'Z'
         Z(7) => N521, Z(6) => N520, Z(5) => N519, Z(4) => N518, Z(3) => N517, 
               Z(2) => N516, Z(1) => N515, Z(0) => N513 );
   C4746_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(1) => N835, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N358, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N359, 
         -- Connections to port 'Z'
         Z(0) => N514 );
   C4747_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => X_Logic1_port, 
         -- Connections to port 'DATA2'
         DATA(1) => N834, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N360, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N361, 
         -- Connections to port 'Z'
         Z(0) => N575 );
   B_2 : GTECH_BUF port map( A => RD2, Z => N360);
   B_3 : GTECH_BUF port map( A => N834, Z => N361);
   C4748_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 8 )
      port map(
         -- Connections to port 'DATA1'
         DATA(7) => N567, DATA(6) => N568, DATA(5) => N569, DATA(4) => N570, 
               DATA(3) => N571, DATA(2) => N572, DATA(1) => N573, DATA(0) => 
               N574, 
         -- Connections to port 'DATA2'
         DATA(15) => X_Logic0_port, DATA(14) => X_Logic0_port, DATA(13) => 
               X_Logic0_port, DATA(12) => X_Logic0_port, DATA(11) => 
               X_Logic0_port, DATA(10) => X_Logic0_port, DATA(9) => 
               X_Logic0_port, DATA(8) => X_Logic0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N360, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N361, 
         -- Connections to port 'Z'
         Z(7) => N584, Z(6) => N583, Z(5) => N582, Z(4) => N581, Z(3) => N580, 
               Z(2) => N579, Z(1) => N578, Z(0) => N576 );
   C4749_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(1) => N834, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N360, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N361, 
         -- Connections to port 'Z'
         Z(0) => N577 );
   C4750_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 45 )
      port map(
         -- Connections to port 'DATA1'
         DATA(44) => N905, DATA(43) => N904, DATA(42) => N903, DATA(41) => N902
               , DATA(40) => N901, DATA(39) => N900, DATA(38) => N899, DATA(37)
               => N898, DATA(36) => N897, DATA(35) => N896, DATA(34) => N895, 
               DATA(33) => N894, DATA(32) => N893, DATA(31) => N892, DATA(30) 
               => N891, DATA(29) => N890, DATA(28) => N889, DATA(27) => N888, 
               DATA(26) => N887, DATA(25) => N886, DATA(24) => N885, DATA(23) 
               => N884, DATA(22) => N883, DATA(21) => N882, DATA(20) => N881, 
               DATA(19) => N880, DATA(18) => N879, DATA(17) => N878, DATA(16) 
               => N877, DATA(15) => N876, DATA(14) => N875, DATA(13) => N874, 
               DATA(12) => N873, DATA(11) => N872, DATA(10) => N871, DATA(9) =>
               N870, DATA(8) => N869, DATA(7) => N868, DATA(6) => N867, DATA(5)
               => N866, DATA(4) => N865, DATA(3) => N864, DATA(2) => N863, 
               DATA(1) => N862, DATA(0) => N861, 
         -- Connections to port 'DATA2'
         DATA(89) => X_Logic0_port, DATA(88) => X_Logic0_port, DATA(87) => 
               X_Logic0_port, DATA(86) => X_Logic0_port, DATA(85) => 
               X_Logic0_port, DATA(84) => X_Logic0_port, DATA(83) => 
               X_Logic0_port, DATA(82) => X_Logic0_port, DATA(81) => 
               X_Logic0_port, DATA(80) => X_Logic0_port, DATA(79) => 
               X_Logic0_port, DATA(78) => X_Logic0_port, DATA(77) => 
               X_Logic0_port, DATA(76) => X_Logic0_port, DATA(75) => 
               X_Logic0_port, DATA(74) => X_Logic0_port, DATA(73) => 
               X_Logic0_port, DATA(72) => X_Logic0_port, DATA(71) => 
               X_Logic0_port, DATA(70) => X_Logic0_port, DATA(69) => 
               X_Logic0_port, DATA(68) => X_Logic0_port, DATA(67) => 
               X_Logic0_port, DATA(66) => X_Logic0_port, DATA(65) => 
               X_Logic0_port, DATA(64) => X_Logic0_port, DATA(63) => 
               X_Logic0_port, DATA(62) => X_Logic0_port, DATA(61) => 
               X_Logic0_port, DATA(60) => X_Logic0_port, DATA(59) => 
               X_Logic0_port, DATA(58) => X_Logic0_port, DATA(57) => 
               X_Logic0_port, DATA(56) => X_Logic0_port, DATA(55) => 
               X_Logic0_port, DATA(54) => X_Logic0_port, DATA(53) => 
               X_Logic0_port, DATA(52) => X_Logic0_port, DATA(51) => 
               X_Logic0_port, DATA(50) => X_Logic0_port, DATA(49) => 
               X_Logic0_port, DATA(48) => X_Logic0_port, DATA(47) => 
               X_Logic0_port, DATA(46) => X_Logic0_port, DATA(45) => 
               X_Logic0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N362, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N363, 
         -- Connections to port 'Z'
         Z(44) => N630, Z(43) => N629, Z(42) => N628, Z(41) => N627, Z(40) => 
               N626, Z(39) => N625, Z(38) => N624, Z(37) => N623, Z(36) => N622
               , Z(35) => N621, Z(34) => N620, Z(33) => N619, Z(32) => N618, 
               Z(31) => N617, Z(30) => N616, Z(29) => N615, Z(28) => N614, 
               Z(27) => N613, Z(26) => N612, Z(25) => N611, Z(24) => N610, 
               Z(23) => N609, Z(22) => N608, Z(21) => N607, Z(20) => N606, 
               Z(19) => N605, Z(18) => N604, Z(17) => N603, Z(16) => N602, 
               Z(15) => N601, Z(14) => N600, Z(13) => N599, Z(12) => N598, 
               Z(11) => N597, Z(10) => N596, Z(9) => N595, Z(8) => N594, Z(7) 
               => N593, Z(6) => N592, Z(5) => N591, Z(4) => N590, Z(3) => N589,
               Z(2) => N588, Z(1) => N587, Z(0) => N586 );
   B_4 : GTECH_BUF port map( A => WR, Z => N362);
   B_5 : GTECH_BUF port map( A => N585, Z => N363);
   C4751_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => N512, 
         -- Connections to port 'DATA2'
         DATA(1) => X_Logic1_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N364, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N365, 
         -- Connections to port 'Z'
         Z(0) => N631 );
   B_6 : GTECH_BUF port map( A => ENABLE, Z => N364);
   B_7 : GTECH_BUF port map( A => N458, Z => N365);
   C4752_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => N514, 
         -- Connections to port 'DATA2'
         DATA(1) => X_Logic1_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N364, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N365, 
         -- Connections to port 'Z'
         Z(0) => N632 );
   C4753_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => N575, 
         -- Connections to port 'DATA2'
         DATA(1) => X_Logic1_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N364, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N365, 
         -- Connections to port 'Z'
         Z(0) => N633 );
   C4754_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => N577, 
         -- Connections to port 'DATA2'
         DATA(1) => X_Logic1_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N364, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N365, 
         -- Connections to port 'Z'
         Z(0) => N634 );
   C4755_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 45 )
      port map(
         -- Connections to port 'DATA1'
         DATA(44) => N630, DATA(43) => N629, DATA(42) => N628, DATA(41) => N627
               , DATA(40) => N626, DATA(39) => N625, DATA(38) => N624, DATA(37)
               => N623, DATA(36) => N622, DATA(35) => N621, DATA(34) => N620, 
               DATA(33) => N619, DATA(32) => N618, DATA(31) => N617, DATA(30) 
               => N616, DATA(29) => N615, DATA(28) => N614, DATA(27) => N613, 
               DATA(26) => N612, DATA(25) => N611, DATA(24) => N610, DATA(23) 
               => N609, DATA(22) => N608, DATA(21) => N607, DATA(20) => N606, 
               DATA(19) => N605, DATA(18) => N604, DATA(17) => N603, DATA(16) 
               => N602, DATA(15) => N601, DATA(14) => N600, DATA(13) => N599, 
               DATA(12) => N598, DATA(11) => N597, DATA(10) => N596, DATA(9) =>
               N595, DATA(8) => N594, DATA(7) => N593, DATA(6) => N592, DATA(5)
               => N591, DATA(4) => N590, DATA(3) => N589, DATA(2) => N588, 
               DATA(1) => N587, DATA(0) => N586, 
         -- Connections to port 'DATA2'
         DATA(89) => X_Logic0_port, DATA(88) => X_Logic0_port, DATA(87) => 
               X_Logic0_port, DATA(86) => X_Logic0_port, DATA(85) => 
               X_Logic0_port, DATA(84) => X_Logic0_port, DATA(83) => 
               X_Logic0_port, DATA(82) => X_Logic0_port, DATA(81) => 
               X_Logic0_port, DATA(80) => X_Logic0_port, DATA(79) => 
               X_Logic0_port, DATA(78) => X_Logic0_port, DATA(77) => 
               X_Logic0_port, DATA(76) => X_Logic0_port, DATA(75) => 
               X_Logic0_port, DATA(74) => X_Logic0_port, DATA(73) => 
               X_Logic0_port, DATA(72) => X_Logic0_port, DATA(71) => 
               X_Logic0_port, DATA(70) => X_Logic0_port, DATA(69) => 
               X_Logic0_port, DATA(68) => X_Logic0_port, DATA(67) => 
               X_Logic0_port, DATA(66) => X_Logic0_port, DATA(65) => 
               X_Logic0_port, DATA(64) => X_Logic0_port, DATA(63) => 
               X_Logic0_port, DATA(62) => X_Logic0_port, DATA(61) => 
               X_Logic0_port, DATA(60) => X_Logic0_port, DATA(59) => 
               X_Logic0_port, DATA(58) => X_Logic0_port, DATA(57) => 
               X_Logic0_port, DATA(56) => X_Logic0_port, DATA(55) => 
               X_Logic0_port, DATA(54) => X_Logic0_port, DATA(53) => 
               X_Logic0_port, DATA(52) => X_Logic0_port, DATA(51) => 
               X_Logic0_port, DATA(50) => X_Logic0_port, DATA(49) => 
               X_Logic0_port, DATA(48) => X_Logic0_port, DATA(47) => 
               X_Logic0_port, DATA(46) => X_Logic0_port, DATA(45) => 
               X_Logic0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N364, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N365, 
         -- Connections to port 'Z'
         Z(44) => N679, Z(43) => N678, Z(42) => N677, Z(41) => N676, Z(40) => 
               N675, Z(39) => N674, Z(38) => N673, Z(37) => N672, Z(36) => N671
               , Z(35) => N670, Z(34) => N669, Z(33) => N668, Z(32) => N667, 
               Z(31) => N666, Z(30) => N665, Z(29) => N664, Z(28) => N663, 
               Z(27) => N662, Z(26) => N661, Z(25) => N660, Z(24) => N659, 
               Z(23) => N658, Z(22) => N657, Z(21) => N656, Z(20) => N655, 
               Z(19) => N654, Z(18) => N653, Z(17) => N652, Z(16) => N651, 
               Z(15) => N650, Z(14) => N649, Z(13) => N648, Z(12) => N647, 
               Z(11) => N646, Z(10) => N645, Z(9) => N644, Z(8) => N643, Z(7) 
               => N642, Z(6) => N641, Z(5) => N640, Z(4) => N639, Z(3) => N638,
               Z(2) => N637, Z(1) => N636, Z(0) => N635 );
   C4756_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 45 )
      port map(
         -- Connections to port 'DATA1'
         DATA(44) => N679, DATA(43) => N678, DATA(42) => N677, DATA(41) => N676
               , DATA(40) => N675, DATA(39) => N674, DATA(38) => N673, DATA(37)
               => N672, DATA(36) => N671, DATA(35) => N670, DATA(34) => N669, 
               DATA(33) => N668, DATA(32) => N667, DATA(31) => N666, DATA(30) 
               => N665, DATA(29) => N664, DATA(28) => N663, DATA(27) => N662, 
               DATA(26) => N661, DATA(25) => N660, DATA(24) => N659, DATA(23) 
               => N658, DATA(22) => N657, DATA(21) => N656, DATA(20) => N655, 
               DATA(19) => N654, DATA(18) => N653, DATA(17) => N652, DATA(16) 
               => N651, DATA(15) => N650, DATA(14) => N649, DATA(13) => N648, 
               DATA(12) => N647, DATA(11) => N646, DATA(10) => N645, DATA(9) =>
               N644, DATA(8) => N643, DATA(7) => N642, DATA(6) => N641, DATA(5)
               => N640, DATA(4) => N639, DATA(3) => N638, DATA(2) => N637, 
               DATA(1) => N636, DATA(0) => N635, 
         -- Connections to port 'DATA2'
         DATA(89) => X_Logic0_port, DATA(88) => X_Logic0_port, DATA(87) => 
               X_Logic0_port, DATA(86) => X_Logic0_port, DATA(85) => 
               X_Logic0_port, DATA(84) => X_Logic0_port, DATA(83) => 
               X_Logic0_port, DATA(82) => X_Logic0_port, DATA(81) => 
               X_Logic0_port, DATA(80) => X_Logic0_port, DATA(79) => 
               X_Logic0_port, DATA(78) => X_Logic0_port, DATA(77) => 
               X_Logic0_port, DATA(76) => X_Logic0_port, DATA(75) => 
               X_Logic0_port, DATA(74) => X_Logic0_port, DATA(73) => 
               X_Logic0_port, DATA(72) => X_Logic0_port, DATA(71) => 
               X_Logic0_port, DATA(70) => X_Logic0_port, DATA(69) => 
               X_Logic0_port, DATA(68) => X_Logic0_port, DATA(67) => 
               X_Logic0_port, DATA(66) => X_Logic0_port, DATA(65) => 
               X_Logic0_port, DATA(64) => X_Logic0_port, DATA(63) => 
               X_Logic0_port, DATA(62) => X_Logic0_port, DATA(61) => 
               X_Logic0_port, DATA(60) => X_Logic0_port, DATA(59) => 
               X_Logic0_port, DATA(58) => X_Logic0_port, DATA(57) => 
               X_Logic0_port, DATA(56) => X_Logic0_port, DATA(55) => 
               X_Logic0_port, DATA(54) => X_Logic0_port, DATA(53) => 
               X_Logic0_port, DATA(52) => X_Logic0_port, DATA(51) => 
               X_Logic0_port, DATA(50) => X_Logic0_port, DATA(49) => 
               X_Logic0_port, DATA(48) => X_Logic0_port, DATA(47) => 
               X_Logic0_port, DATA(46) => X_Logic0_port, DATA(45) => 
               X_Logic0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N366, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N367, 
         -- Connections to port 'Z'
         Z(44) => N724, Z(43) => N723, Z(42) => N722, Z(41) => N721, Z(40) => 
               N720, Z(39) => N719, Z(38) => N718, Z(37) => N717, Z(36) => N716
               , Z(35) => N715, Z(34) => N714, Z(33) => N713, Z(32) => N712, 
               Z(31) => N711, Z(30) => N710, Z(29) => N709, Z(28) => N708, 
               Z(27) => N707, Z(26) => N706, Z(25) => N705, Z(24) => N704, 
               Z(23) => N703, Z(22) => N702, Z(21) => N701, Z(20) => N700, 
               Z(19) => N699, Z(18) => N698, Z(17) => N697, Z(16) => N696, 
               Z(15) => N695, Z(14) => N694, Z(13) => N693, Z(12) => N692, 
               Z(11) => N691, Z(10) => N690, Z(9) => N689, Z(8) => N688, Z(7) 
               => N687, Z(6) => N686, Z(5) => N685, Z(4) => N684, Z(3) => N683,
               Z(2) => N682, Z(1) => N681, Z(0) => N680 );
   B_8 : GTECH_BUF port map( A => N836, Z => N366);
   B_9 : GTECH_BUF port map( A => RESET, Z => N367);
   C4757_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => N631, 
         -- Connections to port 'DATA2'
         DATA(1) => X_Logic0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N366, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N367, 
         -- Connections to port 'Z'
         Z(0) => N725 );
   C4758_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => N632, 
         -- Connections to port 'DATA2'
         DATA(1) => X_Logic0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N366, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N367, 
         -- Connections to port 'Z'
         Z(0) => N726 );
   C4759_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => N633, 
         -- Connections to port 'DATA2'
         DATA(1) => X_Logic0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N366, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N367, 
         -- Connections to port 'Z'
         Z(0) => N727 );
   C4760_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => N634, 
         -- Connections to port 'DATA2'
         DATA(1) => X_Logic0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N366, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N367, 
         -- Connections to port 'Z'
         Z(0) => N728 );
   C4761_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 45 )
      port map(
         -- Connections to port 'DATA1'
         DATA(44) => X_Logic1_port, DATA(43) => X_Logic1_port, DATA(42) => 
               X_Logic1_port, DATA(41) => X_Logic1_port, DATA(40) => 
               X_Logic1_port, DATA(39) => X_Logic1_port, DATA(38) => 
               X_Logic1_port, DATA(37) => X_Logic1_port, DATA(36) => 
               X_Logic1_port, DATA(35) => X_Logic1_port, DATA(34) => 
               X_Logic1_port, DATA(33) => X_Logic1_port, DATA(32) => 
               X_Logic1_port, DATA(31) => X_Logic1_port, DATA(30) => 
               X_Logic1_port, DATA(29) => X_Logic1_port, DATA(28) => 
               X_Logic1_port, DATA(27) => X_Logic1_port, DATA(26) => 
               X_Logic1_port, DATA(25) => X_Logic1_port, DATA(24) => 
               X_Logic1_port, DATA(23) => X_Logic1_port, DATA(22) => 
               X_Logic1_port, DATA(21) => X_Logic1_port, DATA(20) => 
               X_Logic1_port, DATA(19) => X_Logic1_port, DATA(18) => 
               X_Logic1_port, DATA(17) => X_Logic1_port, DATA(16) => 
               X_Logic1_port, DATA(15) => X_Logic1_port, DATA(14) => 
               X_Logic1_port, DATA(13) => X_Logic1_port, DATA(12) => 
               X_Logic1_port, DATA(11) => X_Logic1_port, DATA(10) => 
               X_Logic1_port, DATA(9) => X_Logic1_port, DATA(8) => 
               X_Logic1_port, DATA(7) => X_Logic1_port, DATA(6) => 
               X_Logic1_port, DATA(5) => X_Logic1_port, DATA(4) => 
               X_Logic1_port, DATA(3) => X_Logic1_port, DATA(2) => 
               X_Logic1_port, DATA(1) => X_Logic1_port, DATA(0) => 
               X_Logic1_port, 
         -- Connections to port 'DATA2'
         DATA(89) => N724, DATA(88) => N723, DATA(87) => N722, DATA(86) => N721
               , DATA(85) => N720, DATA(84) => N719, DATA(83) => N718, DATA(82)
               => N717, DATA(81) => N716, DATA(80) => N715, DATA(79) => N714, 
               DATA(78) => N713, DATA(77) => N712, DATA(76) => N711, DATA(75) 
               => N710, DATA(74) => N709, DATA(73) => N708, DATA(72) => N707, 
               DATA(71) => N706, DATA(70) => N705, DATA(69) => N704, DATA(68) 
               => N703, DATA(67) => N702, DATA(66) => N701, DATA(65) => N700, 
               DATA(64) => N699, DATA(63) => N698, DATA(62) => N697, DATA(61) 
               => N696, DATA(60) => N695, DATA(59) => N694, DATA(58) => N693, 
               DATA(57) => N692, DATA(56) => N691, DATA(55) => N690, DATA(54) 
               => N689, DATA(53) => N688, DATA(52) => N687, DATA(51) => N686, 
               DATA(50) => N685, DATA(49) => N684, DATA(48) => N683, DATA(47) 
               => N682, DATA(46) => N681, DATA(45) => N680, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N367, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N366, 
         -- Connections to port 'Z'
         Z(44) => N781, Z(43) => N780, Z(42) => N779, Z(41) => N778, Z(40) => 
               N777, Z(39) => N776, Z(38) => N775, Z(37) => N774, Z(36) => N773
               , Z(35) => N772, Z(34) => N771, Z(33) => N770, Z(32) => N769, 
               Z(31) => N768, Z(30) => N767, Z(29) => N766, Z(28) => N765, 
               Z(27) => N764, Z(26) => N763, Z(25) => N762, Z(24) => N761, 
               Z(23) => N760, Z(22) => N759, Z(21) => N758, Z(20) => N757, 
               Z(19) => N756, Z(18) => N755, Z(17) => N754, Z(16) => N753, 
               Z(15) => N752, Z(14) => N751, Z(13) => N750, Z(12) => N749, 
               Z(11) => N748, Z(10) => N747, Z(9) => N746, Z(8) => N745, Z(7) 
               => N744, Z(6) => N743, Z(5) => N742, Z(4) => N741, Z(3) => N740,
               Z(2) => N739, Z(1) => N738, Z(0) => N729 );
   C4762_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 8 )
      port map(
         -- Connections to port 'DATA1'
         DATA(7) => X_Logic0_port, DATA(6) => X_Logic0_port, DATA(5) => 
               X_Logic0_port, DATA(4) => X_Logic0_port, DATA(3) => 
               X_Logic0_port, DATA(2) => X_Logic0_port, DATA(1) => 
               X_Logic0_port, DATA(0) => X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(15) => DATAIN_7_port, DATA(14) => DATAIN_6_port, DATA(13) => 
               DATAIN_5_port, DATA(12) => DATAIN_4_port, DATA(11) => 
               DATAIN_3_port, DATA(10) => DATAIN_2_port, DATA(9) => 
               DATAIN_1_port, DATA(8) => DATAIN_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N367, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N366, 
         -- Connections to port 'Z'
         Z(7) => N737, Z(6) => N736, Z(5) => N735, Z(4) => N734, Z(3) => N733, 
               Z(2) => N732, Z(1) => N731, Z(0) => N730 );
   C4763_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(1) => N725, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N367, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N366, 
         -- Connections to port 'Z'
         Z(0) => N782 );
   C4764_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(1) => N726, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N367, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N366, 
         -- Connections to port 'Z'
         Z(0) => N783 );
   C4765_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(1) => N727, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N367, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N366, 
         -- Connections to port 'Z'
         Z(0) => N784 );
   C4766_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(1) => N728, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N367, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N366, 
         -- Connections to port 'Z'
         Z(0) => N785 );
   C4767_cell : SELECT_OP
      generic map ( num_inputs => 45, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => REGISTERS_0_7_port, 
         -- Connections to port 'DATA2'
         DATA(1) => REGISTERS_1_7_port, 
         -- Connections to port 'DATA3'
         DATA(2) => REGISTERS_2_7_port, 
         -- Connections to port 'DATA4'
         DATA(3) => REGISTERS_3_7_port, 
         -- Connections to port 'DATA5'
         DATA(4) => REGISTERS_4_7_port, 
         -- Connections to port 'DATA6'
         DATA(5) => REGISTERS_5_7_port, 
         -- Connections to port 'DATA7'
         DATA(6) => REGISTERS_6_7_port, 
         -- Connections to port 'DATA8'
         DATA(7) => REGISTERS_7_7_port, 
         -- Connections to port 'DATA9'
         DATA(8) => REGISTERS_8_7_port, 
         -- Connections to port 'DATA10'
         DATA(9) => REGISTERS_9_7_port, 
         -- Connections to port 'DATA11'
         DATA(10) => REGISTERS_10_7_port, 
         -- Connections to port 'DATA12'
         DATA(11) => REGISTERS_11_7_port, 
         -- Connections to port 'DATA13'
         DATA(12) => REGISTERS_12_7_port, 
         -- Connections to port 'DATA14'
         DATA(13) => REGISTERS_13_7_port, 
         -- Connections to port 'DATA15'
         DATA(14) => REGISTERS_14_7_port, 
         -- Connections to port 'DATA16'
         DATA(15) => REGISTERS_15_7_port, 
         -- Connections to port 'DATA17'
         DATA(16) => REGISTERS_16_7_port, 
         -- Connections to port 'DATA18'
         DATA(17) => REGISTERS_17_7_port, 
         -- Connections to port 'DATA19'
         DATA(18) => REGISTERS_18_7_port, 
         -- Connections to port 'DATA20'
         DATA(19) => REGISTERS_19_7_port, 
         -- Connections to port 'DATA21'
         DATA(20) => REGISTERS_20_7_port, 
         -- Connections to port 'DATA22'
         DATA(21) => REGISTERS_21_7_port, 
         -- Connections to port 'DATA23'
         DATA(22) => REGISTERS_22_7_port, 
         -- Connections to port 'DATA24'
         DATA(23) => REGISTERS_23_7_port, 
         -- Connections to port 'DATA25'
         DATA(24) => REGISTERS_24_7_port, 
         -- Connections to port 'DATA26'
         DATA(25) => REGISTERS_25_7_port, 
         -- Connections to port 'DATA27'
         DATA(26) => REGISTERS_26_7_port, 
         -- Connections to port 'DATA28'
         DATA(27) => REGISTERS_27_7_port, 
         -- Connections to port 'DATA29'
         DATA(28) => REGISTERS_28_7_port, 
         -- Connections to port 'DATA30'
         DATA(29) => REGISTERS_29_7_port, 
         -- Connections to port 'DATA31'
         DATA(30) => REGISTERS_30_7_port, 
         -- Connections to port 'DATA32'
         DATA(31) => REGISTERS_31_7_port, 
         -- Connections to port 'DATA33'
         DATA(32) => REGISTERS_32_7_port, 
         -- Connections to port 'DATA34'
         DATA(33) => REGISTERS_33_7_port, 
         -- Connections to port 'DATA35'
         DATA(34) => REGISTERS_34_7_port, 
         -- Connections to port 'DATA36'
         DATA(35) => REGISTERS_35_7_port, 
         -- Connections to port 'DATA37'
         DATA(36) => REGISTERS_36_7_port, 
         -- Connections to port 'DATA38'
         DATA(37) => REGISTERS_37_7_port, 
         -- Connections to port 'DATA39'
         DATA(38) => REGISTERS_38_7_port, 
         -- Connections to port 'DATA40'
         DATA(39) => REGISTERS_39_7_port, 
         -- Connections to port 'DATA41'
         DATA(40) => REGISTERS_40_7_port, 
         -- Connections to port 'DATA42'
         DATA(41) => REGISTERS_41_7_port, 
         -- Connections to port 'DATA43'
         DATA(42) => REGISTERS_42_7_port, 
         -- Connections to port 'DATA44'
         DATA(43) => REGISTERS_43_7_port, 
         -- Connections to port 'DATA45'
         DATA(44) => REGISTERS_44_7_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N368, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N369, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N370, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N371, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N372, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N373, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N374, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N375, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N376, 
         -- Connections to port 'CONTROL10'
         CONTROL(9) => N377, 
         -- Connections to port 'CONTROL11'
         CONTROL(10) => N378, 
         -- Connections to port 'CONTROL12'
         CONTROL(11) => N379, 
         -- Connections to port 'CONTROL13'
         CONTROL(12) => N380, 
         -- Connections to port 'CONTROL14'
         CONTROL(13) => N381, 
         -- Connections to port 'CONTROL15'
         CONTROL(14) => N382, 
         -- Connections to port 'CONTROL16'
         CONTROL(15) => N383, 
         -- Connections to port 'CONTROL17'
         CONTROL(16) => N384, 
         -- Connections to port 'CONTROL18'
         CONTROL(17) => N385, 
         -- Connections to port 'CONTROL19'
         CONTROL(18) => N386, 
         -- Connections to port 'CONTROL20'
         CONTROL(19) => N387, 
         -- Connections to port 'CONTROL21'
         CONTROL(20) => N388, 
         -- Connections to port 'CONTROL22'
         CONTROL(21) => N389, 
         -- Connections to port 'CONTROL23'
         CONTROL(22) => N390, 
         -- Connections to port 'CONTROL24'
         CONTROL(23) => N391, 
         -- Connections to port 'CONTROL25'
         CONTROL(24) => N392, 
         -- Connections to port 'CONTROL26'
         CONTROL(25) => N393, 
         -- Connections to port 'CONTROL27'
         CONTROL(26) => N394, 
         -- Connections to port 'CONTROL28'
         CONTROL(27) => N395, 
         -- Connections to port 'CONTROL29'
         CONTROL(28) => N396, 
         -- Connections to port 'CONTROL30'
         CONTROL(29) => N397, 
         -- Connections to port 'CONTROL31'
         CONTROL(30) => N398, 
         -- Connections to port 'CONTROL32'
         CONTROL(31) => N399, 
         -- Connections to port 'CONTROL33'
         CONTROL(32) => N400, 
         -- Connections to port 'CONTROL34'
         CONTROL(33) => N401, 
         -- Connections to port 'CONTROL35'
         CONTROL(34) => N402, 
         -- Connections to port 'CONTROL36'
         CONTROL(35) => N403, 
         -- Connections to port 'CONTROL37'
         CONTROL(36) => N404, 
         -- Connections to port 'CONTROL38'
         CONTROL(37) => N405, 
         -- Connections to port 'CONTROL39'
         CONTROL(38) => N406, 
         -- Connections to port 'CONTROL40'
         CONTROL(39) => N407, 
         -- Connections to port 'CONTROL41'
         CONTROL(40) => N408, 
         -- Connections to port 'CONTROL42'
         CONTROL(41) => N409, 
         -- Connections to port 'CONTROL43'
         CONTROL(42) => N410, 
         -- Connections to port 'CONTROL44'
         CONTROL(43) => N411, 
         -- Connections to port 'CONTROL45'
         CONTROL(44) => N412, 
         -- Connections to port 'Z'
         Z(0) => N567 );
   B_10 : GTECH_BUF port map( A => N522, Z => N368);
   B_11 : GTECH_BUF port map( A => N524, Z => N369);
   B_12 : GTECH_BUF port map( A => N526, Z => N370);
   B_13 : GTECH_BUF port map( A => N528, Z => N371);
   B_14 : GTECH_BUF port map( A => N530, Z => N372);
   B_15 : GTECH_BUF port map( A => N532, Z => N373);
   B_16 : GTECH_BUF port map( A => N534, Z => N374);
   B_17 : GTECH_BUF port map( A => N536, Z => N375);
   B_18 : GTECH_BUF port map( A => N538, Z => N376);
   B_19 : GTECH_BUF port map( A => N540, Z => N377);
   B_20 : GTECH_BUF port map( A => N542, Z => N378);
   B_21 : GTECH_BUF port map( A => N544, Z => N379);
   B_22 : GTECH_BUF port map( A => N546, Z => N380);
   B_23 : GTECH_BUF port map( A => N548, Z => N381);
   B_24 : GTECH_BUF port map( A => N549, Z => N382);
   B_25 : GTECH_BUF port map( A => N550, Z => N383);
   B_26 : GTECH_BUF port map( A => N551, Z => N384);
   B_27 : GTECH_BUF port map( A => N552, Z => N385);
   B_28 : GTECH_BUF port map( A => N553, Z => N386);
   B_29 : GTECH_BUF port map( A => N554, Z => N387);
   B_30 : GTECH_BUF port map( A => N555, Z => N388);
   B_31 : GTECH_BUF port map( A => N556, Z => N389);
   B_32 : GTECH_BUF port map( A => N557, Z => N390);
   B_33 : GTECH_BUF port map( A => N558, Z => N391);
   B_34 : GTECH_BUF port map( A => N559, Z => N392);
   B_35 : GTECH_BUF port map( A => N560, Z => N393);
   B_36 : GTECH_BUF port map( A => N561, Z => N394);
   B_37 : GTECH_BUF port map( A => N562, Z => N395);
   B_38 : GTECH_BUF port map( A => N563, Z => N396);
   B_39 : GTECH_BUF port map( A => N564, Z => N397);
   B_40 : GTECH_BUF port map( A => N565, Z => N398);
   B_41 : GTECH_BUF port map( A => N566, Z => N399);
   B_42 : GTECH_BUF port map( A => N523, Z => N400);
   B_43 : GTECH_BUF port map( A => N525, Z => N401);
   B_44 : GTECH_BUF port map( A => N527, Z => N402);
   B_45 : GTECH_BUF port map( A => N529, Z => N403);
   B_46 : GTECH_BUF port map( A => N531, Z => N404);
   B_47 : GTECH_BUF port map( A => N533, Z => N405);
   B_48 : GTECH_BUF port map( A => N535, Z => N406);
   B_49 : GTECH_BUF port map( A => N537, Z => N407);
   B_50 : GTECH_BUF port map( A => N539, Z => N408);
   B_51 : GTECH_BUF port map( A => N541, Z => N409);
   B_52 : GTECH_BUF port map( A => N543, Z => N410);
   B_53 : GTECH_BUF port map( A => N545, Z => N411);
   B_54 : GTECH_BUF port map( A => N547, Z => N412);
   C4768_cell : SELECT_OP
      generic map ( num_inputs => 45, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => REGISTERS_0_6_port, 
         -- Connections to port 'DATA2'
         DATA(1) => REGISTERS_1_6_port, 
         -- Connections to port 'DATA3'
         DATA(2) => REGISTERS_2_6_port, 
         -- Connections to port 'DATA4'
         DATA(3) => REGISTERS_3_6_port, 
         -- Connections to port 'DATA5'
         DATA(4) => REGISTERS_4_6_port, 
         -- Connections to port 'DATA6'
         DATA(5) => REGISTERS_5_6_port, 
         -- Connections to port 'DATA7'
         DATA(6) => REGISTERS_6_6_port, 
         -- Connections to port 'DATA8'
         DATA(7) => REGISTERS_7_6_port, 
         -- Connections to port 'DATA9'
         DATA(8) => REGISTERS_8_6_port, 
         -- Connections to port 'DATA10'
         DATA(9) => REGISTERS_9_6_port, 
         -- Connections to port 'DATA11'
         DATA(10) => REGISTERS_10_6_port, 
         -- Connections to port 'DATA12'
         DATA(11) => REGISTERS_11_6_port, 
         -- Connections to port 'DATA13'
         DATA(12) => REGISTERS_12_6_port, 
         -- Connections to port 'DATA14'
         DATA(13) => REGISTERS_13_6_port, 
         -- Connections to port 'DATA15'
         DATA(14) => REGISTERS_14_6_port, 
         -- Connections to port 'DATA16'
         DATA(15) => REGISTERS_15_6_port, 
         -- Connections to port 'DATA17'
         DATA(16) => REGISTERS_16_6_port, 
         -- Connections to port 'DATA18'
         DATA(17) => REGISTERS_17_6_port, 
         -- Connections to port 'DATA19'
         DATA(18) => REGISTERS_18_6_port, 
         -- Connections to port 'DATA20'
         DATA(19) => REGISTERS_19_6_port, 
         -- Connections to port 'DATA21'
         DATA(20) => REGISTERS_20_6_port, 
         -- Connections to port 'DATA22'
         DATA(21) => REGISTERS_21_6_port, 
         -- Connections to port 'DATA23'
         DATA(22) => REGISTERS_22_6_port, 
         -- Connections to port 'DATA24'
         DATA(23) => REGISTERS_23_6_port, 
         -- Connections to port 'DATA25'
         DATA(24) => REGISTERS_24_6_port, 
         -- Connections to port 'DATA26'
         DATA(25) => REGISTERS_25_6_port, 
         -- Connections to port 'DATA27'
         DATA(26) => REGISTERS_26_6_port, 
         -- Connections to port 'DATA28'
         DATA(27) => REGISTERS_27_6_port, 
         -- Connections to port 'DATA29'
         DATA(28) => REGISTERS_28_6_port, 
         -- Connections to port 'DATA30'
         DATA(29) => REGISTERS_29_6_port, 
         -- Connections to port 'DATA31'
         DATA(30) => REGISTERS_30_6_port, 
         -- Connections to port 'DATA32'
         DATA(31) => REGISTERS_31_6_port, 
         -- Connections to port 'DATA33'
         DATA(32) => REGISTERS_32_6_port, 
         -- Connections to port 'DATA34'
         DATA(33) => REGISTERS_33_6_port, 
         -- Connections to port 'DATA35'
         DATA(34) => REGISTERS_34_6_port, 
         -- Connections to port 'DATA36'
         DATA(35) => REGISTERS_35_6_port, 
         -- Connections to port 'DATA37'
         DATA(36) => REGISTERS_36_6_port, 
         -- Connections to port 'DATA38'
         DATA(37) => REGISTERS_37_6_port, 
         -- Connections to port 'DATA39'
         DATA(38) => REGISTERS_38_6_port, 
         -- Connections to port 'DATA40'
         DATA(39) => REGISTERS_39_6_port, 
         -- Connections to port 'DATA41'
         DATA(40) => REGISTERS_40_6_port, 
         -- Connections to port 'DATA42'
         DATA(41) => REGISTERS_41_6_port, 
         -- Connections to port 'DATA43'
         DATA(42) => REGISTERS_42_6_port, 
         -- Connections to port 'DATA44'
         DATA(43) => REGISTERS_43_6_port, 
         -- Connections to port 'DATA45'
         DATA(44) => REGISTERS_44_6_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N368, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N369, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N370, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N371, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N372, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N373, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N374, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N375, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N376, 
         -- Connections to port 'CONTROL10'
         CONTROL(9) => N377, 
         -- Connections to port 'CONTROL11'
         CONTROL(10) => N378, 
         -- Connections to port 'CONTROL12'
         CONTROL(11) => N379, 
         -- Connections to port 'CONTROL13'
         CONTROL(12) => N380, 
         -- Connections to port 'CONTROL14'
         CONTROL(13) => N381, 
         -- Connections to port 'CONTROL15'
         CONTROL(14) => N382, 
         -- Connections to port 'CONTROL16'
         CONTROL(15) => N383, 
         -- Connections to port 'CONTROL17'
         CONTROL(16) => N384, 
         -- Connections to port 'CONTROL18'
         CONTROL(17) => N385, 
         -- Connections to port 'CONTROL19'
         CONTROL(18) => N386, 
         -- Connections to port 'CONTROL20'
         CONTROL(19) => N387, 
         -- Connections to port 'CONTROL21'
         CONTROL(20) => N388, 
         -- Connections to port 'CONTROL22'
         CONTROL(21) => N389, 
         -- Connections to port 'CONTROL23'
         CONTROL(22) => N390, 
         -- Connections to port 'CONTROL24'
         CONTROL(23) => N391, 
         -- Connections to port 'CONTROL25'
         CONTROL(24) => N392, 
         -- Connections to port 'CONTROL26'
         CONTROL(25) => N393, 
         -- Connections to port 'CONTROL27'
         CONTROL(26) => N394, 
         -- Connections to port 'CONTROL28'
         CONTROL(27) => N395, 
         -- Connections to port 'CONTROL29'
         CONTROL(28) => N396, 
         -- Connections to port 'CONTROL30'
         CONTROL(29) => N397, 
         -- Connections to port 'CONTROL31'
         CONTROL(30) => N398, 
         -- Connections to port 'CONTROL32'
         CONTROL(31) => N399, 
         -- Connections to port 'CONTROL33'
         CONTROL(32) => N400, 
         -- Connections to port 'CONTROL34'
         CONTROL(33) => N401, 
         -- Connections to port 'CONTROL35'
         CONTROL(34) => N402, 
         -- Connections to port 'CONTROL36'
         CONTROL(35) => N403, 
         -- Connections to port 'CONTROL37'
         CONTROL(36) => N404, 
         -- Connections to port 'CONTROL38'
         CONTROL(37) => N405, 
         -- Connections to port 'CONTROL39'
         CONTROL(38) => N406, 
         -- Connections to port 'CONTROL40'
         CONTROL(39) => N407, 
         -- Connections to port 'CONTROL41'
         CONTROL(40) => N408, 
         -- Connections to port 'CONTROL42'
         CONTROL(41) => N409, 
         -- Connections to port 'CONTROL43'
         CONTROL(42) => N410, 
         -- Connections to port 'CONTROL44'
         CONTROL(43) => N411, 
         -- Connections to port 'CONTROL45'
         CONTROL(44) => N412, 
         -- Connections to port 'Z'
         Z(0) => N568 );
   C4769_cell : SELECT_OP
      generic map ( num_inputs => 45, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => REGISTERS_0_5_port, 
         -- Connections to port 'DATA2'
         DATA(1) => REGISTERS_1_5_port, 
         -- Connections to port 'DATA3'
         DATA(2) => REGISTERS_2_5_port, 
         -- Connections to port 'DATA4'
         DATA(3) => REGISTERS_3_5_port, 
         -- Connections to port 'DATA5'
         DATA(4) => REGISTERS_4_5_port, 
         -- Connections to port 'DATA6'
         DATA(5) => REGISTERS_5_5_port, 
         -- Connections to port 'DATA7'
         DATA(6) => REGISTERS_6_5_port, 
         -- Connections to port 'DATA8'
         DATA(7) => REGISTERS_7_5_port, 
         -- Connections to port 'DATA9'
         DATA(8) => REGISTERS_8_5_port, 
         -- Connections to port 'DATA10'
         DATA(9) => REGISTERS_9_5_port, 
         -- Connections to port 'DATA11'
         DATA(10) => REGISTERS_10_5_port, 
         -- Connections to port 'DATA12'
         DATA(11) => REGISTERS_11_5_port, 
         -- Connections to port 'DATA13'
         DATA(12) => REGISTERS_12_5_port, 
         -- Connections to port 'DATA14'
         DATA(13) => REGISTERS_13_5_port, 
         -- Connections to port 'DATA15'
         DATA(14) => REGISTERS_14_5_port, 
         -- Connections to port 'DATA16'
         DATA(15) => REGISTERS_15_5_port, 
         -- Connections to port 'DATA17'
         DATA(16) => REGISTERS_16_5_port, 
         -- Connections to port 'DATA18'
         DATA(17) => REGISTERS_17_5_port, 
         -- Connections to port 'DATA19'
         DATA(18) => REGISTERS_18_5_port, 
         -- Connections to port 'DATA20'
         DATA(19) => REGISTERS_19_5_port, 
         -- Connections to port 'DATA21'
         DATA(20) => REGISTERS_20_5_port, 
         -- Connections to port 'DATA22'
         DATA(21) => REGISTERS_21_5_port, 
         -- Connections to port 'DATA23'
         DATA(22) => REGISTERS_22_5_port, 
         -- Connections to port 'DATA24'
         DATA(23) => REGISTERS_23_5_port, 
         -- Connections to port 'DATA25'
         DATA(24) => REGISTERS_24_5_port, 
         -- Connections to port 'DATA26'
         DATA(25) => REGISTERS_25_5_port, 
         -- Connections to port 'DATA27'
         DATA(26) => REGISTERS_26_5_port, 
         -- Connections to port 'DATA28'
         DATA(27) => REGISTERS_27_5_port, 
         -- Connections to port 'DATA29'
         DATA(28) => REGISTERS_28_5_port, 
         -- Connections to port 'DATA30'
         DATA(29) => REGISTERS_29_5_port, 
         -- Connections to port 'DATA31'
         DATA(30) => REGISTERS_30_5_port, 
         -- Connections to port 'DATA32'
         DATA(31) => REGISTERS_31_5_port, 
         -- Connections to port 'DATA33'
         DATA(32) => REGISTERS_32_5_port, 
         -- Connections to port 'DATA34'
         DATA(33) => REGISTERS_33_5_port, 
         -- Connections to port 'DATA35'
         DATA(34) => REGISTERS_34_5_port, 
         -- Connections to port 'DATA36'
         DATA(35) => REGISTERS_35_5_port, 
         -- Connections to port 'DATA37'
         DATA(36) => REGISTERS_36_5_port, 
         -- Connections to port 'DATA38'
         DATA(37) => REGISTERS_37_5_port, 
         -- Connections to port 'DATA39'
         DATA(38) => REGISTERS_38_5_port, 
         -- Connections to port 'DATA40'
         DATA(39) => REGISTERS_39_5_port, 
         -- Connections to port 'DATA41'
         DATA(40) => REGISTERS_40_5_port, 
         -- Connections to port 'DATA42'
         DATA(41) => REGISTERS_41_5_port, 
         -- Connections to port 'DATA43'
         DATA(42) => REGISTERS_42_5_port, 
         -- Connections to port 'DATA44'
         DATA(43) => REGISTERS_43_5_port, 
         -- Connections to port 'DATA45'
         DATA(44) => REGISTERS_44_5_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N368, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N369, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N370, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N371, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N372, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N373, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N374, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N375, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N376, 
         -- Connections to port 'CONTROL10'
         CONTROL(9) => N377, 
         -- Connections to port 'CONTROL11'
         CONTROL(10) => N378, 
         -- Connections to port 'CONTROL12'
         CONTROL(11) => N379, 
         -- Connections to port 'CONTROL13'
         CONTROL(12) => N380, 
         -- Connections to port 'CONTROL14'
         CONTROL(13) => N381, 
         -- Connections to port 'CONTROL15'
         CONTROL(14) => N382, 
         -- Connections to port 'CONTROL16'
         CONTROL(15) => N383, 
         -- Connections to port 'CONTROL17'
         CONTROL(16) => N384, 
         -- Connections to port 'CONTROL18'
         CONTROL(17) => N385, 
         -- Connections to port 'CONTROL19'
         CONTROL(18) => N386, 
         -- Connections to port 'CONTROL20'
         CONTROL(19) => N387, 
         -- Connections to port 'CONTROL21'
         CONTROL(20) => N388, 
         -- Connections to port 'CONTROL22'
         CONTROL(21) => N389, 
         -- Connections to port 'CONTROL23'
         CONTROL(22) => N390, 
         -- Connections to port 'CONTROL24'
         CONTROL(23) => N391, 
         -- Connections to port 'CONTROL25'
         CONTROL(24) => N392, 
         -- Connections to port 'CONTROL26'
         CONTROL(25) => N393, 
         -- Connections to port 'CONTROL27'
         CONTROL(26) => N394, 
         -- Connections to port 'CONTROL28'
         CONTROL(27) => N395, 
         -- Connections to port 'CONTROL29'
         CONTROL(28) => N396, 
         -- Connections to port 'CONTROL30'
         CONTROL(29) => N397, 
         -- Connections to port 'CONTROL31'
         CONTROL(30) => N398, 
         -- Connections to port 'CONTROL32'
         CONTROL(31) => N399, 
         -- Connections to port 'CONTROL33'
         CONTROL(32) => N400, 
         -- Connections to port 'CONTROL34'
         CONTROL(33) => N401, 
         -- Connections to port 'CONTROL35'
         CONTROL(34) => N402, 
         -- Connections to port 'CONTROL36'
         CONTROL(35) => N403, 
         -- Connections to port 'CONTROL37'
         CONTROL(36) => N404, 
         -- Connections to port 'CONTROL38'
         CONTROL(37) => N405, 
         -- Connections to port 'CONTROL39'
         CONTROL(38) => N406, 
         -- Connections to port 'CONTROL40'
         CONTROL(39) => N407, 
         -- Connections to port 'CONTROL41'
         CONTROL(40) => N408, 
         -- Connections to port 'CONTROL42'
         CONTROL(41) => N409, 
         -- Connections to port 'CONTROL43'
         CONTROL(42) => N410, 
         -- Connections to port 'CONTROL44'
         CONTROL(43) => N411, 
         -- Connections to port 'CONTROL45'
         CONTROL(44) => N412, 
         -- Connections to port 'Z'
         Z(0) => N569 );
   C4770_cell : SELECT_OP
      generic map ( num_inputs => 45, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => REGISTERS_0_4_port, 
         -- Connections to port 'DATA2'
         DATA(1) => REGISTERS_1_4_port, 
         -- Connections to port 'DATA3'
         DATA(2) => REGISTERS_2_4_port, 
         -- Connections to port 'DATA4'
         DATA(3) => REGISTERS_3_4_port, 
         -- Connections to port 'DATA5'
         DATA(4) => REGISTERS_4_4_port, 
         -- Connections to port 'DATA6'
         DATA(5) => REGISTERS_5_4_port, 
         -- Connections to port 'DATA7'
         DATA(6) => REGISTERS_6_4_port, 
         -- Connections to port 'DATA8'
         DATA(7) => REGISTERS_7_4_port, 
         -- Connections to port 'DATA9'
         DATA(8) => REGISTERS_8_4_port, 
         -- Connections to port 'DATA10'
         DATA(9) => REGISTERS_9_4_port, 
         -- Connections to port 'DATA11'
         DATA(10) => REGISTERS_10_4_port, 
         -- Connections to port 'DATA12'
         DATA(11) => REGISTERS_11_4_port, 
         -- Connections to port 'DATA13'
         DATA(12) => REGISTERS_12_4_port, 
         -- Connections to port 'DATA14'
         DATA(13) => REGISTERS_13_4_port, 
         -- Connections to port 'DATA15'
         DATA(14) => REGISTERS_14_4_port, 
         -- Connections to port 'DATA16'
         DATA(15) => REGISTERS_15_4_port, 
         -- Connections to port 'DATA17'
         DATA(16) => REGISTERS_16_4_port, 
         -- Connections to port 'DATA18'
         DATA(17) => REGISTERS_17_4_port, 
         -- Connections to port 'DATA19'
         DATA(18) => REGISTERS_18_4_port, 
         -- Connections to port 'DATA20'
         DATA(19) => REGISTERS_19_4_port, 
         -- Connections to port 'DATA21'
         DATA(20) => REGISTERS_20_4_port, 
         -- Connections to port 'DATA22'
         DATA(21) => REGISTERS_21_4_port, 
         -- Connections to port 'DATA23'
         DATA(22) => REGISTERS_22_4_port, 
         -- Connections to port 'DATA24'
         DATA(23) => REGISTERS_23_4_port, 
         -- Connections to port 'DATA25'
         DATA(24) => REGISTERS_24_4_port, 
         -- Connections to port 'DATA26'
         DATA(25) => REGISTERS_25_4_port, 
         -- Connections to port 'DATA27'
         DATA(26) => REGISTERS_26_4_port, 
         -- Connections to port 'DATA28'
         DATA(27) => REGISTERS_27_4_port, 
         -- Connections to port 'DATA29'
         DATA(28) => REGISTERS_28_4_port, 
         -- Connections to port 'DATA30'
         DATA(29) => REGISTERS_29_4_port, 
         -- Connections to port 'DATA31'
         DATA(30) => REGISTERS_30_4_port, 
         -- Connections to port 'DATA32'
         DATA(31) => REGISTERS_31_4_port, 
         -- Connections to port 'DATA33'
         DATA(32) => REGISTERS_32_4_port, 
         -- Connections to port 'DATA34'
         DATA(33) => REGISTERS_33_4_port, 
         -- Connections to port 'DATA35'
         DATA(34) => REGISTERS_34_4_port, 
         -- Connections to port 'DATA36'
         DATA(35) => REGISTERS_35_4_port, 
         -- Connections to port 'DATA37'
         DATA(36) => REGISTERS_36_4_port, 
         -- Connections to port 'DATA38'
         DATA(37) => REGISTERS_37_4_port, 
         -- Connections to port 'DATA39'
         DATA(38) => REGISTERS_38_4_port, 
         -- Connections to port 'DATA40'
         DATA(39) => REGISTERS_39_4_port, 
         -- Connections to port 'DATA41'
         DATA(40) => REGISTERS_40_4_port, 
         -- Connections to port 'DATA42'
         DATA(41) => REGISTERS_41_4_port, 
         -- Connections to port 'DATA43'
         DATA(42) => REGISTERS_42_4_port, 
         -- Connections to port 'DATA44'
         DATA(43) => REGISTERS_43_4_port, 
         -- Connections to port 'DATA45'
         DATA(44) => REGISTERS_44_4_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N368, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N369, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N370, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N371, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N372, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N373, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N374, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N375, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N376, 
         -- Connections to port 'CONTROL10'
         CONTROL(9) => N377, 
         -- Connections to port 'CONTROL11'
         CONTROL(10) => N378, 
         -- Connections to port 'CONTROL12'
         CONTROL(11) => N379, 
         -- Connections to port 'CONTROL13'
         CONTROL(12) => N380, 
         -- Connections to port 'CONTROL14'
         CONTROL(13) => N381, 
         -- Connections to port 'CONTROL15'
         CONTROL(14) => N382, 
         -- Connections to port 'CONTROL16'
         CONTROL(15) => N383, 
         -- Connections to port 'CONTROL17'
         CONTROL(16) => N384, 
         -- Connections to port 'CONTROL18'
         CONTROL(17) => N385, 
         -- Connections to port 'CONTROL19'
         CONTROL(18) => N386, 
         -- Connections to port 'CONTROL20'
         CONTROL(19) => N387, 
         -- Connections to port 'CONTROL21'
         CONTROL(20) => N388, 
         -- Connections to port 'CONTROL22'
         CONTROL(21) => N389, 
         -- Connections to port 'CONTROL23'
         CONTROL(22) => N390, 
         -- Connections to port 'CONTROL24'
         CONTROL(23) => N391, 
         -- Connections to port 'CONTROL25'
         CONTROL(24) => N392, 
         -- Connections to port 'CONTROL26'
         CONTROL(25) => N393, 
         -- Connections to port 'CONTROL27'
         CONTROL(26) => N394, 
         -- Connections to port 'CONTROL28'
         CONTROL(27) => N395, 
         -- Connections to port 'CONTROL29'
         CONTROL(28) => N396, 
         -- Connections to port 'CONTROL30'
         CONTROL(29) => N397, 
         -- Connections to port 'CONTROL31'
         CONTROL(30) => N398, 
         -- Connections to port 'CONTROL32'
         CONTROL(31) => N399, 
         -- Connections to port 'CONTROL33'
         CONTROL(32) => N400, 
         -- Connections to port 'CONTROL34'
         CONTROL(33) => N401, 
         -- Connections to port 'CONTROL35'
         CONTROL(34) => N402, 
         -- Connections to port 'CONTROL36'
         CONTROL(35) => N403, 
         -- Connections to port 'CONTROL37'
         CONTROL(36) => N404, 
         -- Connections to port 'CONTROL38'
         CONTROL(37) => N405, 
         -- Connections to port 'CONTROL39'
         CONTROL(38) => N406, 
         -- Connections to port 'CONTROL40'
         CONTROL(39) => N407, 
         -- Connections to port 'CONTROL41'
         CONTROL(40) => N408, 
         -- Connections to port 'CONTROL42'
         CONTROL(41) => N409, 
         -- Connections to port 'CONTROL43'
         CONTROL(42) => N410, 
         -- Connections to port 'CONTROL44'
         CONTROL(43) => N411, 
         -- Connections to port 'CONTROL45'
         CONTROL(44) => N412, 
         -- Connections to port 'Z'
         Z(0) => N570 );
   C4771_cell : SELECT_OP
      generic map ( num_inputs => 45, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => REGISTERS_0_3_port, 
         -- Connections to port 'DATA2'
         DATA(1) => REGISTERS_1_3_port, 
         -- Connections to port 'DATA3'
         DATA(2) => REGISTERS_2_3_port, 
         -- Connections to port 'DATA4'
         DATA(3) => REGISTERS_3_3_port, 
         -- Connections to port 'DATA5'
         DATA(4) => REGISTERS_4_3_port, 
         -- Connections to port 'DATA6'
         DATA(5) => REGISTERS_5_3_port, 
         -- Connections to port 'DATA7'
         DATA(6) => REGISTERS_6_3_port, 
         -- Connections to port 'DATA8'
         DATA(7) => REGISTERS_7_3_port, 
         -- Connections to port 'DATA9'
         DATA(8) => REGISTERS_8_3_port, 
         -- Connections to port 'DATA10'
         DATA(9) => REGISTERS_9_3_port, 
         -- Connections to port 'DATA11'
         DATA(10) => REGISTERS_10_3_port, 
         -- Connections to port 'DATA12'
         DATA(11) => REGISTERS_11_3_port, 
         -- Connections to port 'DATA13'
         DATA(12) => REGISTERS_12_3_port, 
         -- Connections to port 'DATA14'
         DATA(13) => REGISTERS_13_3_port, 
         -- Connections to port 'DATA15'
         DATA(14) => REGISTERS_14_3_port, 
         -- Connections to port 'DATA16'
         DATA(15) => REGISTERS_15_3_port, 
         -- Connections to port 'DATA17'
         DATA(16) => REGISTERS_16_3_port, 
         -- Connections to port 'DATA18'
         DATA(17) => REGISTERS_17_3_port, 
         -- Connections to port 'DATA19'
         DATA(18) => REGISTERS_18_3_port, 
         -- Connections to port 'DATA20'
         DATA(19) => REGISTERS_19_3_port, 
         -- Connections to port 'DATA21'
         DATA(20) => REGISTERS_20_3_port, 
         -- Connections to port 'DATA22'
         DATA(21) => REGISTERS_21_3_port, 
         -- Connections to port 'DATA23'
         DATA(22) => REGISTERS_22_3_port, 
         -- Connections to port 'DATA24'
         DATA(23) => REGISTERS_23_3_port, 
         -- Connections to port 'DATA25'
         DATA(24) => REGISTERS_24_3_port, 
         -- Connections to port 'DATA26'
         DATA(25) => REGISTERS_25_3_port, 
         -- Connections to port 'DATA27'
         DATA(26) => REGISTERS_26_3_port, 
         -- Connections to port 'DATA28'
         DATA(27) => REGISTERS_27_3_port, 
         -- Connections to port 'DATA29'
         DATA(28) => REGISTERS_28_3_port, 
         -- Connections to port 'DATA30'
         DATA(29) => REGISTERS_29_3_port, 
         -- Connections to port 'DATA31'
         DATA(30) => REGISTERS_30_3_port, 
         -- Connections to port 'DATA32'
         DATA(31) => REGISTERS_31_3_port, 
         -- Connections to port 'DATA33'
         DATA(32) => REGISTERS_32_3_port, 
         -- Connections to port 'DATA34'
         DATA(33) => REGISTERS_33_3_port, 
         -- Connections to port 'DATA35'
         DATA(34) => REGISTERS_34_3_port, 
         -- Connections to port 'DATA36'
         DATA(35) => REGISTERS_35_3_port, 
         -- Connections to port 'DATA37'
         DATA(36) => REGISTERS_36_3_port, 
         -- Connections to port 'DATA38'
         DATA(37) => REGISTERS_37_3_port, 
         -- Connections to port 'DATA39'
         DATA(38) => REGISTERS_38_3_port, 
         -- Connections to port 'DATA40'
         DATA(39) => REGISTERS_39_3_port, 
         -- Connections to port 'DATA41'
         DATA(40) => REGISTERS_40_3_port, 
         -- Connections to port 'DATA42'
         DATA(41) => REGISTERS_41_3_port, 
         -- Connections to port 'DATA43'
         DATA(42) => REGISTERS_42_3_port, 
         -- Connections to port 'DATA44'
         DATA(43) => REGISTERS_43_3_port, 
         -- Connections to port 'DATA45'
         DATA(44) => REGISTERS_44_3_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N368, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N369, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N370, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N371, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N372, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N373, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N374, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N375, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N376, 
         -- Connections to port 'CONTROL10'
         CONTROL(9) => N377, 
         -- Connections to port 'CONTROL11'
         CONTROL(10) => N378, 
         -- Connections to port 'CONTROL12'
         CONTROL(11) => N379, 
         -- Connections to port 'CONTROL13'
         CONTROL(12) => N380, 
         -- Connections to port 'CONTROL14'
         CONTROL(13) => N381, 
         -- Connections to port 'CONTROL15'
         CONTROL(14) => N382, 
         -- Connections to port 'CONTROL16'
         CONTROL(15) => N383, 
         -- Connections to port 'CONTROL17'
         CONTROL(16) => N384, 
         -- Connections to port 'CONTROL18'
         CONTROL(17) => N385, 
         -- Connections to port 'CONTROL19'
         CONTROL(18) => N386, 
         -- Connections to port 'CONTROL20'
         CONTROL(19) => N387, 
         -- Connections to port 'CONTROL21'
         CONTROL(20) => N388, 
         -- Connections to port 'CONTROL22'
         CONTROL(21) => N389, 
         -- Connections to port 'CONTROL23'
         CONTROL(22) => N390, 
         -- Connections to port 'CONTROL24'
         CONTROL(23) => N391, 
         -- Connections to port 'CONTROL25'
         CONTROL(24) => N392, 
         -- Connections to port 'CONTROL26'
         CONTROL(25) => N393, 
         -- Connections to port 'CONTROL27'
         CONTROL(26) => N394, 
         -- Connections to port 'CONTROL28'
         CONTROL(27) => N395, 
         -- Connections to port 'CONTROL29'
         CONTROL(28) => N396, 
         -- Connections to port 'CONTROL30'
         CONTROL(29) => N397, 
         -- Connections to port 'CONTROL31'
         CONTROL(30) => N398, 
         -- Connections to port 'CONTROL32'
         CONTROL(31) => N399, 
         -- Connections to port 'CONTROL33'
         CONTROL(32) => N400, 
         -- Connections to port 'CONTROL34'
         CONTROL(33) => N401, 
         -- Connections to port 'CONTROL35'
         CONTROL(34) => N402, 
         -- Connections to port 'CONTROL36'
         CONTROL(35) => N403, 
         -- Connections to port 'CONTROL37'
         CONTROL(36) => N404, 
         -- Connections to port 'CONTROL38'
         CONTROL(37) => N405, 
         -- Connections to port 'CONTROL39'
         CONTROL(38) => N406, 
         -- Connections to port 'CONTROL40'
         CONTROL(39) => N407, 
         -- Connections to port 'CONTROL41'
         CONTROL(40) => N408, 
         -- Connections to port 'CONTROL42'
         CONTROL(41) => N409, 
         -- Connections to port 'CONTROL43'
         CONTROL(42) => N410, 
         -- Connections to port 'CONTROL44'
         CONTROL(43) => N411, 
         -- Connections to port 'CONTROL45'
         CONTROL(44) => N412, 
         -- Connections to port 'Z'
         Z(0) => N571 );
   C4772_cell : SELECT_OP
      generic map ( num_inputs => 45, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => REGISTERS_0_2_port, 
         -- Connections to port 'DATA2'
         DATA(1) => REGISTERS_1_2_port, 
         -- Connections to port 'DATA3'
         DATA(2) => REGISTERS_2_2_port, 
         -- Connections to port 'DATA4'
         DATA(3) => REGISTERS_3_2_port, 
         -- Connections to port 'DATA5'
         DATA(4) => REGISTERS_4_2_port, 
         -- Connections to port 'DATA6'
         DATA(5) => REGISTERS_5_2_port, 
         -- Connections to port 'DATA7'
         DATA(6) => REGISTERS_6_2_port, 
         -- Connections to port 'DATA8'
         DATA(7) => REGISTERS_7_2_port, 
         -- Connections to port 'DATA9'
         DATA(8) => REGISTERS_8_2_port, 
         -- Connections to port 'DATA10'
         DATA(9) => REGISTERS_9_2_port, 
         -- Connections to port 'DATA11'
         DATA(10) => REGISTERS_10_2_port, 
         -- Connections to port 'DATA12'
         DATA(11) => REGISTERS_11_2_port, 
         -- Connections to port 'DATA13'
         DATA(12) => REGISTERS_12_2_port, 
         -- Connections to port 'DATA14'
         DATA(13) => REGISTERS_13_2_port, 
         -- Connections to port 'DATA15'
         DATA(14) => REGISTERS_14_2_port, 
         -- Connections to port 'DATA16'
         DATA(15) => REGISTERS_15_2_port, 
         -- Connections to port 'DATA17'
         DATA(16) => REGISTERS_16_2_port, 
         -- Connections to port 'DATA18'
         DATA(17) => REGISTERS_17_2_port, 
         -- Connections to port 'DATA19'
         DATA(18) => REGISTERS_18_2_port, 
         -- Connections to port 'DATA20'
         DATA(19) => REGISTERS_19_2_port, 
         -- Connections to port 'DATA21'
         DATA(20) => REGISTERS_20_2_port, 
         -- Connections to port 'DATA22'
         DATA(21) => REGISTERS_21_2_port, 
         -- Connections to port 'DATA23'
         DATA(22) => REGISTERS_22_2_port, 
         -- Connections to port 'DATA24'
         DATA(23) => REGISTERS_23_2_port, 
         -- Connections to port 'DATA25'
         DATA(24) => REGISTERS_24_2_port, 
         -- Connections to port 'DATA26'
         DATA(25) => REGISTERS_25_2_port, 
         -- Connections to port 'DATA27'
         DATA(26) => REGISTERS_26_2_port, 
         -- Connections to port 'DATA28'
         DATA(27) => REGISTERS_27_2_port, 
         -- Connections to port 'DATA29'
         DATA(28) => REGISTERS_28_2_port, 
         -- Connections to port 'DATA30'
         DATA(29) => REGISTERS_29_2_port, 
         -- Connections to port 'DATA31'
         DATA(30) => REGISTERS_30_2_port, 
         -- Connections to port 'DATA32'
         DATA(31) => REGISTERS_31_2_port, 
         -- Connections to port 'DATA33'
         DATA(32) => REGISTERS_32_2_port, 
         -- Connections to port 'DATA34'
         DATA(33) => REGISTERS_33_2_port, 
         -- Connections to port 'DATA35'
         DATA(34) => REGISTERS_34_2_port, 
         -- Connections to port 'DATA36'
         DATA(35) => REGISTERS_35_2_port, 
         -- Connections to port 'DATA37'
         DATA(36) => REGISTERS_36_2_port, 
         -- Connections to port 'DATA38'
         DATA(37) => REGISTERS_37_2_port, 
         -- Connections to port 'DATA39'
         DATA(38) => REGISTERS_38_2_port, 
         -- Connections to port 'DATA40'
         DATA(39) => REGISTERS_39_2_port, 
         -- Connections to port 'DATA41'
         DATA(40) => REGISTERS_40_2_port, 
         -- Connections to port 'DATA42'
         DATA(41) => REGISTERS_41_2_port, 
         -- Connections to port 'DATA43'
         DATA(42) => REGISTERS_42_2_port, 
         -- Connections to port 'DATA44'
         DATA(43) => REGISTERS_43_2_port, 
         -- Connections to port 'DATA45'
         DATA(44) => REGISTERS_44_2_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N368, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N369, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N370, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N371, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N372, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N373, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N374, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N375, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N376, 
         -- Connections to port 'CONTROL10'
         CONTROL(9) => N377, 
         -- Connections to port 'CONTROL11'
         CONTROL(10) => N378, 
         -- Connections to port 'CONTROL12'
         CONTROL(11) => N379, 
         -- Connections to port 'CONTROL13'
         CONTROL(12) => N380, 
         -- Connections to port 'CONTROL14'
         CONTROL(13) => N381, 
         -- Connections to port 'CONTROL15'
         CONTROL(14) => N382, 
         -- Connections to port 'CONTROL16'
         CONTROL(15) => N383, 
         -- Connections to port 'CONTROL17'
         CONTROL(16) => N384, 
         -- Connections to port 'CONTROL18'
         CONTROL(17) => N385, 
         -- Connections to port 'CONTROL19'
         CONTROL(18) => N386, 
         -- Connections to port 'CONTROL20'
         CONTROL(19) => N387, 
         -- Connections to port 'CONTROL21'
         CONTROL(20) => N388, 
         -- Connections to port 'CONTROL22'
         CONTROL(21) => N389, 
         -- Connections to port 'CONTROL23'
         CONTROL(22) => N390, 
         -- Connections to port 'CONTROL24'
         CONTROL(23) => N391, 
         -- Connections to port 'CONTROL25'
         CONTROL(24) => N392, 
         -- Connections to port 'CONTROL26'
         CONTROL(25) => N393, 
         -- Connections to port 'CONTROL27'
         CONTROL(26) => N394, 
         -- Connections to port 'CONTROL28'
         CONTROL(27) => N395, 
         -- Connections to port 'CONTROL29'
         CONTROL(28) => N396, 
         -- Connections to port 'CONTROL30'
         CONTROL(29) => N397, 
         -- Connections to port 'CONTROL31'
         CONTROL(30) => N398, 
         -- Connections to port 'CONTROL32'
         CONTROL(31) => N399, 
         -- Connections to port 'CONTROL33'
         CONTROL(32) => N400, 
         -- Connections to port 'CONTROL34'
         CONTROL(33) => N401, 
         -- Connections to port 'CONTROL35'
         CONTROL(34) => N402, 
         -- Connections to port 'CONTROL36'
         CONTROL(35) => N403, 
         -- Connections to port 'CONTROL37'
         CONTROL(36) => N404, 
         -- Connections to port 'CONTROL38'
         CONTROL(37) => N405, 
         -- Connections to port 'CONTROL39'
         CONTROL(38) => N406, 
         -- Connections to port 'CONTROL40'
         CONTROL(39) => N407, 
         -- Connections to port 'CONTROL41'
         CONTROL(40) => N408, 
         -- Connections to port 'CONTROL42'
         CONTROL(41) => N409, 
         -- Connections to port 'CONTROL43'
         CONTROL(42) => N410, 
         -- Connections to port 'CONTROL44'
         CONTROL(43) => N411, 
         -- Connections to port 'CONTROL45'
         CONTROL(44) => N412, 
         -- Connections to port 'Z'
         Z(0) => N572 );
   C4773_cell : SELECT_OP
      generic map ( num_inputs => 45, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => REGISTERS_0_1_port, 
         -- Connections to port 'DATA2'
         DATA(1) => REGISTERS_1_1_port, 
         -- Connections to port 'DATA3'
         DATA(2) => REGISTERS_2_1_port, 
         -- Connections to port 'DATA4'
         DATA(3) => REGISTERS_3_1_port, 
         -- Connections to port 'DATA5'
         DATA(4) => REGISTERS_4_1_port, 
         -- Connections to port 'DATA6'
         DATA(5) => REGISTERS_5_1_port, 
         -- Connections to port 'DATA7'
         DATA(6) => REGISTERS_6_1_port, 
         -- Connections to port 'DATA8'
         DATA(7) => REGISTERS_7_1_port, 
         -- Connections to port 'DATA9'
         DATA(8) => REGISTERS_8_1_port, 
         -- Connections to port 'DATA10'
         DATA(9) => REGISTERS_9_1_port, 
         -- Connections to port 'DATA11'
         DATA(10) => REGISTERS_10_1_port, 
         -- Connections to port 'DATA12'
         DATA(11) => REGISTERS_11_1_port, 
         -- Connections to port 'DATA13'
         DATA(12) => REGISTERS_12_1_port, 
         -- Connections to port 'DATA14'
         DATA(13) => REGISTERS_13_1_port, 
         -- Connections to port 'DATA15'
         DATA(14) => REGISTERS_14_1_port, 
         -- Connections to port 'DATA16'
         DATA(15) => REGISTERS_15_1_port, 
         -- Connections to port 'DATA17'
         DATA(16) => REGISTERS_16_1_port, 
         -- Connections to port 'DATA18'
         DATA(17) => REGISTERS_17_1_port, 
         -- Connections to port 'DATA19'
         DATA(18) => REGISTERS_18_1_port, 
         -- Connections to port 'DATA20'
         DATA(19) => REGISTERS_19_1_port, 
         -- Connections to port 'DATA21'
         DATA(20) => REGISTERS_20_1_port, 
         -- Connections to port 'DATA22'
         DATA(21) => REGISTERS_21_1_port, 
         -- Connections to port 'DATA23'
         DATA(22) => REGISTERS_22_1_port, 
         -- Connections to port 'DATA24'
         DATA(23) => REGISTERS_23_1_port, 
         -- Connections to port 'DATA25'
         DATA(24) => REGISTERS_24_1_port, 
         -- Connections to port 'DATA26'
         DATA(25) => REGISTERS_25_1_port, 
         -- Connections to port 'DATA27'
         DATA(26) => REGISTERS_26_1_port, 
         -- Connections to port 'DATA28'
         DATA(27) => REGISTERS_27_1_port, 
         -- Connections to port 'DATA29'
         DATA(28) => REGISTERS_28_1_port, 
         -- Connections to port 'DATA30'
         DATA(29) => REGISTERS_29_1_port, 
         -- Connections to port 'DATA31'
         DATA(30) => REGISTERS_30_1_port, 
         -- Connections to port 'DATA32'
         DATA(31) => REGISTERS_31_1_port, 
         -- Connections to port 'DATA33'
         DATA(32) => REGISTERS_32_1_port, 
         -- Connections to port 'DATA34'
         DATA(33) => REGISTERS_33_1_port, 
         -- Connections to port 'DATA35'
         DATA(34) => REGISTERS_34_1_port, 
         -- Connections to port 'DATA36'
         DATA(35) => REGISTERS_35_1_port, 
         -- Connections to port 'DATA37'
         DATA(36) => REGISTERS_36_1_port, 
         -- Connections to port 'DATA38'
         DATA(37) => REGISTERS_37_1_port, 
         -- Connections to port 'DATA39'
         DATA(38) => REGISTERS_38_1_port, 
         -- Connections to port 'DATA40'
         DATA(39) => REGISTERS_39_1_port, 
         -- Connections to port 'DATA41'
         DATA(40) => REGISTERS_40_1_port, 
         -- Connections to port 'DATA42'
         DATA(41) => REGISTERS_41_1_port, 
         -- Connections to port 'DATA43'
         DATA(42) => REGISTERS_42_1_port, 
         -- Connections to port 'DATA44'
         DATA(43) => REGISTERS_43_1_port, 
         -- Connections to port 'DATA45'
         DATA(44) => REGISTERS_44_1_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N368, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N369, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N370, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N371, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N372, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N373, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N374, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N375, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N376, 
         -- Connections to port 'CONTROL10'
         CONTROL(9) => N377, 
         -- Connections to port 'CONTROL11'
         CONTROL(10) => N378, 
         -- Connections to port 'CONTROL12'
         CONTROL(11) => N379, 
         -- Connections to port 'CONTROL13'
         CONTROL(12) => N380, 
         -- Connections to port 'CONTROL14'
         CONTROL(13) => N381, 
         -- Connections to port 'CONTROL15'
         CONTROL(14) => N382, 
         -- Connections to port 'CONTROL16'
         CONTROL(15) => N383, 
         -- Connections to port 'CONTROL17'
         CONTROL(16) => N384, 
         -- Connections to port 'CONTROL18'
         CONTROL(17) => N385, 
         -- Connections to port 'CONTROL19'
         CONTROL(18) => N386, 
         -- Connections to port 'CONTROL20'
         CONTROL(19) => N387, 
         -- Connections to port 'CONTROL21'
         CONTROL(20) => N388, 
         -- Connections to port 'CONTROL22'
         CONTROL(21) => N389, 
         -- Connections to port 'CONTROL23'
         CONTROL(22) => N390, 
         -- Connections to port 'CONTROL24'
         CONTROL(23) => N391, 
         -- Connections to port 'CONTROL25'
         CONTROL(24) => N392, 
         -- Connections to port 'CONTROL26'
         CONTROL(25) => N393, 
         -- Connections to port 'CONTROL27'
         CONTROL(26) => N394, 
         -- Connections to port 'CONTROL28'
         CONTROL(27) => N395, 
         -- Connections to port 'CONTROL29'
         CONTROL(28) => N396, 
         -- Connections to port 'CONTROL30'
         CONTROL(29) => N397, 
         -- Connections to port 'CONTROL31'
         CONTROL(30) => N398, 
         -- Connections to port 'CONTROL32'
         CONTROL(31) => N399, 
         -- Connections to port 'CONTROL33'
         CONTROL(32) => N400, 
         -- Connections to port 'CONTROL34'
         CONTROL(33) => N401, 
         -- Connections to port 'CONTROL35'
         CONTROL(34) => N402, 
         -- Connections to port 'CONTROL36'
         CONTROL(35) => N403, 
         -- Connections to port 'CONTROL37'
         CONTROL(36) => N404, 
         -- Connections to port 'CONTROL38'
         CONTROL(37) => N405, 
         -- Connections to port 'CONTROL39'
         CONTROL(38) => N406, 
         -- Connections to port 'CONTROL40'
         CONTROL(39) => N407, 
         -- Connections to port 'CONTROL41'
         CONTROL(40) => N408, 
         -- Connections to port 'CONTROL42'
         CONTROL(41) => N409, 
         -- Connections to port 'CONTROL43'
         CONTROL(42) => N410, 
         -- Connections to port 'CONTROL44'
         CONTROL(43) => N411, 
         -- Connections to port 'CONTROL45'
         CONTROL(44) => N412, 
         -- Connections to port 'Z'
         Z(0) => N573 );
   C4774_cell : SELECT_OP
      generic map ( num_inputs => 45, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => REGISTERS_0_0_port, 
         -- Connections to port 'DATA2'
         DATA(1) => REGISTERS_1_0_port, 
         -- Connections to port 'DATA3'
         DATA(2) => REGISTERS_2_0_port, 
         -- Connections to port 'DATA4'
         DATA(3) => REGISTERS_3_0_port, 
         -- Connections to port 'DATA5'
         DATA(4) => REGISTERS_4_0_port, 
         -- Connections to port 'DATA6'
         DATA(5) => REGISTERS_5_0_port, 
         -- Connections to port 'DATA7'
         DATA(6) => REGISTERS_6_0_port, 
         -- Connections to port 'DATA8'
         DATA(7) => REGISTERS_7_0_port, 
         -- Connections to port 'DATA9'
         DATA(8) => REGISTERS_8_0_port, 
         -- Connections to port 'DATA10'
         DATA(9) => REGISTERS_9_0_port, 
         -- Connections to port 'DATA11'
         DATA(10) => REGISTERS_10_0_port, 
         -- Connections to port 'DATA12'
         DATA(11) => REGISTERS_11_0_port, 
         -- Connections to port 'DATA13'
         DATA(12) => REGISTERS_12_0_port, 
         -- Connections to port 'DATA14'
         DATA(13) => REGISTERS_13_0_port, 
         -- Connections to port 'DATA15'
         DATA(14) => REGISTERS_14_0_port, 
         -- Connections to port 'DATA16'
         DATA(15) => REGISTERS_15_0_port, 
         -- Connections to port 'DATA17'
         DATA(16) => REGISTERS_16_0_port, 
         -- Connections to port 'DATA18'
         DATA(17) => REGISTERS_17_0_port, 
         -- Connections to port 'DATA19'
         DATA(18) => REGISTERS_18_0_port, 
         -- Connections to port 'DATA20'
         DATA(19) => REGISTERS_19_0_port, 
         -- Connections to port 'DATA21'
         DATA(20) => REGISTERS_20_0_port, 
         -- Connections to port 'DATA22'
         DATA(21) => REGISTERS_21_0_port, 
         -- Connections to port 'DATA23'
         DATA(22) => REGISTERS_22_0_port, 
         -- Connections to port 'DATA24'
         DATA(23) => REGISTERS_23_0_port, 
         -- Connections to port 'DATA25'
         DATA(24) => REGISTERS_24_0_port, 
         -- Connections to port 'DATA26'
         DATA(25) => REGISTERS_25_0_port, 
         -- Connections to port 'DATA27'
         DATA(26) => REGISTERS_26_0_port, 
         -- Connections to port 'DATA28'
         DATA(27) => REGISTERS_27_0_port, 
         -- Connections to port 'DATA29'
         DATA(28) => REGISTERS_28_0_port, 
         -- Connections to port 'DATA30'
         DATA(29) => REGISTERS_29_0_port, 
         -- Connections to port 'DATA31'
         DATA(30) => REGISTERS_30_0_port, 
         -- Connections to port 'DATA32'
         DATA(31) => REGISTERS_31_0_port, 
         -- Connections to port 'DATA33'
         DATA(32) => REGISTERS_32_0_port, 
         -- Connections to port 'DATA34'
         DATA(33) => REGISTERS_33_0_port, 
         -- Connections to port 'DATA35'
         DATA(34) => REGISTERS_34_0_port, 
         -- Connections to port 'DATA36'
         DATA(35) => REGISTERS_35_0_port, 
         -- Connections to port 'DATA37'
         DATA(36) => REGISTERS_36_0_port, 
         -- Connections to port 'DATA38'
         DATA(37) => REGISTERS_37_0_port, 
         -- Connections to port 'DATA39'
         DATA(38) => REGISTERS_38_0_port, 
         -- Connections to port 'DATA40'
         DATA(39) => REGISTERS_39_0_port, 
         -- Connections to port 'DATA41'
         DATA(40) => REGISTERS_40_0_port, 
         -- Connections to port 'DATA42'
         DATA(41) => REGISTERS_41_0_port, 
         -- Connections to port 'DATA43'
         DATA(42) => REGISTERS_42_0_port, 
         -- Connections to port 'DATA44'
         DATA(43) => REGISTERS_43_0_port, 
         -- Connections to port 'DATA45'
         DATA(44) => REGISTERS_44_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N368, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N369, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N370, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N371, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N372, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N373, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N374, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N375, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N376, 
         -- Connections to port 'CONTROL10'
         CONTROL(9) => N377, 
         -- Connections to port 'CONTROL11'
         CONTROL(10) => N378, 
         -- Connections to port 'CONTROL12'
         CONTROL(11) => N379, 
         -- Connections to port 'CONTROL13'
         CONTROL(12) => N380, 
         -- Connections to port 'CONTROL14'
         CONTROL(13) => N381, 
         -- Connections to port 'CONTROL15'
         CONTROL(14) => N382, 
         -- Connections to port 'CONTROL16'
         CONTROL(15) => N383, 
         -- Connections to port 'CONTROL17'
         CONTROL(16) => N384, 
         -- Connections to port 'CONTROL18'
         CONTROL(17) => N385, 
         -- Connections to port 'CONTROL19'
         CONTROL(18) => N386, 
         -- Connections to port 'CONTROL20'
         CONTROL(19) => N387, 
         -- Connections to port 'CONTROL21'
         CONTROL(20) => N388, 
         -- Connections to port 'CONTROL22'
         CONTROL(21) => N389, 
         -- Connections to port 'CONTROL23'
         CONTROL(22) => N390, 
         -- Connections to port 'CONTROL24'
         CONTROL(23) => N391, 
         -- Connections to port 'CONTROL25'
         CONTROL(24) => N392, 
         -- Connections to port 'CONTROL26'
         CONTROL(25) => N393, 
         -- Connections to port 'CONTROL27'
         CONTROL(26) => N394, 
         -- Connections to port 'CONTROL28'
         CONTROL(27) => N395, 
         -- Connections to port 'CONTROL29'
         CONTROL(28) => N396, 
         -- Connections to port 'CONTROL30'
         CONTROL(29) => N397, 
         -- Connections to port 'CONTROL31'
         CONTROL(30) => N398, 
         -- Connections to port 'CONTROL32'
         CONTROL(31) => N399, 
         -- Connections to port 'CONTROL33'
         CONTROL(32) => N400, 
         -- Connections to port 'CONTROL34'
         CONTROL(33) => N401, 
         -- Connections to port 'CONTROL35'
         CONTROL(34) => N402, 
         -- Connections to port 'CONTROL36'
         CONTROL(35) => N403, 
         -- Connections to port 'CONTROL37'
         CONTROL(36) => N404, 
         -- Connections to port 'CONTROL38'
         CONTROL(37) => N405, 
         -- Connections to port 'CONTROL39'
         CONTROL(38) => N406, 
         -- Connections to port 'CONTROL40'
         CONTROL(39) => N407, 
         -- Connections to port 'CONTROL41'
         CONTROL(40) => N408, 
         -- Connections to port 'CONTROL42'
         CONTROL(41) => N409, 
         -- Connections to port 'CONTROL43'
         CONTROL(42) => N410, 
         -- Connections to port 'CONTROL44'
         CONTROL(43) => N411, 
         -- Connections to port 'CONTROL45'
         CONTROL(44) => N412, 
         -- Connections to port 'Z'
         Z(0) => N574 );
   C4775_cell : SELECT_OP
      generic map ( num_inputs => 45, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => REGISTERS_0_7_port, 
         -- Connections to port 'DATA2'
         DATA(1) => REGISTERS_1_7_port, 
         -- Connections to port 'DATA3'
         DATA(2) => REGISTERS_2_7_port, 
         -- Connections to port 'DATA4'
         DATA(3) => REGISTERS_3_7_port, 
         -- Connections to port 'DATA5'
         DATA(4) => REGISTERS_4_7_port, 
         -- Connections to port 'DATA6'
         DATA(5) => REGISTERS_5_7_port, 
         -- Connections to port 'DATA7'
         DATA(6) => REGISTERS_6_7_port, 
         -- Connections to port 'DATA8'
         DATA(7) => REGISTERS_7_7_port, 
         -- Connections to port 'DATA9'
         DATA(8) => REGISTERS_8_7_port, 
         -- Connections to port 'DATA10'
         DATA(9) => REGISTERS_9_7_port, 
         -- Connections to port 'DATA11'
         DATA(10) => REGISTERS_10_7_port, 
         -- Connections to port 'DATA12'
         DATA(11) => REGISTERS_11_7_port, 
         -- Connections to port 'DATA13'
         DATA(12) => REGISTERS_12_7_port, 
         -- Connections to port 'DATA14'
         DATA(13) => REGISTERS_13_7_port, 
         -- Connections to port 'DATA15'
         DATA(14) => REGISTERS_14_7_port, 
         -- Connections to port 'DATA16'
         DATA(15) => REGISTERS_15_7_port, 
         -- Connections to port 'DATA17'
         DATA(16) => REGISTERS_16_7_port, 
         -- Connections to port 'DATA18'
         DATA(17) => REGISTERS_17_7_port, 
         -- Connections to port 'DATA19'
         DATA(18) => REGISTERS_18_7_port, 
         -- Connections to port 'DATA20'
         DATA(19) => REGISTERS_19_7_port, 
         -- Connections to port 'DATA21'
         DATA(20) => REGISTERS_20_7_port, 
         -- Connections to port 'DATA22'
         DATA(21) => REGISTERS_21_7_port, 
         -- Connections to port 'DATA23'
         DATA(22) => REGISTERS_22_7_port, 
         -- Connections to port 'DATA24'
         DATA(23) => REGISTERS_23_7_port, 
         -- Connections to port 'DATA25'
         DATA(24) => REGISTERS_24_7_port, 
         -- Connections to port 'DATA26'
         DATA(25) => REGISTERS_25_7_port, 
         -- Connections to port 'DATA27'
         DATA(26) => REGISTERS_26_7_port, 
         -- Connections to port 'DATA28'
         DATA(27) => REGISTERS_27_7_port, 
         -- Connections to port 'DATA29'
         DATA(28) => REGISTERS_28_7_port, 
         -- Connections to port 'DATA30'
         DATA(29) => REGISTERS_29_7_port, 
         -- Connections to port 'DATA31'
         DATA(30) => REGISTERS_30_7_port, 
         -- Connections to port 'DATA32'
         DATA(31) => REGISTERS_31_7_port, 
         -- Connections to port 'DATA33'
         DATA(32) => REGISTERS_32_7_port, 
         -- Connections to port 'DATA34'
         DATA(33) => REGISTERS_33_7_port, 
         -- Connections to port 'DATA35'
         DATA(34) => REGISTERS_34_7_port, 
         -- Connections to port 'DATA36'
         DATA(35) => REGISTERS_35_7_port, 
         -- Connections to port 'DATA37'
         DATA(36) => REGISTERS_36_7_port, 
         -- Connections to port 'DATA38'
         DATA(37) => REGISTERS_37_7_port, 
         -- Connections to port 'DATA39'
         DATA(38) => REGISTERS_38_7_port, 
         -- Connections to port 'DATA40'
         DATA(39) => REGISTERS_39_7_port, 
         -- Connections to port 'DATA41'
         DATA(40) => REGISTERS_40_7_port, 
         -- Connections to port 'DATA42'
         DATA(41) => REGISTERS_41_7_port, 
         -- Connections to port 'DATA43'
         DATA(42) => REGISTERS_42_7_port, 
         -- Connections to port 'DATA44'
         DATA(43) => REGISTERS_43_7_port, 
         -- Connections to port 'DATA45'
         DATA(44) => REGISTERS_44_7_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N413, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N414, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N415, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N416, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N417, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N418, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N419, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N420, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N421, 
         -- Connections to port 'CONTROL10'
         CONTROL(9) => N422, 
         -- Connections to port 'CONTROL11'
         CONTROL(10) => N423, 
         -- Connections to port 'CONTROL12'
         CONTROL(11) => N424, 
         -- Connections to port 'CONTROL13'
         CONTROL(12) => N425, 
         -- Connections to port 'CONTROL14'
         CONTROL(13) => N426, 
         -- Connections to port 'CONTROL15'
         CONTROL(14) => N427, 
         -- Connections to port 'CONTROL16'
         CONTROL(15) => N428, 
         -- Connections to port 'CONTROL17'
         CONTROL(16) => N429, 
         -- Connections to port 'CONTROL18'
         CONTROL(17) => N430, 
         -- Connections to port 'CONTROL19'
         CONTROL(18) => N431, 
         -- Connections to port 'CONTROL20'
         CONTROL(19) => N432, 
         -- Connections to port 'CONTROL21'
         CONTROL(20) => N433, 
         -- Connections to port 'CONTROL22'
         CONTROL(21) => N434, 
         -- Connections to port 'CONTROL23'
         CONTROL(22) => N435, 
         -- Connections to port 'CONTROL24'
         CONTROL(23) => N436, 
         -- Connections to port 'CONTROL25'
         CONTROL(24) => N437, 
         -- Connections to port 'CONTROL26'
         CONTROL(25) => N438, 
         -- Connections to port 'CONTROL27'
         CONTROL(26) => N439, 
         -- Connections to port 'CONTROL28'
         CONTROL(27) => N440, 
         -- Connections to port 'CONTROL29'
         CONTROL(28) => N441, 
         -- Connections to port 'CONTROL30'
         CONTROL(29) => N442, 
         -- Connections to port 'CONTROL31'
         CONTROL(30) => N443, 
         -- Connections to port 'CONTROL32'
         CONTROL(31) => N444, 
         -- Connections to port 'CONTROL33'
         CONTROL(32) => N445, 
         -- Connections to port 'CONTROL34'
         CONTROL(33) => N446, 
         -- Connections to port 'CONTROL35'
         CONTROL(34) => N447, 
         -- Connections to port 'CONTROL36'
         CONTROL(35) => N448, 
         -- Connections to port 'CONTROL37'
         CONTROL(36) => N449, 
         -- Connections to port 'CONTROL38'
         CONTROL(37) => N450, 
         -- Connections to port 'CONTROL39'
         CONTROL(38) => N451, 
         -- Connections to port 'CONTROL40'
         CONTROL(39) => N452, 
         -- Connections to port 'CONTROL41'
         CONTROL(40) => N453, 
         -- Connections to port 'CONTROL42'
         CONTROL(41) => N454, 
         -- Connections to port 'CONTROL43'
         CONTROL(42) => N455, 
         -- Connections to port 'CONTROL44'
         CONTROL(43) => N456, 
         -- Connections to port 'CONTROL45'
         CONTROL(44) => N457, 
         -- Connections to port 'Z'
         Z(0) => N504 );
   B_55 : GTECH_BUF port map( A => N459, Z => N413);
   B_56 : GTECH_BUF port map( A => N461, Z => N414);
   B_57 : GTECH_BUF port map( A => N463, Z => N415);
   B_58 : GTECH_BUF port map( A => N465, Z => N416);
   B_59 : GTECH_BUF port map( A => N467, Z => N417);
   B_60 : GTECH_BUF port map( A => N469, Z => N418);
   B_61 : GTECH_BUF port map( A => N471, Z => N419);
   B_62 : GTECH_BUF port map( A => N473, Z => N420);
   B_63 : GTECH_BUF port map( A => N475, Z => N421);
   B_64 : GTECH_BUF port map( A => N477, Z => N422);
   B_65 : GTECH_BUF port map( A => N479, Z => N423);
   B_66 : GTECH_BUF port map( A => N481, Z => N424);
   B_67 : GTECH_BUF port map( A => N483, Z => N425);
   B_68 : GTECH_BUF port map( A => N485, Z => N426);
   B_69 : GTECH_BUF port map( A => N486, Z => N427);
   B_70 : GTECH_BUF port map( A => N487, Z => N428);
   B_71 : GTECH_BUF port map( A => N488, Z => N429);
   B_72 : GTECH_BUF port map( A => N489, Z => N430);
   B_73 : GTECH_BUF port map( A => N490, Z => N431);
   B_74 : GTECH_BUF port map( A => N491, Z => N432);
   B_75 : GTECH_BUF port map( A => N492, Z => N433);
   B_76 : GTECH_BUF port map( A => N493, Z => N434);
   B_77 : GTECH_BUF port map( A => N494, Z => N435);
   B_78 : GTECH_BUF port map( A => N495, Z => N436);
   B_79 : GTECH_BUF port map( A => N496, Z => N437);
   B_80 : GTECH_BUF port map( A => N497, Z => N438);
   B_81 : GTECH_BUF port map( A => N498, Z => N439);
   B_82 : GTECH_BUF port map( A => N499, Z => N440);
   B_83 : GTECH_BUF port map( A => N500, Z => N441);
   B_84 : GTECH_BUF port map( A => N501, Z => N442);
   B_85 : GTECH_BUF port map( A => N502, Z => N443);
   B_86 : GTECH_BUF port map( A => N503, Z => N444);
   B_87 : GTECH_BUF port map( A => N460, Z => N445);
   B_88 : GTECH_BUF port map( A => N462, Z => N446);
   B_89 : GTECH_BUF port map( A => N464, Z => N447);
   B_90 : GTECH_BUF port map( A => N466, Z => N448);
   B_91 : GTECH_BUF port map( A => N468, Z => N449);
   B_92 : GTECH_BUF port map( A => N470, Z => N450);
   B_93 : GTECH_BUF port map( A => N472, Z => N451);
   B_94 : GTECH_BUF port map( A => N474, Z => N452);
   B_95 : GTECH_BUF port map( A => N476, Z => N453);
   B_96 : GTECH_BUF port map( A => N478, Z => N454);
   B_97 : GTECH_BUF port map( A => N480, Z => N455);
   B_98 : GTECH_BUF port map( A => N482, Z => N456);
   B_99 : GTECH_BUF port map( A => N484, Z => N457);
   C4776_cell : SELECT_OP
      generic map ( num_inputs => 45, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => REGISTERS_0_6_port, 
         -- Connections to port 'DATA2'
         DATA(1) => REGISTERS_1_6_port, 
         -- Connections to port 'DATA3'
         DATA(2) => REGISTERS_2_6_port, 
         -- Connections to port 'DATA4'
         DATA(3) => REGISTERS_3_6_port, 
         -- Connections to port 'DATA5'
         DATA(4) => REGISTERS_4_6_port, 
         -- Connections to port 'DATA6'
         DATA(5) => REGISTERS_5_6_port, 
         -- Connections to port 'DATA7'
         DATA(6) => REGISTERS_6_6_port, 
         -- Connections to port 'DATA8'
         DATA(7) => REGISTERS_7_6_port, 
         -- Connections to port 'DATA9'
         DATA(8) => REGISTERS_8_6_port, 
         -- Connections to port 'DATA10'
         DATA(9) => REGISTERS_9_6_port, 
         -- Connections to port 'DATA11'
         DATA(10) => REGISTERS_10_6_port, 
         -- Connections to port 'DATA12'
         DATA(11) => REGISTERS_11_6_port, 
         -- Connections to port 'DATA13'
         DATA(12) => REGISTERS_12_6_port, 
         -- Connections to port 'DATA14'
         DATA(13) => REGISTERS_13_6_port, 
         -- Connections to port 'DATA15'
         DATA(14) => REGISTERS_14_6_port, 
         -- Connections to port 'DATA16'
         DATA(15) => REGISTERS_15_6_port, 
         -- Connections to port 'DATA17'
         DATA(16) => REGISTERS_16_6_port, 
         -- Connections to port 'DATA18'
         DATA(17) => REGISTERS_17_6_port, 
         -- Connections to port 'DATA19'
         DATA(18) => REGISTERS_18_6_port, 
         -- Connections to port 'DATA20'
         DATA(19) => REGISTERS_19_6_port, 
         -- Connections to port 'DATA21'
         DATA(20) => REGISTERS_20_6_port, 
         -- Connections to port 'DATA22'
         DATA(21) => REGISTERS_21_6_port, 
         -- Connections to port 'DATA23'
         DATA(22) => REGISTERS_22_6_port, 
         -- Connections to port 'DATA24'
         DATA(23) => REGISTERS_23_6_port, 
         -- Connections to port 'DATA25'
         DATA(24) => REGISTERS_24_6_port, 
         -- Connections to port 'DATA26'
         DATA(25) => REGISTERS_25_6_port, 
         -- Connections to port 'DATA27'
         DATA(26) => REGISTERS_26_6_port, 
         -- Connections to port 'DATA28'
         DATA(27) => REGISTERS_27_6_port, 
         -- Connections to port 'DATA29'
         DATA(28) => REGISTERS_28_6_port, 
         -- Connections to port 'DATA30'
         DATA(29) => REGISTERS_29_6_port, 
         -- Connections to port 'DATA31'
         DATA(30) => REGISTERS_30_6_port, 
         -- Connections to port 'DATA32'
         DATA(31) => REGISTERS_31_6_port, 
         -- Connections to port 'DATA33'
         DATA(32) => REGISTERS_32_6_port, 
         -- Connections to port 'DATA34'
         DATA(33) => REGISTERS_33_6_port, 
         -- Connections to port 'DATA35'
         DATA(34) => REGISTERS_34_6_port, 
         -- Connections to port 'DATA36'
         DATA(35) => REGISTERS_35_6_port, 
         -- Connections to port 'DATA37'
         DATA(36) => REGISTERS_36_6_port, 
         -- Connections to port 'DATA38'
         DATA(37) => REGISTERS_37_6_port, 
         -- Connections to port 'DATA39'
         DATA(38) => REGISTERS_38_6_port, 
         -- Connections to port 'DATA40'
         DATA(39) => REGISTERS_39_6_port, 
         -- Connections to port 'DATA41'
         DATA(40) => REGISTERS_40_6_port, 
         -- Connections to port 'DATA42'
         DATA(41) => REGISTERS_41_6_port, 
         -- Connections to port 'DATA43'
         DATA(42) => REGISTERS_42_6_port, 
         -- Connections to port 'DATA44'
         DATA(43) => REGISTERS_43_6_port, 
         -- Connections to port 'DATA45'
         DATA(44) => REGISTERS_44_6_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N413, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N414, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N415, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N416, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N417, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N418, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N419, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N420, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N421, 
         -- Connections to port 'CONTROL10'
         CONTROL(9) => N422, 
         -- Connections to port 'CONTROL11'
         CONTROL(10) => N423, 
         -- Connections to port 'CONTROL12'
         CONTROL(11) => N424, 
         -- Connections to port 'CONTROL13'
         CONTROL(12) => N425, 
         -- Connections to port 'CONTROL14'
         CONTROL(13) => N426, 
         -- Connections to port 'CONTROL15'
         CONTROL(14) => N427, 
         -- Connections to port 'CONTROL16'
         CONTROL(15) => N428, 
         -- Connections to port 'CONTROL17'
         CONTROL(16) => N429, 
         -- Connections to port 'CONTROL18'
         CONTROL(17) => N430, 
         -- Connections to port 'CONTROL19'
         CONTROL(18) => N431, 
         -- Connections to port 'CONTROL20'
         CONTROL(19) => N432, 
         -- Connections to port 'CONTROL21'
         CONTROL(20) => N433, 
         -- Connections to port 'CONTROL22'
         CONTROL(21) => N434, 
         -- Connections to port 'CONTROL23'
         CONTROL(22) => N435, 
         -- Connections to port 'CONTROL24'
         CONTROL(23) => N436, 
         -- Connections to port 'CONTROL25'
         CONTROL(24) => N437, 
         -- Connections to port 'CONTROL26'
         CONTROL(25) => N438, 
         -- Connections to port 'CONTROL27'
         CONTROL(26) => N439, 
         -- Connections to port 'CONTROL28'
         CONTROL(27) => N440, 
         -- Connections to port 'CONTROL29'
         CONTROL(28) => N441, 
         -- Connections to port 'CONTROL30'
         CONTROL(29) => N442, 
         -- Connections to port 'CONTROL31'
         CONTROL(30) => N443, 
         -- Connections to port 'CONTROL32'
         CONTROL(31) => N444, 
         -- Connections to port 'CONTROL33'
         CONTROL(32) => N445, 
         -- Connections to port 'CONTROL34'
         CONTROL(33) => N446, 
         -- Connections to port 'CONTROL35'
         CONTROL(34) => N447, 
         -- Connections to port 'CONTROL36'
         CONTROL(35) => N448, 
         -- Connections to port 'CONTROL37'
         CONTROL(36) => N449, 
         -- Connections to port 'CONTROL38'
         CONTROL(37) => N450, 
         -- Connections to port 'CONTROL39'
         CONTROL(38) => N451, 
         -- Connections to port 'CONTROL40'
         CONTROL(39) => N452, 
         -- Connections to port 'CONTROL41'
         CONTROL(40) => N453, 
         -- Connections to port 'CONTROL42'
         CONTROL(41) => N454, 
         -- Connections to port 'CONTROL43'
         CONTROL(42) => N455, 
         -- Connections to port 'CONTROL44'
         CONTROL(43) => N456, 
         -- Connections to port 'CONTROL45'
         CONTROL(44) => N457, 
         -- Connections to port 'Z'
         Z(0) => N505 );
   C4777_cell : SELECT_OP
      generic map ( num_inputs => 45, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => REGISTERS_0_5_port, 
         -- Connections to port 'DATA2'
         DATA(1) => REGISTERS_1_5_port, 
         -- Connections to port 'DATA3'
         DATA(2) => REGISTERS_2_5_port, 
         -- Connections to port 'DATA4'
         DATA(3) => REGISTERS_3_5_port, 
         -- Connections to port 'DATA5'
         DATA(4) => REGISTERS_4_5_port, 
         -- Connections to port 'DATA6'
         DATA(5) => REGISTERS_5_5_port, 
         -- Connections to port 'DATA7'
         DATA(6) => REGISTERS_6_5_port, 
         -- Connections to port 'DATA8'
         DATA(7) => REGISTERS_7_5_port, 
         -- Connections to port 'DATA9'
         DATA(8) => REGISTERS_8_5_port, 
         -- Connections to port 'DATA10'
         DATA(9) => REGISTERS_9_5_port, 
         -- Connections to port 'DATA11'
         DATA(10) => REGISTERS_10_5_port, 
         -- Connections to port 'DATA12'
         DATA(11) => REGISTERS_11_5_port, 
         -- Connections to port 'DATA13'
         DATA(12) => REGISTERS_12_5_port, 
         -- Connections to port 'DATA14'
         DATA(13) => REGISTERS_13_5_port, 
         -- Connections to port 'DATA15'
         DATA(14) => REGISTERS_14_5_port, 
         -- Connections to port 'DATA16'
         DATA(15) => REGISTERS_15_5_port, 
         -- Connections to port 'DATA17'
         DATA(16) => REGISTERS_16_5_port, 
         -- Connections to port 'DATA18'
         DATA(17) => REGISTERS_17_5_port, 
         -- Connections to port 'DATA19'
         DATA(18) => REGISTERS_18_5_port, 
         -- Connections to port 'DATA20'
         DATA(19) => REGISTERS_19_5_port, 
         -- Connections to port 'DATA21'
         DATA(20) => REGISTERS_20_5_port, 
         -- Connections to port 'DATA22'
         DATA(21) => REGISTERS_21_5_port, 
         -- Connections to port 'DATA23'
         DATA(22) => REGISTERS_22_5_port, 
         -- Connections to port 'DATA24'
         DATA(23) => REGISTERS_23_5_port, 
         -- Connections to port 'DATA25'
         DATA(24) => REGISTERS_24_5_port, 
         -- Connections to port 'DATA26'
         DATA(25) => REGISTERS_25_5_port, 
         -- Connections to port 'DATA27'
         DATA(26) => REGISTERS_26_5_port, 
         -- Connections to port 'DATA28'
         DATA(27) => REGISTERS_27_5_port, 
         -- Connections to port 'DATA29'
         DATA(28) => REGISTERS_28_5_port, 
         -- Connections to port 'DATA30'
         DATA(29) => REGISTERS_29_5_port, 
         -- Connections to port 'DATA31'
         DATA(30) => REGISTERS_30_5_port, 
         -- Connections to port 'DATA32'
         DATA(31) => REGISTERS_31_5_port, 
         -- Connections to port 'DATA33'
         DATA(32) => REGISTERS_32_5_port, 
         -- Connections to port 'DATA34'
         DATA(33) => REGISTERS_33_5_port, 
         -- Connections to port 'DATA35'
         DATA(34) => REGISTERS_34_5_port, 
         -- Connections to port 'DATA36'
         DATA(35) => REGISTERS_35_5_port, 
         -- Connections to port 'DATA37'
         DATA(36) => REGISTERS_36_5_port, 
         -- Connections to port 'DATA38'
         DATA(37) => REGISTERS_37_5_port, 
         -- Connections to port 'DATA39'
         DATA(38) => REGISTERS_38_5_port, 
         -- Connections to port 'DATA40'
         DATA(39) => REGISTERS_39_5_port, 
         -- Connections to port 'DATA41'
         DATA(40) => REGISTERS_40_5_port, 
         -- Connections to port 'DATA42'
         DATA(41) => REGISTERS_41_5_port, 
         -- Connections to port 'DATA43'
         DATA(42) => REGISTERS_42_5_port, 
         -- Connections to port 'DATA44'
         DATA(43) => REGISTERS_43_5_port, 
         -- Connections to port 'DATA45'
         DATA(44) => REGISTERS_44_5_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N413, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N414, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N415, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N416, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N417, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N418, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N419, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N420, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N421, 
         -- Connections to port 'CONTROL10'
         CONTROL(9) => N422, 
         -- Connections to port 'CONTROL11'
         CONTROL(10) => N423, 
         -- Connections to port 'CONTROL12'
         CONTROL(11) => N424, 
         -- Connections to port 'CONTROL13'
         CONTROL(12) => N425, 
         -- Connections to port 'CONTROL14'
         CONTROL(13) => N426, 
         -- Connections to port 'CONTROL15'
         CONTROL(14) => N427, 
         -- Connections to port 'CONTROL16'
         CONTROL(15) => N428, 
         -- Connections to port 'CONTROL17'
         CONTROL(16) => N429, 
         -- Connections to port 'CONTROL18'
         CONTROL(17) => N430, 
         -- Connections to port 'CONTROL19'
         CONTROL(18) => N431, 
         -- Connections to port 'CONTROL20'
         CONTROL(19) => N432, 
         -- Connections to port 'CONTROL21'
         CONTROL(20) => N433, 
         -- Connections to port 'CONTROL22'
         CONTROL(21) => N434, 
         -- Connections to port 'CONTROL23'
         CONTROL(22) => N435, 
         -- Connections to port 'CONTROL24'
         CONTROL(23) => N436, 
         -- Connections to port 'CONTROL25'
         CONTROL(24) => N437, 
         -- Connections to port 'CONTROL26'
         CONTROL(25) => N438, 
         -- Connections to port 'CONTROL27'
         CONTROL(26) => N439, 
         -- Connections to port 'CONTROL28'
         CONTROL(27) => N440, 
         -- Connections to port 'CONTROL29'
         CONTROL(28) => N441, 
         -- Connections to port 'CONTROL30'
         CONTROL(29) => N442, 
         -- Connections to port 'CONTROL31'
         CONTROL(30) => N443, 
         -- Connections to port 'CONTROL32'
         CONTROL(31) => N444, 
         -- Connections to port 'CONTROL33'
         CONTROL(32) => N445, 
         -- Connections to port 'CONTROL34'
         CONTROL(33) => N446, 
         -- Connections to port 'CONTROL35'
         CONTROL(34) => N447, 
         -- Connections to port 'CONTROL36'
         CONTROL(35) => N448, 
         -- Connections to port 'CONTROL37'
         CONTROL(36) => N449, 
         -- Connections to port 'CONTROL38'
         CONTROL(37) => N450, 
         -- Connections to port 'CONTROL39'
         CONTROL(38) => N451, 
         -- Connections to port 'CONTROL40'
         CONTROL(39) => N452, 
         -- Connections to port 'CONTROL41'
         CONTROL(40) => N453, 
         -- Connections to port 'CONTROL42'
         CONTROL(41) => N454, 
         -- Connections to port 'CONTROL43'
         CONTROL(42) => N455, 
         -- Connections to port 'CONTROL44'
         CONTROL(43) => N456, 
         -- Connections to port 'CONTROL45'
         CONTROL(44) => N457, 
         -- Connections to port 'Z'
         Z(0) => N506 );
   C4778_cell : SELECT_OP
      generic map ( num_inputs => 45, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => REGISTERS_0_4_port, 
         -- Connections to port 'DATA2'
         DATA(1) => REGISTERS_1_4_port, 
         -- Connections to port 'DATA3'
         DATA(2) => REGISTERS_2_4_port, 
         -- Connections to port 'DATA4'
         DATA(3) => REGISTERS_3_4_port, 
         -- Connections to port 'DATA5'
         DATA(4) => REGISTERS_4_4_port, 
         -- Connections to port 'DATA6'
         DATA(5) => REGISTERS_5_4_port, 
         -- Connections to port 'DATA7'
         DATA(6) => REGISTERS_6_4_port, 
         -- Connections to port 'DATA8'
         DATA(7) => REGISTERS_7_4_port, 
         -- Connections to port 'DATA9'
         DATA(8) => REGISTERS_8_4_port, 
         -- Connections to port 'DATA10'
         DATA(9) => REGISTERS_9_4_port, 
         -- Connections to port 'DATA11'
         DATA(10) => REGISTERS_10_4_port, 
         -- Connections to port 'DATA12'
         DATA(11) => REGISTERS_11_4_port, 
         -- Connections to port 'DATA13'
         DATA(12) => REGISTERS_12_4_port, 
         -- Connections to port 'DATA14'
         DATA(13) => REGISTERS_13_4_port, 
         -- Connections to port 'DATA15'
         DATA(14) => REGISTERS_14_4_port, 
         -- Connections to port 'DATA16'
         DATA(15) => REGISTERS_15_4_port, 
         -- Connections to port 'DATA17'
         DATA(16) => REGISTERS_16_4_port, 
         -- Connections to port 'DATA18'
         DATA(17) => REGISTERS_17_4_port, 
         -- Connections to port 'DATA19'
         DATA(18) => REGISTERS_18_4_port, 
         -- Connections to port 'DATA20'
         DATA(19) => REGISTERS_19_4_port, 
         -- Connections to port 'DATA21'
         DATA(20) => REGISTERS_20_4_port, 
         -- Connections to port 'DATA22'
         DATA(21) => REGISTERS_21_4_port, 
         -- Connections to port 'DATA23'
         DATA(22) => REGISTERS_22_4_port, 
         -- Connections to port 'DATA24'
         DATA(23) => REGISTERS_23_4_port, 
         -- Connections to port 'DATA25'
         DATA(24) => REGISTERS_24_4_port, 
         -- Connections to port 'DATA26'
         DATA(25) => REGISTERS_25_4_port, 
         -- Connections to port 'DATA27'
         DATA(26) => REGISTERS_26_4_port, 
         -- Connections to port 'DATA28'
         DATA(27) => REGISTERS_27_4_port, 
         -- Connections to port 'DATA29'
         DATA(28) => REGISTERS_28_4_port, 
         -- Connections to port 'DATA30'
         DATA(29) => REGISTERS_29_4_port, 
         -- Connections to port 'DATA31'
         DATA(30) => REGISTERS_30_4_port, 
         -- Connections to port 'DATA32'
         DATA(31) => REGISTERS_31_4_port, 
         -- Connections to port 'DATA33'
         DATA(32) => REGISTERS_32_4_port, 
         -- Connections to port 'DATA34'
         DATA(33) => REGISTERS_33_4_port, 
         -- Connections to port 'DATA35'
         DATA(34) => REGISTERS_34_4_port, 
         -- Connections to port 'DATA36'
         DATA(35) => REGISTERS_35_4_port, 
         -- Connections to port 'DATA37'
         DATA(36) => REGISTERS_36_4_port, 
         -- Connections to port 'DATA38'
         DATA(37) => REGISTERS_37_4_port, 
         -- Connections to port 'DATA39'
         DATA(38) => REGISTERS_38_4_port, 
         -- Connections to port 'DATA40'
         DATA(39) => REGISTERS_39_4_port, 
         -- Connections to port 'DATA41'
         DATA(40) => REGISTERS_40_4_port, 
         -- Connections to port 'DATA42'
         DATA(41) => REGISTERS_41_4_port, 
         -- Connections to port 'DATA43'
         DATA(42) => REGISTERS_42_4_port, 
         -- Connections to port 'DATA44'
         DATA(43) => REGISTERS_43_4_port, 
         -- Connections to port 'DATA45'
         DATA(44) => REGISTERS_44_4_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N413, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N414, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N415, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N416, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N417, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N418, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N419, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N420, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N421, 
         -- Connections to port 'CONTROL10'
         CONTROL(9) => N422, 
         -- Connections to port 'CONTROL11'
         CONTROL(10) => N423, 
         -- Connections to port 'CONTROL12'
         CONTROL(11) => N424, 
         -- Connections to port 'CONTROL13'
         CONTROL(12) => N425, 
         -- Connections to port 'CONTROL14'
         CONTROL(13) => N426, 
         -- Connections to port 'CONTROL15'
         CONTROL(14) => N427, 
         -- Connections to port 'CONTROL16'
         CONTROL(15) => N428, 
         -- Connections to port 'CONTROL17'
         CONTROL(16) => N429, 
         -- Connections to port 'CONTROL18'
         CONTROL(17) => N430, 
         -- Connections to port 'CONTROL19'
         CONTROL(18) => N431, 
         -- Connections to port 'CONTROL20'
         CONTROL(19) => N432, 
         -- Connections to port 'CONTROL21'
         CONTROL(20) => N433, 
         -- Connections to port 'CONTROL22'
         CONTROL(21) => N434, 
         -- Connections to port 'CONTROL23'
         CONTROL(22) => N435, 
         -- Connections to port 'CONTROL24'
         CONTROL(23) => N436, 
         -- Connections to port 'CONTROL25'
         CONTROL(24) => N437, 
         -- Connections to port 'CONTROL26'
         CONTROL(25) => N438, 
         -- Connections to port 'CONTROL27'
         CONTROL(26) => N439, 
         -- Connections to port 'CONTROL28'
         CONTROL(27) => N440, 
         -- Connections to port 'CONTROL29'
         CONTROL(28) => N441, 
         -- Connections to port 'CONTROL30'
         CONTROL(29) => N442, 
         -- Connections to port 'CONTROL31'
         CONTROL(30) => N443, 
         -- Connections to port 'CONTROL32'
         CONTROL(31) => N444, 
         -- Connections to port 'CONTROL33'
         CONTROL(32) => N445, 
         -- Connections to port 'CONTROL34'
         CONTROL(33) => N446, 
         -- Connections to port 'CONTROL35'
         CONTROL(34) => N447, 
         -- Connections to port 'CONTROL36'
         CONTROL(35) => N448, 
         -- Connections to port 'CONTROL37'
         CONTROL(36) => N449, 
         -- Connections to port 'CONTROL38'
         CONTROL(37) => N450, 
         -- Connections to port 'CONTROL39'
         CONTROL(38) => N451, 
         -- Connections to port 'CONTROL40'
         CONTROL(39) => N452, 
         -- Connections to port 'CONTROL41'
         CONTROL(40) => N453, 
         -- Connections to port 'CONTROL42'
         CONTROL(41) => N454, 
         -- Connections to port 'CONTROL43'
         CONTROL(42) => N455, 
         -- Connections to port 'CONTROL44'
         CONTROL(43) => N456, 
         -- Connections to port 'CONTROL45'
         CONTROL(44) => N457, 
         -- Connections to port 'Z'
         Z(0) => N507 );
   C4779_cell : SELECT_OP
      generic map ( num_inputs => 45, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => REGISTERS_0_3_port, 
         -- Connections to port 'DATA2'
         DATA(1) => REGISTERS_1_3_port, 
         -- Connections to port 'DATA3'
         DATA(2) => REGISTERS_2_3_port, 
         -- Connections to port 'DATA4'
         DATA(3) => REGISTERS_3_3_port, 
         -- Connections to port 'DATA5'
         DATA(4) => REGISTERS_4_3_port, 
         -- Connections to port 'DATA6'
         DATA(5) => REGISTERS_5_3_port, 
         -- Connections to port 'DATA7'
         DATA(6) => REGISTERS_6_3_port, 
         -- Connections to port 'DATA8'
         DATA(7) => REGISTERS_7_3_port, 
         -- Connections to port 'DATA9'
         DATA(8) => REGISTERS_8_3_port, 
         -- Connections to port 'DATA10'
         DATA(9) => REGISTERS_9_3_port, 
         -- Connections to port 'DATA11'
         DATA(10) => REGISTERS_10_3_port, 
         -- Connections to port 'DATA12'
         DATA(11) => REGISTERS_11_3_port, 
         -- Connections to port 'DATA13'
         DATA(12) => REGISTERS_12_3_port, 
         -- Connections to port 'DATA14'
         DATA(13) => REGISTERS_13_3_port, 
         -- Connections to port 'DATA15'
         DATA(14) => REGISTERS_14_3_port, 
         -- Connections to port 'DATA16'
         DATA(15) => REGISTERS_15_3_port, 
         -- Connections to port 'DATA17'
         DATA(16) => REGISTERS_16_3_port, 
         -- Connections to port 'DATA18'
         DATA(17) => REGISTERS_17_3_port, 
         -- Connections to port 'DATA19'
         DATA(18) => REGISTERS_18_3_port, 
         -- Connections to port 'DATA20'
         DATA(19) => REGISTERS_19_3_port, 
         -- Connections to port 'DATA21'
         DATA(20) => REGISTERS_20_3_port, 
         -- Connections to port 'DATA22'
         DATA(21) => REGISTERS_21_3_port, 
         -- Connections to port 'DATA23'
         DATA(22) => REGISTERS_22_3_port, 
         -- Connections to port 'DATA24'
         DATA(23) => REGISTERS_23_3_port, 
         -- Connections to port 'DATA25'
         DATA(24) => REGISTERS_24_3_port, 
         -- Connections to port 'DATA26'
         DATA(25) => REGISTERS_25_3_port, 
         -- Connections to port 'DATA27'
         DATA(26) => REGISTERS_26_3_port, 
         -- Connections to port 'DATA28'
         DATA(27) => REGISTERS_27_3_port, 
         -- Connections to port 'DATA29'
         DATA(28) => REGISTERS_28_3_port, 
         -- Connections to port 'DATA30'
         DATA(29) => REGISTERS_29_3_port, 
         -- Connections to port 'DATA31'
         DATA(30) => REGISTERS_30_3_port, 
         -- Connections to port 'DATA32'
         DATA(31) => REGISTERS_31_3_port, 
         -- Connections to port 'DATA33'
         DATA(32) => REGISTERS_32_3_port, 
         -- Connections to port 'DATA34'
         DATA(33) => REGISTERS_33_3_port, 
         -- Connections to port 'DATA35'
         DATA(34) => REGISTERS_34_3_port, 
         -- Connections to port 'DATA36'
         DATA(35) => REGISTERS_35_3_port, 
         -- Connections to port 'DATA37'
         DATA(36) => REGISTERS_36_3_port, 
         -- Connections to port 'DATA38'
         DATA(37) => REGISTERS_37_3_port, 
         -- Connections to port 'DATA39'
         DATA(38) => REGISTERS_38_3_port, 
         -- Connections to port 'DATA40'
         DATA(39) => REGISTERS_39_3_port, 
         -- Connections to port 'DATA41'
         DATA(40) => REGISTERS_40_3_port, 
         -- Connections to port 'DATA42'
         DATA(41) => REGISTERS_41_3_port, 
         -- Connections to port 'DATA43'
         DATA(42) => REGISTERS_42_3_port, 
         -- Connections to port 'DATA44'
         DATA(43) => REGISTERS_43_3_port, 
         -- Connections to port 'DATA45'
         DATA(44) => REGISTERS_44_3_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N413, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N414, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N415, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N416, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N417, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N418, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N419, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N420, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N421, 
         -- Connections to port 'CONTROL10'
         CONTROL(9) => N422, 
         -- Connections to port 'CONTROL11'
         CONTROL(10) => N423, 
         -- Connections to port 'CONTROL12'
         CONTROL(11) => N424, 
         -- Connections to port 'CONTROL13'
         CONTROL(12) => N425, 
         -- Connections to port 'CONTROL14'
         CONTROL(13) => N426, 
         -- Connections to port 'CONTROL15'
         CONTROL(14) => N427, 
         -- Connections to port 'CONTROL16'
         CONTROL(15) => N428, 
         -- Connections to port 'CONTROL17'
         CONTROL(16) => N429, 
         -- Connections to port 'CONTROL18'
         CONTROL(17) => N430, 
         -- Connections to port 'CONTROL19'
         CONTROL(18) => N431, 
         -- Connections to port 'CONTROL20'
         CONTROL(19) => N432, 
         -- Connections to port 'CONTROL21'
         CONTROL(20) => N433, 
         -- Connections to port 'CONTROL22'
         CONTROL(21) => N434, 
         -- Connections to port 'CONTROL23'
         CONTROL(22) => N435, 
         -- Connections to port 'CONTROL24'
         CONTROL(23) => N436, 
         -- Connections to port 'CONTROL25'
         CONTROL(24) => N437, 
         -- Connections to port 'CONTROL26'
         CONTROL(25) => N438, 
         -- Connections to port 'CONTROL27'
         CONTROL(26) => N439, 
         -- Connections to port 'CONTROL28'
         CONTROL(27) => N440, 
         -- Connections to port 'CONTROL29'
         CONTROL(28) => N441, 
         -- Connections to port 'CONTROL30'
         CONTROL(29) => N442, 
         -- Connections to port 'CONTROL31'
         CONTROL(30) => N443, 
         -- Connections to port 'CONTROL32'
         CONTROL(31) => N444, 
         -- Connections to port 'CONTROL33'
         CONTROL(32) => N445, 
         -- Connections to port 'CONTROL34'
         CONTROL(33) => N446, 
         -- Connections to port 'CONTROL35'
         CONTROL(34) => N447, 
         -- Connections to port 'CONTROL36'
         CONTROL(35) => N448, 
         -- Connections to port 'CONTROL37'
         CONTROL(36) => N449, 
         -- Connections to port 'CONTROL38'
         CONTROL(37) => N450, 
         -- Connections to port 'CONTROL39'
         CONTROL(38) => N451, 
         -- Connections to port 'CONTROL40'
         CONTROL(39) => N452, 
         -- Connections to port 'CONTROL41'
         CONTROL(40) => N453, 
         -- Connections to port 'CONTROL42'
         CONTROL(41) => N454, 
         -- Connections to port 'CONTROL43'
         CONTROL(42) => N455, 
         -- Connections to port 'CONTROL44'
         CONTROL(43) => N456, 
         -- Connections to port 'CONTROL45'
         CONTROL(44) => N457, 
         -- Connections to port 'Z'
         Z(0) => N508 );
   C4780_cell : SELECT_OP
      generic map ( num_inputs => 45, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => REGISTERS_0_2_port, 
         -- Connections to port 'DATA2'
         DATA(1) => REGISTERS_1_2_port, 
         -- Connections to port 'DATA3'
         DATA(2) => REGISTERS_2_2_port, 
         -- Connections to port 'DATA4'
         DATA(3) => REGISTERS_3_2_port, 
         -- Connections to port 'DATA5'
         DATA(4) => REGISTERS_4_2_port, 
         -- Connections to port 'DATA6'
         DATA(5) => REGISTERS_5_2_port, 
         -- Connections to port 'DATA7'
         DATA(6) => REGISTERS_6_2_port, 
         -- Connections to port 'DATA8'
         DATA(7) => REGISTERS_7_2_port, 
         -- Connections to port 'DATA9'
         DATA(8) => REGISTERS_8_2_port, 
         -- Connections to port 'DATA10'
         DATA(9) => REGISTERS_9_2_port, 
         -- Connections to port 'DATA11'
         DATA(10) => REGISTERS_10_2_port, 
         -- Connections to port 'DATA12'
         DATA(11) => REGISTERS_11_2_port, 
         -- Connections to port 'DATA13'
         DATA(12) => REGISTERS_12_2_port, 
         -- Connections to port 'DATA14'
         DATA(13) => REGISTERS_13_2_port, 
         -- Connections to port 'DATA15'
         DATA(14) => REGISTERS_14_2_port, 
         -- Connections to port 'DATA16'
         DATA(15) => REGISTERS_15_2_port, 
         -- Connections to port 'DATA17'
         DATA(16) => REGISTERS_16_2_port, 
         -- Connections to port 'DATA18'
         DATA(17) => REGISTERS_17_2_port, 
         -- Connections to port 'DATA19'
         DATA(18) => REGISTERS_18_2_port, 
         -- Connections to port 'DATA20'
         DATA(19) => REGISTERS_19_2_port, 
         -- Connections to port 'DATA21'
         DATA(20) => REGISTERS_20_2_port, 
         -- Connections to port 'DATA22'
         DATA(21) => REGISTERS_21_2_port, 
         -- Connections to port 'DATA23'
         DATA(22) => REGISTERS_22_2_port, 
         -- Connections to port 'DATA24'
         DATA(23) => REGISTERS_23_2_port, 
         -- Connections to port 'DATA25'
         DATA(24) => REGISTERS_24_2_port, 
         -- Connections to port 'DATA26'
         DATA(25) => REGISTERS_25_2_port, 
         -- Connections to port 'DATA27'
         DATA(26) => REGISTERS_26_2_port, 
         -- Connections to port 'DATA28'
         DATA(27) => REGISTERS_27_2_port, 
         -- Connections to port 'DATA29'
         DATA(28) => REGISTERS_28_2_port, 
         -- Connections to port 'DATA30'
         DATA(29) => REGISTERS_29_2_port, 
         -- Connections to port 'DATA31'
         DATA(30) => REGISTERS_30_2_port, 
         -- Connections to port 'DATA32'
         DATA(31) => REGISTERS_31_2_port, 
         -- Connections to port 'DATA33'
         DATA(32) => REGISTERS_32_2_port, 
         -- Connections to port 'DATA34'
         DATA(33) => REGISTERS_33_2_port, 
         -- Connections to port 'DATA35'
         DATA(34) => REGISTERS_34_2_port, 
         -- Connections to port 'DATA36'
         DATA(35) => REGISTERS_35_2_port, 
         -- Connections to port 'DATA37'
         DATA(36) => REGISTERS_36_2_port, 
         -- Connections to port 'DATA38'
         DATA(37) => REGISTERS_37_2_port, 
         -- Connections to port 'DATA39'
         DATA(38) => REGISTERS_38_2_port, 
         -- Connections to port 'DATA40'
         DATA(39) => REGISTERS_39_2_port, 
         -- Connections to port 'DATA41'
         DATA(40) => REGISTERS_40_2_port, 
         -- Connections to port 'DATA42'
         DATA(41) => REGISTERS_41_2_port, 
         -- Connections to port 'DATA43'
         DATA(42) => REGISTERS_42_2_port, 
         -- Connections to port 'DATA44'
         DATA(43) => REGISTERS_43_2_port, 
         -- Connections to port 'DATA45'
         DATA(44) => REGISTERS_44_2_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N413, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N414, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N415, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N416, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N417, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N418, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N419, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N420, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N421, 
         -- Connections to port 'CONTROL10'
         CONTROL(9) => N422, 
         -- Connections to port 'CONTROL11'
         CONTROL(10) => N423, 
         -- Connections to port 'CONTROL12'
         CONTROL(11) => N424, 
         -- Connections to port 'CONTROL13'
         CONTROL(12) => N425, 
         -- Connections to port 'CONTROL14'
         CONTROL(13) => N426, 
         -- Connections to port 'CONTROL15'
         CONTROL(14) => N427, 
         -- Connections to port 'CONTROL16'
         CONTROL(15) => N428, 
         -- Connections to port 'CONTROL17'
         CONTROL(16) => N429, 
         -- Connections to port 'CONTROL18'
         CONTROL(17) => N430, 
         -- Connections to port 'CONTROL19'
         CONTROL(18) => N431, 
         -- Connections to port 'CONTROL20'
         CONTROL(19) => N432, 
         -- Connections to port 'CONTROL21'
         CONTROL(20) => N433, 
         -- Connections to port 'CONTROL22'
         CONTROL(21) => N434, 
         -- Connections to port 'CONTROL23'
         CONTROL(22) => N435, 
         -- Connections to port 'CONTROL24'
         CONTROL(23) => N436, 
         -- Connections to port 'CONTROL25'
         CONTROL(24) => N437, 
         -- Connections to port 'CONTROL26'
         CONTROL(25) => N438, 
         -- Connections to port 'CONTROL27'
         CONTROL(26) => N439, 
         -- Connections to port 'CONTROL28'
         CONTROL(27) => N440, 
         -- Connections to port 'CONTROL29'
         CONTROL(28) => N441, 
         -- Connections to port 'CONTROL30'
         CONTROL(29) => N442, 
         -- Connections to port 'CONTROL31'
         CONTROL(30) => N443, 
         -- Connections to port 'CONTROL32'
         CONTROL(31) => N444, 
         -- Connections to port 'CONTROL33'
         CONTROL(32) => N445, 
         -- Connections to port 'CONTROL34'
         CONTROL(33) => N446, 
         -- Connections to port 'CONTROL35'
         CONTROL(34) => N447, 
         -- Connections to port 'CONTROL36'
         CONTROL(35) => N448, 
         -- Connections to port 'CONTROL37'
         CONTROL(36) => N449, 
         -- Connections to port 'CONTROL38'
         CONTROL(37) => N450, 
         -- Connections to port 'CONTROL39'
         CONTROL(38) => N451, 
         -- Connections to port 'CONTROL40'
         CONTROL(39) => N452, 
         -- Connections to port 'CONTROL41'
         CONTROL(40) => N453, 
         -- Connections to port 'CONTROL42'
         CONTROL(41) => N454, 
         -- Connections to port 'CONTROL43'
         CONTROL(42) => N455, 
         -- Connections to port 'CONTROL44'
         CONTROL(43) => N456, 
         -- Connections to port 'CONTROL45'
         CONTROL(44) => N457, 
         -- Connections to port 'Z'
         Z(0) => N509 );
   C4781_cell : SELECT_OP
      generic map ( num_inputs => 45, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => REGISTERS_0_1_port, 
         -- Connections to port 'DATA2'
         DATA(1) => REGISTERS_1_1_port, 
         -- Connections to port 'DATA3'
         DATA(2) => REGISTERS_2_1_port, 
         -- Connections to port 'DATA4'
         DATA(3) => REGISTERS_3_1_port, 
         -- Connections to port 'DATA5'
         DATA(4) => REGISTERS_4_1_port, 
         -- Connections to port 'DATA6'
         DATA(5) => REGISTERS_5_1_port, 
         -- Connections to port 'DATA7'
         DATA(6) => REGISTERS_6_1_port, 
         -- Connections to port 'DATA8'
         DATA(7) => REGISTERS_7_1_port, 
         -- Connections to port 'DATA9'
         DATA(8) => REGISTERS_8_1_port, 
         -- Connections to port 'DATA10'
         DATA(9) => REGISTERS_9_1_port, 
         -- Connections to port 'DATA11'
         DATA(10) => REGISTERS_10_1_port, 
         -- Connections to port 'DATA12'
         DATA(11) => REGISTERS_11_1_port, 
         -- Connections to port 'DATA13'
         DATA(12) => REGISTERS_12_1_port, 
         -- Connections to port 'DATA14'
         DATA(13) => REGISTERS_13_1_port, 
         -- Connections to port 'DATA15'
         DATA(14) => REGISTERS_14_1_port, 
         -- Connections to port 'DATA16'
         DATA(15) => REGISTERS_15_1_port, 
         -- Connections to port 'DATA17'
         DATA(16) => REGISTERS_16_1_port, 
         -- Connections to port 'DATA18'
         DATA(17) => REGISTERS_17_1_port, 
         -- Connections to port 'DATA19'
         DATA(18) => REGISTERS_18_1_port, 
         -- Connections to port 'DATA20'
         DATA(19) => REGISTERS_19_1_port, 
         -- Connections to port 'DATA21'
         DATA(20) => REGISTERS_20_1_port, 
         -- Connections to port 'DATA22'
         DATA(21) => REGISTERS_21_1_port, 
         -- Connections to port 'DATA23'
         DATA(22) => REGISTERS_22_1_port, 
         -- Connections to port 'DATA24'
         DATA(23) => REGISTERS_23_1_port, 
         -- Connections to port 'DATA25'
         DATA(24) => REGISTERS_24_1_port, 
         -- Connections to port 'DATA26'
         DATA(25) => REGISTERS_25_1_port, 
         -- Connections to port 'DATA27'
         DATA(26) => REGISTERS_26_1_port, 
         -- Connections to port 'DATA28'
         DATA(27) => REGISTERS_27_1_port, 
         -- Connections to port 'DATA29'
         DATA(28) => REGISTERS_28_1_port, 
         -- Connections to port 'DATA30'
         DATA(29) => REGISTERS_29_1_port, 
         -- Connections to port 'DATA31'
         DATA(30) => REGISTERS_30_1_port, 
         -- Connections to port 'DATA32'
         DATA(31) => REGISTERS_31_1_port, 
         -- Connections to port 'DATA33'
         DATA(32) => REGISTERS_32_1_port, 
         -- Connections to port 'DATA34'
         DATA(33) => REGISTERS_33_1_port, 
         -- Connections to port 'DATA35'
         DATA(34) => REGISTERS_34_1_port, 
         -- Connections to port 'DATA36'
         DATA(35) => REGISTERS_35_1_port, 
         -- Connections to port 'DATA37'
         DATA(36) => REGISTERS_36_1_port, 
         -- Connections to port 'DATA38'
         DATA(37) => REGISTERS_37_1_port, 
         -- Connections to port 'DATA39'
         DATA(38) => REGISTERS_38_1_port, 
         -- Connections to port 'DATA40'
         DATA(39) => REGISTERS_39_1_port, 
         -- Connections to port 'DATA41'
         DATA(40) => REGISTERS_40_1_port, 
         -- Connections to port 'DATA42'
         DATA(41) => REGISTERS_41_1_port, 
         -- Connections to port 'DATA43'
         DATA(42) => REGISTERS_42_1_port, 
         -- Connections to port 'DATA44'
         DATA(43) => REGISTERS_43_1_port, 
         -- Connections to port 'DATA45'
         DATA(44) => REGISTERS_44_1_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N413, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N414, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N415, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N416, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N417, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N418, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N419, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N420, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N421, 
         -- Connections to port 'CONTROL10'
         CONTROL(9) => N422, 
         -- Connections to port 'CONTROL11'
         CONTROL(10) => N423, 
         -- Connections to port 'CONTROL12'
         CONTROL(11) => N424, 
         -- Connections to port 'CONTROL13'
         CONTROL(12) => N425, 
         -- Connections to port 'CONTROL14'
         CONTROL(13) => N426, 
         -- Connections to port 'CONTROL15'
         CONTROL(14) => N427, 
         -- Connections to port 'CONTROL16'
         CONTROL(15) => N428, 
         -- Connections to port 'CONTROL17'
         CONTROL(16) => N429, 
         -- Connections to port 'CONTROL18'
         CONTROL(17) => N430, 
         -- Connections to port 'CONTROL19'
         CONTROL(18) => N431, 
         -- Connections to port 'CONTROL20'
         CONTROL(19) => N432, 
         -- Connections to port 'CONTROL21'
         CONTROL(20) => N433, 
         -- Connections to port 'CONTROL22'
         CONTROL(21) => N434, 
         -- Connections to port 'CONTROL23'
         CONTROL(22) => N435, 
         -- Connections to port 'CONTROL24'
         CONTROL(23) => N436, 
         -- Connections to port 'CONTROL25'
         CONTROL(24) => N437, 
         -- Connections to port 'CONTROL26'
         CONTROL(25) => N438, 
         -- Connections to port 'CONTROL27'
         CONTROL(26) => N439, 
         -- Connections to port 'CONTROL28'
         CONTROL(27) => N440, 
         -- Connections to port 'CONTROL29'
         CONTROL(28) => N441, 
         -- Connections to port 'CONTROL30'
         CONTROL(29) => N442, 
         -- Connections to port 'CONTROL31'
         CONTROL(30) => N443, 
         -- Connections to port 'CONTROL32'
         CONTROL(31) => N444, 
         -- Connections to port 'CONTROL33'
         CONTROL(32) => N445, 
         -- Connections to port 'CONTROL34'
         CONTROL(33) => N446, 
         -- Connections to port 'CONTROL35'
         CONTROL(34) => N447, 
         -- Connections to port 'CONTROL36'
         CONTROL(35) => N448, 
         -- Connections to port 'CONTROL37'
         CONTROL(36) => N449, 
         -- Connections to port 'CONTROL38'
         CONTROL(37) => N450, 
         -- Connections to port 'CONTROL39'
         CONTROL(38) => N451, 
         -- Connections to port 'CONTROL40'
         CONTROL(39) => N452, 
         -- Connections to port 'CONTROL41'
         CONTROL(40) => N453, 
         -- Connections to port 'CONTROL42'
         CONTROL(41) => N454, 
         -- Connections to port 'CONTROL43'
         CONTROL(42) => N455, 
         -- Connections to port 'CONTROL44'
         CONTROL(43) => N456, 
         -- Connections to port 'CONTROL45'
         CONTROL(44) => N457, 
         -- Connections to port 'Z'
         Z(0) => N510 );
   C4782_cell : SELECT_OP
      generic map ( num_inputs => 45, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => REGISTERS_0_0_port, 
         -- Connections to port 'DATA2'
         DATA(1) => REGISTERS_1_0_port, 
         -- Connections to port 'DATA3'
         DATA(2) => REGISTERS_2_0_port, 
         -- Connections to port 'DATA4'
         DATA(3) => REGISTERS_3_0_port, 
         -- Connections to port 'DATA5'
         DATA(4) => REGISTERS_4_0_port, 
         -- Connections to port 'DATA6'
         DATA(5) => REGISTERS_5_0_port, 
         -- Connections to port 'DATA7'
         DATA(6) => REGISTERS_6_0_port, 
         -- Connections to port 'DATA8'
         DATA(7) => REGISTERS_7_0_port, 
         -- Connections to port 'DATA9'
         DATA(8) => REGISTERS_8_0_port, 
         -- Connections to port 'DATA10'
         DATA(9) => REGISTERS_9_0_port, 
         -- Connections to port 'DATA11'
         DATA(10) => REGISTERS_10_0_port, 
         -- Connections to port 'DATA12'
         DATA(11) => REGISTERS_11_0_port, 
         -- Connections to port 'DATA13'
         DATA(12) => REGISTERS_12_0_port, 
         -- Connections to port 'DATA14'
         DATA(13) => REGISTERS_13_0_port, 
         -- Connections to port 'DATA15'
         DATA(14) => REGISTERS_14_0_port, 
         -- Connections to port 'DATA16'
         DATA(15) => REGISTERS_15_0_port, 
         -- Connections to port 'DATA17'
         DATA(16) => REGISTERS_16_0_port, 
         -- Connections to port 'DATA18'
         DATA(17) => REGISTERS_17_0_port, 
         -- Connections to port 'DATA19'
         DATA(18) => REGISTERS_18_0_port, 
         -- Connections to port 'DATA20'
         DATA(19) => REGISTERS_19_0_port, 
         -- Connections to port 'DATA21'
         DATA(20) => REGISTERS_20_0_port, 
         -- Connections to port 'DATA22'
         DATA(21) => REGISTERS_21_0_port, 
         -- Connections to port 'DATA23'
         DATA(22) => REGISTERS_22_0_port, 
         -- Connections to port 'DATA24'
         DATA(23) => REGISTERS_23_0_port, 
         -- Connections to port 'DATA25'
         DATA(24) => REGISTERS_24_0_port, 
         -- Connections to port 'DATA26'
         DATA(25) => REGISTERS_25_0_port, 
         -- Connections to port 'DATA27'
         DATA(26) => REGISTERS_26_0_port, 
         -- Connections to port 'DATA28'
         DATA(27) => REGISTERS_27_0_port, 
         -- Connections to port 'DATA29'
         DATA(28) => REGISTERS_28_0_port, 
         -- Connections to port 'DATA30'
         DATA(29) => REGISTERS_29_0_port, 
         -- Connections to port 'DATA31'
         DATA(30) => REGISTERS_30_0_port, 
         -- Connections to port 'DATA32'
         DATA(31) => REGISTERS_31_0_port, 
         -- Connections to port 'DATA33'
         DATA(32) => REGISTERS_32_0_port, 
         -- Connections to port 'DATA34'
         DATA(33) => REGISTERS_33_0_port, 
         -- Connections to port 'DATA35'
         DATA(34) => REGISTERS_34_0_port, 
         -- Connections to port 'DATA36'
         DATA(35) => REGISTERS_35_0_port, 
         -- Connections to port 'DATA37'
         DATA(36) => REGISTERS_36_0_port, 
         -- Connections to port 'DATA38'
         DATA(37) => REGISTERS_37_0_port, 
         -- Connections to port 'DATA39'
         DATA(38) => REGISTERS_38_0_port, 
         -- Connections to port 'DATA40'
         DATA(39) => REGISTERS_39_0_port, 
         -- Connections to port 'DATA41'
         DATA(40) => REGISTERS_40_0_port, 
         -- Connections to port 'DATA42'
         DATA(41) => REGISTERS_41_0_port, 
         -- Connections to port 'DATA43'
         DATA(42) => REGISTERS_42_0_port, 
         -- Connections to port 'DATA44'
         DATA(43) => REGISTERS_43_0_port, 
         -- Connections to port 'DATA45'
         DATA(44) => REGISTERS_44_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N413, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N414, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N415, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N416, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N417, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N418, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N419, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N420, 
         -- Connections to port 'CONTROL9'
         CONTROL(8) => N421, 
         -- Connections to port 'CONTROL10'
         CONTROL(9) => N422, 
         -- Connections to port 'CONTROL11'
         CONTROL(10) => N423, 
         -- Connections to port 'CONTROL12'
         CONTROL(11) => N424, 
         -- Connections to port 'CONTROL13'
         CONTROL(12) => N425, 
         -- Connections to port 'CONTROL14'
         CONTROL(13) => N426, 
         -- Connections to port 'CONTROL15'
         CONTROL(14) => N427, 
         -- Connections to port 'CONTROL16'
         CONTROL(15) => N428, 
         -- Connections to port 'CONTROL17'
         CONTROL(16) => N429, 
         -- Connections to port 'CONTROL18'
         CONTROL(17) => N430, 
         -- Connections to port 'CONTROL19'
         CONTROL(18) => N431, 
         -- Connections to port 'CONTROL20'
         CONTROL(19) => N432, 
         -- Connections to port 'CONTROL21'
         CONTROL(20) => N433, 
         -- Connections to port 'CONTROL22'
         CONTROL(21) => N434, 
         -- Connections to port 'CONTROL23'
         CONTROL(22) => N435, 
         -- Connections to port 'CONTROL24'
         CONTROL(23) => N436, 
         -- Connections to port 'CONTROL25'
         CONTROL(24) => N437, 
         -- Connections to port 'CONTROL26'
         CONTROL(25) => N438, 
         -- Connections to port 'CONTROL27'
         CONTROL(26) => N439, 
         -- Connections to port 'CONTROL28'
         CONTROL(27) => N440, 
         -- Connections to port 'CONTROL29'
         CONTROL(28) => N441, 
         -- Connections to port 'CONTROL30'
         CONTROL(29) => N442, 
         -- Connections to port 'CONTROL31'
         CONTROL(30) => N443, 
         -- Connections to port 'CONTROL32'
         CONTROL(31) => N444, 
         -- Connections to port 'CONTROL33'
         CONTROL(32) => N445, 
         -- Connections to port 'CONTROL34'
         CONTROL(33) => N446, 
         -- Connections to port 'CONTROL35'
         CONTROL(34) => N447, 
         -- Connections to port 'CONTROL36'
         CONTROL(35) => N448, 
         -- Connections to port 'CONTROL37'
         CONTROL(36) => N449, 
         -- Connections to port 'CONTROL38'
         CONTROL(37) => N450, 
         -- Connections to port 'CONTROL39'
         CONTROL(38) => N451, 
         -- Connections to port 'CONTROL40'
         CONTROL(39) => N452, 
         -- Connections to port 'CONTROL41'
         CONTROL(40) => N453, 
         -- Connections to port 'CONTROL42'
         CONTROL(41) => N454, 
         -- Connections to port 'CONTROL43'
         CONTROL(42) => N455, 
         -- Connections to port 'CONTROL44'
         CONTROL(43) => N456, 
         -- Connections to port 'CONTROL45'
         CONTROL(44) => N457, 
         -- Connections to port 'Z'
         Z(0) => N511 );
         X_Logic1_port <= '1';
         X_Logic0_port <= '0';
   I_259 : GTECH_NOT port map( A => ENABLE, Z => N458);
   I_260 : GTECH_NOT port map( A => WR, Z => N585);
   I_261 : GTECH_NOT port map( A => N787, Z => N788);
   I_262 : GTECH_NOT port map( A => N790, Z => N791);
   I_263 : GTECH_NOT port map( A => N793, Z => N794);
   I_264 : GTECH_NOT port map( A => N796, Z => N797);
   I_265 : GTECH_NOT port map( A => N799, Z => N800);
   I_266 : GTECH_NOT port map( A => N802, Z => N803);
   I_267 : GTECH_NOT port map( A => N805, Z => N806);
   I_268 : GTECH_NOT port map( A => N808, Z => N809);
   I_269 : GTECH_NOT port map( A => N811, Z => N812);
   I_270 : GTECH_NOT port map( A => N814, Z => N815);
   I_271 : GTECH_NOT port map( A => N817, Z => N818);
   I_272 : GTECH_NOT port map( A => N820, Z => N821);
   I_273 : GTECH_NOT port map( A => N823, Z => N824);
   I_274 : GTECH_NOT port map( A => N826, Z => N827);
   I_275 : GTECH_NOT port map( A => N829, Z => N830);
   I_276 : GTECH_NOT port map( A => N832, Z => N833);

end SYN_A;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RMLwithRF_NGlobal5_NBlockRegs4_NWindows5_NData8.all;

entity RML_M5_N4_F5 is

   port( rst, clk, call, rtrn, ackIN, Win, R1in, R2in : in std_logic;  logWaddr
         , logR1addr, logR2addr : in std_logic_vector (4 downto 0);  phyWaddr, 
         phyR1addr, phyR2addr : out std_logic_vector (5 downto 0);  WtoRF, 
         R1toRF, R2toRF, spill, fill, ackOUT, ready : out std_logic);

end RML_M5_N4_F5;

architecture SYN_HLSM of RML_M5_N4_F5 is

   component GTECH_AND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_NOT
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_BUF
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_XOR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_OR5
      port( A, B, C, D, E : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_OR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_OR4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
      generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
      port(
         clear, preset, enable, data_in, synch_clear, synch_preset, 
            synch_toggle, synch_enable, next_state, clocked_on : in std_logic;
         Q, QN : buffer std_logic
      );
   end component;
   
   signal N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
      N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, N30
      , N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, 
      N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59
      , N60, N61, N62, N63, N64, X_Logic1_port, X_Logic0_port, clk_port, 
      Win_port, R1in_port, R2in_port, logWaddr_4_port, logWaddr_3_port, 
      logWaddr_2_port, logWaddr_1_port, logWaddr_0_port, logR1addr_4_port, 
      logR1addr_3_port, logR1addr_2_port, logR1addr_1_port, logR1addr_0_port, 
      logR2addr_4_port, logR2addr_3_port, logR2addr_2_port, logR2addr_1_port, 
      logR2addr_0_port, phyWaddr_5_port, phyWaddr_4_port, phyWaddr_3_port, 
      phyWaddr_2_port, phyWaddr_1_port, phyWaddr_0_port, phyR1addr_5_port, 
      phyR1addr_4_port, phyR1addr_3_port, phyR1addr_2_port, phyR1addr_1_port, 
      phyR1addr_0_port, WtoRF_port, R1toRF_port, R2toRF_port, spill_port, 
      fill_port, ackOUT_port, ready_port, CurrState_3_port, CurrState_2_port, 
      CurrState_1_port, CurrState_0_port, CurrSWP_2_port, CurrSWP_1_port, 
      CurrSWP_0_port, CurrCWP_2_port, CurrCWP_1_port, CurrCWP_0_port, 
      CurrCS_2_port, CurrCS_1_port, CurrCS_0_port, CurrCR_2_port, CurrCR_1_port
      , CurrCR_0_port, CurrMemCntr_2_port, CurrMemCntr_1_port, 
      CurrMemCntr_0_port, NextState_3_port, NextState_2_port, NextState_1_port,
      NextState_0_port, NextSWP_2_port, NextSWP_1_port, NextSWP_0_port, 
      NextCWP_2_port, NextCWP_1_port, NextCWP_0_port, NextCS_2_port, 
      NextCS_1_port, NextCS_0_port, NextCR_2_port, NextCR_1_port, NextCR_0_port
      , NextMemCntr_2_port, NextMemCntr_1_port, NextMemCntr_0_port, N65, N66, 
      N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81
      , N82, N83, N84, N85, N86, N87, N88, N89, N90, CWPplusLogWAddrMSB_2_port,
      CWPplusLogWAddrMSB_1_port, CWPplusLogWAddrMSB_0_port, N91, N92, N93, N94,
      N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105, N106, 
      CWPplusLogR1AddrMSB_2_port, CWPplusLogR1AddrMSB_1_port, 
      CWPplusLogR1AddrMSB_0_port, N107, N108, N109, N110, N111, N112, N113, 
      N114, N115, N116, N117, N118, N119, N120, N121, N122, 
      CWPplusLogR2AddrMSB_2_port, CWPplusLogR2AddrMSB_1_port, 
      CWPplusLogR2AddrMSB_0_port, N123, N124, N125, N126, N127, N128, N129, 
      N130, N131, N132, N133, FplusLogWaddrMSB_2_port, FplusLogWaddrMSB_1_port,
      FplusLogWaddrMSB_0_port, FplusLogR1addrMSB_2_port, 
      FplusLogR1addrMSB_1_port, FplusLogR1addrMSB_0_port, 
      FplusLogR2AddrMSB_2_port, FplusLogR2AddrMSB_1_port, 
      FplusLogR2AddrMSB_0_port, N134, N135, N136, N137, N138, N139, N140, N141,
      N142, N143, N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, 
      N154, N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165, 
      N166, N167, N168, N169, N170, N171, N172, N173, N174, N175, N176, N177, 
      N178, net109, N179, N180, N181, N182, N183, N184, N185, N186, N187, N188,
      N189, N190, N191, N192, N193, N194, net115, N195, N196, N197, N198, N199,
      N200, N201, N202, N203, N204, N205, N206, N207, N208, N209, N210, N211, 
      N212, N213, N214, N215, N216, N217, N218, N219, N220, N221, N222, N223, 
      N224, N225, N226, N227, N228, N229, N230, N231, N232, N233, N234, N235, 
      N236, N237, N238, N239, N240, N241, N242, N243, N244, N245, N246, N247, 
      N248, N249, N250, N251, N252, N253, N254, N255, N256, N257, N258, N259, 
      N260, N261, N262, N263, N264, N265, N266, N267, N268, N269, N270, N271, 
      N272, N273, N274, N275, N276, N277, N278, N279, N280, N281, N282, N283, 
      N284, N285, N286, N287, N288, N289, N290, N291, N292, N293, N294, N295, 
      N296, N297, N298, N299, N300, N301, N302, N303, N304, N305, N306, N307, 
      N308, N309, N310, N311, N312, N313, N314, N315, N316, N317, N318, N319, 
      N320, N321, N322, N323, N324, N325, N326, N327, N328, N329, N330, N331, 
      N332, N333, N334, N335, N336, N337, N338, N339, N340, N341, N342, N343, 
      N344, N345, N346, N347, N348, N349, N350, N351, N352, N353, N354, N355, 
      N356, N357, N358, N359, N360, N361, N362, N363, N364, N365, N366, N367, 
      N368, N369, N370, N371, N372, N373, N374, N375, N376, N377, N378, N379, 
      N380, N381, N382, N383, N384, N385, N386, N387, N388, N389, N390, N391, 
      N392, N393, N394, N395, N396, N397, N398, N399, N400, N401, N402, N403, 
      N404, N405, N406, N407, N408, N409, N410, N411, N412, N413, N414, N415, 
      N416, N417, N418, N419, N420, N421, N422, N423, N424, N425, N426, N427, 
      N428, N429, N430, N431, N432, N433, N434, N435, N436, N437, N438, N439, 
      N440, N441, N442, N443, N444, N445, N446, N447, N448, N449, N450, N451, 
      N452, N453, N454, N455, N456, N457, N458, N459, N460, N461, N462, N463, 
      N464, N465, N466, N467, N468, N469, N470, N471, N472, N473, N474, N475, 
      N476, N477, N478, N479, N480, N481, N482, N483, N484, n_1392, n_1393, 
      n_1394, n_1395, n_1396, n_1397, n_1398, n_1399, n_1400, n_1401, n_1402, 
      n_1403, n_1404, n_1405, n_1406, n_1407, n_1408, n_1409, n_1410, n_1411, 
      n_1412, n_1413, n_1414, n_1415, n_1416, n_1417, n_1418, n_1419, n_1420, 
      n_1421, n_1422, n_1423, n_1424, n_1425, n_1426, n_1427, n_1428, n_1429, 
      n_1430, n_1431, n_1432, n_1433, n_1434, n_1435, n_1436, n_1437, n_1438, 
      n_1439, n_1440 : std_logic;

begin
   clk_port <= clk;
   Win_port <= Win;
   R1in_port <= R1in;
   R2in_port <= R2in;
   ( logWaddr_4_port, logWaddr_3_port, logWaddr_2_port, logWaddr_1_port, 
      logWaddr_0_port ) <= logWaddr;
   ( logR1addr_4_port, logR1addr_3_port, logR1addr_2_port, logR1addr_1_port, 
      logR1addr_0_port ) <= logR1addr;
   ( logR2addr_4_port, logR2addr_3_port, logR2addr_2_port, logR2addr_1_port, 
      logR2addr_0_port ) <= logR2addr;
   phyWaddr <= ( phyWaddr_5_port, phyWaddr_4_port, phyWaddr_3_port, 
      phyWaddr_2_port, phyWaddr_1_port, phyWaddr_0_port );
   phyR1addr <= ( phyR1addr_5_port, phyR1addr_4_port, phyR1addr_3_port, 
      phyR1addr_2_port, phyR1addr_1_port, phyR1addr_0_port );
   phyR2addr <= ( N147, N146, N145, logR2addr_2_port, logR2addr_1_port, 
      logR2addr_0_port );
   WtoRF <= WtoRF_port;
   R1toRF <= R1toRF_port;
   R2toRF <= R2toRF_port;
   spill <= spill_port;
   fill <= fill_port;
   ackOUT <= ackOUT_port;
   ready <= ready_port;
   
   CurrMemCntr_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N361, next_state => N84, 
               clocked_on => clk_port, Q => CurrMemCntr_2_port, QN => n_1392);
   CurrMemCntr_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N361, next_state => N83, 
               clocked_on => clk_port, Q => CurrMemCntr_1_port, QN => n_1393);
   CurrMemCntr_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N361, next_state => N82, 
               clocked_on => clk_port, Q => CurrMemCntr_0_port, QN => n_1394);
   CurrState_reg_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N68,
               clocked_on => clk_port, Q => CurrState_3_port, QN => n_1395);
   CurrState_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N67,
               clocked_on => clk_port, Q => CurrState_2_port, QN => n_1396);
   CurrState_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N66,
               clocked_on => clk_port, Q => CurrState_1_port, QN => n_1397);
   CurrState_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N65,
               clocked_on => clk_port, Q => CurrState_0_port, QN => n_1398);
   CurrSWP_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N372, next_state => N72, 
               clocked_on => clk_port, Q => CurrSWP_2_port, QN => n_1399);
   CurrSWP_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N372, next_state => N71, 
               clocked_on => clk_port, Q => CurrSWP_1_port, QN => n_1400);
   CurrSWP_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N372, next_state => N70, 
               clocked_on => clk_port, Q => CurrSWP_0_port, QN => n_1401);
   CurrCWP_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N381, next_state => N75, 
               clocked_on => clk_port, Q => CurrCWP_2_port, QN => n_1402);
   CurrCWP_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N381, next_state => N74, 
               clocked_on => clk_port, Q => CurrCWP_1_port, QN => n_1403);
   CurrCWP_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N381, next_state => N73, 
               clocked_on => clk_port, Q => CurrCWP_0_port, QN => n_1404);
   CurrCS_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N393, next_state => N78, 
               clocked_on => clk_port, Q => CurrCS_2_port, QN => n_1405);
   CurrCS_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N412, next_state => N77, 
               clocked_on => clk_port, Q => CurrCS_1_port, QN => n_1406);
   CurrCS_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => N425, next_state => N76, 
               clocked_on => clk_port, Q => CurrCS_0_port, QN => n_1407);
   CurrCR_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N81,
               clocked_on => clk_port, Q => CurrCR_2_port, QN => n_1408);
   CurrCR_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N80,
               clocked_on => clk_port, Q => CurrCR_1_port, QN => n_1409);
   CurrCR_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               X_Logic0_port, data_in => X_Logic0_port, synch_clear => 
               X_Logic0_port, synch_preset => X_Logic0_port, synch_toggle => 
               X_Logic0_port, synch_enable => X_Logic1_port, next_state => N79,
               clocked_on => clk_port, Q => CurrCR_0_port, QN => n_1410);
   I_0 : GTECH_NOT port map( A => CurrCWP_2_port, Z => N85);
   C95 : GTECH_OR2 port map( A => CurrCWP_1_port, B => N85, Z => N86);
   C96 : GTECH_OR2 port map( A => CurrCWP_0_port, B => N86, Z => N87);
   I_1 : GTECH_NOT port map( A => N87, Z => N88);
   C106 : GTECH_OR2 port map( A => CurrCWP_1_port, B => N85, Z => N92);
   C107 : GTECH_OR2 port map( A => CurrCWP_0_port, B => N92, Z => N93);
   C134 : GTECH_OR2 port map( A => CurrCWP_1_port, B => N85, Z => N102);
   C135 : GTECH_OR2 port map( A => CurrCWP_0_port, B => N102, Z => N103);
   I_2 : GTECH_NOT port map( A => N103, Z => N104);
   C145 : GTECH_OR2 port map( A => CurrCWP_1_port, B => N85, Z => N108);
   C146 : GTECH_OR2 port map( A => CurrCWP_0_port, B => N108, Z => N109);
   C173 : GTECH_OR2 port map( A => CurrCWP_1_port, B => N85, Z => N118);
   C174 : GTECH_OR2 port map( A => CurrCWP_0_port, B => N118, Z => N119);
   I_3 : GTECH_NOT port map( A => N119, Z => N120);
   C184 : GTECH_OR2 port map( A => CurrCWP_1_port, B => N85, Z => N124);
   C185 : GTECH_OR2 port map( A => CurrCWP_0_port, B => N124, Z => N125);
   C332 : GTECH_AND2 port map( A => N148, B => N149, Z => N152);
   C333 : GTECH_AND2 port map( A => N150, B => N151, Z => N153);
   C334 : GTECH_AND2 port map( A => N152, B => N153, Z => N154);
   C336 : GTECH_OR2 port map( A => CurrState_3_port, B => CurrState_2_port, Z 
                           => N155);
   C337 : GTECH_OR2 port map( A => CurrState_1_port, B => N151, Z => N156);
   C338 : GTECH_OR2 port map( A => N155, B => N156, Z => N157);
   C341 : GTECH_OR2 port map( A => CurrState_3_port, B => CurrState_2_port, Z 
                           => N159);
   C342 : GTECH_OR2 port map( A => N150, B => CurrState_0_port, Z => N160);
   C343 : GTECH_OR2 port map( A => N159, B => N160, Z => N161);
   C347 : GTECH_OR2 port map( A => CurrState_3_port, B => CurrState_2_port, Z 
                           => N163);
   C348 : GTECH_OR2 port map( A => N150, B => N151, Z => N164);
   C349 : GTECH_OR2 port map( A => N163, B => N164, Z => N165);
   C352 : GTECH_OR2 port map( A => CurrState_3_port, B => N149, Z => N167);
   C353 : GTECH_OR2 port map( A => CurrState_1_port, B => CurrState_0_port, Z 
                           => N168);
   C354 : GTECH_OR2 port map( A => N167, B => N168, Z => N169);
   C358 : GTECH_OR2 port map( A => CurrState_3_port, B => N149, Z => N171);
   C359 : GTECH_OR2 port map( A => CurrState_1_port, B => N151, Z => N172);
   C360 : GTECH_OR2 port map( A => N171, B => N172, Z => N173);
   C364 : GTECH_OR2 port map( A => CurrState_3_port, B => N149, Z => N175);
   C365 : GTECH_OR2 port map( A => N150, B => CurrState_0_port, Z => N176);
   C366 : GTECH_OR2 port map( A => N175, B => N176, Z => N177);
   C371 : GTECH_OR2 port map( A => CurrState_3_port, B => N149, Z => N179);
   C372 : GTECH_OR2 port map( A => N150, B => N151, Z => N180);
   C373 : GTECH_OR2 port map( A => N179, B => N180, Z => N181);
   C376 : GTECH_OR2 port map( A => N148, B => CurrState_2_port, Z => N183);
   C377 : GTECH_OR2 port map( A => CurrState_1_port, B => CurrState_0_port, Z 
                           => N184);
   C378 : GTECH_OR2 port map( A => N183, B => N184, Z => N185);
   C382 : GTECH_OR2 port map( A => N148, B => CurrState_2_port, Z => N187);
   C383 : GTECH_OR2 port map( A => CurrState_1_port, B => N151, Z => N188);
   C384 : GTECH_OR2 port map( A => N187, B => N188, Z => N189);
   C388 : GTECH_OR2 port map( A => N148, B => CurrState_2_port, Z => N191);
   C389 : GTECH_OR2 port map( A => N150, B => CurrState_0_port, Z => N192);
   C390 : GTECH_OR2 port map( A => N191, B => N192, Z => N193);
   C395 : GTECH_OR2 port map( A => N148, B => CurrState_2_port, Z => N195);
   C396 : GTECH_OR2 port map( A => N150, B => N151, Z => N196);
   C397 : GTECH_OR2 port map( A => N195, B => N196, Z => N197);
   C401 : GTECH_OR2 port map( A => N148, B => N149, Z => N199);
   C402 : GTECH_OR2 port map( A => CurrState_1_port, B => CurrState_0_port, Z 
                           => N200);
   C403 : GTECH_OR2 port map( A => N199, B => N200, Z => N201);
   C422 : GTECH_OR2 port map( A => CurrCS_1_port, B => CurrCS_2_port, Z => N204
                           );
   C423 : GTECH_OR2 port map( A => CurrCS_0_port, B => N204, Z => N205);
   C435 : GTECH_OR2 port map( A => CurrCS_1_port, B => CurrCS_2_port, Z => N208
                           );
   C436 : GTECH_OR2 port map( A => CurrCS_0_port, B => N208, Z => N209);
   I_4 : GTECH_NOT port map( A => N209, Z => N210);
   C456 : GTECH_OR2 port map( A => CurrCS_1_port, B => CurrCS_2_port, Z => N221
                           );
   C457 : GTECH_OR2 port map( A => CurrCS_0_port, B => N221, Z => N222);
   C469 : GTECH_OR2 port map( A => CurrCS_1_port, B => CurrCS_2_port, Z => N225
                           );
   C470 : GTECH_OR2 port map( A => CurrCS_0_port, B => N225, Z => N226);
   I_5 : GTECH_NOT port map( A => N226, Z => N227);
   C481 : GTECH_OR2 port map( A => CurrCR_1_port, B => CurrCR_2_port, Z => N231
                           );
   C482 : GTECH_OR2 port map( A => CurrCR_0_port, B => N231, Z => N232);
   C494 : GTECH_OR2 port map( A => CurrCR_1_port, B => CurrCR_2_port, Z => N235
                           );
   C495 : GTECH_OR2 port map( A => CurrCR_0_port, B => N235, Z => N236);
   I_6 : GTECH_NOT port map( A => N236, Z => N237);
   CWPplusLogWAddrMSB_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N98, data_in => N101, synch_clear => X_Logic0_port, synch_preset
               => X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable =>
               X_Logic0_port, next_state => X_Logic0_port, clocked_on => 
               X_Logic0_port, Q => CWPplusLogWAddrMSB_2_port, QN => n_1411);
   CWPplusLogWAddrMSB_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N98, data_in => N100, synch_clear => X_Logic0_port, synch_preset
               => X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable =>
               X_Logic0_port, next_state => X_Logic0_port, clocked_on => 
               X_Logic0_port, Q => CWPplusLogWAddrMSB_1_port, QN => n_1412);
   CWPplusLogWAddrMSB_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N98, data_in => N99, synch_clear => X_Logic0_port, synch_preset 
               => X_Logic0_port, synch_toggle => X_Logic0_port, synch_enable =>
               X_Logic0_port, next_state => X_Logic0_port, clocked_on => 
               X_Logic0_port, Q => CWPplusLogWAddrMSB_0_port, QN => n_1413);
   CWPplusLogR1AddrMSB_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N114, data_in => N117, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => CWPplusLogR1AddrMSB_2_port, QN
               => n_1414);
   CWPplusLogR1AddrMSB_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N114, data_in => N116, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => CWPplusLogR1AddrMSB_1_port, QN
               => n_1415);
   CWPplusLogR1AddrMSB_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N114, data_in => N115, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => CWPplusLogR1AddrMSB_0_port, QN
               => n_1416);
   CWPplusLogR2AddrMSB_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N130, data_in => N133, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => CWPplusLogR2AddrMSB_2_port, QN
               => n_1417);
   CWPplusLogR2AddrMSB_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N130, data_in => N132, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => CWPplusLogR2AddrMSB_1_port, QN
               => n_1418);
   CWPplusLogR2AddrMSB_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N130, data_in => N131, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => CWPplusLogR2AddrMSB_0_port, QN
               => n_1419);
   phyWaddr_reg_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N328, data_in => N334, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => phyWaddr_5_port, QN => n_1420
               );
   phyWaddr_reg_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N328, data_in => N333, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => phyWaddr_4_port, QN => n_1421
               );
   phyWaddr_reg_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N328, data_in => N332, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => phyWaddr_3_port, QN => n_1422
               );
   phyWaddr_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N328, data_in => N331, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => phyWaddr_2_port, QN => n_1423
               );
   phyWaddr_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N328, data_in => N330, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => phyWaddr_1_port, QN => n_1424
               );
   phyWaddr_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N328, data_in => N329, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => phyWaddr_0_port, QN => n_1425
               );
   phyR1addr_reg_5_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N335, data_in => N341, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => phyR1addr_5_port, QN => n_1426
               );
   phyR1addr_reg_4_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N335, data_in => N340, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => phyR1addr_4_port, QN => n_1427
               );
   phyR1addr_reg_3_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N335, data_in => N339, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => phyR1addr_3_port, QN => n_1428
               );
   phyR1addr_reg_2_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N335, data_in => N338, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => phyR1addr_2_port, QN => n_1429
               );
   phyR1addr_reg_1_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N335, data_in => N337, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => phyR1addr_1_port, QN => n_1430
               );
   phyR1addr_reg_0_inst : SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT
         generic map ( ac_as_q => 5, ac_as_qn => 5, sc_ss_q => 5 )
         port map ( clear => X_Logic0_port, preset => X_Logic0_port, enable => 
               N335, data_in => N336, synch_clear => X_Logic0_port, 
               synch_preset => X_Logic0_port, synch_toggle => X_Logic0_port, 
               synch_enable => X_Logic0_port, next_state => X_Logic0_port, 
               clocked_on => X_Logic0_port, Q => phyR1addr_0_port, QN => n_1431
               );
   I_7 : GTECH_NOT port map( A => ackIN, Z => N426);
   I_8 : GTECH_NOT port map( A => logWaddr_4_port, Z => N427);
   I_9 : GTECH_NOT port map( A => logR1addr_4_port, Z => N428);
   C1055 : GTECH_OR2 port map( A => CurrMemCntr_1_port, B => CurrMemCntr_2_port
                           , Z => N429);
   C1056 : GTECH_OR2 port map( A => CurrMemCntr_0_port, B => N429, Z => N430);
   I_10 : GTECH_NOT port map( A => N430, Z => N431);
   I_11 : GTECH_NOT port map( A => CurrMemCntr_2_port, Z => N432);
   I_12 : GTECH_NOT port map( A => CurrMemCntr_1_port, Z => N433);
   I_13 : GTECH_NOT port map( A => CurrMemCntr_0_port, Z => N434);
   C1062 : GTECH_OR2 port map( A => N433, B => N432, Z => N435);
   C1063 : GTECH_OR2 port map( A => N434, B => N435, Z => N436);
   I_14 : GTECH_NOT port map( A => N436, Z => N437);
   I_15 : GTECH_NOT port map( A => logWaddr_3_port, Z => N438);
   I_16 : GTECH_NOT port map( A => logR1addr_3_port, Z => N439);
   I_17 : GTECH_NOT port map( A => logR2addr_3_port, Z => N440);
   I_18 : GTECH_NOT port map( A => rtrn, Z => N441);
   C1070 : GTECH_OR2 port map( A => CurrSWP_1_port, B => CurrSWP_2_port, Z => 
                           N442);
   C1071 : GTECH_OR2 port map( A => CurrSWP_0_port, B => N442, Z => N443);
   I_19 : GTECH_NOT port map( A => N443, Z => N444);
   I_20 : GTECH_NOT port map( A => CurrSWP_2_port, Z => N445);
   C1075 : GTECH_OR2 port map( A => CurrSWP_1_port, B => N445, Z => N446);
   C1076 : GTECH_OR2 port map( A => CurrSWP_0_port, B => N446, Z => N447);
   I_21 : GTECH_NOT port map( A => N447, Z => N448);
   C1078 : GTECH_OR2 port map( A => CurrCWP_1_port, B => CurrCWP_2_port, Z => 
                           N449);
   C1079 : GTECH_OR2 port map( A => CurrCWP_0_port, B => N449, Z => N450);
   I_22 : GTECH_NOT port map( A => N450, Z => N451);
   C1081 : GTECH_OR2 port map( A => CurrCWP_1_port, B => CurrCWP_2_port, Z => 
                           N452);
   C1082 : GTECH_OR2 port map( A => CurrCWP_0_port, B => N452, Z => N453);
   I_23 : GTECH_NOT port map( A => N453, Z => N454);
   C1086 : GTECH_OR2 port map( A => CurrCWP_1_port, B => N85, Z => N455);
   C1087 : GTECH_OR2 port map( A => CurrCWP_0_port, B => N455, Z => N456);
   I_24 : GTECH_NOT port map( A => N456, Z => N457);
   C1091 : GTECH_OR2 port map( A => CurrCWP_1_port, B => N85, Z => N458);
   C1092 : GTECH_OR2 port map( A => CurrCWP_0_port, B => N458, Z => N459);
   I_25 : GTECH_NOT port map( A => N459, Z => N460);
   I_26 : GTECH_NOT port map( A => call, Z => N461);
   I_27 : GTECH_NOT port map( A => rst, Z => N462);
   add_84 : process ( X_Logic1_port, X_Logic0_port, logR2addr_3_port )
      variable A : UNSIGNED( 2 downto 0 );
      variable B : UNSIGNED( 2 downto 0 );
      variable Z : UNSIGNED( 2 downto 0 );
   begin
      A := ( X_Logic1_port, X_Logic0_port, X_Logic1_port );
      B := ( '0', '0', logR2addr_3_port );
      Z := A + B;
      ( FplusLogR2AddrMSB_2_port, FplusLogR2AddrMSB_1_port, 
            FplusLogR2AddrMSB_0_port ) <= Z;
   end process;
   
   add_82 : process ( X_Logic1_port, X_Logic0_port, logWaddr_3_port )
      variable A : UNSIGNED( 2 downto 0 );
      variable B : UNSIGNED( 2 downto 0 );
      variable Z : UNSIGNED( 2 downto 0 );
   begin
      A := ( X_Logic1_port, X_Logic0_port, X_Logic1_port );
      B := ( '0', '0', logWaddr_3_port );
      Z := A + B;
      ( FplusLogWaddrMSB_2_port, FplusLogWaddrMSB_1_port, 
            FplusLogWaddrMSB_0_port ) <= Z;
   end process;
   
   add_83 : process ( X_Logic1_port, X_Logic0_port, logR1addr_3_port )
      variable A : UNSIGNED( 2 downto 0 );
      variable B : UNSIGNED( 2 downto 0 );
      variable Z : UNSIGNED( 2 downto 0 );
   begin
      A := ( X_Logic1_port, X_Logic0_port, X_Logic1_port );
      B := ( '0', '0', logR1addr_3_port );
      Z := A + B;
      ( FplusLogR1addrMSB_2_port, FplusLogR1addrMSB_1_port, 
            FplusLogR1addrMSB_0_port ) <= Z;
   end process;
   
   C1099 : GTECH_OR2 port map( A => N154, B => N158, Z => ready_port);
   C1100 : GTECH_OR5 port map( A => N162, B => N166, C => fill_port, D => 
                           ackOUT_port, E => N178, Z => N463);
   C1101 : GTECH_OR5 port map( A => N182, B => N186, C => spill_port, D => N194
                           , E => N198, Z => N464);
   C1102 : GTECH_OR3 port map( A => N463, B => N464, C => N202, Z => N465);
   C1105 : GTECH_OR5 port map( A => N162, B => N166, C => fill_port, D => 
                           ackOUT_port, E => N182, Z => N466);
   C1106 : GTECH_OR5 port map( A => N186, B => spill_port, C => N194, D => N198
                           , E => N202, Z => N467);
   C1107 : GTECH_OR2 port map( A => N466, B => N467, Z => N468);
   C1111 : GTECH_OR5 port map( A => N182, B => N186, C => spill_port, D => N198
                           , E => N202, Z => N469);
   C1112 : GTECH_OR2 port map( A => N463, B => N469, Z => N470);
   C1121 : GTECH_OR2 port map( A => N198, B => N202, Z => N471);
   C1124 : GTECH_OR5 port map( A => N154, B => N158, C => N162, D => N166, E =>
                           fill_port, Z => N472);
   C1130 : GTECH_OR5 port map( A => ackOUT_port, B => N182, C => N186, D => 
                           spill_port, E => N194, Z => N473);
   C1132 : GTECH_OR3 port map( A => N472, B => N473, C => N471, Z => N474);
   C1195 : GTECH_OR5 port map( A => ackOUT_port, B => N178, C => N182, D => 
                           N186, E => spill_port, Z => N475);
   C1197 : GTECH_OR3 port map( A => N472, B => N475, C => N471, Z => N476);
   sub_133 : process ( CurrCS_2_port, CurrCS_1_port, CurrCS_0_port, 
         X_Logic0_port, X_Logic1_port )
      variable A : SIGNED( 2 downto 0 );
      variable B : SIGNED( 2 downto 0 );
      variable Z : SIGNED( 2 downto 0 );
   begin
      A := ( CurrCS_2_port, CurrCS_1_port, CurrCS_0_port );
      B := ( X_Logic0_port, X_Logic0_port, X_Logic1_port );
      Z := A - B;
      ( N299, N298, N297 ) <= Z;
   end process;
   
   add_177 : process ( CurrCS_2_port, CurrCS_1_port, CurrCS_0_port, 
         X_Logic1_port )
      variable A : UNSIGNED( 2 downto 0 );
      variable B : UNSIGNED( 2 downto 0 );
      variable Z : UNSIGNED( 2 downto 0 );
   begin
      A := ( CurrCS_2_port, CurrCS_1_port, CurrCS_0_port );
      B := ( '0', '0', X_Logic1_port );
      Z := A + B;
      ( N265, N264, N263 ) <= Z;
   end process;
   
   sub_205 : process ( CurrMemCntr_2_port, CurrMemCntr_1_port, 
         CurrMemCntr_0_port, X_Logic1_port )
      variable A : UNSIGNED( 2 downto 0 );
      variable B : UNSIGNED( 2 downto 0 );
      variable Z : UNSIGNED( 2 downto 0 );
   begin
      A := ( CurrMemCntr_2_port, CurrMemCntr_1_port, CurrMemCntr_0_port );
      B := ( '0', '0', X_Logic1_port );
      Z := A - B;
      ( N285, N284, N283 ) <= Z;
   end process;
   
   add_146 : process ( CurrMemCntr_2_port, CurrMemCntr_1_port, 
         CurrMemCntr_0_port, X_Logic1_port )
      variable A : UNSIGNED( 2 downto 0 );
      variable B : UNSIGNED( 2 downto 0 );
      variable Z : UNSIGNED( 2 downto 0 );
   begin
      A := ( CurrMemCntr_2_port, CurrMemCntr_1_port, CurrMemCntr_0_port );
      B := ( '0', '0', X_Logic1_port );
      Z := A + B;
      ( N310, N309, N308 ) <= Z;
   end process;
   
   sub_193 : process ( CurrSWP_2_port, CurrSWP_1_port, CurrSWP_0_port, 
         X_Logic0_port, X_Logic1_port )
      variable A : SIGNED( 2 downto 0 );
      variable B : SIGNED( 2 downto 0 );
      variable Z : SIGNED( 2 downto 0 );
   begin
      A := ( CurrSWP_2_port, CurrSWP_1_port, CurrSWP_0_port );
      B := ( X_Logic0_port, X_Logic0_port, X_Logic1_port );
      Z := A - B;
      ( N273, N272, N271 ) <= Z;
   end process;
   
   sub_174 : process ( CurrCWP_2_port, CurrCWP_1_port, CurrCWP_0_port, 
         X_Logic0_port, X_Logic1_port )
      variable A : SIGNED( 2 downto 0 );
      variable B : SIGNED( 2 downto 0 );
      variable Z : SIGNED( 2 downto 0 );
   begin
      A := ( CurrCWP_2_port, CurrCWP_1_port, CurrCWP_0_port );
      B := ( X_Logic0_port, X_Logic0_port, X_Logic1_port );
      Z := A - B;
      ( N259, N258, N257 ) <= Z;
   end process;
   
   sub_198 : process ( CurrCWP_2_port, CurrCWP_1_port, CurrCWP_0_port, 
         X_Logic0_port, X_Logic1_port )
      variable A : SIGNED( 2 downto 0 );
      variable B : SIGNED( 2 downto 0 );
      variable Z : SIGNED( 2 downto 0 );
   begin
      A := ( CurrCWP_2_port, CurrCWP_1_port, CurrCWP_0_port );
      B := ( X_Logic0_port, X_Logic0_port, X_Logic1_port );
      Z := A - B;
      ( N279, N278, N277 ) <= Z;
   end process;
   
   add_158 : process ( CurrSWP_2_port, CurrSWP_1_port, CurrSWP_0_port, 
         X_Logic1_port )
      variable A : UNSIGNED( 2 downto 0 );
      variable B : UNSIGNED( 2 downto 0 );
      variable Z : UNSIGNED( 2 downto 0 );
   begin
      A := ( CurrSWP_2_port, CurrSWP_1_port, CurrSWP_0_port );
      B := ( '0', '0', X_Logic1_port );
      Z := A + B;
      ( N318, N317, N316 ) <= Z;
   end process;
   
   add_130 : process ( CurrCWP_2_port, CurrCWP_1_port, CurrCWP_0_port, 
         X_Logic1_port )
      variable A : UNSIGNED( 2 downto 0 );
      variable B : UNSIGNED( 2 downto 0 );
      variable Z : UNSIGNED( 2 downto 0 );
   begin
      A := ( CurrCWP_2_port, CurrCWP_1_port, CurrCWP_0_port );
      B := ( '0', '0', X_Logic1_port );
      Z := A + B;
      ( N293, N292, N291 ) <= Z;
   end process;
   
   add_163 : process ( CurrCWP_2_port, CurrCWP_1_port, CurrCWP_0_port, 
         X_Logic1_port )
      variable A : UNSIGNED( 2 downto 0 );
      variable B : UNSIGNED( 2 downto 0 );
      variable Z : UNSIGNED( 2 downto 0 );
   begin
      A := ( CurrCWP_2_port, CurrCWP_1_port, CurrCWP_0_port );
      B := ( '0', '0', X_Logic1_port );
      Z := A + B;
      ( N324, N323, N322 ) <= Z;
   end process;
   
   add_70 : process ( CurrCWP_2_port, CurrCWP_1_port, CurrCWP_0_port, 
         logWaddr_3_port )
      variable A : UNSIGNED( 2 downto 0 );
      variable B : UNSIGNED( 2 downto 0 );
      variable Z : UNSIGNED( 2 downto 0 );
   begin
      A := ( CurrCWP_2_port, CurrCWP_1_port, CurrCWP_0_port );
      B := ( '0', '0', logWaddr_3_port );
      Z := A + B;
      ( N97, N96, N95 ) <= Z;
   end process;
   
   add_75 : process ( CurrCWP_2_port, CurrCWP_1_port, CurrCWP_0_port, 
         logR1addr_3_port )
      variable A : UNSIGNED( 2 downto 0 );
      variable B : UNSIGNED( 2 downto 0 );
      variable Z : UNSIGNED( 2 downto 0 );
   begin
      A := ( CurrCWP_2_port, CurrCWP_1_port, CurrCWP_0_port );
      B := ( '0', '0', logR1addr_3_port );
      Z := A + B;
      ( N113, N112, N111 ) <= Z;
   end process;
   
   add_80 : process ( CurrCWP_2_port, CurrCWP_1_port, CurrCWP_0_port, 
         logR2addr_3_port )
      variable A : UNSIGNED( 2 downto 0 );
      variable B : UNSIGNED( 2 downto 0 );
      variable Z : UNSIGNED( 2 downto 0 );
   begin
      A := ( CurrCWP_2_port, CurrCWP_1_port, CurrCWP_0_port );
      B := ( '0', '0', logR2addr_3_port );
      Z := A + B;
      ( N129, N128, N127 ) <= Z;
   end process;
   
   C1260 : GTECH_OR4 port map( A => N162, B => N166, C => N186, D => N202, Z =>
                           N477);
   C1261 : GTECH_OR3 port map( A => ackOUT_port, B => N182, C => N198, Z => 
                           N478);
   C1263 : GTECH_OR2 port map( A => N162, B => ackOUT_port, Z => N479);
   C1264 : GTECH_OR5 port map( A => N166, B => N182, C => N186, D => N198, E =>
                           N202, Z => N480);
   C1266 : GTECH_OR5 port map( A => N162, B => N166, C => N182, D => N186, E =>
                           N202, Z => N481);
   C1267 : GTECH_OR2 port map( A => ackOUT_port, B => N198, Z => N482);
   C1269 : GTECH_OR5 port map( A => N162, B => N166, C => ackOUT_port, D => 
                           N186, E => N202, Z => N483);
   C1270 : GTECH_OR2 port map( A => N182, B => N198, Z => N484);
   C1278_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 4 )
      port map(
         -- Connections to port 'DATA1'
         DATA(3) => X_Logic0_port, DATA(2) => X_Logic0_port, DATA(1) => 
               X_Logic0_port, DATA(0) => X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(7) => NextState_3_port, DATA(6) => NextState_2_port, DATA(5) => 
               NextState_1_port, DATA(4) => NextState_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N0, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N1, 
         -- Connections to port 'Z'
         Z(3) => N68, Z(2) => N67, Z(1) => N66, Z(0) => N65 );
   B_0 : GTECH_BUF port map( A => rst, Z => N0);
   B_1 : GTECH_BUF port map( A => N462, Z => N1);
   C1279_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => X_Logic1_port, 
         -- Connections to port 'DATA2'
         DATA(1) => N462, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N0, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N1, 
         -- Connections to port 'Z'
         Z(0) => N69 );
   C1280_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => X_Logic0_port, DATA(1) => X_Logic0_port, DATA(0) => 
               X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => NextSWP_2_port, DATA(4) => NextSWP_1_port, DATA(3) => 
               NextSWP_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N0, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N1, 
         -- Connections to port 'Z'
         Z(2) => N72, Z(1) => N71, Z(0) => N70 );
   C1281_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => X_Logic0_port, DATA(1) => X_Logic0_port, DATA(0) => 
               X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => NextCWP_2_port, DATA(4) => NextCWP_1_port, DATA(3) => 
               NextCWP_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N0, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N1, 
         -- Connections to port 'Z'
         Z(2) => N75, Z(1) => N74, Z(0) => N73 );
   C1282_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => X_Logic0_port, DATA(1) => X_Logic0_port, DATA(0) => 
               X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => NextCS_2_port, DATA(4) => NextCS_1_port, DATA(3) => 
               NextCS_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N0, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N1, 
         -- Connections to port 'Z'
         Z(2) => N78, Z(1) => N77, Z(0) => N76 );
   C1283_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => X_Logic0_port, DATA(1) => X_Logic0_port, DATA(0) => 
               X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => NextCR_2_port, DATA(4) => NextCR_1_port, DATA(3) => 
               NextCR_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N0, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N1, 
         -- Connections to port 'Z'
         Z(2) => N81, Z(1) => N80, Z(0) => N79 );
   C1284_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => X_Logic0_port, DATA(1) => X_Logic0_port, DATA(0) => 
               X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => NextMemCntr_2_port, DATA(4) => NextMemCntr_1_port, DATA(3) 
               => NextMemCntr_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N0, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N1, 
         -- Connections to port 'Z'
         Z(2) => N84, Z(1) => N83, Z(0) => N82 );
   C1285_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => X_Logic1_port, 
         -- Connections to port 'DATA2'
         DATA(1) => N94, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N2, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N3, 
         -- Connections to port 'Z'
         Z(0) => N98 );
   B_2 : GTECH_BUF port map( A => N89, Z => N2);
   B_3 : GTECH_BUF port map( A => N90, Z => N3);
   C1286_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => X_Logic0_port, DATA(1) => X_Logic0_port, DATA(0) => 
               X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => N97, DATA(4) => N96, DATA(3) => N95, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N2, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N3, 
         -- Connections to port 'Z'
         Z(2) => N101, Z(1) => N100, Z(0) => N99 );
   C1287_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => X_Logic1_port, 
         -- Connections to port 'DATA2'
         DATA(1) => N110, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N4, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N5, 
         -- Connections to port 'Z'
         Z(0) => N114 );
   B_4 : GTECH_BUF port map( A => N105, Z => N4);
   B_5 : GTECH_BUF port map( A => N106, Z => N5);
   C1288_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => X_Logic0_port, DATA(1) => X_Logic0_port, DATA(0) => 
               X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => N113, DATA(4) => N112, DATA(3) => N111, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N4, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N5, 
         -- Connections to port 'Z'
         Z(2) => N117, Z(1) => N116, Z(0) => N115 );
   C1289_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => X_Logic1_port, 
         -- Connections to port 'DATA2'
         DATA(1) => N126, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N6, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N7, 
         -- Connections to port 'Z'
         Z(0) => N130 );
   B_6 : GTECH_BUF port map( A => N121, Z => N6);
   B_7 : GTECH_BUF port map( A => N122, Z => N7);
   C1290_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => X_Logic0_port, DATA(1) => X_Logic0_port, DATA(0) => 
               X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => N129, DATA(4) => N128, DATA(3) => N127, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N6, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N7, 
         -- Connections to port 'Z'
         Z(2) => N133, Z(1) => N132, Z(0) => N131 );
   C1291_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => X_Logic1_port, 
         -- Connections to port 'DATA2'
         DATA(1) => N427, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N8, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N134, 
         -- Connections to port 'Z'
         Z(0) => N135 );
   B_8 : GTECH_BUF port map( A => logWaddr_4_port, Z => N8);
   C1292_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => FplusLogWaddrMSB_2_port, DATA(1) => FplusLogWaddrMSB_1_port
               , DATA(0) => FplusLogWaddrMSB_0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => CWPplusLogWAddrMSB_2_port, DATA(4) => 
               CWPplusLogWAddrMSB_1_port, DATA(3) => CWPplusLogWAddrMSB_0_port,
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N8, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N134, 
         -- Connections to port 'Z'
         Z(2) => N138, Z(1) => N137, Z(0) => N136 );
   C1293_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => X_Logic1_port, 
         -- Connections to port 'DATA2'
         DATA(1) => N428, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N9, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N139, 
         -- Connections to port 'Z'
         Z(0) => N140 );
   B_9 : GTECH_BUF port map( A => logR1addr_4_port, Z => N9);
   C1294_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => FplusLogR1addrMSB_2_port, DATA(1) => 
               FplusLogR1addrMSB_1_port, DATA(0) => FplusLogR1addrMSB_0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => CWPplusLogR1AddrMSB_2_port, DATA(4) => 
               CWPplusLogR1AddrMSB_1_port, DATA(3) => 
               CWPplusLogR1AddrMSB_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N9, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N139, 
         -- Connections to port 'Z'
         Z(2) => N143, Z(1) => N142, Z(0) => N141 );
   C1295_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => FplusLogR2AddrMSB_2_port, DATA(1) => 
               FplusLogR2AddrMSB_1_port, DATA(0) => FplusLogR2AddrMSB_0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => CWPplusLogR2AddrMSB_2_port, DATA(4) => 
               CWPplusLogR2AddrMSB_1_port, DATA(3) => 
               CWPplusLogR2AddrMSB_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N10, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N144, 
         -- Connections to port 'Z'
         Z(2) => N147, Z(1) => N146, Z(0) => N145 );
   B_10 : GTECH_BUF port map( A => logR2addr_4_port, Z => N10);
   C1296_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 4 )
      port map(
         -- Connections to port 'DATA1'
         DATA(3) => X_Logic1_port, DATA(2) => X_Logic0_port, DATA(1) => 
               X_Logic0_port, DATA(0) => X_Logic1_port, 
         -- Connections to port 'DATA2'
         DATA(7) => CurrState_3_port, DATA(6) => CurrState_2_port, DATA(5) => 
               CurrState_1_port, DATA(4) => CurrState_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N11, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N12, 
         -- Connections to port 'Z'
         Z(3) => N216, Z(2) => N215, Z(1) => N214, Z(0) => N213 );
   B_11 : GTECH_BUF port map( A => N211, Z => N11);
   B_12 : GTECH_BUF port map( A => N212, Z => N12);
   C1297_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 4 )
      port map(
         -- Connections to port 'DATA1'
         DATA(3) => X_Logic0_port, DATA(2) => X_Logic1_port, DATA(1) => 
               X_Logic1_port, DATA(0) => X_Logic1_port, 
         -- Connections to port 'DATA2'
         DATA(7) => N216, DATA(6) => N215, DATA(5) => N214, DATA(4) => N213, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N13, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N14, 
         -- Connections to port 'Z'
         Z(3) => N220, Z(2) => N219, Z(1) => N218, Z(0) => N217 );
   B_13 : GTECH_BUF port map( A => N206, Z => N13);
   B_14 : GTECH_BUF port map( A => N207, Z => N14);
   C1298_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 4 )
      port map(
         -- Connections to port 'DATA1'
         DATA(3) => X_Logic0_port, DATA(2) => X_Logic1_port, DATA(1) => 
               X_Logic0_port, DATA(0) => X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(7) => CurrState_3_port, DATA(6) => CurrState_2_port, DATA(5) => 
               CurrState_1_port, DATA(4) => CurrState_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N15, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N16, 
         -- Connections to port 'Z'
         Z(3) => N243, Z(2) => N242, Z(1) => N241, Z(0) => N240 );
   B_15 : GTECH_BUF port map( A => N238, Z => N15);
   B_16 : GTECH_BUF port map( A => N239, Z => N16);
   C1299_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 4 )
      port map(
         -- Connections to port 'DATA1'
         DATA(3) => X_Logic0_port, DATA(2) => X_Logic0_port, DATA(1) => 
               X_Logic1_port, DATA(0) => X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(7) => N243, DATA(6) => N242, DATA(5) => N241, DATA(4) => N240, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N17, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N18, 
         -- Connections to port 'Z'
         Z(3) => N247, Z(2) => N246, Z(1) => N245, Z(0) => N244 );
   B_17 : GTECH_BUF port map( A => N233, Z => N17);
   B_18 : GTECH_BUF port map( A => N234, Z => N18);
   C1300_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 4 )
      port map(
         -- Connections to port 'DATA1'
         DATA(3) => X_Logic1_port, DATA(2) => X_Logic0_port, DATA(1) => 
               X_Logic0_port, DATA(0) => X_Logic1_port, 
         -- Connections to port 'DATA2'
         DATA(7) => N247, DATA(6) => N246, DATA(5) => N245, DATA(4) => N244, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N19, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N20, 
         -- Connections to port 'Z'
         Z(3) => N251, Z(2) => N250, Z(1) => N249, Z(0) => N248 );
   B_19 : GTECH_BUF port map( A => N228, Z => N19);
   B_20 : GTECH_BUF port map( A => N229, Z => N20);
   C1301_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 4 )
      port map(
         -- Connections to port 'DATA1'
         DATA(3) => X_Logic0_port, DATA(2) => X_Logic1_port, DATA(1) => 
               X_Logic1_port, DATA(0) => X_Logic1_port, 
         -- Connections to port 'DATA2'
         DATA(7) => N251, DATA(6) => N250, DATA(5) => N249, DATA(4) => N248, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N21, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N22, 
         -- Connections to port 'Z'
         Z(3) => N255, Z(2) => N254, Z(1) => N253, Z(0) => N252 );
   B_21 : GTECH_BUF port map( A => N223, Z => N21);
   B_22 : GTECH_BUF port map( A => N224, Z => N22);
   C1302_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => X_Logic1_port, DATA(1) => X_Logic0_port, DATA(0) => 
               X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => N259, DATA(4) => N258, DATA(3) => N257, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N23, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N24, 
         -- Connections to port 'Z'
         Z(2) => N262, Z(1) => N261, Z(0) => N260 );
   B_23 : GTECH_BUF port map( A => N451, Z => N23);
   B_24 : GTECH_BUF port map( A => N450, Z => N24);
   C1303_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 4 )
      port map(
         -- Connections to port 'DATA1'
         DATA(3) => X_Logic0_port, DATA(2) => X_Logic1_port, DATA(1) => 
               X_Logic0_port, DATA(0) => X_Logic1_port, 
         -- Connections to port 'DATA2'
         DATA(7) => CurrState_3_port, DATA(6) => CurrState_2_port, DATA(5) => 
               CurrState_1_port, DATA(4) => CurrState_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N25, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N26, 
         -- Connections to port 'Z'
         Z(3) => N269, Z(2) => N268, Z(1) => N267, Z(0) => N266 );
   B_25 : GTECH_BUF port map( A => ackIN, Z => N25);
   B_26 : GTECH_BUF port map( A => N426, Z => N26);
   C1304_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => X_Logic1_port, DATA(1) => X_Logic0_port, DATA(0) => 
               X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => N273, DATA(4) => N272, DATA(3) => N271, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N27, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N28, 
         -- Connections to port 'Z'
         Z(2) => N276, Z(1) => N275, Z(0) => N274 );
   B_27 : GTECH_BUF port map( A => N444, Z => N27);
   B_28 : GTECH_BUF port map( A => N443, Z => N28);
   C1305_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => X_Logic1_port, DATA(1) => X_Logic0_port, DATA(0) => 
               X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => N279, DATA(4) => N278, DATA(3) => N277, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N29, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N30, 
         -- Connections to port 'Z'
         Z(2) => N282, Z(1) => N281, Z(0) => N280 );
   B_29 : GTECH_BUF port map( A => N454, Z => N29);
   B_30 : GTECH_BUF port map( A => N453, Z => N30);
   C1306_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 4 )
      port map(
         -- Connections to port 'DATA1'
         DATA(3) => X_Logic0_port, DATA(2) => X_Logic0_port, DATA(1) => 
               X_Logic0_port, DATA(0) => X_Logic1_port, 
         -- Connections to port 'DATA2'
         DATA(7) => CurrState_3_port, DATA(6) => CurrState_2_port, DATA(5) => 
               CurrState_1_port, DATA(4) => CurrState_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N31, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N32, 
         -- Connections to port 'Z'
         Z(3) => N289, Z(2) => N288, Z(1) => N287, Z(0) => N286 );
   B_31 : GTECH_BUF port map( A => N431, Z => N31);
   B_32 : GTECH_BUF port map( A => N430, Z => N32);
   C1307_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => X_Logic0_port, DATA(1) => X_Logic0_port, DATA(0) => 
               X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => N293, DATA(4) => N292, DATA(3) => N291, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N33, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N34, 
         -- Connections to port 'Z'
         Z(2) => N296, Z(1) => N295, Z(0) => N294 );
   B_33 : GTECH_BUF port map( A => N457, Z => N33);
   B_34 : GTECH_BUF port map( A => N456, Z => N34);
   C1308_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 4 )
      port map(
         -- Connections to port 'DATA1'
         DATA(3) => X_Logic1_port, DATA(2) => X_Logic0_port, DATA(1) => 
               X_Logic1_port, DATA(0) => X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(7) => CurrState_3_port, DATA(6) => CurrState_2_port, DATA(5) => 
               CurrState_1_port, DATA(4) => CurrState_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N25, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N26, 
         -- Connections to port 'Z'
         Z(3) => N303, Z(2) => N302, Z(1) => N301, Z(0) => N300 );
   C1309_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 4 )
      port map(
         -- Connections to port 'DATA1'
         DATA(3) => CurrState_3_port, DATA(2) => CurrState_2_port, DATA(1) => 
               CurrState_1_port, DATA(0) => CurrState_0_port, 
         -- Connections to port 'DATA2'
         DATA(7) => N303, DATA(6) => N302, DATA(5) => N301, DATA(4) => N300, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N26, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N25, 
         -- Connections to port 'Z'
         Z(3) => N307, Z(2) => N306, Z(1) => N305, Z(0) => N304 );
   C1310_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 4 )
      port map(
         -- Connections to port 'DATA1'
         DATA(3) => X_Logic1_port, DATA(2) => X_Logic0_port, DATA(1) => 
               X_Logic1_port, DATA(0) => X_Logic1_port, 
         -- Connections to port 'DATA2'
         DATA(7) => CurrState_3_port, DATA(6) => CurrState_2_port, DATA(5) => 
               CurrState_1_port, DATA(4) => CurrState_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N35, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N36, 
         -- Connections to port 'Z'
         Z(3) => N314, Z(2) => N313, Z(1) => N312, Z(0) => N311 );
   B_35 : GTECH_BUF port map( A => N437, Z => N35);
   B_36 : GTECH_BUF port map( A => N436, Z => N36);
   C1311_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => X_Logic0_port, DATA(1) => X_Logic0_port, DATA(0) => 
               X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => N318, DATA(4) => N317, DATA(3) => N316, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N37, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N38, 
         -- Connections to port 'Z'
         Z(2) => N321, Z(1) => N320, Z(0) => N319 );
   B_37 : GTECH_BUF port map( A => N448, Z => N37);
   B_38 : GTECH_BUF port map( A => N447, Z => N38);
   C1312_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => X_Logic0_port, DATA(1) => X_Logic0_port, DATA(0) => 
               X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => N324, DATA(4) => N323, DATA(3) => N322, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N39, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N40, 
         -- Connections to port 'Z'
         Z(2) => N327, Z(1) => N326, Z(0) => N325 );
   B_39 : GTECH_BUF port map( A => N460, Z => N39);
   B_40 : GTECH_BUF port map( A => N459, Z => N40);
   C1313_cell : SELECT_OP
      generic map ( num_inputs => 3, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => Win_port, 
         -- Connections to port 'DATA2'
         DATA(1) => X_Logic0_port, 
         -- Connections to port 'DATA3'
         DATA(2) => X_Logic1_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N41, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N42, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N43, 
         -- Connections to port 'Z'
         Z(0) => WtoRF_port );
   B_41 : GTECH_BUF port map( A => ready_port, Z => N41);
   B_42 : GTECH_BUF port map( A => N468, Z => N42);
   B_43 : GTECH_BUF port map( A => N178, Z => N43);
   C1314_cell : SELECT_OP
      generic map ( num_inputs => 3, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => R1in_port, 
         -- Connections to port 'DATA2'
         DATA(1) => X_Logic0_port, 
         -- Connections to port 'DATA3'
         DATA(2) => X_Logic1_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N41, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N44, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N45, 
         -- Connections to port 'Z'
         Z(0) => R1toRF_port );
   B_44 : GTECH_BUF port map( A => N470, Z => N44);
   B_45 : GTECH_BUF port map( A => N194, Z => N45);
   C1315_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => R2in_port, 
         -- Connections to port 'DATA2'
         DATA(1) => X_Logic0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N41, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N46, 
         -- Connections to port 'Z'
         Z(0) => R2toRF_port );
   B_46 : GTECH_BUF port map( A => N465, Z => N46);
   C1316_cell : SELECT_OP
      generic map ( num_inputs => 3, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => X_Logic1_port, DATA(1) => X_Logic0_port, DATA(0) => 
               X_Logic0_port, 
         -- Connections to port 'DATA2'
         DATA(5) => N265, DATA(4) => N264, DATA(3) => N263, 
         -- Connections to port 'DATA3'
         DATA(8) => N299, DATA(7) => N298, DATA(6) => N297, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N47, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N48, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N49, 
         -- Connections to port 'Z'
         Z(2) => NextCS_2_port, Z(1) => NextCS_1_port, Z(0) => NextCS_0_port );
   B_47 : GTECH_BUF port map( A => N154, Z => N47);
   B_48 : GTECH_BUF port map( A => N162, Z => N48);
   B_49 : GTECH_BUF port map( A => N182, Z => N49);
   C1317_cell : SELECT_OP
      generic map ( num_inputs => 8, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => N217, 
         -- Connections to port 'DATA2'
         DATA(1) => N252, 
         -- Connections to port 'DATA3'
         DATA(2) => X_Logic1_port, 
         -- Connections to port 'DATA4'
         DATA(3) => N266, 
         -- Connections to port 'DATA5'
         DATA(4) => X_Logic0_port, 
         -- Connections to port 'DATA6'
         DATA(5) => N286, 
         -- Connections to port 'DATA7'
         DATA(6) => N304, 
         -- Connections to port 'DATA8'
         DATA(7) => N311, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N47, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N50, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N51, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N52, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N53, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N43, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N54, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N45, 
         -- Connections to port 'Z'
         Z(0) => NextState_0_port );
   B_50 : GTECH_BUF port map( A => N158, Z => N50);
   B_51 : GTECH_BUF port map( A => N477, Z => N51);
   B_52 : GTECH_BUF port map( A => fill_port, Z => N52);
   B_53 : GTECH_BUF port map( A => N478, Z => N53);
   B_54 : GTECH_BUF port map( A => spill_port, Z => N54);
   C1318_cell : SELECT_OP
      generic map ( num_inputs => 8, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => N218, 
         -- Connections to port 'DATA2'
         DATA(1) => N253, 
         -- Connections to port 'DATA3'
         DATA(2) => X_Logic1_port, 
         -- Connections to port 'DATA4'
         DATA(3) => X_Logic0_port, 
         -- Connections to port 'DATA5'
         DATA(4) => N267, 
         -- Connections to port 'DATA6'
         DATA(5) => N287, 
         -- Connections to port 'DATA7'
         DATA(6) => N305, 
         -- Connections to port 'DATA8'
         DATA(7) => N312, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N47, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N50, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N55, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N56, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N52, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N43, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N54, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N45, 
         -- Connections to port 'Z'
         Z(0) => NextState_1_port );
   B_55 : GTECH_BUF port map( A => N479, Z => N55);
   B_56 : GTECH_BUF port map( A => N480, Z => N56);
   C1319_cell : SELECT_OP
      generic map ( num_inputs => 8, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => N219, 
         -- Connections to port 'DATA2'
         DATA(1) => N254, 
         -- Connections to port 'DATA3'
         DATA(2) => X_Logic0_port, 
         -- Connections to port 'DATA4'
         DATA(3) => N268, 
         -- Connections to port 'DATA5'
         DATA(4) => X_Logic1_port, 
         -- Connections to port 'DATA6'
         DATA(5) => N288, 
         -- Connections to port 'DATA7'
         DATA(6) => N306, 
         -- Connections to port 'DATA8'
         DATA(7) => N313, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N47, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N50, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N57, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N52, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N58, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N43, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N54, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N45, 
         -- Connections to port 'Z'
         Z(0) => NextState_2_port );
   B_57 : GTECH_BUF port map( A => N481, Z => N57);
   B_58 : GTECH_BUF port map( A => N482, Z => N58);
   C1320_cell : SELECT_OP
      generic map ( num_inputs => 8, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => N220, 
         -- Connections to port 'DATA2'
         DATA(1) => N255, 
         -- Connections to port 'DATA3'
         DATA(2) => X_Logic0_port, 
         -- Connections to port 'DATA4'
         DATA(3) => N269, 
         -- Connections to port 'DATA5'
         DATA(4) => N289, 
         -- Connections to port 'DATA6'
         DATA(5) => X_Logic1_port, 
         -- Connections to port 'DATA7'
         DATA(6) => N307, 
         -- Connections to port 'DATA8'
         DATA(7) => N314, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N47, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N50, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N59, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N52, 
         -- Connections to port 'CONTROL5'
         CONTROL(4) => N43, 
         -- Connections to port 'CONTROL6'
         CONTROL(5) => N60, 
         -- Connections to port 'CONTROL7'
         CONTROL(6) => N54, 
         -- Connections to port 'CONTROL8'
         CONTROL(7) => N45, 
         -- Connections to port 'Z'
         Z(0) => NextState_3_port );
   B_59 : GTECH_BUF port map( A => N483, Z => N59);
   B_60 : GTECH_BUF port map( A => N484, Z => N60);
   C1321_cell : SELECT_OP
      generic map ( num_inputs => 4, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => N262, DATA(1) => N261, DATA(0) => N260, 
         -- Connections to port 'DATA2'
         DATA(5) => N282, DATA(4) => N281, DATA(3) => N280, 
         -- Connections to port 'DATA3'
         DATA(8) => N296, DATA(7) => N295, DATA(6) => N294, 
         -- Connections to port 'DATA4'
         DATA(11) => N327, DATA(10) => N326, DATA(9) => N325, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N48, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N61, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N49, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N62, 
         -- Connections to port 'Z'
         Z(2) => NextCWP_2_port, Z(1) => NextCWP_1_port, Z(0) => NextCWP_0_port
               );
   B_61 : GTECH_BUF port map( A => ackOUT_port, Z => N61);
   B_62 : GTECH_BUF port map( A => N198, Z => N62);
   C1322_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => N276, DATA(1) => N275, DATA(0) => N274, 
         -- Connections to port 'DATA2'
         DATA(5) => N321, DATA(4) => N320, DATA(3) => N319, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N61, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N62, 
         -- Connections to port 'Z'
         Z(2) => NextSWP_2_port, Z(1) => NextSWP_1_port, Z(0) => NextSWP_0_port
               );
   C1323_cell : SELECT_OP
      generic map ( num_inputs => 4, input_width => 3 )
      port map(
         -- Connections to port 'DATA1'
         DATA(2) => X_Logic1_port, DATA(1) => X_Logic1_port, DATA(0) => 
               X_Logic1_port, 
         -- Connections to port 'DATA2'
         DATA(5) => N285, DATA(4) => N284, DATA(3) => N283, 
         -- Connections to port 'DATA3'
         DATA(8) => X_Logic0_port, DATA(7) => X_Logic0_port, DATA(6) => 
               X_Logic0_port, 
         -- Connections to port 'DATA4'
         DATA(11) => N310, DATA(10) => N309, DATA(9) => N308, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N61, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N43, 
         -- Connections to port 'CONTROL3'
         CONTROL(2) => N54, 
         -- Connections to port 'CONTROL4'
         CONTROL(3) => N45, 
         -- Connections to port 'Z'
         Z(2) => NextMemCntr_2_port, Z(1) => NextMemCntr_1_port, Z(0) => 
               NextMemCntr_0_port );
   C1324_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => N135, 
         -- Connections to port 'DATA2'
         DATA(1) => X_Logic1_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N63, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N43, 
         -- Connections to port 'Z'
         Z(0) => N328 );
   B_63 : GTECH_BUF port map( A => N474, Z => N63);
   C1325_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 6 )
      port map(
         -- Connections to port 'DATA1'
         DATA(5) => N138, DATA(4) => N137, DATA(3) => N136, DATA(2) => 
               logWaddr_2_port, DATA(1) => logWaddr_1_port, DATA(0) => 
               logWaddr_0_port, 
         -- Connections to port 'DATA2'
         DATA(11) => CurrSWP_2_port, DATA(10) => CurrSWP_1_port, DATA(9) => 
               CurrSWP_0_port, DATA(8) => CurrMemCntr_2_port, DATA(7) => 
               CurrMemCntr_1_port, DATA(6) => CurrMemCntr_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N63, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N43, 
         -- Connections to port 'Z'
         Z(5) => N334, Z(4) => N333, Z(3) => N332, Z(2) => N331, Z(1) => N330, 
               Z(0) => N329 );
   C1326_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 1 )
      port map(
         -- Connections to port 'DATA1'
         DATA(0) => N140, 
         -- Connections to port 'DATA2'
         DATA(1) => X_Logic1_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N64, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N45, 
         -- Connections to port 'Z'
         Z(0) => N335 );
   B_64 : GTECH_BUF port map( A => N476, Z => N64);
   C1327_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 6 )
      port map(
         -- Connections to port 'DATA1'
         DATA(5) => N143, DATA(4) => N142, DATA(3) => N141, DATA(2) => 
               logR1addr_2_port, DATA(1) => logR1addr_1_port, DATA(0) => 
               logR1addr_0_port, 
         -- Connections to port 'DATA2'
         DATA(11) => CurrSWP_2_port, DATA(10) => CurrSWP_1_port, DATA(9) => 
               CurrSWP_0_port, DATA(8) => CurrMemCntr_2_port, DATA(7) => 
               CurrMemCntr_1_port, DATA(6) => CurrMemCntr_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N64, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N45, 
         -- Connections to port 'Z'
         Z(5) => N341, Z(4) => N340, Z(3) => N339, Z(2) => N338, Z(1) => N337, 
               Z(0) => N336 );
         X_Logic1_port <= '1';
         X_Logic0_port <= '0';
   C1334 : GTECH_XOR2 port map( A => CurrSWP_2_port, B => CurrCWP_2_port, Z => 
                           NextCR_2_port);
   C1335 : GTECH_XOR2 port map( A => CurrSWP_1_port, B => CurrCWP_1_port, Z => 
                           NextCR_1_port);
   C1336 : GTECH_XOR2 port map( A => CurrSWP_0_port, B => CurrCWP_0_port, Z => 
                           NextCR_0_port);
   C1337 : GTECH_AND2 port map( A => N88, B => logWaddr_3_port, Z => N89);
   I_28 : GTECH_NOT port map( A => N89, Z => N90);
   B_65 : GTECH_BUF port map( A => N90, Z => N91);
   C1342 : GTECH_OR2 port map( A => N93, B => N438, Z => N94);
   C1344 : GTECH_AND2 port map( A => N91, B => N94, Z => n_1432);
   C1345 : GTECH_AND2 port map( A => N104, B => logR1addr_3_port, Z => N105);
   I_29 : GTECH_NOT port map( A => N105, Z => N106);
   B_66 : GTECH_BUF port map( A => N106, Z => N107);
   C1350 : GTECH_OR2 port map( A => N109, B => N439, Z => N110);
   C1352 : GTECH_AND2 port map( A => N107, B => N110, Z => n_1433);
   C1353 : GTECH_AND2 port map( A => N120, B => logR2addr_3_port, Z => N121);
   I_30 : GTECH_NOT port map( A => N121, Z => N122);
   B_67 : GTECH_BUF port map( A => N122, Z => N123);
   C1358 : GTECH_OR2 port map( A => N125, B => N440, Z => N126);
   C1360 : GTECH_AND2 port map( A => N123, B => N126, Z => n_1434);
   I_31 : GTECH_NOT port map( A => logWaddr_4_port, Z => N134);
   I_32 : GTECH_NOT port map( A => logR1addr_4_port, Z => N139);
   I_33 : GTECH_NOT port map( A => logR2addr_4_port, Z => N144);
   I_34 : GTECH_NOT port map( A => CurrState_3_port, Z => N148);
   I_35 : GTECH_NOT port map( A => CurrState_2_port, Z => N149);
   I_36 : GTECH_NOT port map( A => CurrState_1_port, Z => N150);
   I_37 : GTECH_NOT port map( A => CurrState_0_port, Z => N151);
   I_38 : GTECH_NOT port map( A => N157, Z => N158);
   I_39 : GTECH_NOT port map( A => N161, Z => N162);
   I_40 : GTECH_NOT port map( A => N165, Z => N166);
   I_41 : GTECH_NOT port map( A => N169, Z => N170);
   I_42 : GTECH_NOT port map( A => N173, Z => N174);
   I_43 : GTECH_NOT port map( A => N177, Z => N178);
   I_44 : GTECH_NOT port map( A => N181, Z => N182);
   I_45 : GTECH_NOT port map( A => N185, Z => N186);
   I_46 : GTECH_NOT port map( A => N189, Z => N190);
   I_47 : GTECH_NOT port map( A => N193, Z => N194);
   I_48 : GTECH_NOT port map( A => N197, Z => N198);
   I_49 : GTECH_NOT port map( A => N201, Z => N202);
   B_68 : GTECH_BUF port map( A => N170, Z => fill_port);
   B_69 : GTECH_BUF port map( A => N174, Z => ackOUT_port);
   B_70 : GTECH_BUF port map( A => N190, Z => spill_port);
   C1420 : GTECH_AND2 port map( A => call, B => N441, Z => N203);
   C1421 : GTECH_AND2 port map( A => N203, B => N205, Z => N206);
   I_50 : GTECH_NOT port map( A => N206, Z => N207);
   C1425 : GTECH_AND2 port map( A => N203, B => N210, Z => N211);
   I_51 : GTECH_NOT port map( A => N211, Z => N212);
   C1429 : GTECH_AND2 port map( A => N203, B => N222, Z => N223);
   I_52 : GTECH_NOT port map( A => N223, Z => N224);
   C1433 : GTECH_AND2 port map( A => N203, B => N227, Z => N228);
   I_53 : GTECH_NOT port map( A => N228, Z => N229);
   C1437 : GTECH_AND2 port map( A => N461, B => rtrn, Z => N230);
   C1438 : GTECH_AND2 port map( A => N230, B => N232, Z => N233);
   I_54 : GTECH_NOT port map( A => N233, Z => N234);
   C1442 : GTECH_AND2 port map( A => N230, B => N237, Z => N238);
   I_55 : GTECH_NOT port map( A => N238, Z => N239);
   B_71 : GTECH_BUF port map( A => N162, Z => N256);
   C1449 : GTECH_AND2 port map( A => N256, B => N450, Z => n_1435);
   B_72 : GTECH_BUF port map( A => ackOUT_port, Z => N270);
   C1456 : GTECH_AND2 port map( A => N270, B => N443, Z => n_1436);
   C1459 : GTECH_AND2 port map( A => N270, B => N453, Z => n_1437);
   B_73 : GTECH_BUF port map( A => N178, Z => net109);
   B_74 : GTECH_BUF port map( A => N182, Z => N290);
   C1466 : GTECH_AND2 port map( A => N290, B => N456, Z => n_1438);
   B_75 : GTECH_BUF port map( A => N194, Z => net115);
   B_76 : GTECH_BUF port map( A => N198, Z => N315);
   C1474 : GTECH_AND2 port map( A => N315, B => N447, Z => n_1439);
   C1477 : GTECH_AND2 port map( A => N315, B => N459, Z => n_1440);
   C1478 : GTECH_AND2 port map( A => N462, B => N462, Z => N342);
   C1479 : GTECH_AND2 port map( A => N154, B => N342, Z => N343);
   C1480 : GTECH_AND2 port map( A => N158, B => N342, Z => N344);
   C1481 : GTECH_OR2 port map( A => N343, B => N344, Z => N345);
   C1482 : GTECH_AND2 port map( A => N162, B => N342, Z => N346);
   C1483 : GTECH_OR2 port map( A => N345, B => N346, Z => N347);
   C1484 : GTECH_AND2 port map( A => N166, B => N342, Z => N348);
   C1485 : GTECH_OR2 port map( A => N347, B => N348, Z => N349);
   C1486 : GTECH_AND2 port map( A => fill_port, B => N342, Z => N350);
   C1487 : GTECH_OR2 port map( A => N349, B => N350, Z => N351);
   C1488 : GTECH_AND2 port map( A => N182, B => N342, Z => N352);
   C1489 : GTECH_OR2 port map( A => N351, B => N352, Z => N353);
   C1490 : GTECH_AND2 port map( A => N186, B => N342, Z => N354);
   C1491 : GTECH_OR2 port map( A => N353, B => N354, Z => N355);
   C1492 : GTECH_AND2 port map( A => N198, B => N342, Z => N356);
   C1493 : GTECH_OR2 port map( A => N355, B => N356, Z => N357);
   C1494 : GTECH_AND2 port map( A => N202, B => N342, Z => N358);
   C1495 : GTECH_OR2 port map( A => N357, B => N358, Z => N359);
   I_56 : GTECH_NOT port map( A => N359, Z => N360);
   C1497 : GTECH_AND2 port map( A => N69, B => N360, Z => N361);
   C1498 : GTECH_AND2 port map( A => N178, B => N342, Z => N362);
   C1499 : GTECH_OR2 port map( A => N351, B => N362, Z => N363);
   C1500 : GTECH_OR2 port map( A => N363, B => N352, Z => N364);
   C1501 : GTECH_OR2 port map( A => N364, B => N354, Z => N365);
   C1502 : GTECH_AND2 port map( A => spill_port, B => N342, Z => N366);
   C1503 : GTECH_OR2 port map( A => N365, B => N366, Z => N367);
   C1504 : GTECH_AND2 port map( A => N194, B => N342, Z => N368);
   C1505 : GTECH_OR2 port map( A => N367, B => N368, Z => N369);
   C1506 : GTECH_OR2 port map( A => N369, B => N358, Z => N370);
   I_57 : GTECH_NOT port map( A => N370, Z => N371);
   C1508 : GTECH_AND2 port map( A => N69, B => N371, Z => N372);
   C1509 : GTECH_OR2 port map( A => N345, B => N348, Z => N373);
   C1510 : GTECH_OR2 port map( A => N373, B => N350, Z => N374);
   C1511 : GTECH_OR2 port map( A => N374, B => N362, Z => N375);
   C1512 : GTECH_OR2 port map( A => N375, B => N354, Z => N376);
   C1513 : GTECH_OR2 port map( A => N376, B => N366, Z => N377);
   C1514 : GTECH_OR2 port map( A => N377, B => N368, Z => N378);
   C1515 : GTECH_OR2 port map( A => N378, B => N358, Z => N379);
   I_58 : GTECH_NOT port map( A => N379, Z => N380);
   C1517 : GTECH_AND2 port map( A => N69, B => N380, Z => N381);
   C1518 : GTECH_OR2 port map( A => N344, B => N348, Z => N382);
   C1519 : GTECH_OR2 port map( A => N382, B => N350, Z => N383);
   C1520 : GTECH_AND2 port map( A => ackOUT_port, B => N342, Z => N384);
   C1521 : GTECH_OR2 port map( A => N383, B => N384, Z => N385);
   C1522 : GTECH_OR2 port map( A => N385, B => N362, Z => N386);
   C1523 : GTECH_OR2 port map( A => N386, B => N354, Z => N387);
   C1524 : GTECH_OR2 port map( A => N387, B => N366, Z => N388);
   C1525 : GTECH_OR2 port map( A => N388, B => N368, Z => N389);
   C1526 : GTECH_OR2 port map( A => N389, B => N356, Z => N390);
   C1527 : GTECH_OR2 port map( A => N390, B => N358, Z => N391);
   I_59 : GTECH_NOT port map( A => N391, Z => N392);
   C1529 : GTECH_AND2 port map( A => N69, B => N392, Z => N393);
   C1530 : GTECH_AND2 port map( A => N462, B => N462, Z => N394);
   C1531 : GTECH_AND2 port map( A => fill_port, B => N394, Z => N395);
   C1532 : GTECH_OR2 port map( A => N382, B => N395, Z => N396);
   C1533 : GTECH_AND2 port map( A => ackOUT_port, B => N394, Z => N397);
   C1534 : GTECH_OR2 port map( A => N396, B => N397, Z => N398);
   C1535 : GTECH_AND2 port map( A => N178, B => N394, Z => N399);
   C1536 : GTECH_OR2 port map( A => N398, B => N399, Z => N400);
   C1537 : GTECH_AND2 port map( A => N186, B => N394, Z => N401);
   C1538 : GTECH_OR2 port map( A => N400, B => N401, Z => N402);
   C1539 : GTECH_AND2 port map( A => spill_port, B => N394, Z => N403);
   C1540 : GTECH_OR2 port map( A => N402, B => N403, Z => N404);
   C1541 : GTECH_AND2 port map( A => N194, B => N394, Z => N405);
   C1542 : GTECH_OR2 port map( A => N404, B => N405, Z => N406);
   C1543 : GTECH_AND2 port map( A => N198, B => N394, Z => N407);
   C1544 : GTECH_OR2 port map( A => N406, B => N407, Z => N408);
   C1545 : GTECH_AND2 port map( A => N202, B => N394, Z => N409);
   C1546 : GTECH_OR2 port map( A => N408, B => N409, Z => N410);
   I_60 : GTECH_NOT port map( A => N410, Z => N411);
   C1548 : GTECH_AND2 port map( A => N69, B => N411, Z => N412);
   C1549 : GTECH_AND2 port map( A => N158, B => N394, Z => N413);
   C1550 : GTECH_AND2 port map( A => N166, B => N394, Z => N414);
   C1551 : GTECH_OR2 port map( A => N413, B => N414, Z => N415);
   C1552 : GTECH_OR2 port map( A => N415, B => N395, Z => N416);
   C1553 : GTECH_OR2 port map( A => N416, B => N397, Z => N417);
   C1554 : GTECH_OR2 port map( A => N417, B => N399, Z => N418);
   C1555 : GTECH_OR2 port map( A => N418, B => N401, Z => N419);
   C1556 : GTECH_OR2 port map( A => N419, B => N403, Z => N420);
   C1557 : GTECH_OR2 port map( A => N420, B => N405, Z => N421);
   C1558 : GTECH_OR2 port map( A => N421, B => N407, Z => N422);
   C1559 : GTECH_OR2 port map( A => N422, B => N409, Z => N423);
   I_61 : GTECH_NOT port map( A => N423, Z => N424);
   C1561 : GTECH_AND2 port map( A => N69, B => N424, Z => N425);

end SYN_HLSM;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RMLwithRF_NGlobal5_NBlockRegs4_NWindows5_NData8.all;

entity RMLwithRF_NGlobal5_NBlockRegs4_NWindows5_NData8 is

   port( rst, clk, call, rtrn, ackIN, W, RD1, RD2, en : in std_logic;  DATAIN :
         in std_logic_vector (7 downto 0);  logWaddr, logR1addr, logR2addr : in
         std_logic_vector (4 downto 0);  spill, fill, ackOUT, ready : out 
         std_logic;  RD1Out, RD2Out : out std_logic_vector (7 downto 0));

end RMLwithRF_NGlobal5_NBlockRegs4_NWindows5_NData8;

architecture SYN_Structural of RMLwithRF_NGlobal5_NBlockRegs4_NWindows5_NData8 
   is

   component register_file_NData8_NRegs45_NAddr6
      port( CLK, RESET, ENABLE, RD1, RD2, WR : in std_logic;  ADD_WR, ADD_RD1, 
            ADD_RD2 : in std_logic_vector (5 downto 0);  DATAIN : in 
            std_logic_vector (7 downto 0);  OUT1, OUT2 : out std_logic_vector 
            (7 downto 0));
   end component;
   
   component RML_M5_N4_F5
      port( rst, clk, call, rtrn, ackIN, Win, R1in, R2in : in std_logic;  
            logWaddr, logR1addr, logR2addr : in std_logic_vector (4 downto 0); 
            phyWaddr, phyR1addr, phyR2addr : out std_logic_vector (5 downto 0);
            WtoRF, R1toRF, R2toRF, spill, fill, ackOUT, ready : out std_logic);
   end component;
   
   signal phyWaddr_5_port, phyWaddr_4_port, phyWaddr_3_port, phyWaddr_2_port, 
      phyWaddr_1_port, phyWaddr_0_port, phyR1addr_5_port, phyR1addr_4_port, 
      phyR1addr_3_port, phyR1addr_2_port, phyR1addr_1_port, phyR1addr_0_port, 
      phyR2addr_5_port, phyR2addr_4_port, phyR2addr_3_port, phyR2addr_2_port, 
      phyR2addr_1_port, phyR2addr_0_port, WtoRF, R1toRF, R2toRF : std_logic;

begin
   
   RegisterMgmtLogic : RML_M5_N4_F5 port map( rst => rst, clk => clk, call => 
                           call, rtrn => rtrn, ackIN => ackIN, Win => W, R1in 
                           => RD1, R2in => RD2, logWaddr(4) => logWaddr(4), 
                           logWaddr(3) => logWaddr(3), logWaddr(2) => 
                           logWaddr(2), logWaddr(1) => logWaddr(1), logWaddr(0)
                           => logWaddr(0), logR1addr(4) => logR1addr(4), 
                           logR1addr(3) => logR1addr(3), logR1addr(2) => 
                           logR1addr(2), logR1addr(1) => logR1addr(1), 
                           logR1addr(0) => logR1addr(0), logR2addr(4) => 
                           logR2addr(4), logR2addr(3) => logR2addr(3), 
                           logR2addr(2) => logR2addr(2), logR2addr(1) => 
                           logR2addr(1), logR2addr(0) => logR2addr(0), 
                           phyWaddr(5) => phyWaddr_5_port, phyWaddr(4) => 
                           phyWaddr_4_port, phyWaddr(3) => phyWaddr_3_port, 
                           phyWaddr(2) => phyWaddr_2_port, phyWaddr(1) => 
                           phyWaddr_1_port, phyWaddr(0) => phyWaddr_0_port, 
                           phyR1addr(5) => phyR1addr_5_port, phyR1addr(4) => 
                           phyR1addr_4_port, phyR1addr(3) => phyR1addr_3_port, 
                           phyR1addr(2) => phyR1addr_2_port, phyR1addr(1) => 
                           phyR1addr_1_port, phyR1addr(0) => phyR1addr_0_port, 
                           phyR2addr(5) => phyR2addr_5_port, phyR2addr(4) => 
                           phyR2addr_4_port, phyR2addr(3) => phyR2addr_3_port, 
                           phyR2addr(2) => phyR2addr_2_port, phyR2addr(1) => 
                           phyR2addr_1_port, phyR2addr(0) => phyR2addr_0_port, 
                           WtoRF => WtoRF, R1toRF => R1toRF, R2toRF => R2toRF, 
                           spill => spill, fill => fill, ackOUT => ackOUT, 
                           ready => ready);
   RegFile : register_file_NData8_NRegs45_NAddr6 port map( CLK => clk, RESET =>
                           rst, ENABLE => en, RD1 => R1toRF, RD2 => R2toRF, WR 
                           => WtoRF, ADD_WR(5) => phyWaddr_5_port, ADD_WR(4) =>
                           phyWaddr_4_port, ADD_WR(3) => phyWaddr_3_port, 
                           ADD_WR(2) => phyWaddr_2_port, ADD_WR(1) => 
                           phyWaddr_1_port, ADD_WR(0) => phyWaddr_0_port, 
                           ADD_RD1(5) => phyR1addr_5_port, ADD_RD1(4) => 
                           phyR1addr_4_port, ADD_RD1(3) => phyR1addr_3_port, 
                           ADD_RD1(2) => phyR1addr_2_port, ADD_RD1(1) => 
                           phyR1addr_1_port, ADD_RD1(0) => phyR1addr_0_port, 
                           ADD_RD2(5) => phyR2addr_5_port, ADD_RD2(4) => 
                           phyR2addr_4_port, ADD_RD2(3) => phyR2addr_3_port, 
                           ADD_RD2(2) => phyR2addr_2_port, ADD_RD2(1) => 
                           phyR2addr_1_port, ADD_RD2(0) => phyR2addr_0_port, 
                           DATAIN(7) => DATAIN(7), DATAIN(6) => DATAIN(6), 
                           DATAIN(5) => DATAIN(5), DATAIN(4) => DATAIN(4), 
                           DATAIN(3) => DATAIN(3), DATAIN(2) => DATAIN(2), 
                           DATAIN(1) => DATAIN(1), DATAIN(0) => DATAIN(0), 
                           OUT1(7) => RD1Out(7), OUT1(6) => RD1Out(6), OUT1(5) 
                           => RD1Out(5), OUT1(4) => RD1Out(4), OUT1(3) => 
                           RD1Out(3), OUT1(2) => RD1Out(2), OUT1(1) => 
                           RD1Out(1), OUT1(0) => RD1Out(0), OUT2(7) => 
                           RD2Out(7), OUT2(6) => RD2Out(6), OUT2(5) => 
                           RD2Out(5), OUT2(4) => RD2Out(4), OUT2(3) => 
                           RD2Out(3), OUT2(2) => RD2Out(2), OUT2(1) => 
                           RD2Out(1), OUT2(0) => RD2Out(0));

end SYN_Structural;

-- This is the basic technology-independent three-state component.


library IEEE;

use IEEE.std_logic_1164.all;
entity SYNOP_BASIC_THREE_STATE is

   port(three_state, function_port: in std_logic;
         output: out std_logic);

end SYNOP_BASIC_THREE_STATE;

architecture RTL of SYNOP_BASIC_THREE_STATE is
begin
   process ( three_state, function_port )
   begin
      if ( three_state = '1' ) then
         output <= 'Z';
      else
         output <= function_port;
      end if;
   end process;
   
end RTL;

library IEEE;

use IEEE.std_logic_1164.all;
entity SELECT_OP is
   generic ( num_inputs, input_width : integer );
   port(
      DATA : in std_logic_vector( num_inputs  * input_width - 1 downto 0 );
      CONTROL : in std_logic_vector( num_inputs - 1 downto 0 );
      Z : out std_logic_vector( input_width - 1 downto 0 )
   );
end SELECT_OP;

architecture RTL of SELECT_OP is
begin

   process ( DATA, CONTROL )
      variable index, high, low : integer;
   begin
   
      --  Initialize variables
      index := 0;
      
      -- Loop over the values of the control inputs
      for_loop : for i in CONTROL'range loop
      
         if ( CONTROL(i) = '1' ) then
         
            index := i;
            exit for_loop;
            
         end if;
         
      end loop;
      
      -- Store the corresponding data lines into the output
      low := input_width * index;
      high := low + input_width - 1;
      Z <= DATA( high downto low );
   
   end process;
   
end RTL;

library IEEE;

use IEEE.std_logic_1164.all;

entity SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT is
   generic ( ac_as_q, ac_as_qn, sc_ss_q : integer );
   port(
      clear, preset, enable, data_in, synch_clear, synch_preset, synch_toggle, 
         synch_enable, next_state, clocked_on : in std_logic;
      Q, QN : buffer std_logic
   );
end SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT;

architecture RTL of SYNOPSYS_BASIC_SEQUENTIAL_ELEMENT is
begin

   process ( preset, clear, enable, data_in, clocked_on )
   begin
   
            -- Check the value of inputs (asynchronous first)
            if ( ( ( preset /= '1' ) and ( preset /= '0' ) ) or ( ( clear /= 
                     '1' ) and ( clear /= '0' ) )  ) then
               Q <= 'X';
            elsif ( clear = '1' and preset = '1' ) then
               case ac_as_q is
                  when 2 =>
                     Q <= '1';
                  when 1 =>
                     Q <= '0';
                  when others =>
                     Q <= 'X';
               end case;
               case ac_as_qn is
                  when 2 =>
                     QN <= '1';
                  when 1 =>
                     QN <= '0';
                  when others =>
                     QN <= 'X';
               end case;
            elsif ( clear = '1' ) then
               Q <= '0';
            elsif ( preset = '1' ) then
               Q <= '1';
            elsif ( ( enable /= '1' ) and ( enable /= '0' ) ) then
               Q <= 'X';
            elsif ( enable = '1' ) then
               Q <= data_in;
            elsif ( ( clocked_on /= '1' ) and ( clocked_on /= '0' ) ) then
               Q <= 'X';
            elsif ( clocked_on'event and clocked_on = '1' ) then
         if ( ( ( synch_preset /= '1' ) and ( synch_preset /= '0' ) ) or ( ( 
                  synch_clear /= '1' ) and ( synch_clear /= '0' ) )  ) then
            Q <= 'X';
         elsif ( synch_clear = '1' and synch_preset = '1' ) then
            case sc_ss_q is
               when 2 =>
                  Q <= '1';
               when 1 =>
                  Q <= '0';
               when others =>
                  Q <= 'X';
            end case;
         elsif ( synch_clear = '1' ) then
            Q <= '0';
         elsif ( synch_preset = '1' ) then
            Q <= '1';
         elsif ( ( ( synch_toggle /= '1' ) and ( synch_toggle /= '0' ) ) or ( (
                  synch_enable /= '1' ) and ( synch_enable /= '0' ) )  ) then
            Q <= 'X';
         elsif ( synch_enable = '1' and synch_toggle = '1' ) then
            Q <= 'X';
         elsif ( synch_toggle = '1' ) then
            Q <= QN;
         elsif ( synch_enable = '1' ) then
            Q <= next_state;
         end if;
      end if;
   
   end process;

end RTL;
