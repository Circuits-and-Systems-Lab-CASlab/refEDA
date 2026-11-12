/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Tue Dec 30 18:19:17 2025
/////////////////////////////////////////////////////////////


module tv80 ( m1_n, mreq_n, iorq_n, rd_n, wr_n, rfsh_n, halt_n, busak_n, A, 
        do, reset_n, clk, wait_n, int_n, nmi_n, busrq_n, di );
  output [15:0] A;
  output [7:0] do;
  input [7:0] di;
  input reset_n, clk, wait_n, int_n, nmi_n, busrq_n;
  output m1_n, mreq_n, iorq_n, rd_n, wr_n, rfsh_n, halt_n, busak_n;
  wire   N33, N34, N35, N36, n18, n19, n20, n21, n22, n23, n24, n25,
         i_tv80_core_n1159, i_tv80_core_n1158, i_tv80_core_n1157,
         i_tv80_core_n1156, i_tv80_core_n1155, i_tv80_core_n1154,
         i_tv80_core_n1153, i_tv80_core_n1152, i_tv80_core_n1151,
         i_tv80_core_n1150, i_tv80_core_n1149, i_tv80_core_n1148,
         i_tv80_core_n1147, i_tv80_core_n1146, i_tv80_core_n1145,
         i_tv80_core_n1144, i_tv80_core_n1143, i_tv80_core_n1142,
         i_tv80_core_n1141, i_tv80_core_n1140, i_tv80_core_n1139,
         i_tv80_core_n1138, i_tv80_core_n1137, i_tv80_core_n1136,
         i_tv80_core_n1135, i_tv80_core_n1134, i_tv80_core_n1133,
         i_tv80_core_n1132, i_tv80_core_n1131, i_tv80_core_n1130,
         i_tv80_core_n1129, i_tv80_core_n1128, i_tv80_core_n1127,
         i_tv80_core_n1126, i_tv80_core_n1125, i_tv80_core_n1124,
         i_tv80_core_n1123, i_tv80_core_n1122, i_tv80_core_n1121,
         i_tv80_core_n1120, i_tv80_core_n1119, i_tv80_core_n1118,
         i_tv80_core_n1117, i_tv80_core_n1116, i_tv80_core_n1115,
         i_tv80_core_n1114, i_tv80_core_n1113, i_tv80_core_n1112,
         i_tv80_core_n1111, i_tv80_core_n1110, i_tv80_core_n1109,
         i_tv80_core_n1108, i_tv80_core_n1107, i_tv80_core_n1106,
         i_tv80_core_n1105, i_tv80_core_n1104, i_tv80_core_n1103,
         i_tv80_core_n1102, i_tv80_core_n1101, i_tv80_core_n1100,
         i_tv80_core_n1099, i_tv80_core_n1098, i_tv80_core_n1097,
         i_tv80_core_n1096, i_tv80_core_n1095, i_tv80_core_n1094,
         i_tv80_core_n1093, i_tv80_core_n1092, i_tv80_core_n1091,
         i_tv80_core_n1090, i_tv80_core_n1089, i_tv80_core_n1088,
         i_tv80_core_n1087, i_tv80_core_n1086, i_tv80_core_n1085,
         i_tv80_core_n1084, i_tv80_core_n1083, i_tv80_core_n1082,
         i_tv80_core_n1081, i_tv80_core_n1080, i_tv80_core_n1079,
         i_tv80_core_n1078, i_tv80_core_n1077, i_tv80_core_n1076,
         i_tv80_core_n1075, i_tv80_core_n1074, i_tv80_core_n1073,
         i_tv80_core_n1072, i_tv80_core_n1071, i_tv80_core_n1070,
         i_tv80_core_n1069, i_tv80_core_n1068, i_tv80_core_n1067,
         i_tv80_core_n1066, i_tv80_core_n1065, i_tv80_core_n1064,
         i_tv80_core_n1063, i_tv80_core_n1062, i_tv80_core_n1061,
         i_tv80_core_n1060, i_tv80_core_n1059, i_tv80_core_n1058,
         i_tv80_core_n1057, i_tv80_core_n1056, i_tv80_core_n1055,
         i_tv80_core_n1054, i_tv80_core_n1053, i_tv80_core_n1052,
         i_tv80_core_n1051, i_tv80_core_n1050, i_tv80_core_n1049,
         i_tv80_core_n1048, i_tv80_core_n1047, i_tv80_core_n1046,
         i_tv80_core_n1045, i_tv80_core_n1044, i_tv80_core_n1043,
         i_tv80_core_n1042, i_tv80_core_n1041, i_tv80_core_n1040,
         i_tv80_core_n1039, i_tv80_core_n1038, i_tv80_core_n1037,
         i_tv80_core_n1036, i_tv80_core_n1035, i_tv80_core_n1034,
         i_tv80_core_n1033, i_tv80_core_n1032, i_tv80_core_n1031,
         i_tv80_core_n1030, i_tv80_core_n1029, i_tv80_core_n1028,
         i_tv80_core_n1027, i_tv80_core_n1026, i_tv80_core_n1025,
         i_tv80_core_n1024, i_tv80_core_n1023, i_tv80_core_n1022,
         i_tv80_core_n1021, i_tv80_core_n1020, i_tv80_core_n1019,
         i_tv80_core_n1018, i_tv80_core_n1017, i_tv80_core_n1016,
         i_tv80_core_n1015, i_tv80_core_n1014, i_tv80_core_n1013,
         i_tv80_core_n1012, i_tv80_core_n1011, i_tv80_core_n1010,
         i_tv80_core_n1009, i_tv80_core_n1008, i_tv80_core_n1007,
         i_tv80_core_n1006, i_tv80_core_n1005, i_tv80_core_n1004,
         i_tv80_core_n1003, i_tv80_core_n1002, i_tv80_core_n1001,
         i_tv80_core_n1000, i_tv80_core_n999, i_tv80_core_n998,
         i_tv80_core_n997, i_tv80_core_n996, i_tv80_core_n995,
         i_tv80_core_n994, i_tv80_core_n993, i_tv80_core_n992,
         i_tv80_core_n991, i_tv80_core_n990, i_tv80_core_n989,
         i_tv80_core_n988, i_tv80_core_n987, i_tv80_core_n986,
         i_tv80_core_n985, i_tv80_core_n984, i_tv80_core_n983,
         i_tv80_core_n982, i_tv80_core_n981, i_tv80_core_n980,
         i_tv80_core_n979, i_tv80_core_n978, i_tv80_core_n977,
         i_tv80_core_n976, i_tv80_core_n975, i_tv80_core_n971,
         i_tv80_core_n970, i_tv80_core_n969, i_tv80_core_n968,
         i_tv80_core_n967, i_tv80_core_n966, i_tv80_core_n965,
         i_tv80_core_n964, i_tv80_core_n963, i_tv80_core_n962,
         i_tv80_core_n961, i_tv80_core_n960, i_tv80_core_n959,
         i_tv80_core_n958, i_tv80_core_n957, i_tv80_core_n956,
         i_tv80_core_n955, i_tv80_core_n954, i_tv80_core_n953,
         i_tv80_core_n952, i_tv80_core_n951, i_tv80_core_n950,
         i_tv80_core_n949, i_tv80_core_n948, i_tv80_core_n947,
         i_tv80_core_n946, i_tv80_core_n945, i_tv80_core_n944,
         i_tv80_core_n943, i_tv80_core_n942, i_tv80_core_n941,
         i_tv80_core_n940, i_tv80_core_n939, i_tv80_core_Auto_Wait_t2,
         i_tv80_core_Oldnmi_n, i_tv80_core_NMI_s, i_tv80_core_INT_s,
         i_tv80_core_BusReq_s, i_tv80_core_IncDecZ, i_tv80_core_N261,
         i_tv80_core_N260, i_tv80_core_N259, i_tv80_core_N258,
         i_tv80_core_N257, i_tv80_core_N256, i_tv80_core_N255,
         i_tv80_core_N254, i_tv80_core_N253, i_tv80_core_N252,
         i_tv80_core_N251, i_tv80_core_N250, i_tv80_core_N249,
         i_tv80_core_N248, i_tv80_core_No_BTR, i_tv80_core_N158,
         i_tv80_core_N157, i_tv80_core_N156, i_tv80_core_N155,
         i_tv80_core_N154, i_tv80_core_Alternate, i_tv80_core_Auto_Wait_t1,
         i_tv80_core_PreserveC_r, i_tv80_core_IntE_FF2, i_tv80_core_BTR_r,
         i_tv80_core_Halt_FF, i_tv80_core_Save_ALU_r, i_tv80_core_XY_Ind,
         i_tv80_core_BusAck, i_tv80_core_Z16_r, i_tv80_core_Arith16_r,
         i_tv80_core_IncDec_16_3_, i_tv80_core_IntCycle, i_tv80_core_NMICycle,
         i_tv80_core_IntE, i_tv80_core_i_alu_N227, i_tv80_core_i_alu_N228,
         i_tv80_core_i_alu_N229, i_tv80_core_i_alu_N230,
         i_tv80_core_i_alu_N231, i_tv80_core_i_alu_N232,
         i_tv80_core_i_alu_N233, i_tv80_core_i_alu_N246,
         i_tv80_core_i_alu_N245, i_tv80_core_i_alu_N244,
         i_tv80_core_i_alu_N243, i_tv80_core_i_alu_N238,
         i_tv80_core_i_alu_N235, i_tv80_core_i_alu_N216,
         i_tv80_core_i_alu_N215, i_tv80_core_i_alu_N214,
         i_tv80_core_i_alu_N213, i_tv80_core_i_alu_N202,
         i_tv80_core_i_alu_N201, i_tv80_core_i_alu_N200,
         i_tv80_core_i_alu_N192, i_tv80_core_i_alu_N191,
         i_tv80_core_i_alu_N190, i_tv80_core_i_alu_N189,
         i_tv80_core_i_alu_N188, i_tv80_core_i_alu_N187,
         i_tv80_core_i_alu_HalfCarry_v, i_tv80_core_i_alu_N49,
         i_tv80_core_i_alu_N48, i_tv80_core_i_alu_N47, i_tv80_core_i_alu_N46,
         i_tv80_core_i_alu_N41, i_tv80_core_i_reg_n549, i_tv80_core_i_reg_n548,
         i_tv80_core_i_reg_n547, i_tv80_core_i_reg_n546,
         i_tv80_core_i_reg_n545, i_tv80_core_i_reg_n544,
         i_tv80_core_i_reg_n543, i_tv80_core_i_reg_n542,
         i_tv80_core_i_reg_n541, i_tv80_core_i_reg_n540,
         i_tv80_core_i_reg_n539, i_tv80_core_i_reg_n538,
         i_tv80_core_i_reg_n537, i_tv80_core_i_reg_n536,
         i_tv80_core_i_reg_n535, i_tv80_core_i_reg_n534,
         i_tv80_core_i_reg_n533, i_tv80_core_i_reg_n532,
         i_tv80_core_i_reg_n531, i_tv80_core_i_reg_n530,
         i_tv80_core_i_reg_n529, i_tv80_core_i_reg_n528,
         i_tv80_core_i_reg_n527, i_tv80_core_i_reg_n526,
         i_tv80_core_i_reg_n525, i_tv80_core_i_reg_n524,
         i_tv80_core_i_reg_n523, i_tv80_core_i_reg_n522,
         i_tv80_core_i_reg_n521, i_tv80_core_i_reg_n520,
         i_tv80_core_i_reg_n519, i_tv80_core_i_reg_n518,
         i_tv80_core_i_reg_n517, i_tv80_core_i_reg_n516,
         i_tv80_core_i_reg_n515, i_tv80_core_i_reg_n514,
         i_tv80_core_i_reg_n513, i_tv80_core_i_reg_n512,
         i_tv80_core_i_reg_n511, i_tv80_core_i_reg_n510,
         i_tv80_core_i_reg_n509, i_tv80_core_i_reg_n508,
         i_tv80_core_i_reg_n507, i_tv80_core_i_reg_n506,
         i_tv80_core_i_reg_n505, i_tv80_core_i_reg_n504,
         i_tv80_core_i_reg_n503, i_tv80_core_i_reg_n502,
         i_tv80_core_i_reg_n501, i_tv80_core_i_reg_n500,
         i_tv80_core_i_reg_n499, i_tv80_core_i_reg_n498,
         i_tv80_core_i_reg_n497, i_tv80_core_i_reg_n496,
         i_tv80_core_i_reg_n495, i_tv80_core_i_reg_n494,
         i_tv80_core_i_reg_n493, i_tv80_core_i_reg_n492,
         i_tv80_core_i_reg_n491, i_tv80_core_i_reg_n490,
         i_tv80_core_i_reg_n489, i_tv80_core_i_reg_n488,
         i_tv80_core_i_reg_n487, i_tv80_core_i_reg_n486,
         i_tv80_core_i_reg_n485, i_tv80_core_i_reg_n484,
         i_tv80_core_i_reg_n483, i_tv80_core_i_reg_n482,
         i_tv80_core_i_reg_n481, i_tv80_core_i_reg_n480,
         i_tv80_core_i_reg_n479, i_tv80_core_i_reg_n478,
         i_tv80_core_i_reg_n477, i_tv80_core_i_reg_n476,
         i_tv80_core_i_reg_n475, i_tv80_core_i_reg_n474,
         i_tv80_core_i_reg_n473, i_tv80_core_i_reg_n472,
         i_tv80_core_i_reg_n471, i_tv80_core_i_reg_n470,
         i_tv80_core_i_reg_n469, i_tv80_core_i_reg_n468,
         i_tv80_core_i_reg_n467, i_tv80_core_i_reg_n466,
         i_tv80_core_i_reg_n465, i_tv80_core_i_reg_n464,
         i_tv80_core_i_reg_n463, i_tv80_core_i_reg_n462,
         i_tv80_core_i_reg_n461, i_tv80_core_i_reg_n460,
         i_tv80_core_i_reg_n459, i_tv80_core_i_reg_n458,
         i_tv80_core_i_reg_n457, i_tv80_core_i_reg_n456,
         i_tv80_core_i_reg_n455, i_tv80_core_i_reg_n454,
         i_tv80_core_i_reg_n453, i_tv80_core_i_reg_n452,
         i_tv80_core_i_reg_n451, i_tv80_core_i_reg_n450,
         i_tv80_core_i_reg_n449, i_tv80_core_i_reg_n448,
         i_tv80_core_i_reg_n447, i_tv80_core_i_reg_n446,
         i_tv80_core_i_reg_n445, i_tv80_core_i_reg_n444,
         i_tv80_core_i_reg_n443, i_tv80_core_i_reg_n442,
         i_tv80_core_i_reg_n441, i_tv80_core_i_reg_n440,
         i_tv80_core_i_reg_n439, i_tv80_core_i_reg_n438,
         i_tv80_core_i_reg_n437, i_tv80_core_i_reg_n436,
         i_tv80_core_i_reg_n435, i_tv80_core_i_reg_n434,
         i_tv80_core_i_reg_n433, i_tv80_core_i_reg_n432,
         i_tv80_core_i_reg_n431, i_tv80_core_i_reg_n430,
         i_tv80_core_i_reg_n429, i_tv80_core_i_reg_n428,
         i_tv80_core_i_reg_n427, i_tv80_core_i_reg_n426,
         i_tv80_core_i_reg_n425, i_tv80_core_i_reg_n424,
         i_tv80_core_i_reg_n423, i_tv80_core_i_reg_n422,
         i_tv80_core_i_alu_add_234_carry_3_,
         i_tv80_core_i_alu_add_240_aco_carry_7_, i_tv80_core_add_1282_carry_2_,
         i_tv80_core_add_1282_carry_3_, i_tv80_core_add_1282_carry_4_,
         i_tv80_core_add_1282_carry_5_, i_tv80_core_add_1282_carry_6_,
         i_tv80_core_add_1282_carry_7_, i_tv80_core_add_1282_carry_8_,
         i_tv80_core_add_1282_carry_9_, i_tv80_core_add_1282_carry_10_,
         i_tv80_core_add_1282_carry_11_, i_tv80_core_add_1282_carry_12_,
         i_tv80_core_add_1282_carry_13_, i_tv80_core_add_1282_carry_14_,
         i_tv80_core_add_1282_carry_15_, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488, n489, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n577, n578, n579, n580, n581, n582, n583, n584, n585,
         n586, n587, n588, n589, n590, n591, n592, n593, n594, n595, n596,
         n597, n598, n599, n600, n601, n602, n603, n604, n605, n606, n607,
         n608, n609, n610, n611, n612, n613, n614, n615, n616, n617, n618,
         n619, n620, n621, n622, n623, n624, n625, n626, n627, n628, n629,
         n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, n640,
         n641, n642, n643, n644, n645, n646, n647, n648, n649, n650, n651,
         n652, n653, n654, n655, n656, n657, n658, n659, n660, n661, n662,
         n663, n664, n665, n666, n667, n668, n669, n670, n671, n672, n673,
         n674, n675, n676, n677, n678, n679, n680, n681, n682, n683, n684,
         n685, n686, n687, n688, n689, n690, n691, n692, n693, n694, n695,
         n696, n697, n698, n699, n700, n701, n702, n703, n704, n705, n706,
         n707, n708, n709, n710, n711, n712, n713, n714, n715, n716, n717,
         n718, n719, n720, n721, n722, n723, n724, n725, n726, n727, n728,
         n729, n730, n731, n732, n733, n734, n735, n736, n737, n738, n739,
         n740, n741, n742, n743, n744, n745, n746, n747, n748, n749, n750,
         n751, n752, n753, n754, n755, n756, n757, n758, n759, n760, n761,
         n762, n763, n764, n765, n766, n767, n768, n769, n770, n771, n772,
         n773, n774, n775, n776, n777, n778, n779, n780, n781, n782, n783,
         n784, n785, n786, n787, n788, n789, n790, n791, n792, n793, n794,
         n795, n796, n797, n798, n799, n800, n801, n802, n803, n804, n805,
         n806, n807, n808, n809, n810, n811, n812, n813, n814, n815, n816,
         n817, n818, n819, n820, n821, n822, n823, n824, n825, n826, n827,
         n828, n829, n830, n831, n832, n833, n834, n835, n836, n837, n838,
         n839, n840, n841, n842, n843, n844, n845, n846, n847, n848, n849,
         n850, n851, n852, n853, n854, n855, n856, n857, n858, n859, n860,
         n861, n862, n863, n864, n865, n866, n867, n868, n869, n870, n871,
         n872, n873, n874, n875, n876, n877, n878, n879, n880, n881, n882,
         n883, n884, n885, n886, n887, n888, n889, n890, n891, n892, n893,
         n894, n895, n896, n897, n898, n899, n900, n901, n902, n903, n904,
         n905, n906, n907, n908, n909, n910, n911, n912, n913, n914, n915,
         n916, n917, n918, n919, n920, n921, n922, n923, n924, n925, n926,
         n927, n928, n929, n930, n931, n932, n933, n934, n935, n936, n937,
         n938, n939, n940, n941, n942, n943, n944, n945, n946, n947, n948,
         n949, n950, n951, n952, n953, n954, n955, n956, n957, n958, n959,
         n960, n961, n962, n963, n964, n965, n966, n967, n968, n969, n970,
         n971, n972, n973, n974, n975, n976, n977, n978, n979, n980, n981,
         n982, n983, n984, n985, n986, n987, n988, n989, n990, n991, n992,
         n993, n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003,
         n1004, n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013,
         n1014, n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023,
         n1024, n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033,
         n1034, n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043,
         n1044, n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053,
         n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063,
         n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073,
         n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083,
         n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093,
         n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103,
         n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113,
         n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123,
         n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133,
         n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143,
         n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153,
         n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163,
         n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173,
         n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183,
         n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193,
         n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203,
         n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213,
         n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223,
         n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233,
         n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243,
         n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253,
         n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263,
         n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273,
         n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283,
         n1284, n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293,
         n1294, n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303,
         n1304, n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313,
         n1314, n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323,
         n1324, n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333,
         n1334, n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343,
         n1344, n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353,
         n1354, n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363,
         n1364, n1365, n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373,
         n1374, n1375, n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383,
         n1384, n1385, n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393,
         n1394, n1395, n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403,
         n1404, n1405, n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413,
         n1414, n1415, n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423,
         n1424, n1425, n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433,
         n1434, n1435, n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443,
         n1444, n1445, n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453,
         n1454, n1455, n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463,
         n1464, n1465, n1466, n1467, n1468, n1469, n1470, n1471, n1472, n1473,
         n1474, n1475, n1476, n1477, n1478, n1479, n1480, n1481, n1482, n1483,
         n1484, n1485, n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493,
         n1494, n1495, n1496, n1497, n1498, n1499, n1500, n1501, n1502, n1503,
         n1504, n1505, n1506, n1507, n1508, n1509, n1510, n1511, n1512, n1513,
         n1514, n1515, n1516, n1517, n1518, n1519, n1520, n1521, n1522, n1523,
         n1524, n1525, n1526, n1527, n1528, n1529, n1530, n1531, n1532, n1533,
         n1534, n1535, n1536, n1537, n1538, n1539, n1540, n1541, n1542, n1543,
         n1544, n1545, n1546, n1547, n1548, n1549, n1550, n1551, n1552, n1553,
         n1554, n1555, n1556, n1557, n1558, n1559, n1560, n1561, n1562, n1563,
         n1564, n1565, n1566, n1567, n1568, n1569, n1570, n1571, n1572, n1573,
         n1574, n1575, n1576, n1577, n1578, n1579, n1580, n1581, n1582, n1583,
         n1584, n1585, n1586, n1587, n1588, n1589, n1590, n1591, n1592, n1593,
         n1594, n1595, n1596, n1597, n1598, n1599, n1600, n1601, n1602, n1603,
         n1604, n1605, n1606, n1607, n1608, n1609, n1610, n1611, n1612, n1613,
         n1614, n1615, n1616, n1617, n1618, n1619, n1620, n1621, n1622, n1623,
         n1624, n1625, n1626, n1627, n1628, n1629, n1630, n1631, n1632, n1633,
         n1634, n1635, n1636, n1637, n1638, n1639, n1640, n1641, n1642, n1643,
         n1644, n1645, n1646, n1647, n1648, n1649, n1650, n1651, n1652, n1653,
         n1654, n1655, n1656, n1657, n1658, n1659, n1660, n1661, n1662, n1663,
         n1664, n1665, n1666, n1667, n1668, n1669, n1670, n1671, n1672, n1673,
         n1674, n1675, n1676, n1677, n1678, n1679, n1680, n1681, n1682, n1683,
         n1684, n1685, n1686, n1687, n1688, n1689, n1690, n1691, n1692, n1693,
         n1694, n1695, n1696, n1697, n1698, n1699, n1700, n1701, n1702, n1703,
         n1704, n1705, n1706, n1707, n1708, n1709, n1710, n1711, n1712, n1713,
         n1714, n1715, n1716, n1717, n1718, n1719, n1720, n1721, n1722, n1723,
         n1724, n1725, n1726, n1727, n1728, n1729, n1730, n1731, n1732, n1733,
         n1734, n1735, n1736, n1737, n1738, n1739, n1740, n1741, n1742, n1743,
         n1744, n1745, n1746, n1747, n1748, n1749, n1750, n1751, n1752, n1753,
         n1754, n1755, n1756, n1757, n1758, n1759, n1760, n1761, n1762, n1763,
         n1764, n1765, n1766, n1767, n1768, n1769, n1770, n1771, n1772, n1773,
         n1774, n1775, n1776, n1777, n1778, n1779, n1780, n1781, n1782, n1783,
         n1784, n1785, n1786, n1787, n1788, n1789, n1790, n1791, n1792, n1793,
         n1794, n1795, n1796, n1797, n1798, n1799, n1800, n1801, n1802, n1803,
         n1804, n1805, n1806, n1807, n1808, n1809, n1810, n1811, n1812, n1813,
         n1814, n1815, n1816, n1817, n1818, n1819, n1820, n1821, n1822, n1823,
         n1824, n1825, n1826, n1827, n1828, n1829, n1830, n1831, n1832, n1833,
         n1834, n1835, n1836, n1837, n1838, n1839, n1840, n1841, n1842, n1843,
         n1844, n1845, n1846, n1847, n1848, n1849, n1850, n1851, n1852, n1853,
         n1854, n1855, n1856, n1857, n1858, n1859, n1860, n1861, n1862, n1863,
         n1864, n1865, n1866, n1867, n1868, n1869, n1870, n1871, n1872, n1873,
         n1874, n1875, n1876, n1877, n1878, n1879, n1880, n1881, n1882, n1883,
         n1884, n1885, n1886, n1887, n1888, n1889, n1890, n1891, n1892, n1893,
         n1894, n1895, n1896, n1897, n1898, n1899, n1900, n1901, n1902, n1903,
         n1904, n1905, n1906, n1907, n1908, n1909, n1910, n1911, n1912, n1913,
         n1914, n1915, n1916, n1917, n1918, n1919, n1920, n1921, n1922, n1923,
         n1924, n1925, n1926, n1927, n1928, n1929, n1930, n1931, n1932, n1933,
         n1934, n1935, n1936, n1937, n1938, n1939, n1940, n1941, n1942, n1943,
         n1944, n1945, n1946, n1947, n1948, n1949, n1950, n1951, n1952, n1953,
         n1954, n1955, n1956, n1957, n1958, n1959, n1960, n1961, n1962, n1963,
         n1964, n1965, n1966, n1967, n1968, n1969, n1970, n1971, n1972, n1973,
         n1974, n1975, n1976, n1977, n1978, n1979, n1980, n1981, n1982, n1983,
         n1984, n1985, n1986, n1987, n1988, n1989, n1990, n1991, n1992, n1993,
         n1994, n1995, n1996, n1997, n1998, n1999, n2000, n2001, n2002, n2003,
         n2004, n2005, n2006, n2007, n2008, n2009, n2010, n2011, n2012, n2013,
         n2014, n2015, n2016, n2017, n2018, n2019, n2020, n2021, n2022, n2023,
         n2024, n2025, n2026, n2027, n2028, n2029, n2030, n2031, n2032, n2033,
         n2034, n2035, n2036, n2037, n2038, n2039, n2040, n2041, n2042, n2043,
         n2044, n2045, n2046, n2047, n2048, n2049, n2050, n2051, n2052, n2053,
         n2054, n2055, n2056, n2057, n2058, n2059, n2060, n2061, n2062, n2063,
         n2064, n2065, n2066, n2067, n2068, n2069, n2070, n2071, n2072, n2073,
         n2074, n2075, n2076, n2077, n2078, n2079, n2080, n2081, n2082, n2083,
         n2084, n2085, n2086, n2087, n2088, n2089, n2090, n2091, n2092, n2093,
         n2094, n2095, n2096, n2097, n2098, n2099, n2100, n2101, n2102, n2103,
         n2104, n2105, n2106, n2107, n2108, n2109, n2110, n2111, n2112, n2113,
         n2114, n2115, n2116, n2117, n2118, n2119, n2120, n2121, n2122, n2123,
         n2124, n2125, n2126, n2127, n2128, n2129, n2130, n2131, n2132, n2133,
         n2134, n2135, n2136, n2137, n2138, n2139, n2140, n2141, n2142, n2143,
         n2144, n2145, n2146, n2147, n2148, n2149, n2150, n2151, n2152, n2153,
         n2154, n2155, n2156, n2157, n2158, n2159, n2160, n2161, n2162, n2163,
         n2164, n2165, n2166, n2167, n2168, n2169, n2170, n2171, n2172, n2173,
         n2174, n2175, n2176, n2177, n2178, n2179, n2180, n2181, n2182, n2183,
         n2184, n2185, n2186, n2187, n2188, n2189, n2190, n2191, n2192, n2193,
         n2194, n2195, n2196, n2197, n2198, n2199, n2200, n2201, n2202, n2203,
         n2204, n2205, n2206, n2207, n2208, n2209, n2210, n2211, n2212, n2213,
         n2214, n2215, n2216, n2217, n2218, n2219, n2220, n2221, n2222, n2223,
         n2224, n2225, n2226, n2227, n2228, n2229, n2230, n2231, n2232, n2233,
         n2234, n2235, n2236, n2237, n2238, n2239, n2240, n2241, n2242, n2243,
         n2244, n2245, n2246, n2247, n2248, n2249, n2250, n2251, n2252, n2253,
         n2254, n2255, n2256, n2257, n2258, n2259, n2260, n2261, n2262, n2263,
         n2264, n2265, n2266, n2267, n2268, n2269, n2270, n2271, n2272, n2273,
         n2274, n2275, n2276, n2277, n2278, n2279, n2280, n2281, n2282, n2283,
         n2284, n2285, n2286, n2287, n2288, n2289;
  wire   [7:0] di_reg;
  wire   [2:0] mcycle;
  wire   [2:0] tstate;
  wire   [9:0] i_tv80_core_SP16_B;
  wire   [15:0] i_tv80_core_SP16_A;
  wire   [9:0] i_tv80_core_PC16_B;
  wire   [2:0] i_tv80_core_Pre_XY_F_M;
  wire   [15:0] i_tv80_core_RegBusA;
  wire   [15:0] i_tv80_core_RegBusA_r;
  wire   [15:1] i_tv80_core_ID16;
  wire   [2:0] i_tv80_core_RegAddrC;
  wire   [2:0] i_tv80_core_RegAddrB_r;
  wire   [2:0] i_tv80_core_RegAddrA_r;
  wire   [7:0] i_tv80_core_Fp;
  wire   [7:0] i_tv80_core_Ap;
  wire   [2:0] i_tv80_core_mcycles;
  wire   [15:0] i_tv80_core_SP;
  wire   [4:0] i_tv80_core_Read_To_Reg_r;
  wire   [15:0] i_tv80_core_SP16;
  wire   [7:0] i_tv80_core_ACC;
  wire   [15:0] i_tv80_core_PC;
  wire   [15:0] i_tv80_core_TmpAddr;
  wire   [1:0] i_tv80_core_IStatus;
  wire   [15:0] i_tv80_core_PC16;
  wire   [7:0] i_tv80_core_I;
  wire   [7:0] i_tv80_core_R;
  wire   [1:0] i_tv80_core_XY_State;
  wire   [7:0] i_tv80_core_BusB;
  wire   [7:1] i_tv80_core_BusA;
  wire   [3:0] i_tv80_core_ALU_Op_r;
  wire   [7:0] i_tv80_core_F;
  wire   [1:0] i_tv80_core_ISet;
  wire   [7:0] i_tv80_core_IR;
  wire   [3:0] i_tv80_core_i_alu_Q_v;
  wire   [63:0] i_tv80_core_i_reg_RegsL;
  wire   [63:0] i_tv80_core_i_reg_RegsH;
  wire   [3:1] i_tv80_core_i_alu_add_1_root_add_61_2_C110_carry;
  wire   [7:2] i_tv80_core_i_alu_sub_252_aco_carry;
  wire   [8:6] i_tv80_core_i_alu_sub_256_aco_carry;
  wire   [15:2] i_tv80_core_add_1283_carry;
  wire   [6:2] i_tv80_core_add_380_carry;
  wire   [15:2] i_tv80_core_add_548_carry;
  wire   [15:2] i_tv80_core_add_1284_carry;

  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_INT_s_reg ( .D(i_tv80_core_n1158), 
        .CLK(n33), .Q(i_tv80_core_INT_s) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Oldnmi_n_reg ( .D(n2286), .CLK(n33), 
        .Q(i_tv80_core_Oldnmi_n) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_m1_n_reg ( .D(i_tv80_core_n1023), .CLK(
        n38), .Q(m1_n) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_do_reg_5_ ( .D(i_tv80_core_n977), .CLK(
        n47), .Q(do[5]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_do_reg_4_ ( .D(i_tv80_core_n978), .CLK(
        n57), .Q(do[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_do_reg_0_ ( .D(i_tv80_core_n982), .CLK(
        n57), .Q(do[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_A_reg_4_ ( .D(i_tv80_core_n1002), .CLK(
        n57), .Q(A[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_A_reg_3_ ( .D(i_tv80_core_n1003), .CLK(
        n57), .Q(A[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_do_reg_7_ ( .D(i_tv80_core_n975), .CLK(
        n54), .Q(do[7]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_do_reg_3_ ( .D(i_tv80_core_n979), .CLK(
        n40), .Q(do[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_do_reg_6_ ( .D(i_tv80_core_n976), .CLK(
        n56), .Q(do[6]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_do_reg_2_ ( .D(i_tv80_core_n980), .CLK(
        n56), .Q(do[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_do_reg_1_ ( .D(i_tv80_core_n981), .CLK(
        n41), .Q(do[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_A_reg_7_ ( .D(i_tv80_core_n999), .CLK(
        n58), .Q(A[7]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Auto_Wait_t2_reg ( .D(i_tv80_core_n1118), .CLK(n38), .Q(i_tv80_core_Auto_Wait_t2) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_A_reg_6_ ( .D(i_tv80_core_n1000), .CLK(
        n57), .Q(A[6]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_A_reg_5_ ( .D(i_tv80_core_n1001), .CLK(
        n57), .Q(A[5]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_A_reg_12_ ( .D(i_tv80_core_n994), .CLK(
        n57), .Q(A[12]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_A_reg_14_ ( .D(i_tv80_core_n992), .CLK(
        n57), .Q(A[14]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_A_reg_13_ ( .D(i_tv80_core_n993), .CLK(
        n57), .Q(A[13]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_A_reg_11_ ( .D(i_tv80_core_n995), .CLK(
        n57), .Q(A[11]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_A_reg_10_ ( .D(i_tv80_core_n996), .CLK(
        n57), .Q(A[10]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_A_reg_9_ ( .D(i_tv80_core_n997), .CLK(
        n57), .Q(A[9]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_A_reg_0_ ( .D(i_tv80_core_n1006), .CLK(
        n57), .Q(A[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_A_reg_8_ ( .D(i_tv80_core_n998), .CLK(
        n58), .Q(A[8]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_A_reg_2_ ( .D(i_tv80_core_n1004), .CLK(
        n58), .Q(A[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_A_reg_1_ ( .D(i_tv80_core_n1005), .CLK(
        n58), .Q(A[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_A_reg_15_ ( .D(i_tv80_core_n991), .CLK(
        n58), .Q(A[15]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_mcycles_reg_0_ ( .D(i_tv80_core_n1140), 
        .CLK(n34), .Q(i_tv80_core_mcycles[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Z16_r_reg ( .D(i_tv80_core_n1131), 
        .CLK(n57), .Q(i_tv80_core_Z16_r) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegAddrA_r_reg_2_ ( .D(i_tv80_core_n946), .CLK(n39), .Q(i_tv80_core_RegAddrA_r[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_XY_State_reg_0_ ( .D(i_tv80_core_n1030), 
        .CLK(n37), .Q(i_tv80_core_XY_State[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Pre_XY_F_M_reg_0_ ( .D(
        i_tv80_core_n1026), .CLK(n35), .Q(i_tv80_core_Pre_XY_F_M[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_IStatus_reg_0_ ( .D(i_tv80_core_n1144), 
        .CLK(n38), .Q(i_tv80_core_IStatus[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_PreserveC_r_reg ( .D(i_tv80_core_n1139), 
        .CLK(n37), .Q(i_tv80_core_PreserveC_r) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegAddrA_r_reg_1_ ( .D(i_tv80_core_n970), .CLK(n39), .Q(i_tv80_core_RegAddrA_r[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_7__0_ ( .D(
        i_tv80_core_i_reg_n422), .CLK(n53), .Q(i_tv80_core_i_reg_RegsH[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_7__1_ ( .D(
        i_tv80_core_i_reg_n423), .CLK(n52), .Q(i_tv80_core_i_reg_RegsH[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_7__2_ ( .D(
        i_tv80_core_i_reg_n424), .CLK(n52), .Q(i_tv80_core_i_reg_RegsH[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_7__3_ ( .D(
        i_tv80_core_i_reg_n425), .CLK(n51), .Q(i_tv80_core_i_reg_RegsH[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_7__4_ ( .D(
        i_tv80_core_i_reg_n426), .CLK(n50), .Q(i_tv80_core_i_reg_RegsH[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_7__5_ ( .D(
        i_tv80_core_i_reg_n427), .CLK(n50), .Q(i_tv80_core_i_reg_RegsH[5]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_7__6_ ( .D(
        i_tv80_core_i_reg_n428), .CLK(n49), .Q(i_tv80_core_i_reg_RegsH[6]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_7__7_ ( .D(
        i_tv80_core_i_reg_n429), .CLK(n48), .Q(i_tv80_core_i_reg_RegsH[7]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_6__0_ ( .D(
        i_tv80_core_i_reg_n430), .CLK(n53), .Q(i_tv80_core_i_reg_RegsH[8]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_6__1_ ( .D(
        i_tv80_core_i_reg_n431), .CLK(n52), .Q(i_tv80_core_i_reg_RegsH[9]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_6__2_ ( .D(
        i_tv80_core_i_reg_n432), .CLK(n52), .Q(i_tv80_core_i_reg_RegsH[10]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_6__3_ ( .D(
        i_tv80_core_i_reg_n433), .CLK(n51), .Q(i_tv80_core_i_reg_RegsH[11]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_6__4_ ( .D(
        i_tv80_core_i_reg_n434), .CLK(n50), .Q(i_tv80_core_i_reg_RegsH[12]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_6__5_ ( .D(
        i_tv80_core_i_reg_n435), .CLK(n50), .Q(i_tv80_core_i_reg_RegsH[13]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_6__6_ ( .D(
        i_tv80_core_i_reg_n436), .CLK(n49), .Q(i_tv80_core_i_reg_RegsH[14]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_6__7_ ( .D(
        i_tv80_core_i_reg_n437), .CLK(n49), .Q(i_tv80_core_i_reg_RegsH[15]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_5__0_ ( .D(
        i_tv80_core_i_reg_n438), .CLK(n53), .Q(i_tv80_core_i_reg_RegsH[16]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_5__1_ ( .D(
        i_tv80_core_i_reg_n439), .CLK(n52), .Q(i_tv80_core_i_reg_RegsH[17]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_5__2_ ( .D(
        i_tv80_core_i_reg_n440), .CLK(n52), .Q(i_tv80_core_i_reg_RegsH[18]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_5__3_ ( .D(
        i_tv80_core_i_reg_n441), .CLK(n51), .Q(i_tv80_core_i_reg_RegsH[19]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_5__4_ ( .D(
        i_tv80_core_i_reg_n442), .CLK(n51), .Q(i_tv80_core_i_reg_RegsH[20]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_5__5_ ( .D(
        i_tv80_core_i_reg_n443), .CLK(n50), .Q(i_tv80_core_i_reg_RegsH[21]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_5__6_ ( .D(
        i_tv80_core_i_reg_n444), .CLK(n49), .Q(i_tv80_core_i_reg_RegsH[22]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_5__7_ ( .D(
        i_tv80_core_i_reg_n445), .CLK(n49), .Q(i_tv80_core_i_reg_RegsH[23]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_4__0_ ( .D(
        i_tv80_core_i_reg_n446), .CLK(n53), .Q(i_tv80_core_i_reg_RegsH[24]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_4__1_ ( .D(
        i_tv80_core_i_reg_n447), .CLK(n53), .Q(i_tv80_core_i_reg_RegsH[25]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_4__2_ ( .D(
        i_tv80_core_i_reg_n448), .CLK(n52), .Q(i_tv80_core_i_reg_RegsH[26]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_4__3_ ( .D(
        i_tv80_core_i_reg_n449), .CLK(n51), .Q(i_tv80_core_i_reg_RegsH[27]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_4__4_ ( .D(
        i_tv80_core_i_reg_n450), .CLK(n51), .Q(i_tv80_core_i_reg_RegsH[28]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_4__5_ ( .D(
        i_tv80_core_i_reg_n451), .CLK(n50), .Q(i_tv80_core_i_reg_RegsH[29]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_4__6_ ( .D(
        i_tv80_core_i_reg_n452), .CLK(n49), .Q(i_tv80_core_i_reg_RegsH[30]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_4__7_ ( .D(
        i_tv80_core_i_reg_n453), .CLK(n49), .Q(i_tv80_core_i_reg_RegsH[31]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_3__0_ ( .D(
        i_tv80_core_i_reg_n454), .CLK(n53), .Q(i_tv80_core_i_reg_RegsH[32]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_3__1_ ( .D(
        i_tv80_core_i_reg_n455), .CLK(n53), .Q(i_tv80_core_i_reg_RegsH[33]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_3__2_ ( .D(
        i_tv80_core_i_reg_n456), .CLK(n52), .Q(i_tv80_core_i_reg_RegsH[34]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_3__3_ ( .D(
        i_tv80_core_i_reg_n457), .CLK(n51), .Q(i_tv80_core_i_reg_RegsH[35]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_3__4_ ( .D(
        i_tv80_core_i_reg_n458), .CLK(n51), .Q(i_tv80_core_i_reg_RegsH[36]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_3__5_ ( .D(
        i_tv80_core_i_reg_n459), .CLK(n50), .Q(i_tv80_core_i_reg_RegsH[37]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_3__6_ ( .D(
        i_tv80_core_i_reg_n460), .CLK(n49), .Q(i_tv80_core_i_reg_RegsH[38]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_3__7_ ( .D(
        i_tv80_core_i_reg_n461), .CLK(n49), .Q(i_tv80_core_i_reg_RegsH[39]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_2__0_ ( .D(
        i_tv80_core_i_reg_n462), .CLK(n53), .Q(i_tv80_core_i_reg_RegsH[40]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_2__1_ ( .D(
        i_tv80_core_i_reg_n463), .CLK(n53), .Q(i_tv80_core_i_reg_RegsH[41]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_2__2_ ( .D(
        i_tv80_core_i_reg_n464), .CLK(n52), .Q(i_tv80_core_i_reg_RegsH[42]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_2__3_ ( .D(
        i_tv80_core_i_reg_n465), .CLK(n51), .Q(i_tv80_core_i_reg_RegsH[43]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_2__4_ ( .D(
        i_tv80_core_i_reg_n466), .CLK(n51), .Q(i_tv80_core_i_reg_RegsH[44]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_2__5_ ( .D(
        i_tv80_core_i_reg_n467), .CLK(n50), .Q(i_tv80_core_i_reg_RegsH[45]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_2__6_ ( .D(
        i_tv80_core_i_reg_n468), .CLK(n49), .Q(i_tv80_core_i_reg_RegsH[46]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_2__7_ ( .D(
        i_tv80_core_i_reg_n469), .CLK(n49), .Q(i_tv80_core_i_reg_RegsH[47]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_1__0_ ( .D(
        i_tv80_core_i_reg_n470), .CLK(n53), .Q(i_tv80_core_i_reg_RegsH[48]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_1__1_ ( .D(
        i_tv80_core_i_reg_n471), .CLK(n53), .Q(i_tv80_core_i_reg_RegsH[49]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_1__2_ ( .D(
        i_tv80_core_i_reg_n472), .CLK(n52), .Q(i_tv80_core_i_reg_RegsH[50]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_1__3_ ( .D(
        i_tv80_core_i_reg_n473), .CLK(n51), .Q(i_tv80_core_i_reg_RegsH[51]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_1__4_ ( .D(
        i_tv80_core_i_reg_n474), .CLK(n51), .Q(i_tv80_core_i_reg_RegsH[52]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_1__5_ ( .D(
        i_tv80_core_i_reg_n475), .CLK(n50), .Q(i_tv80_core_i_reg_RegsH[53]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_1__6_ ( .D(
        i_tv80_core_i_reg_n476), .CLK(n50), .Q(i_tv80_core_i_reg_RegsH[54]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_1__7_ ( .D(
        i_tv80_core_i_reg_n477), .CLK(n49), .Q(i_tv80_core_i_reg_RegsH[55]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_0__0_ ( .D(
        i_tv80_core_i_reg_n478), .CLK(n53), .Q(i_tv80_core_i_reg_RegsH[56]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_0__1_ ( .D(
        i_tv80_core_i_reg_n479), .CLK(n53), .Q(i_tv80_core_i_reg_RegsH[57]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_0__2_ ( .D(
        i_tv80_core_i_reg_n480), .CLK(n52), .Q(i_tv80_core_i_reg_RegsH[58]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_0__3_ ( .D(
        i_tv80_core_i_reg_n481), .CLK(n52), .Q(i_tv80_core_i_reg_RegsH[59]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_0__4_ ( .D(
        i_tv80_core_i_reg_n482), .CLK(n51), .Q(i_tv80_core_i_reg_RegsH[60]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_0__5_ ( .D(
        i_tv80_core_i_reg_n483), .CLK(n50), .Q(i_tv80_core_i_reg_RegsH[61]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_0__6_ ( .D(
        i_tv80_core_i_reg_n484), .CLK(n50), .Q(i_tv80_core_i_reg_RegsH[62]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsH_reg_0__7_ ( .D(
        i_tv80_core_i_reg_n485), .CLK(n49), .Q(i_tv80_core_i_reg_RegsH[63]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_7__0_ ( .D(
        i_tv80_core_i_reg_n486), .CLK(n41), .Q(i_tv80_core_i_reg_RegsL[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_7__1_ ( .D(
        i_tv80_core_i_reg_n487), .CLK(n43), .Q(i_tv80_core_i_reg_RegsL[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_7__2_ ( .D(
        i_tv80_core_i_reg_n488), .CLK(n43), .Q(i_tv80_core_i_reg_RegsL[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_7__3_ ( .D(
        i_tv80_core_i_reg_n489), .CLK(n42), .Q(i_tv80_core_i_reg_RegsL[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_7__4_ ( .D(
        i_tv80_core_i_reg_n490), .CLK(n41), .Q(i_tv80_core_i_reg_RegsL[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_7__5_ ( .D(
        i_tv80_core_i_reg_n491), .CLK(n46), .Q(i_tv80_core_i_reg_RegsL[5]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_7__6_ ( .D(
        i_tv80_core_i_reg_n492), .CLK(n46), .Q(i_tv80_core_i_reg_RegsL[6]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_7__7_ ( .D(
        i_tv80_core_i_reg_n493), .CLK(n48), .Q(i_tv80_core_i_reg_RegsL[7]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_6__0_ ( .D(
        i_tv80_core_i_reg_n494), .CLK(n41), .Q(i_tv80_core_i_reg_RegsL[8]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_6__1_ ( .D(
        i_tv80_core_i_reg_n495), .CLK(n43), .Q(i_tv80_core_i_reg_RegsL[9]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_6__2_ ( .D(
        i_tv80_core_i_reg_n496), .CLK(n43), .Q(i_tv80_core_i_reg_RegsL[10]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_6__3_ ( .D(
        i_tv80_core_i_reg_n497), .CLK(n42), .Q(i_tv80_core_i_reg_RegsL[11]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_6__4_ ( .D(
        i_tv80_core_i_reg_n498), .CLK(n41), .Q(i_tv80_core_i_reg_RegsL[12]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_6__5_ ( .D(
        i_tv80_core_i_reg_n499), .CLK(n46), .Q(i_tv80_core_i_reg_RegsL[13]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_6__6_ ( .D(
        i_tv80_core_i_reg_n500), .CLK(n46), .Q(i_tv80_core_i_reg_RegsL[14]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_6__7_ ( .D(
        i_tv80_core_i_reg_n501), .CLK(n48), .Q(i_tv80_core_i_reg_RegsL[15]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_5__0_ ( .D(
        i_tv80_core_i_reg_n502), .CLK(n41), .Q(i_tv80_core_i_reg_RegsL[16]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_5__1_ ( .D(
        i_tv80_core_i_reg_n503), .CLK(n43), .Q(i_tv80_core_i_reg_RegsL[17]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_5__2_ ( .D(
        i_tv80_core_i_reg_n504), .CLK(n43), .Q(i_tv80_core_i_reg_RegsL[18]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_5__3_ ( .D(
        i_tv80_core_i_reg_n505), .CLK(n42), .Q(i_tv80_core_i_reg_RegsL[19]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_5__4_ ( .D(
        i_tv80_core_i_reg_n506), .CLK(n41), .Q(i_tv80_core_i_reg_RegsL[20]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_5__5_ ( .D(
        i_tv80_core_i_reg_n507), .CLK(n46), .Q(i_tv80_core_i_reg_RegsL[21]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_5__6_ ( .D(
        i_tv80_core_i_reg_n508), .CLK(n46), .Q(i_tv80_core_i_reg_RegsL[22]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_5__7_ ( .D(
        i_tv80_core_i_reg_n509), .CLK(n48), .Q(i_tv80_core_i_reg_RegsL[23]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_4__0_ ( .D(
        i_tv80_core_i_reg_n510), .CLK(n41), .Q(i_tv80_core_i_reg_RegsL[24]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_4__1_ ( .D(
        i_tv80_core_i_reg_n511), .CLK(n43), .Q(i_tv80_core_i_reg_RegsL[25]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_4__2_ ( .D(
        i_tv80_core_i_reg_n512), .CLK(n43), .Q(i_tv80_core_i_reg_RegsL[26]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_4__3_ ( .D(
        i_tv80_core_i_reg_n513), .CLK(n42), .Q(i_tv80_core_i_reg_RegsL[27]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_4__4_ ( .D(
        i_tv80_core_i_reg_n514), .CLK(n41), .Q(i_tv80_core_i_reg_RegsL[28]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_4__5_ ( .D(
        i_tv80_core_i_reg_n515), .CLK(n46), .Q(i_tv80_core_i_reg_RegsL[29]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_4__6_ ( .D(
        i_tv80_core_i_reg_n516), .CLK(n46), .Q(i_tv80_core_i_reg_RegsL[30]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_4__7_ ( .D(
        i_tv80_core_i_reg_n517), .CLK(n48), .Q(i_tv80_core_i_reg_RegsL[31]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_3__0_ ( .D(
        i_tv80_core_i_reg_n518), .CLK(n41), .Q(i_tv80_core_i_reg_RegsL[32]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_3__1_ ( .D(
        i_tv80_core_i_reg_n519), .CLK(n43), .Q(i_tv80_core_i_reg_RegsL[33]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_3__2_ ( .D(
        i_tv80_core_i_reg_n520), .CLK(n43), .Q(i_tv80_core_i_reg_RegsL[34]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_3__3_ ( .D(
        i_tv80_core_i_reg_n521), .CLK(n42), .Q(i_tv80_core_i_reg_RegsL[35]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_3__4_ ( .D(
        i_tv80_core_i_reg_n522), .CLK(n42), .Q(i_tv80_core_i_reg_RegsL[36]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_3__5_ ( .D(
        i_tv80_core_i_reg_n523), .CLK(n46), .Q(i_tv80_core_i_reg_RegsL[37]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_3__6_ ( .D(
        i_tv80_core_i_reg_n524), .CLK(n47), .Q(i_tv80_core_i_reg_RegsL[38]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_3__7_ ( .D(
        i_tv80_core_i_reg_n525), .CLK(n48), .Q(i_tv80_core_i_reg_RegsL[39]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_2__0_ ( .D(
        i_tv80_core_i_reg_n526), .CLK(n41), .Q(i_tv80_core_i_reg_RegsL[40]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_2__1_ ( .D(
        i_tv80_core_i_reg_n527), .CLK(n44), .Q(i_tv80_core_i_reg_RegsL[41]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_2__2_ ( .D(
        i_tv80_core_i_reg_n528), .CLK(n43), .Q(i_tv80_core_i_reg_RegsL[42]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_2__3_ ( .D(
        i_tv80_core_i_reg_n529), .CLK(n42), .Q(i_tv80_core_i_reg_RegsL[43]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_2__4_ ( .D(
        i_tv80_core_i_reg_n530), .CLK(n42), .Q(i_tv80_core_i_reg_RegsL[44]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_2__5_ ( .D(
        i_tv80_core_i_reg_n531), .CLK(n46), .Q(i_tv80_core_i_reg_RegsL[45]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_2__6_ ( .D(
        i_tv80_core_i_reg_n532), .CLK(n47), .Q(i_tv80_core_i_reg_RegsL[46]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_2__7_ ( .D(
        i_tv80_core_i_reg_n533), .CLK(n48), .Q(i_tv80_core_i_reg_RegsL[47]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_1__0_ ( .D(
        i_tv80_core_i_reg_n534), .CLK(n41), .Q(i_tv80_core_i_reg_RegsL[48]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_1__1_ ( .D(
        i_tv80_core_i_reg_n535), .CLK(n44), .Q(i_tv80_core_i_reg_RegsL[49]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_1__2_ ( .D(
        i_tv80_core_i_reg_n536), .CLK(n43), .Q(i_tv80_core_i_reg_RegsL[50]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_1__3_ ( .D(
        i_tv80_core_i_reg_n537), .CLK(n42), .Q(i_tv80_core_i_reg_RegsL[51]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_1__4_ ( .D(
        i_tv80_core_i_reg_n538), .CLK(n42), .Q(i_tv80_core_i_reg_RegsL[52]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_1__5_ ( .D(
        i_tv80_core_i_reg_n539), .CLK(n46), .Q(i_tv80_core_i_reg_RegsL[53]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_1__6_ ( .D(
        i_tv80_core_i_reg_n540), .CLK(n47), .Q(i_tv80_core_i_reg_RegsL[54]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_1__7_ ( .D(
        i_tv80_core_i_reg_n541), .CLK(n48), .Q(i_tv80_core_i_reg_RegsL[55]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_0__0_ ( .D(
        i_tv80_core_i_reg_n542), .CLK(n41), .Q(i_tv80_core_i_reg_RegsL[56]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_0__1_ ( .D(
        i_tv80_core_i_reg_n543), .CLK(n44), .Q(i_tv80_core_i_reg_RegsL[57]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_0__2_ ( .D(
        i_tv80_core_i_reg_n544), .CLK(n43), .Q(i_tv80_core_i_reg_RegsL[58]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_0__3_ ( .D(
        i_tv80_core_i_reg_n545), .CLK(n42), .Q(i_tv80_core_i_reg_RegsL[59]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_0__4_ ( .D(
        i_tv80_core_i_reg_n546), .CLK(n42), .Q(i_tv80_core_i_reg_RegsL[60]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_0__5_ ( .D(
        i_tv80_core_i_reg_n547), .CLK(n46), .Q(i_tv80_core_i_reg_RegsL[61]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_0__6_ ( .D(
        i_tv80_core_i_reg_n548), .CLK(n47), .Q(i_tv80_core_i_reg_RegsL[62]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_i_reg_RegsL_reg_0__7_ ( .D(
        i_tv80_core_i_reg_n549), .CLK(n48), .Q(i_tv80_core_i_reg_RegsL[63]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_mcycles_reg_2_ ( .D(i_tv80_core_n1153), 
        .CLK(n58), .Q(i_tv80_core_mcycles[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_mcycles_reg_1_ ( .D(i_tv80_core_n1141), 
        .CLK(n58), .Q(i_tv80_core_mcycles[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Pre_XY_F_M_reg_2_ ( .D(
        i_tv80_core_n1025), .CLK(n58), .Q(i_tv80_core_Pre_XY_F_M[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegAddrB_r_reg_1_ ( .D(i_tv80_core_n969), .CLK(n38), .Q(i_tv80_core_RegAddrB_r[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_No_BTR_reg ( .D(i_tv80_core_n1157), 
        .CLK(n33), .Q(i_tv80_core_No_BTR) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegBusA_r_reg_15_ ( .D(i_tv80_core_n953), .CLK(n49), .Q(i_tv80_core_RegBusA_r[15]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegBusA_r_reg_14_ ( .D(i_tv80_core_n954), .CLK(n50), .Q(i_tv80_core_RegBusA_r[14]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegBusA_r_reg_13_ ( .D(i_tv80_core_n955), .CLK(n50), .Q(i_tv80_core_RegBusA_r[13]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegBusA_r_reg_12_ ( .D(i_tv80_core_n956), .CLK(n51), .Q(i_tv80_core_RegBusA_r[12]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegBusA_r_reg_11_ ( .D(i_tv80_core_n957), .CLK(n52), .Q(i_tv80_core_RegBusA_r[11]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegBusA_r_reg_10_ ( .D(i_tv80_core_n958), .CLK(n52), .Q(i_tv80_core_RegBusA_r[10]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegBusA_r_reg_9_ ( .D(i_tv80_core_n959), 
        .CLK(n53), .Q(i_tv80_core_RegBusA_r[9]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegBusA_r_reg_8_ ( .D(i_tv80_core_n960), 
        .CLK(n54), .Q(i_tv80_core_RegBusA_r[8]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegBusA_r_reg_7_ ( .D(i_tv80_core_n961), 
        .CLK(n48), .Q(i_tv80_core_RegBusA_r[7]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegBusA_r_reg_6_ ( .D(i_tv80_core_n962), 
        .CLK(n47), .Q(i_tv80_core_RegBusA_r[6]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegBusA_r_reg_5_ ( .D(i_tv80_core_n963), 
        .CLK(n46), .Q(i_tv80_core_RegBusA_r[5]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegBusA_r_reg_4_ ( .D(i_tv80_core_n964), 
        .CLK(n42), .Q(i_tv80_core_RegBusA_r[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegBusA_r_reg_3_ ( .D(i_tv80_core_n965), 
        .CLK(n42), .Q(i_tv80_core_RegBusA_r[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegBusA_r_reg_2_ ( .D(i_tv80_core_n966), 
        .CLK(n43), .Q(i_tv80_core_RegBusA_r[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegBusA_r_reg_1_ ( .D(i_tv80_core_n967), 
        .CLK(n44), .Q(i_tv80_core_RegBusA_r[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegBusA_r_reg_0_ ( .D(i_tv80_core_n968), 
        .CLK(n41), .Q(i_tv80_core_RegBusA_r[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Fp_reg_2_ ( .D(i_tv80_core_n988), .CLK(
        n37), .Q(i_tv80_core_Fp[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Fp_reg_4_ ( .D(i_tv80_core_n986), .CLK(
        n40), .Q(i_tv80_core_Fp[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Fp_reg_7_ ( .D(i_tv80_core_n983), .CLK(
        n37), .Q(i_tv80_core_Fp[7]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Fp_reg_0_ ( .D(i_tv80_core_n990), .CLK(
        n37), .Q(i_tv80_core_Fp[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Fp_reg_6_ ( .D(i_tv80_core_n984), .CLK(
        n40), .Q(i_tv80_core_Fp[6]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Fp_reg_1_ ( .D(i_tv80_core_n989), .CLK(
        n40), .Q(i_tv80_core_Fp[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegAddrB_r_reg_0_ ( .D(i_tv80_core_n949), .CLK(n38), .Q(i_tv80_core_RegAddrB_r[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_SP_reg_8_ ( .D(i_tv80_core_n1109), 
        .CLK(n55), .Q(i_tv80_core_SP[8]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Ap_reg_4_ ( .D(i_tv80_core_n1074), 
        .CLK(n44), .Q(i_tv80_core_Ap[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Fp_reg_3_ ( .D(i_tv80_core_n987), .CLK(
        n37), .Q(i_tv80_core_Fp[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Ap_reg_3_ ( .D(i_tv80_core_n1075), 
        .CLK(n45), .Q(i_tv80_core_Ap[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Ap_reg_2_ ( .D(i_tv80_core_n1076), 
        .CLK(n45), .Q(i_tv80_core_Ap[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Ap_reg_1_ ( .D(i_tv80_core_n1077), 
        .CLK(n45), .Q(i_tv80_core_Ap[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Ap_reg_0_ ( .D(i_tv80_core_n1078), 
        .CLK(n44), .Q(i_tv80_core_Ap[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Fp_reg_5_ ( .D(i_tv80_core_n985), .CLK(
        n40), .Q(i_tv80_core_Fp[5]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Ap_reg_5_ ( .D(i_tv80_core_n1073), 
        .CLK(n47), .Q(i_tv80_core_Ap[5]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Ap_reg_6_ ( .D(i_tv80_core_n1072), 
        .CLK(n47), .Q(i_tv80_core_Ap[6]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Pre_XY_F_M_reg_1_ ( .D(
        i_tv80_core_n1024), .CLK(n37), .Q(i_tv80_core_Pre_XY_F_M[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegAddrB_r_reg_2_ ( .D(i_tv80_core_n948), .CLK(n38), .Q(i_tv80_core_RegAddrB_r[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Ap_reg_7_ ( .D(i_tv80_core_n1071), 
        .CLK(n54), .Q(i_tv80_core_Ap[7]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_IncDecZ_reg ( .D(i_tv80_core_n1129), 
        .CLK(n33), .Q(i_tv80_core_IncDecZ) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegAddrA_r_reg_0_ ( .D(i_tv80_core_n947), .CLK(n39), .Q(i_tv80_core_RegAddrA_r[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_ISet_reg_0_ ( .D(i_tv80_core_n1133), 
        .CLK(n36), .Q(i_tv80_core_ISet[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_IStatus_reg_1_ ( .D(i_tv80_core_n1143), 
        .CLK(n38), .Q(i_tv80_core_IStatus[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Read_To_Reg_r_reg_1_ ( .D(
        i_tv80_core_n1123), .CLK(n39), .Q(i_tv80_core_Read_To_Reg_r[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Read_To_Reg_r_reg_4_ ( .D(
        i_tv80_core_n1120), .CLK(n39), .Q(i_tv80_core_Read_To_Reg_r[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_IntE_FF1_reg ( .D(i_tv80_core_n1150), 
        .CLK(n38), .Q(i_tv80_core_IntE) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_R_reg_7_ ( .D(i_tv80_core_n1079), .CLK(
        n54), .Q(i_tv80_core_R[7]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Arith16_r_reg ( .D(i_tv80_core_n1142), 
        .CLK(n37), .Q(i_tv80_core_Arith16_r) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_SP_reg_0_ ( .D(i_tv80_core_n1117), 
        .CLK(n45), .Q(i_tv80_core_SP[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Read_To_Reg_r_reg_2_ ( .D(
        i_tv80_core_n1122), .CLK(n39), .Q(i_tv80_core_Read_To_Reg_r[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_NMICycle_reg ( .D(i_tv80_core_n1054), 
        .CLK(n36), .Q(i_tv80_core_NMICycle) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Auto_Wait_t1_reg ( .D(i_tv80_core_n1119), .CLK(n38), .Q(i_tv80_core_Auto_Wait_t1) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_IntE_FF2_reg ( .D(i_tv80_core_n1151), 
        .CLK(n38), .Q(i_tv80_core_IntE_FF2) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusReq_s_reg ( .D(i_tv80_core_n1159), 
        .CLK(n33), .Q(i_tv80_core_BusReq_s) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_I_reg_4_ ( .D(i_tv80_core_n1058), .CLK(
        n44), .Q(i_tv80_core_I[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_SP_reg_14_ ( .D(i_tv80_core_n1103), 
        .CLK(n55), .Q(i_tv80_core_SP[14]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_SP_reg_13_ ( .D(i_tv80_core_n1104), 
        .CLK(n48), .Q(i_tv80_core_SP[13]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_SP_reg_12_ ( .D(i_tv80_core_n1105), 
        .CLK(n54), .Q(i_tv80_core_SP[12]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_I_reg_3_ ( .D(i_tv80_core_n1059), .CLK(
        n45), .Q(i_tv80_core_I[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_SP_reg_11_ ( .D(i_tv80_core_n1106), 
        .CLK(n54), .Q(i_tv80_core_SP[11]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_I_reg_2_ ( .D(i_tv80_core_n1060), .CLK(
        n45), .Q(i_tv80_core_I[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_SP_reg_10_ ( .D(i_tv80_core_n1107), 
        .CLK(n54), .Q(i_tv80_core_SP[10]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_I_reg_1_ ( .D(i_tv80_core_n1061), .CLK(
        n45), .Q(i_tv80_core_I[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_SP_reg_9_ ( .D(i_tv80_core_n1108), 
        .CLK(n55), .Q(i_tv80_core_SP[9]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_I_reg_0_ ( .D(i_tv80_core_n1062), .CLK(
        n44), .Q(i_tv80_core_I[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_I_reg_5_ ( .D(i_tv80_core_n1057), .CLK(
        n47), .Q(i_tv80_core_I[5]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_I_reg_6_ ( .D(i_tv80_core_n1056), .CLK(
        n48), .Q(i_tv80_core_I[6]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_I_reg_7_ ( .D(i_tv80_core_n1055), .CLK(
        n54), .Q(i_tv80_core_I[7]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Save_ALU_r_reg ( .D(i_tv80_core_n1130), 
        .CLK(n38), .Q(i_tv80_core_Save_ALU_r) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_IR_reg_6_ ( .D(i_tv80_core_n1028), 
        .CLK(n36), .Q(i_tv80_core_IR[6]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_XY_Ind_reg ( .D(i_tv80_core_n1134), 
        .CLK(n37), .Q(i_tv80_core_XY_Ind) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_SP_reg_3_ ( .D(i_tv80_core_n1114), 
        .CLK(n34), .Q(i_tv80_core_SP[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_SP_reg_2_ ( .D(i_tv80_core_n1115), 
        .CLK(n34), .Q(i_tv80_core_SP[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_SP_reg_1_ ( .D(i_tv80_core_n1116), 
        .CLK(n40), .Q(i_tv80_core_SP[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_SP_reg_6_ ( .D(i_tv80_core_n1111), 
        .CLK(n34), .Q(i_tv80_core_SP[6]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_SP_reg_4_ ( .D(i_tv80_core_n1113), 
        .CLK(n40), .Q(i_tv80_core_SP[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_SP_reg_5_ ( .D(i_tv80_core_n1112), 
        .CLK(n45), .Q(i_tv80_core_SP[5]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_SP_reg_15_ ( .D(i_tv80_core_n1102), 
        .CLK(n48), .Q(i_tv80_core_SP[15]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_NMI_s_reg ( .D(i_tv80_core_n1022), 
        .CLK(n36), .Q(i_tv80_core_NMI_s) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Read_To_Reg_r_reg_0_ ( .D(
        i_tv80_core_n1124), .CLK(n39), .Q(i_tv80_core_Read_To_Reg_r[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_SP_reg_7_ ( .D(i_tv80_core_n1110), 
        .CLK(n54), .Q(i_tv80_core_SP[7]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_IR_reg_0_ ( .D(i_tv80_core_n1052), 
        .CLK(n35), .Q(i_tv80_core_IR[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Halt_FF_reg ( .D(i_tv80_core_n1053), 
        .CLK(n36), .Q(i_tv80_core_Halt_FF) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_R_reg_6_ ( .D(i_tv80_core_n1080), .CLK(
        n47), .Q(i_tv80_core_R[6]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_tstate_reg_2_ ( .D(i_tv80_core_n1146), 
        .CLK(n35), .Q(tstate[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_TmpAddr_reg_15_ ( .D(i_tv80_core_n1031), 
        .CLK(n55), .Q(i_tv80_core_TmpAddr[15]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BTR_r_reg ( .D(i_tv80_core_n1156), 
        .CLK(n33), .Q(i_tv80_core_BTR_r) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_F_reg_0_ ( .D(i_tv80_core_n1101), .CLK(
        n34), .Q(i_tv80_core_F[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_F_reg_4_ ( .D(i_tv80_core_n1099), .CLK(
        n40), .Q(i_tv80_core_F[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_XY_State_reg_1_ ( .D(i_tv80_core_n1029), 
        .CLK(n36), .Q(i_tv80_core_XY_State[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Read_To_Reg_r_reg_3_ ( .D(
        i_tv80_core_n1121), .CLK(n38), .Q(i_tv80_core_Read_To_Reg_r[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_mcycle_reg_1_ ( .D(i_tv80_core_n1137), 
        .CLK(n36), .Q(mcycle[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_IR_reg_5_ ( .D(i_tv80_core_n1047), 
        .CLK(n36), .Q(i_tv80_core_IR[5]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_F_reg_3_ ( .D(i_tv80_core_n1097), .CLK(
        n34), .Q(i_tv80_core_F[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_F_reg_5_ ( .D(i_tv80_core_n1096), .CLK(
        n40), .Q(i_tv80_core_F[5]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_IR_reg_7_ ( .D(i_tv80_core_n1027), 
        .CLK(n36), .Q(i_tv80_core_IR[7]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_IR_reg_1_ ( .D(i_tv80_core_n1051), 
        .CLK(n36), .Q(i_tv80_core_IR[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_PC_reg_12_ ( .D(i_tv80_core_n1018), 
        .CLK(n55), .Q(i_tv80_core_PC[12]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_PC_reg_13_ ( .D(i_tv80_core_n1019), 
        .CLK(n55), .Q(i_tv80_core_PC[13]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_PC_reg_11_ ( .D(i_tv80_core_n1017), 
        .CLK(n55), .Q(i_tv80_core_PC[11]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_PC_reg_10_ ( .D(i_tv80_core_n1016), 
        .CLK(n54), .Q(i_tv80_core_PC[10]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_PC_reg_9_ ( .D(i_tv80_core_n1015), 
        .CLK(n33), .Q(i_tv80_core_PC[9]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_PC_reg_14_ ( .D(i_tv80_core_n1020), 
        .CLK(n55), .Q(i_tv80_core_PC[14]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_PC_reg_1_ ( .D(i_tv80_core_n1007), 
        .CLK(n58), .Q(i_tv80_core_PC[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_PC_reg_6_ ( .D(i_tv80_core_n1012), 
        .CLK(n34), .Q(i_tv80_core_PC[6]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_PC_reg_5_ ( .D(i_tv80_core_n1011), 
        .CLK(n56), .Q(i_tv80_core_PC[5]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_PC_reg_2_ ( .D(i_tv80_core_n1008), 
        .CLK(n33), .Q(i_tv80_core_PC[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_PC_reg_8_ ( .D(i_tv80_core_n1014), 
        .CLK(n33), .Q(i_tv80_core_PC[8]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_PC_reg_15_ ( .D(i_tv80_core_n1155), 
        .CLK(n55), .Q(i_tv80_core_PC[15]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_F_reg_2_ ( .D(i_tv80_core_n1098), .CLK(
        n33), .Q(i_tv80_core_F[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_Alternate_reg ( .D(i_tv80_core_n1135), 
        .CLK(n37), .Q(i_tv80_core_Alternate) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_tstate_reg_1_ ( .D(i_tv80_core_n1148), 
        .CLK(n35), .Q(tstate[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_PC_reg_4_ ( .D(i_tv80_core_n1010), 
        .CLK(n56), .Q(i_tv80_core_PC[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_PC_reg_3_ ( .D(i_tv80_core_n1009), 
        .CLK(n56), .Q(i_tv80_core_PC[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_PC_reg_7_ ( .D(i_tv80_core_n1013), 
        .CLK(n34), .Q(i_tv80_core_PC[7]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegAddrC_reg_1_ ( .D(i_tv80_core_n951), 
        .CLK(n35), .Q(i_tv80_core_RegAddrC[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_ALU_Op_r_reg_2_ ( .D(i_tv80_core_n1126), 
        .CLK(n39), .Q(i_tv80_core_ALU_Op_r[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_IntCycle_reg ( .D(i_tv80_core_n1149), 
        .CLK(n38), .Q(i_tv80_core_IntCycle) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegAddrC_reg_0_ ( .D(i_tv80_core_n952), 
        .CLK(n39), .Q(i_tv80_core_RegAddrC[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_PC_reg_0_ ( .D(i_tv80_core_n1021), 
        .CLK(n45), .Q(i_tv80_core_PC[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_mcycle_reg_0_ ( .D(i_tv80_core_n1138), 
        .CLK(n35), .Q(mcycle[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_TmpAddr_reg_6_ ( .D(i_tv80_core_n1040), 
        .CLK(n47), .Q(i_tv80_core_TmpAddr[6]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_TmpAddr_reg_5_ ( .D(i_tv80_core_n1041), 
        .CLK(n56), .Q(i_tv80_core_TmpAddr[5]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_TmpAddr_reg_2_ ( .D(i_tv80_core_n1044), 
        .CLK(n56), .Q(i_tv80_core_TmpAddr[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_TmpAddr_reg_1_ ( .D(i_tv80_core_n1045), 
        .CLK(n56), .Q(i_tv80_core_TmpAddr[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_R_reg_4_ ( .D(i_tv80_core_n1082), .CLK(
        n44), .Q(i_tv80_core_R[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_R_reg_3_ ( .D(i_tv80_core_n1083), .CLK(
        n44), .Q(i_tv80_core_R[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_TmpAddr_reg_7_ ( .D(i_tv80_core_n1039), 
        .CLK(n55), .Q(i_tv80_core_TmpAddr[7]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_TmpAddr_reg_4_ ( .D(i_tv80_core_n1042), 
        .CLK(n56), .Q(i_tv80_core_TmpAddr[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_TmpAddr_reg_3_ ( .D(i_tv80_core_n1043), 
        .CLK(n56), .Q(i_tv80_core_TmpAddr[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_RegAddrC_reg_2_ ( .D(i_tv80_core_n950), 
        .CLK(n37), .Q(i_tv80_core_RegAddrC[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_IR_reg_4_ ( .D(i_tv80_core_n1048), 
        .CLK(n37), .Q(i_tv80_core_IR[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_F_reg_7_ ( .D(i_tv80_core_n1154), .CLK(
        n35), .Q(i_tv80_core_F[7]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_tstate_reg_0_ ( .D(i_tv80_core_n1147), 
        .CLK(n35), .Q(tstate[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_IR_reg_2_ ( .D(i_tv80_core_n1050), 
        .CLK(n37), .Q(i_tv80_core_IR[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_TmpAddr_reg_0_ ( .D(i_tv80_core_n1046), 
        .CLK(n45), .Q(i_tv80_core_TmpAddr[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_R_reg_0_ ( .D(i_tv80_core_n1086), .CLK(
        n44), .Q(i_tv80_core_R[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_mcycle_reg_2_ ( .D(i_tv80_core_n1152), 
        .CLK(n33), .Q(mcycle[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusB_reg_5_ ( .D(i_tv80_core_n944), 
        .CLK(n40), .Q(i_tv80_core_BusB[5]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_TmpAddr_reg_14_ ( .D(i_tv80_core_n1032), 
        .CLK(n55), .Q(i_tv80_core_TmpAddr[14]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_TmpAddr_reg_13_ ( .D(i_tv80_core_n1033), 
        .CLK(n55), .Q(i_tv80_core_TmpAddr[13]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_TmpAddr_reg_12_ ( .D(i_tv80_core_n1034), 
        .CLK(n54), .Q(i_tv80_core_TmpAddr[12]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_TmpAddr_reg_11_ ( .D(i_tv80_core_n1035), 
        .CLK(n54), .Q(i_tv80_core_TmpAddr[11]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_R_reg_2_ ( .D(i_tv80_core_n1084), .CLK(
        n45), .Q(i_tv80_core_R[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_TmpAddr_reg_10_ ( .D(i_tv80_core_n1036), 
        .CLK(n54), .Q(i_tv80_core_TmpAddr[10]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_R_reg_1_ ( .D(i_tv80_core_n1085), .CLK(
        n45), .Q(i_tv80_core_R[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_TmpAddr_reg_9_ ( .D(i_tv80_core_n1037), 
        .CLK(n55), .Q(i_tv80_core_TmpAddr[9]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_TmpAddr_reg_8_ ( .D(i_tv80_core_n1038), 
        .CLK(n55), .Q(i_tv80_core_TmpAddr[8]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_R_reg_5_ ( .D(i_tv80_core_n1081), .CLK(
        n47), .Q(i_tv80_core_R[5]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_F_reg_6_ ( .D(i_tv80_core_n1095), .CLK(
        n40), .Q(i_tv80_core_F[6]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_ACC_reg_7_ ( .D(i_tv80_core_n1087), 
        .CLK(n54), .Q(i_tv80_core_ACC[7]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_ACC_reg_4_ ( .D(i_tv80_core_n1090), 
        .CLK(n44), .Q(i_tv80_core_ACC[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_ACC_reg_2_ ( .D(i_tv80_core_n1092), 
        .CLK(n45), .Q(i_tv80_core_ACC[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_ACC_reg_1_ ( .D(i_tv80_core_n1094), 
        .CLK(n45), .Q(i_tv80_core_ACC[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_ACC_reg_6_ ( .D(i_tv80_core_n1088), 
        .CLK(n47), .Q(i_tv80_core_ACC[6]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_ACC_reg_0_ ( .D(i_tv80_core_n1093), 
        .CLK(n44), .Q(i_tv80_core_ACC[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusB_reg_6_ ( .D(i_tv80_core_n945), 
        .CLK(n56), .Q(i_tv80_core_BusB[6]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusB_reg_7_ ( .D(i_tv80_core_n971), 
        .CLK(n34), .Q(i_tv80_core_BusB[7]) );
  sky130_fd_sc_hd__dfxtp_1 di_reg_reg_7_ ( .D(n18), .CLK(n35), .Q(di_reg[7])
         );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_ACC_reg_3_ ( .D(i_tv80_core_n1091), 
        .CLK(n44), .Q(i_tv80_core_ACC[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_ACC_reg_5_ ( .D(i_tv80_core_n1089), 
        .CLK(n47), .Q(i_tv80_core_ACC[5]) );
  sky130_fd_sc_hd__dfxtp_1 di_reg_reg_3_ ( .D(n22), .CLK(n36), .Q(di_reg[3])
         );
  sky130_fd_sc_hd__dfxtp_1 di_reg_reg_4_ ( .D(n21), .CLK(n36), .Q(di_reg[4])
         );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusB_reg_2_ ( .D(i_tv80_core_n941), 
        .CLK(n34), .Q(i_tv80_core_BusB[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusB_reg_1_ ( .D(i_tv80_core_n942), 
        .CLK(n33), .Q(i_tv80_core_BusB[1]) );
  sky130_fd_sc_hd__dfxtp_1 di_reg_reg_6_ ( .D(n19), .CLK(n35), .Q(di_reg[6])
         );
  sky130_fd_sc_hd__dfxtp_1 di_reg_reg_2_ ( .D(n23), .CLK(n36), .Q(di_reg[2])
         );
  sky130_fd_sc_hd__dfxtp_1 di_reg_reg_0_ ( .D(n25), .CLK(n33), .Q(di_reg[0])
         );
  sky130_fd_sc_hd__dfxtp_1 di_reg_reg_1_ ( .D(n24), .CLK(n36), .Q(di_reg[1])
         );
  sky130_fd_sc_hd__dfxtp_1 di_reg_reg_5_ ( .D(n20), .CLK(n35), .Q(di_reg[5])
         );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusB_reg_3_ ( .D(i_tv80_core_n940), 
        .CLK(n34), .Q(i_tv80_core_BusB[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusB_reg_4_ ( .D(i_tv80_core_n939), 
        .CLK(n56), .Q(i_tv80_core_BusB[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusB_reg_0_ ( .D(i_tv80_core_n943), 
        .CLK(n56), .Q(i_tv80_core_BusB[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_ALU_Op_r_reg_0_ ( .D(i_tv80_core_n1128), 
        .CLK(n39), .Q(i_tv80_core_ALU_Op_r[0]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusA_reg_7_ ( .D(i_tv80_core_n1063), 
        .CLK(n48), .Q(i_tv80_core_BusA[7]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusA_reg_0_ ( .D(i_tv80_core_n1070), 
        .CLK(n56), .Q(i_tv80_core_i_alu_N238) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusA_reg_5_ ( .D(i_tv80_core_n1065), 
        .CLK(n46), .Q(i_tv80_core_BusA[5]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_F_reg_1_ ( .D(i_tv80_core_n1100), .CLK(
        n40), .Q(i_tv80_core_F[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusA_reg_6_ ( .D(i_tv80_core_n1064), 
        .CLK(n34), .Q(i_tv80_core_BusA[6]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_ALU_Op_r_reg_1_ ( .D(i_tv80_core_n1127), 
        .CLK(n33), .Q(i_tv80_core_ALU_Op_r[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_ALU_Op_r_reg_3_ ( .D(i_tv80_core_n1125), 
        .CLK(n38), .Q(i_tv80_core_ALU_Op_r[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusA_reg_4_ ( .D(i_tv80_core_n1066), 
        .CLK(n40), .Q(i_tv80_core_BusA[4]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_ISet_reg_1_ ( .D(i_tv80_core_n1132), 
        .CLK(n35), .Q(i_tv80_core_ISet[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusA_reg_2_ ( .D(i_tv80_core_n1068), 
        .CLK(n34), .Q(i_tv80_core_BusA[2]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusA_reg_3_ ( .D(i_tv80_core_n1067), 
        .CLK(n34), .Q(i_tv80_core_BusA[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_IR_reg_3_ ( .D(i_tv80_core_n1049), 
        .CLK(n37), .Q(i_tv80_core_IR[3]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusA_reg_1_ ( .D(i_tv80_core_n1069), 
        .CLK(n40), .Q(i_tv80_core_BusA[1]) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_BusAck_reg ( .D(i_tv80_core_n1145), 
        .CLK(n35), .Q(i_tv80_core_BusAck) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_380_U1_1_5 ( .A(i_tv80_core_R[5]), .B(
        i_tv80_core_add_380_carry[5]), .COUT(i_tv80_core_add_380_carry[6]), 
        .SUM(i_tv80_core_N158) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_548_U1_1_14 ( .A(
        i_tv80_core_TmpAddr[14]), .B(i_tv80_core_add_548_carry[14]), .COUT(
        i_tv80_core_add_548_carry[15]), .SUM(i_tv80_core_N261) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_548_U1_1_6 ( .A(i_tv80_core_TmpAddr[6]), .B(i_tv80_core_add_548_carry[6]), .COUT(i_tv80_core_add_548_carry[7]), .SUM(
        i_tv80_core_N253) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_548_U1_1_5 ( .A(i_tv80_core_TmpAddr[5]), .B(i_tv80_core_add_548_carry[5]), .COUT(i_tv80_core_add_548_carry[6]), .SUM(
        i_tv80_core_N252) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_548_U1_1_4 ( .A(i_tv80_core_TmpAddr[4]), .B(i_tv80_core_add_548_carry[4]), .COUT(i_tv80_core_add_548_carry[5]), .SUM(
        i_tv80_core_N251) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_548_U1_1_7 ( .A(i_tv80_core_TmpAddr[7]), .B(i_tv80_core_add_548_carry[7]), .COUT(i_tv80_core_add_548_carry[8]), .SUM(
        i_tv80_core_N254) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_548_U1_1_3 ( .A(i_tv80_core_TmpAddr[3]), .B(i_tv80_core_add_548_carry[3]), .COUT(i_tv80_core_add_548_carry[4]), .SUM(
        i_tv80_core_N250) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_548_U1_1_2 ( .A(i_tv80_core_TmpAddr[2]), .B(i_tv80_core_add_548_carry[2]), .COUT(i_tv80_core_add_548_carry[3]), .SUM(
        i_tv80_core_N249) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_380_U1_1_4 ( .A(i_tv80_core_R[4]), .B(
        i_tv80_core_add_380_carry[4]), .COUT(i_tv80_core_add_380_carry[5]), 
        .SUM(i_tv80_core_N157) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_380_U1_1_3 ( .A(i_tv80_core_R[3]), .B(
        i_tv80_core_add_380_carry[3]), .COUT(i_tv80_core_add_380_carry[4]), 
        .SUM(i_tv80_core_N156) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_548_U1_1_13 ( .A(
        i_tv80_core_TmpAddr[13]), .B(i_tv80_core_add_548_carry[13]), .COUT(
        i_tv80_core_add_548_carry[14]), .SUM(i_tv80_core_N260) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_548_U1_1_12 ( .A(
        i_tv80_core_TmpAddr[12]), .B(i_tv80_core_add_548_carry[12]), .COUT(
        i_tv80_core_add_548_carry[13]), .SUM(i_tv80_core_N259) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_380_U1_1_2 ( .A(i_tv80_core_R[2]), .B(
        i_tv80_core_add_380_carry[2]), .COUT(i_tv80_core_add_380_carry[3]), 
        .SUM(i_tv80_core_N155) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_548_U1_1_11 ( .A(
        i_tv80_core_TmpAddr[11]), .B(i_tv80_core_add_548_carry[11]), .COUT(
        i_tv80_core_add_548_carry[12]), .SUM(i_tv80_core_N258) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_548_U1_1_10 ( .A(
        i_tv80_core_TmpAddr[10]), .B(i_tv80_core_add_548_carry[10]), .COUT(
        i_tv80_core_add_548_carry[11]), .SUM(i_tv80_core_N257) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_548_U1_1_9 ( .A(i_tv80_core_TmpAddr[9]), .B(i_tv80_core_add_548_carry[9]), .COUT(i_tv80_core_add_548_carry[10]), 
        .SUM(i_tv80_core_N256) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_548_U1_1_8 ( .A(i_tv80_core_TmpAddr[8]), .B(i_tv80_core_add_548_carry[8]), .COUT(i_tv80_core_add_548_carry[9]), .SUM(
        i_tv80_core_N255) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_548_U1_1_1 ( .A(i_tv80_core_TmpAddr[1]), .B(i_tv80_core_TmpAddr[0]), .COUT(i_tv80_core_add_548_carry[2]), .SUM(
        i_tv80_core_N248) );
  sky130_fd_sc_hd__ha_1 i_tv80_core_add_380_U1_1_1 ( .A(i_tv80_core_R[1]), .B(
        i_tv80_core_R[0]), .COUT(i_tv80_core_add_380_carry[2]), .SUM(
        i_tv80_core_N154) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1283_U1_1 ( .A(i_tv80_core_PC[1]), .B(
        i_tv80_core_PC16_B[1]), .CIN(n26), .COUT(i_tv80_core_add_1283_carry[2]), .SUM(i_tv80_core_PC16[1]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_i_alu_add_1_root_add_61_2_C110_U1_0 ( .A(
        i_tv80_core_i_alu_N238), .B(i_tv80_core_i_alu_N46), .CIN(
        i_tv80_core_i_alu_N41), .COUT(
        i_tv80_core_i_alu_add_1_root_add_61_2_C110_carry[1]), .SUM(
        i_tv80_core_i_alu_Q_v[0]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_i_alu_add_1_root_add_61_2_C110_U1_2 ( .A(
        i_tv80_core_BusA[2]), .B(i_tv80_core_i_alu_N48), .CIN(
        i_tv80_core_i_alu_add_1_root_add_61_2_C110_carry[2]), .COUT(
        i_tv80_core_i_alu_add_1_root_add_61_2_C110_carry[3]), .SUM(
        i_tv80_core_i_alu_Q_v[2]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_i_alu_add_1_root_add_61_2_C110_U1_1 ( .A(
        i_tv80_core_BusA[1]), .B(i_tv80_core_i_alu_N47), .CIN(
        i_tv80_core_i_alu_add_1_root_add_61_2_C110_carry[1]), .COUT(
        i_tv80_core_i_alu_add_1_root_add_61_2_C110_carry[2]), .SUM(
        i_tv80_core_i_alu_Q_v[1]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1283_U1_6 ( .A(i_tv80_core_PC[6]), .B(
        i_tv80_core_PC16_B[6]), .CIN(i_tv80_core_add_1283_carry[6]), .COUT(
        i_tv80_core_add_1283_carry[7]), .SUM(i_tv80_core_PC16[6]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1283_U1_5 ( .A(i_tv80_core_PC[5]), .B(
        i_tv80_core_PC16_B[5]), .CIN(i_tv80_core_add_1283_carry[5]), .COUT(
        i_tv80_core_add_1283_carry[6]), .SUM(i_tv80_core_PC16[5]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1283_U1_4 ( .A(i_tv80_core_PC[4]), .B(
        i_tv80_core_PC16_B[4]), .CIN(i_tv80_core_add_1283_carry[4]), .COUT(
        i_tv80_core_add_1283_carry[5]), .SUM(i_tv80_core_PC16[4]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1283_U1_3 ( .A(i_tv80_core_PC[3]), .B(
        i_tv80_core_PC16_B[3]), .CIN(i_tv80_core_add_1283_carry[3]), .COUT(
        i_tv80_core_add_1283_carry[4]), .SUM(i_tv80_core_PC16[3]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1283_U1_2 ( .A(i_tv80_core_PC[2]), .B(
        i_tv80_core_PC16_B[2]), .CIN(i_tv80_core_add_1283_carry[2]), .COUT(
        i_tv80_core_add_1283_carry[3]), .SUM(i_tv80_core_PC16[2]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1283_U1_14 ( .A(i_tv80_core_PC[14]), 
        .B(i_tv80_core_PC16_B[9]), .CIN(i_tv80_core_add_1283_carry[14]), 
        .COUT(i_tv80_core_add_1283_carry[15]), .SUM(i_tv80_core_PC16[14]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1283_U1_13 ( .A(i_tv80_core_PC[13]), 
        .B(i_tv80_core_PC16_B[9]), .CIN(i_tv80_core_add_1283_carry[13]), 
        .COUT(i_tv80_core_add_1283_carry[14]), .SUM(i_tv80_core_PC16[13]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1283_U1_12 ( .A(i_tv80_core_PC[12]), 
        .B(i_tv80_core_PC16_B[9]), .CIN(i_tv80_core_add_1283_carry[12]), 
        .COUT(i_tv80_core_add_1283_carry[13]), .SUM(i_tv80_core_PC16[12]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1283_U1_11 ( .A(i_tv80_core_PC[11]), 
        .B(i_tv80_core_PC16_B[9]), .CIN(i_tv80_core_add_1283_carry[11]), 
        .COUT(i_tv80_core_add_1283_carry[12]), .SUM(i_tv80_core_PC16[11]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1283_U1_10 ( .A(i_tv80_core_PC[10]), 
        .B(i_tv80_core_PC16_B[9]), .CIN(i_tv80_core_add_1283_carry[10]), 
        .COUT(i_tv80_core_add_1283_carry[11]), .SUM(i_tv80_core_PC16[10]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1283_U1_9 ( .A(i_tv80_core_PC[9]), .B(
        i_tv80_core_PC16_B[9]), .CIN(i_tv80_core_add_1283_carry[9]), .COUT(
        i_tv80_core_add_1283_carry[10]), .SUM(i_tv80_core_PC16[9]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1283_U1_8 ( .A(i_tv80_core_PC[8]), .B(
        i_tv80_core_PC16_B[9]), .CIN(i_tv80_core_add_1283_carry[8]), .COUT(
        i_tv80_core_add_1283_carry[9]), .SUM(i_tv80_core_PC16[8]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1283_U1_7 ( .A(i_tv80_core_PC[7]), .B(
        i_tv80_core_PC16_B[9]), .CIN(i_tv80_core_add_1283_carry[7]), .COUT(
        i_tv80_core_add_1283_carry[8]), .SUM(i_tv80_core_PC16[7]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_i_alu_sub_256_aco_U2_6 ( .A(
        i_tv80_core_i_alu_N232), .B(n2288), .CIN(
        i_tv80_core_i_alu_sub_256_aco_carry[6]), .COUT(
        i_tv80_core_i_alu_sub_256_aco_carry[7]), .SUM(i_tv80_core_i_alu_N244)
         );
  sky130_fd_sc_hd__fa_1 i_tv80_core_i_alu_sub_252_aco_U2_2 ( .A(
        i_tv80_core_BusA[2]), .B(n2287), .CIN(
        i_tv80_core_i_alu_sub_252_aco_carry[2]), .COUT(
        i_tv80_core_i_alu_sub_252_aco_carry[3]), .SUM(i_tv80_core_i_alu_N228)
         );
  sky130_fd_sc_hd__fa_1 i_tv80_core_i_alu_add_1_root_add_61_2_C110_U1_3 ( .A(
        i_tv80_core_BusA[3]), .B(i_tv80_core_i_alu_N49), .CIN(
        i_tv80_core_i_alu_add_1_root_add_61_2_C110_carry[3]), .COUT(
        i_tv80_core_i_alu_HalfCarry_v), .SUM(i_tv80_core_i_alu_Q_v[3]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1283_U1_15 ( .A(i_tv80_core_PC[15]), 
        .B(i_tv80_core_PC16_B[9]), .CIN(i_tv80_core_add_1283_carry[15]), .SUM(
        i_tv80_core_PC16[15]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1284_U1_15 ( .A(i_tv80_core_SP16_A[15]), .B(i_tv80_core_SP16_B[9]), .CIN(i_tv80_core_add_1284_carry[15]), .SUM(
        i_tv80_core_SP16[15]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1282_U1_15 ( .A(
        i_tv80_core_RegBusA[15]), .B(i_tv80_core_IncDec_16_3_), .CIN(
        i_tv80_core_add_1282_carry_15_), .SUM(i_tv80_core_ID16[15]) );
  sky130_fd_sc_hd__dfxtp_1 wr_n_reg ( .D(N34), .CLK(n39), .Q(wr_n) );
  sky130_fd_sc_hd__dfxtp_1 rd_n_reg ( .D(N33), .CLK(n39), .Q(rd_n) );
  sky130_fd_sc_hd__dfxtp_1 mreq_n_reg ( .D(N36), .CLK(n39), .Q(mreq_n) );
  sky130_fd_sc_hd__dfxtp_1 iorq_n_reg ( .D(N35), .CLK(n39), .Q(iorq_n) );
  sky130_fd_sc_hd__dfxtp_1 i_tv80_core_rfsh_n_reg ( .D(i_tv80_core_n1136), 
        .CLK(n35), .Q(rfsh_n) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1284_U1_1 ( .A(i_tv80_core_SP16_A[1]), 
        .B(i_tv80_core_SP16_B[1]), .CIN(n27), .COUT(
        i_tv80_core_add_1284_carry[2]), .SUM(i_tv80_core_SP16[1]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1284_U1_6 ( .A(i_tv80_core_SP16_A[6]), 
        .B(i_tv80_core_SP16_B[6]), .CIN(i_tv80_core_add_1284_carry[6]), .COUT(
        i_tv80_core_add_1284_carry[7]), .SUM(i_tv80_core_SP16[6]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1284_U1_5 ( .A(i_tv80_core_SP16_A[5]), 
        .B(i_tv80_core_SP16_B[5]), .CIN(i_tv80_core_add_1284_carry[5]), .COUT(
        i_tv80_core_add_1284_carry[6]), .SUM(i_tv80_core_SP16[5]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1284_U1_4 ( .A(i_tv80_core_SP16_A[4]), 
        .B(i_tv80_core_SP16_B[4]), .CIN(i_tv80_core_add_1284_carry[4]), .COUT(
        i_tv80_core_add_1284_carry[5]), .SUM(i_tv80_core_SP16[4]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1284_U1_3 ( .A(i_tv80_core_SP16_A[3]), 
        .B(i_tv80_core_SP16_B[3]), .CIN(i_tv80_core_add_1284_carry[3]), .COUT(
        i_tv80_core_add_1284_carry[4]), .SUM(i_tv80_core_SP16[3]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1284_U1_2 ( .A(i_tv80_core_SP16_A[2]), 
        .B(i_tv80_core_SP16_B[2]), .CIN(i_tv80_core_add_1284_carry[2]), .COUT(
        i_tv80_core_add_1284_carry[3]), .SUM(i_tv80_core_SP16[2]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1284_U1_14 ( .A(i_tv80_core_SP16_A[14]), .B(i_tv80_core_SP16_B[9]), .CIN(i_tv80_core_add_1284_carry[14]), .COUT(
        i_tv80_core_add_1284_carry[15]), .SUM(i_tv80_core_SP16[14]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1284_U1_13 ( .A(i_tv80_core_SP16_A[13]), .B(i_tv80_core_SP16_B[9]), .CIN(i_tv80_core_add_1284_carry[13]), .COUT(
        i_tv80_core_add_1284_carry[14]), .SUM(i_tv80_core_SP16[13]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1284_U1_12 ( .A(i_tv80_core_SP16_A[12]), .B(i_tv80_core_SP16_B[9]), .CIN(i_tv80_core_add_1284_carry[12]), .COUT(
        i_tv80_core_add_1284_carry[13]), .SUM(i_tv80_core_SP16[12]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1284_U1_11 ( .A(i_tv80_core_SP16_A[11]), .B(i_tv80_core_SP16_B[9]), .CIN(i_tv80_core_add_1284_carry[11]), .COUT(
        i_tv80_core_add_1284_carry[12]), .SUM(i_tv80_core_SP16[11]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1284_U1_10 ( .A(i_tv80_core_SP16_A[10]), .B(i_tv80_core_SP16_B[9]), .CIN(i_tv80_core_add_1284_carry[10]), .COUT(
        i_tv80_core_add_1284_carry[11]), .SUM(i_tv80_core_SP16[10]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1284_U1_9 ( .A(i_tv80_core_SP16_A[9]), 
        .B(i_tv80_core_SP16_B[9]), .CIN(i_tv80_core_add_1284_carry[9]), .COUT(
        i_tv80_core_add_1284_carry[10]), .SUM(i_tv80_core_SP16[9]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1284_U1_8 ( .A(i_tv80_core_SP16_A[8]), 
        .B(i_tv80_core_SP16_B[9]), .CIN(i_tv80_core_add_1284_carry[8]), .COUT(
        i_tv80_core_add_1284_carry[9]), .SUM(i_tv80_core_SP16[8]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1284_U1_7 ( .A(i_tv80_core_SP16_A[7]), 
        .B(i_tv80_core_SP16_B[9]), .CIN(i_tv80_core_add_1284_carry[7]), .COUT(
        i_tv80_core_add_1284_carry[8]), .SUM(i_tv80_core_SP16[7]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1282_U1_14 ( .A(
        i_tv80_core_RegBusA[14]), .B(i_tv80_core_IncDec_16_3_), .CIN(
        i_tv80_core_add_1282_carry_14_), .COUT(i_tv80_core_add_1282_carry_15_), 
        .SUM(i_tv80_core_ID16[14]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1282_U1_13 ( .A(
        i_tv80_core_RegBusA[13]), .B(i_tv80_core_IncDec_16_3_), .CIN(
        i_tv80_core_add_1282_carry_13_), .COUT(i_tv80_core_add_1282_carry_14_), 
        .SUM(i_tv80_core_ID16[13]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1282_U1_12 ( .A(
        i_tv80_core_RegBusA[12]), .B(i_tv80_core_IncDec_16_3_), .CIN(
        i_tv80_core_add_1282_carry_12_), .COUT(i_tv80_core_add_1282_carry_13_), 
        .SUM(i_tv80_core_ID16[12]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1282_U1_11 ( .A(
        i_tv80_core_RegBusA[11]), .B(i_tv80_core_IncDec_16_3_), .CIN(
        i_tv80_core_add_1282_carry_11_), .COUT(i_tv80_core_add_1282_carry_12_), 
        .SUM(i_tv80_core_ID16[11]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1282_U1_10 ( .A(
        i_tv80_core_RegBusA[10]), .B(i_tv80_core_IncDec_16_3_), .CIN(
        i_tv80_core_add_1282_carry_10_), .COUT(i_tv80_core_add_1282_carry_11_), 
        .SUM(i_tv80_core_ID16[10]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1282_U1_9 ( .A(i_tv80_core_RegBusA[9]), 
        .B(i_tv80_core_IncDec_16_3_), .CIN(i_tv80_core_add_1282_carry_9_), 
        .COUT(i_tv80_core_add_1282_carry_10_), .SUM(i_tv80_core_ID16[9]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1282_U1_8 ( .A(i_tv80_core_RegBusA[8]), 
        .B(i_tv80_core_IncDec_16_3_), .CIN(i_tv80_core_add_1282_carry_8_), 
        .COUT(i_tv80_core_add_1282_carry_9_), .SUM(i_tv80_core_ID16[8]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1282_U1_7 ( .A(i_tv80_core_RegBusA[7]), 
        .B(i_tv80_core_IncDec_16_3_), .CIN(i_tv80_core_add_1282_carry_7_), 
        .COUT(i_tv80_core_add_1282_carry_8_), .SUM(i_tv80_core_ID16[7]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1282_U1_6 ( .A(i_tv80_core_RegBusA[6]), 
        .B(i_tv80_core_IncDec_16_3_), .CIN(i_tv80_core_add_1282_carry_6_), 
        .COUT(i_tv80_core_add_1282_carry_7_), .SUM(i_tv80_core_ID16[6]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1282_U1_5 ( .A(i_tv80_core_RegBusA[5]), 
        .B(i_tv80_core_IncDec_16_3_), .CIN(i_tv80_core_add_1282_carry_5_), 
        .COUT(i_tv80_core_add_1282_carry_6_), .SUM(i_tv80_core_ID16[5]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1282_U1_4 ( .A(i_tv80_core_RegBusA[4]), 
        .B(i_tv80_core_IncDec_16_3_), .CIN(i_tv80_core_add_1282_carry_4_), 
        .COUT(i_tv80_core_add_1282_carry_5_), .SUM(i_tv80_core_ID16[4]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1282_U1_3 ( .A(i_tv80_core_RegBusA[3]), 
        .B(i_tv80_core_IncDec_16_3_), .CIN(i_tv80_core_add_1282_carry_3_), 
        .COUT(i_tv80_core_add_1282_carry_4_), .SUM(i_tv80_core_ID16[3]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1282_U1_2 ( .A(i_tv80_core_RegBusA[2]), 
        .B(i_tv80_core_IncDec_16_3_), .CIN(i_tv80_core_add_1282_carry_2_), 
        .COUT(i_tv80_core_add_1282_carry_3_), .SUM(i_tv80_core_ID16[2]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_add_1282_U1_1 ( .A(i_tv80_core_RegBusA[1]), 
        .B(i_tv80_core_IncDec_16_3_), .CIN(i_tv80_core_RegBusA[0]), .COUT(
        i_tv80_core_add_1282_carry_2_), .SUM(i_tv80_core_ID16[1]) );
  sky130_fd_sc_hd__fa_1 i_tv80_core_i_alu_add_240_aco_U1_6 ( .A(
        i_tv80_core_i_alu_N201), .B(i_tv80_core_i_alu_N235), .CIN(n28), .COUT(
        i_tv80_core_i_alu_add_240_aco_carry_7_), .SUM(i_tv80_core_i_alu_N214)
         );
  sky130_fd_sc_hd__and2_1 U32 ( .A(i_tv80_core_PC16_B[0]), .B(
        i_tv80_core_PC[0]), .X(n26) );
  sky130_fd_sc_hd__and2_1 U33 ( .A(i_tv80_core_SP16_B[0]), .B(
        i_tv80_core_SP16_A[0]), .X(n27) );
  sky130_fd_sc_hd__and2_1 U34 ( .A(i_tv80_core_i_alu_N235), .B(
        i_tv80_core_i_alu_N200), .X(n28) );
  sky130_fd_sc_hd__o21ai_1 U35 ( .A1(n82), .A2(n542), .B1(n2073), .Y(
        i_tv80_core_SP16_B[9]) );
  sky130_fd_sc_hd__o21ai_1 U36 ( .A1(n82), .A2(n2235), .B1(n2236), .Y(
        i_tv80_core_PC16_B[9]) );
  sky130_fd_sc_hd__o21ai_1 U37 ( .A1(n599), .A2(n1471), .B1(n442), .Y(n2235)
         );
  sky130_fd_sc_hd__o221ai_2 U38 ( .A1(n2237), .A2(n372), .B1(n370), .B2(n742), 
        .C1(n2238), .Y(i_tv80_core_IncDec_16_3_) );
  sky130_fd_sc_hd__xnor2_1 U39 ( .A(n2289), .B(n63), .Y(i_tv80_core_i_alu_N216) );
  sky130_fd_sc_hd__or2_0 U40 ( .A(i_tv80_core_i_alu_N233), .B(
        i_tv80_core_i_alu_sub_256_aco_carry[7]), .X(
        i_tv80_core_i_alu_sub_256_aco_carry[8]) );
  sky130_fd_sc_hd__inv_2 U41 ( .A(i_tv80_core_i_alu_N231), .Y(n61) );
  sky130_fd_sc_hd__inv_2 U42 ( .A(i_tv80_core_i_alu_sub_252_aco_carry[6]), .Y(
        n59) );
  sky130_fd_sc_hd__nor2_1 U43 ( .A(n62), .B(n2287), .Y(n2289) );
  sky130_fd_sc_hd__inv_2 U44 ( .A(i_tv80_core_BusA[1]), .Y(n60) );
  sky130_fd_sc_hd__or2_0 U45 ( .A(i_tv80_core_BusA[3]), .B(
        i_tv80_core_i_alu_sub_252_aco_carry[3]), .X(
        i_tv80_core_i_alu_sub_252_aco_carry[4]) );
  sky130_fd_sc_hd__or2_0 U46 ( .A(i_tv80_core_BusA[4]), .B(
        i_tv80_core_i_alu_sub_252_aco_carry[4]), .X(
        i_tv80_core_i_alu_sub_252_aco_carry[5]) );
  sky130_fd_sc_hd__or2_0 U47 ( .A(i_tv80_core_BusA[5]), .B(
        i_tv80_core_i_alu_sub_252_aco_carry[5]), .X(
        i_tv80_core_i_alu_sub_252_aco_carry[6]) );
  sky130_fd_sc_hd__or2_0 U48 ( .A(i_tv80_core_BusA[2]), .B(i_tv80_core_BusA[1]), .X(i_tv80_core_i_alu_add_234_carry_3_) );
  sky130_fd_sc_hd__buf_1 U49 ( .A(clk), .X(n43) );
  sky130_fd_sc_hd__buf_1 U50 ( .A(clk), .X(n42) );
  sky130_fd_sc_hd__buf_1 U51 ( .A(clk), .X(n53) );
  sky130_fd_sc_hd__buf_1 U52 ( .A(clk), .X(n52) );
  sky130_fd_sc_hd__buf_1 U53 ( .A(clk), .X(n51) );
  sky130_fd_sc_hd__buf_1 U54 ( .A(clk), .X(n50) );
  sky130_fd_sc_hd__buf_1 U55 ( .A(clk), .X(n49) );
  sky130_fd_sc_hd__buf_1 U56 ( .A(clk), .X(n38) );
  sky130_fd_sc_hd__buf_1 U57 ( .A(clk), .X(n46) );
  sky130_fd_sc_hd__buf_1 U58 ( .A(clk), .X(n41) );
  sky130_fd_sc_hd__buf_1 U59 ( .A(clk), .X(n45) );
  sky130_fd_sc_hd__buf_1 U60 ( .A(clk), .X(n54) );
  sky130_fd_sc_hd__buf_1 U61 ( .A(clk), .X(n34) );
  sky130_fd_sc_hd__buf_1 U62 ( .A(clk), .X(n48) );
  sky130_fd_sc_hd__buf_1 U63 ( .A(clk), .X(n55) );
  sky130_fd_sc_hd__buf_1 U64 ( .A(clk), .X(n44) );
  sky130_fd_sc_hd__buf_1 U65 ( .A(clk), .X(n40) );
  sky130_fd_sc_hd__buf_1 U66 ( .A(clk), .X(n56) );
  sky130_fd_sc_hd__buf_1 U67 ( .A(clk), .X(n47) );
  sky130_fd_sc_hd__buf_1 U68 ( .A(clk), .X(n57) );
  sky130_fd_sc_hd__buf_1 U69 ( .A(clk), .X(n37) );
  sky130_fd_sc_hd__buf_1 U70 ( .A(clk), .X(n39) );
  sky130_fd_sc_hd__buf_1 U71 ( .A(clk), .X(n36) );
  sky130_fd_sc_hd__buf_1 U72 ( .A(clk), .X(n35) );
  sky130_fd_sc_hd__buf_1 U73 ( .A(clk), .X(n33) );
  sky130_fd_sc_hd__buf_1 U74 ( .A(clk), .X(n58) );
  sky130_fd_sc_hd__and2_0 U75 ( .A(i_tv80_core_BusA[3]), .B(
        i_tv80_core_i_alu_add_234_carry_3_), .X(n29) );
  sky130_fd_sc_hd__and2_0 U76 ( .A(i_tv80_core_BusA[4]), .B(n29), .X(n30) );
  sky130_fd_sc_hd__and2_0 U77 ( .A(i_tv80_core_BusA[6]), .B(n32), .X(n31) );
  sky130_fd_sc_hd__and2_0 U78 ( .A(i_tv80_core_BusA[5]), .B(n30), .X(n32) );
  sky130_fd_sc_hd__xnor2_1 U79 ( .A(i_tv80_core_BusA[2]), .B(
        i_tv80_core_BusA[1]), .Y(i_tv80_core_i_alu_N187) );
  sky130_fd_sc_hd__xnor2_1 U80 ( .A(i_tv80_core_BusA[3]), .B(
        i_tv80_core_i_alu_sub_252_aco_carry[3]), .Y(i_tv80_core_i_alu_N229) );
  sky130_fd_sc_hd__xnor2_1 U81 ( .A(i_tv80_core_BusA[4]), .B(
        i_tv80_core_i_alu_sub_252_aco_carry[4]), .Y(i_tv80_core_i_alu_N230) );
  sky130_fd_sc_hd__xnor2_1 U82 ( .A(i_tv80_core_BusA[5]), .B(
        i_tv80_core_i_alu_sub_252_aco_carry[5]), .Y(i_tv80_core_i_alu_N231) );
  sky130_fd_sc_hd__nand2_1 U83 ( .A(n1088), .B(n59), .Y(
        i_tv80_core_i_alu_sub_252_aco_carry[7]) );
  sky130_fd_sc_hd__xnor2_1 U84 ( .A(i_tv80_core_BusA[6]), .B(
        i_tv80_core_i_alu_sub_252_aco_carry[6]), .Y(i_tv80_core_i_alu_N232) );
  sky130_fd_sc_hd__xnor2_1 U85 ( .A(i_tv80_core_BusA[7]), .B(
        i_tv80_core_i_alu_sub_252_aco_carry[7]), .Y(i_tv80_core_i_alu_N233) );
  sky130_fd_sc_hd__nand2_1 U86 ( .A(n2011), .B(n60), .Y(
        i_tv80_core_i_alu_sub_252_aco_carry[2]) );
  sky130_fd_sc_hd__xnor2_1 U87 ( .A(n2287), .B(i_tv80_core_BusA[1]), .Y(
        i_tv80_core_i_alu_N227) );
  sky130_fd_sc_hd__xnor2_1 U88 ( .A(i_tv80_core_i_alu_N233), .B(
        i_tv80_core_i_alu_sub_256_aco_carry[7]), .Y(i_tv80_core_i_alu_N245) );
  sky130_fd_sc_hd__nand2_1 U89 ( .A(i_tv80_core_i_alu_N235), .B(n61), .Y(
        i_tv80_core_i_alu_sub_256_aco_carry[6]) );
  sky130_fd_sc_hd__xnor2_1 U90 ( .A(n2288), .B(i_tv80_core_i_alu_N231), .Y(
        i_tv80_core_i_alu_N243) );
  sky130_fd_sc_hd__xor2_1 U91 ( .A(i_tv80_core_BusA[3]), .B(
        i_tv80_core_i_alu_add_234_carry_3_), .X(i_tv80_core_i_alu_N188) );
  sky130_fd_sc_hd__xor2_1 U92 ( .A(i_tv80_core_BusA[4]), .B(n29), .X(
        i_tv80_core_i_alu_N189) );
  sky130_fd_sc_hd__xor2_1 U93 ( .A(i_tv80_core_BusA[5]), .B(n30), .X(
        i_tv80_core_i_alu_N190) );
  sky130_fd_sc_hd__xor2_1 U94 ( .A(i_tv80_core_BusA[6]), .B(n32), .X(
        i_tv80_core_i_alu_N191) );
  sky130_fd_sc_hd__xor2_1 U95 ( .A(i_tv80_core_BusA[7]), .B(n31), .X(
        i_tv80_core_i_alu_N192) );
  sky130_fd_sc_hd__nand2_1 U96 ( .A(i_tv80_core_BusA[7]), .B(n31), .Y(n62) );
  sky130_fd_sc_hd__xor2_1 U97 ( .A(n2288), .B(
        i_tv80_core_i_alu_sub_256_aco_carry[8]), .X(i_tv80_core_i_alu_N246) );
  sky130_fd_sc_hd__xor2_1 U98 ( .A(i_tv80_core_i_alu_N202), .B(
        i_tv80_core_i_alu_add_240_aco_carry_7_), .X(i_tv80_core_i_alu_N215) );
  sky130_fd_sc_hd__nand2_1 U99 ( .A(i_tv80_core_i_alu_N202), .B(
        i_tv80_core_i_alu_add_240_aco_carry_7_), .Y(n63) );
  sky130_fd_sc_hd__xor2_1 U100 ( .A(i_tv80_core_PC16_B[0]), .B(
        i_tv80_core_PC[0]), .X(i_tv80_core_PC16[0]) );
  sky130_fd_sc_hd__xor2_1 U101 ( .A(i_tv80_core_SP16_B[0]), .B(
        i_tv80_core_SP16_A[0]), .X(i_tv80_core_SP16[0]) );
  sky130_fd_sc_hd__xor2_1 U102 ( .A(i_tv80_core_i_alu_N235), .B(
        i_tv80_core_i_alu_N200), .X(i_tv80_core_i_alu_N213) );
  sky130_fd_sc_hd__nor2_1 U103 ( .A(n64), .B(n65), .Y(n2286) );
  sky130_fd_sc_hd__clkinv_1 U104 ( .A(i_tv80_core_i_alu_N235), .Y(n2288) );
  sky130_fd_sc_hd__o22ai_1 U105 ( .A1(n66), .A2(n67), .B1(n68), .B2(n69), .Y(
        n25) );
  sky130_fd_sc_hd__o22ai_1 U106 ( .A1(n66), .A2(n70), .B1(n68), .B2(n71), .Y(
        n24) );
  sky130_fd_sc_hd__o22ai_1 U107 ( .A1(n66), .A2(n72), .B1(n68), .B2(n73), .Y(
        n23) );
  sky130_fd_sc_hd__o22ai_1 U108 ( .A1(n66), .A2(n74), .B1(n68), .B2(n75), .Y(
        n22) );
  sky130_fd_sc_hd__o22ai_1 U109 ( .A1(n66), .A2(n76), .B1(n68), .B2(n77), .Y(
        n21) );
  sky130_fd_sc_hd__o22ai_1 U110 ( .A1(n66), .A2(n78), .B1(n68), .B2(n79), .Y(
        n20) );
  sky130_fd_sc_hd__o22ai_1 U111 ( .A1(n66), .A2(n80), .B1(n68), .B2(n81), .Y(
        n19) );
  sky130_fd_sc_hd__o22ai_1 U112 ( .A1(n66), .A2(n82), .B1(n68), .B2(n83), .Y(
        n18) );
  sky130_fd_sc_hd__nand2_1 U113 ( .A(reset_n), .B(n66), .Y(n68) );
  sky130_fd_sc_hd__nand2_1 U114 ( .A(reset_n), .B(n84), .Y(n66) );
  sky130_fd_sc_hd__o2111ai_1 U115 ( .A1(n85), .A2(n86), .B1(n87), .C1(n88), 
        .D1(n89), .Y(i_tv80_core_n999) );
  sky130_fd_sc_hd__a221oi_1 U116 ( .A1(n90), .A2(n91), .B1(
        i_tv80_core_TmpAddr[7]), .B2(n92), .C1(n93), .Y(n89) );
  sky130_fd_sc_hd__o22ai_1 U117 ( .A1(n94), .A2(n95), .B1(n82), .B2(n96), .Y(
        n93) );
  sky130_fd_sc_hd__a22oi_1 U118 ( .A1(i_tv80_core_N254), .A2(n97), .B1(
        i_tv80_core_SP[7]), .B2(n98), .Y(n88) );
  sky130_fd_sc_hd__nand2_1 U119 ( .A(A[7]), .B(n99), .Y(n87) );
  sky130_fd_sc_hd__clkinv_1 U120 ( .A(i_tv80_core_PC[7]), .Y(n86) );
  sky130_fd_sc_hd__nand4_1 U121 ( .A(n100), .B(n101), .C(n102), .D(n103), .Y(
        i_tv80_core_n998) );
  sky130_fd_sc_hd__a222oi_1 U122 ( .A1(i_tv80_core_I[0]), .A2(n104), .B1(n105), 
        .B2(di_reg[0]), .C1(i_tv80_core_TmpAddr[8]), .C2(n106), .Y(n103) );
  sky130_fd_sc_hd__a22oi_1 U123 ( .A1(n107), .A2(n108), .B1(i_tv80_core_ACC[0]), .B2(n109), .Y(n102) );
  sky130_fd_sc_hd__a222oi_1 U124 ( .A1(i_tv80_core_SP[8]), .A2(n98), .B1(n110), 
        .B2(n111), .C1(i_tv80_core_N255), .C2(n97), .Y(n101) );
  sky130_fd_sc_hd__a22oi_1 U125 ( .A1(i_tv80_core_PC[8]), .A2(n112), .B1(A[8]), 
        .B2(n99), .Y(n100) );
  sky130_fd_sc_hd__nand4_1 U126 ( .A(n113), .B(n114), .C(n115), .D(n116), .Y(
        i_tv80_core_n997) );
  sky130_fd_sc_hd__a222oi_1 U127 ( .A1(i_tv80_core_I[1]), .A2(n104), .B1(n105), 
        .B2(di_reg[1]), .C1(i_tv80_core_TmpAddr[9]), .C2(n106), .Y(n116) );
  sky130_fd_sc_hd__a22oi_1 U128 ( .A1(n107), .A2(n117), .B1(i_tv80_core_ACC[1]), .B2(n109), .Y(n115) );
  sky130_fd_sc_hd__a222oi_1 U129 ( .A1(i_tv80_core_SP[9]), .A2(n98), .B1(n118), 
        .B2(n111), .C1(i_tv80_core_N256), .C2(n97), .Y(n114) );
  sky130_fd_sc_hd__a22oi_1 U130 ( .A1(i_tv80_core_PC[9]), .A2(n112), .B1(A[9]), 
        .B2(n99), .Y(n113) );
  sky130_fd_sc_hd__nand4_1 U131 ( .A(n119), .B(n120), .C(n121), .D(n122), .Y(
        i_tv80_core_n996) );
  sky130_fd_sc_hd__a222oi_1 U132 ( .A1(i_tv80_core_I[2]), .A2(n104), .B1(n105), 
        .B2(di_reg[2]), .C1(i_tv80_core_TmpAddr[10]), .C2(n106), .Y(n122) );
  sky130_fd_sc_hd__a22oi_1 U133 ( .A1(n107), .A2(n123), .B1(i_tv80_core_ACC[2]), .B2(n109), .Y(n121) );
  sky130_fd_sc_hd__a222oi_1 U134 ( .A1(i_tv80_core_SP[10]), .A2(n98), .B1(n124), .B2(n111), .C1(i_tv80_core_N257), .C2(n97), .Y(n120) );
  sky130_fd_sc_hd__a22oi_1 U135 ( .A1(i_tv80_core_PC[10]), .A2(n112), .B1(
        A[10]), .B2(n99), .Y(n119) );
  sky130_fd_sc_hd__nand4_1 U136 ( .A(n125), .B(n126), .C(n127), .D(n128), .Y(
        i_tv80_core_n995) );
  sky130_fd_sc_hd__a222oi_1 U137 ( .A1(i_tv80_core_I[3]), .A2(n104), .B1(n105), 
        .B2(di_reg[3]), .C1(i_tv80_core_TmpAddr[11]), .C2(n106), .Y(n128) );
  sky130_fd_sc_hd__a22oi_1 U138 ( .A1(n107), .A2(n129), .B1(i_tv80_core_ACC[3]), .B2(n109), .Y(n127) );
  sky130_fd_sc_hd__a222oi_1 U139 ( .A1(i_tv80_core_SP[11]), .A2(n98), .B1(n130), .B2(n111), .C1(i_tv80_core_N258), .C2(n97), .Y(n126) );
  sky130_fd_sc_hd__a22oi_1 U140 ( .A1(i_tv80_core_PC[11]), .A2(n112), .B1(
        A[11]), .B2(n99), .Y(n125) );
  sky130_fd_sc_hd__nand4_1 U141 ( .A(n131), .B(n132), .C(n133), .D(n134), .Y(
        i_tv80_core_n994) );
  sky130_fd_sc_hd__a222oi_1 U142 ( .A1(i_tv80_core_I[4]), .A2(n104), .B1(n105), 
        .B2(di_reg[4]), .C1(i_tv80_core_TmpAddr[12]), .C2(n106), .Y(n134) );
  sky130_fd_sc_hd__a22oi_1 U143 ( .A1(n107), .A2(n135), .B1(i_tv80_core_ACC[4]), .B2(n109), .Y(n133) );
  sky130_fd_sc_hd__a222oi_1 U144 ( .A1(i_tv80_core_SP[12]), .A2(n98), .B1(n136), .B2(n111), .C1(i_tv80_core_N259), .C2(n97), .Y(n132) );
  sky130_fd_sc_hd__a22oi_1 U145 ( .A1(i_tv80_core_PC[12]), .A2(n112), .B1(
        A[12]), .B2(n99), .Y(n131) );
  sky130_fd_sc_hd__nand4_1 U146 ( .A(n137), .B(n138), .C(n139), .D(n140), .Y(
        i_tv80_core_n993) );
  sky130_fd_sc_hd__a222oi_1 U147 ( .A1(i_tv80_core_I[5]), .A2(n104), .B1(n105), 
        .B2(di_reg[5]), .C1(i_tv80_core_TmpAddr[13]), .C2(n106), .Y(n140) );
  sky130_fd_sc_hd__a22oi_1 U148 ( .A1(n107), .A2(n141), .B1(i_tv80_core_ACC[5]), .B2(n109), .Y(n139) );
  sky130_fd_sc_hd__a222oi_1 U149 ( .A1(i_tv80_core_SP[13]), .A2(n98), .B1(n142), .B2(n111), .C1(i_tv80_core_N260), .C2(n97), .Y(n138) );
  sky130_fd_sc_hd__a22oi_1 U150 ( .A1(i_tv80_core_PC[13]), .A2(n112), .B1(
        A[13]), .B2(n99), .Y(n137) );
  sky130_fd_sc_hd__nand4_1 U151 ( .A(n143), .B(n144), .C(n145), .D(n146), .Y(
        i_tv80_core_n992) );
  sky130_fd_sc_hd__a222oi_1 U152 ( .A1(i_tv80_core_I[6]), .A2(n104), .B1(n105), 
        .B2(di_reg[6]), .C1(i_tv80_core_TmpAddr[14]), .C2(n106), .Y(n146) );
  sky130_fd_sc_hd__a22oi_1 U153 ( .A1(n107), .A2(n147), .B1(i_tv80_core_ACC[6]), .B2(n109), .Y(n145) );
  sky130_fd_sc_hd__a222oi_1 U154 ( .A1(i_tv80_core_SP[14]), .A2(n98), .B1(n148), .B2(n111), .C1(i_tv80_core_N261), .C2(n97), .Y(n144) );
  sky130_fd_sc_hd__clkinv_1 U155 ( .A(n149), .Y(n111) );
  sky130_fd_sc_hd__a22oi_1 U156 ( .A1(i_tv80_core_PC[14]), .A2(n112), .B1(
        A[14]), .B2(n99), .Y(n143) );
  sky130_fd_sc_hd__a2111o_1 U157 ( .A1(A[15]), .A2(n99), .B1(n150), .C1(n151), 
        .D1(n152), .X(i_tv80_core_n991) );
  sky130_fd_sc_hd__o221ai_1 U158 ( .A1(n96), .A2(n153), .B1(n149), .B2(n154), 
        .C1(n155), .Y(n152) );
  sky130_fd_sc_hd__a222oi_1 U159 ( .A1(n107), .A2(n156), .B1(n105), .B2(
        di_reg[7]), .C1(i_tv80_core_I[7]), .C2(n104), .Y(n155) );
  sky130_fd_sc_hd__a31o_1 U160 ( .A1(n157), .A2(n158), .A3(n159), .B1(n160), 
        .X(n104) );
  sky130_fd_sc_hd__a22o_1 U161 ( .A1(n98), .A2(i_tv80_core_SP[15]), .B1(n112), 
        .B2(i_tv80_core_PC[15]), .X(n151) );
  sky130_fd_sc_hd__mux2i_1 U162 ( .A0(n161), .A1(n162), .S(
        i_tv80_core_TmpAddr[15]), .Y(n150) );
  sky130_fd_sc_hd__a21oi_1 U163 ( .A1(n97), .A2(n163), .B1(n106), .Y(n162) );
  sky130_fd_sc_hd__clkinv_1 U164 ( .A(i_tv80_core_add_548_carry[15]), .Y(n163)
         );
  sky130_fd_sc_hd__nand2_1 U165 ( .A(i_tv80_core_add_548_carry[15]), .B(n97), 
        .Y(n161) );
  sky130_fd_sc_hd__nand2_1 U166 ( .A(n164), .B(reset_n), .Y(i_tv80_core_n990)
         );
  sky130_fd_sc_hd__mux2i_1 U167 ( .A0(i_tv80_core_Fp[0]), .A1(i_tv80_core_F[0]), .S(n165), .Y(n164) );
  sky130_fd_sc_hd__nand2_1 U168 ( .A(n166), .B(reset_n), .Y(i_tv80_core_n989)
         );
  sky130_fd_sc_hd__mux2i_1 U169 ( .A0(i_tv80_core_Fp[1]), .A1(i_tv80_core_F[1]), .S(n165), .Y(n166) );
  sky130_fd_sc_hd__nand2_1 U170 ( .A(n167), .B(reset_n), .Y(i_tv80_core_n988)
         );
  sky130_fd_sc_hd__mux2i_1 U171 ( .A0(i_tv80_core_Fp[2]), .A1(i_tv80_core_F[2]), .S(n165), .Y(n167) );
  sky130_fd_sc_hd__nand2_1 U172 ( .A(n168), .B(reset_n), .Y(i_tv80_core_n987)
         );
  sky130_fd_sc_hd__mux2i_1 U173 ( .A0(i_tv80_core_Fp[3]), .A1(i_tv80_core_F[3]), .S(n165), .Y(n168) );
  sky130_fd_sc_hd__nand2_1 U174 ( .A(n169), .B(reset_n), .Y(i_tv80_core_n986)
         );
  sky130_fd_sc_hd__mux2i_1 U175 ( .A0(i_tv80_core_Fp[4]), .A1(i_tv80_core_F[4]), .S(n165), .Y(n169) );
  sky130_fd_sc_hd__nand2_1 U176 ( .A(n170), .B(reset_n), .Y(i_tv80_core_n985)
         );
  sky130_fd_sc_hd__mux2i_1 U177 ( .A0(i_tv80_core_Fp[5]), .A1(i_tv80_core_F[5]), .S(n165), .Y(n170) );
  sky130_fd_sc_hd__nand2_1 U178 ( .A(n171), .B(reset_n), .Y(i_tv80_core_n984)
         );
  sky130_fd_sc_hd__mux2i_1 U179 ( .A0(i_tv80_core_Fp[6]), .A1(i_tv80_core_F[6]), .S(n165), .Y(n171) );
  sky130_fd_sc_hd__nand2_1 U180 ( .A(n172), .B(reset_n), .Y(i_tv80_core_n983)
         );
  sky130_fd_sc_hd__mux2i_1 U181 ( .A0(i_tv80_core_Fp[7]), .A1(i_tv80_core_F[7]), .S(n165), .Y(n172) );
  sky130_fd_sc_hd__o221ai_1 U182 ( .A1(n173), .A2(n174), .B1(n175), .B2(n176), 
        .C1(n177), .Y(i_tv80_core_n982) );
  sky130_fd_sc_hd__nand2_1 U183 ( .A(do[0]), .B(n178), .Y(n177) );
  sky130_fd_sc_hd__a222oi_1 U184 ( .A1(i_tv80_core_BusB[4]), .A2(n179), .B1(
        i_tv80_core_BusB[0]), .B2(n180), .C1(i_tv80_core_i_alu_N238), .C2(n181), .Y(n173) );
  sky130_fd_sc_hd__o221ai_1 U185 ( .A1(n182), .A2(n174), .B1(n183), .B2(n176), 
        .C1(n184), .Y(i_tv80_core_n981) );
  sky130_fd_sc_hd__nand2_1 U186 ( .A(do[1]), .B(n178), .Y(n184) );
  sky130_fd_sc_hd__a222oi_1 U187 ( .A1(i_tv80_core_BusB[5]), .A2(n179), .B1(
        i_tv80_core_BusB[1]), .B2(n180), .C1(i_tv80_core_BusA[1]), .C2(n181), 
        .Y(n182) );
  sky130_fd_sc_hd__o221ai_1 U188 ( .A1(n185), .A2(n174), .B1(n186), .B2(n176), 
        .C1(n187), .Y(i_tv80_core_n980) );
  sky130_fd_sc_hd__nand2_1 U189 ( .A(do[2]), .B(n178), .Y(n187) );
  sky130_fd_sc_hd__a222oi_1 U190 ( .A1(i_tv80_core_BusB[6]), .A2(n179), .B1(
        i_tv80_core_BusB[2]), .B2(n180), .C1(n181), .C2(i_tv80_core_BusA[2]), 
        .Y(n185) );
  sky130_fd_sc_hd__o221ai_1 U191 ( .A1(n188), .A2(n174), .B1(n189), .B2(n176), 
        .C1(n190), .Y(i_tv80_core_n979) );
  sky130_fd_sc_hd__nand2_1 U192 ( .A(do[3]), .B(n178), .Y(n190) );
  sky130_fd_sc_hd__a222oi_1 U193 ( .A1(i_tv80_core_BusB[7]), .A2(n179), .B1(
        i_tv80_core_BusB[3]), .B2(n180), .C1(n181), .C2(i_tv80_core_BusA[3]), 
        .Y(n188) );
  sky130_fd_sc_hd__o221ai_1 U194 ( .A1(n191), .A2(n174), .B1(n192), .B2(n176), 
        .C1(n193), .Y(i_tv80_core_n978) );
  sky130_fd_sc_hd__nand2_1 U195 ( .A(do[4]), .B(n178), .Y(n193) );
  sky130_fd_sc_hd__a222oi_1 U196 ( .A1(n179), .A2(i_tv80_core_i_alu_N238), 
        .B1(i_tv80_core_BusB[4]), .B2(n180), .C1(n181), .C2(
        i_tv80_core_BusB[0]), .Y(n191) );
  sky130_fd_sc_hd__o221ai_1 U197 ( .A1(n194), .A2(n174), .B1(n195), .B2(n176), 
        .C1(n196), .Y(i_tv80_core_n977) );
  sky130_fd_sc_hd__nand2_1 U198 ( .A(do[5]), .B(n178), .Y(n196) );
  sky130_fd_sc_hd__a222oi_1 U199 ( .A1(i_tv80_core_BusA[1]), .A2(n179), .B1(
        i_tv80_core_BusB[5]), .B2(n180), .C1(i_tv80_core_BusB[1]), .C2(n181), 
        .Y(n194) );
  sky130_fd_sc_hd__o221ai_1 U200 ( .A1(n197), .A2(n174), .B1(n198), .B2(n176), 
        .C1(n199), .Y(i_tv80_core_n976) );
  sky130_fd_sc_hd__nand2_1 U201 ( .A(do[6]), .B(n178), .Y(n199) );
  sky130_fd_sc_hd__a222oi_1 U202 ( .A1(n179), .A2(i_tv80_core_BusA[2]), .B1(
        i_tv80_core_BusB[6]), .B2(n180), .C1(i_tv80_core_BusB[2]), .C2(n181), 
        .Y(n197) );
  sky130_fd_sc_hd__o221ai_1 U203 ( .A1(n200), .A2(n174), .B1(n201), .B2(n176), 
        .C1(n202), .Y(i_tv80_core_n975) );
  sky130_fd_sc_hd__nand2_1 U204 ( .A(do[7]), .B(n178), .Y(n202) );
  sky130_fd_sc_hd__nand2_1 U205 ( .A(n203), .B(n159), .Y(n176) );
  sky130_fd_sc_hd__o311ai_0 U206 ( .A1(n204), .A2(n205), .A3(n206), .B1(n159), 
        .C1(n207), .Y(n174) );
  sky130_fd_sc_hd__clkinv_1 U207 ( .A(n178), .Y(n207) );
  sky130_fd_sc_hd__o31ai_1 U208 ( .A1(n65), .A2(n208), .A3(n203), .B1(n209), 
        .Y(n178) );
  sky130_fd_sc_hd__nor2_1 U209 ( .A(n210), .B(n211), .Y(n203) );
  sky130_fd_sc_hd__a222oi_1 U210 ( .A1(n179), .A2(i_tv80_core_BusA[3]), .B1(
        i_tv80_core_BusB[7]), .B2(n180), .C1(i_tv80_core_BusB[3]), .C2(n181), 
        .Y(n200) );
  sky130_fd_sc_hd__nand4_1 U211 ( .A(n212), .B(n213), .C(n214), .D(n215), .Y(
        i_tv80_core_n971) );
  sky130_fd_sc_hd__a222oi_1 U212 ( .A1(n216), .A2(i_tv80_core_SP[15]), .B1(
        n217), .B2(n218), .C1(n219), .C2(i_tv80_core_SP[7]), .Y(n215) );
  sky130_fd_sc_hd__clkinv_1 U213 ( .A(n220), .Y(n218) );
  sky130_fd_sc_hd__a22oi_1 U214 ( .A1(n221), .A2(i_tv80_core_PC[7]), .B1(n222), 
        .B2(i_tv80_core_PC[15]), .Y(n214) );
  sky130_fd_sc_hd__a222oi_1 U215 ( .A1(n223), .A2(n224), .B1(n225), .B2(
        i_tv80_core_ACC[7]), .C1(n226), .C2(di_reg[7]), .Y(n213) );
  sky130_fd_sc_hd__clkinv_1 U216 ( .A(n227), .Y(n224) );
  sky130_fd_sc_hd__a22oi_1 U217 ( .A1(n228), .A2(i_tv80_core_F[7]), .B1(
        i_tv80_core_BusB[7]), .B2(i_tv80_core_BusAck), .Y(n212) );
  sky130_fd_sc_hd__mux2i_1 U218 ( .A0(n229), .A1(n230), .S(i_tv80_core_BusAck), 
        .Y(i_tv80_core_n970) );
  sky130_fd_sc_hd__mux2_1 U219 ( .A0(i_tv80_core_RegAddrB_r[1]), .A1(n231), 
        .S(busak_n), .X(i_tv80_core_n969) );
  sky130_fd_sc_hd__mux2_1 U220 ( .A0(i_tv80_core_RegBusA_r[0]), .A1(
        i_tv80_core_RegBusA[0]), .S(busak_n), .X(i_tv80_core_n968) );
  sky130_fd_sc_hd__mux2_1 U221 ( .A0(i_tv80_core_RegBusA_r[1]), .A1(
        i_tv80_core_RegBusA[1]), .S(busak_n), .X(i_tv80_core_n967) );
  sky130_fd_sc_hd__mux2_1 U222 ( .A0(i_tv80_core_RegBusA_r[2]), .A1(
        i_tv80_core_RegBusA[2]), .S(busak_n), .X(i_tv80_core_n966) );
  sky130_fd_sc_hd__mux2_1 U223 ( .A0(i_tv80_core_RegBusA_r[3]), .A1(
        i_tv80_core_RegBusA[3]), .S(busak_n), .X(i_tv80_core_n965) );
  sky130_fd_sc_hd__mux2_1 U224 ( .A0(i_tv80_core_RegBusA_r[4]), .A1(
        i_tv80_core_RegBusA[4]), .S(busak_n), .X(i_tv80_core_n964) );
  sky130_fd_sc_hd__mux2_1 U225 ( .A0(i_tv80_core_RegBusA_r[5]), .A1(
        i_tv80_core_RegBusA[5]), .S(busak_n), .X(i_tv80_core_n963) );
  sky130_fd_sc_hd__mux2_1 U226 ( .A0(i_tv80_core_RegBusA_r[6]), .A1(
        i_tv80_core_RegBusA[6]), .S(busak_n), .X(i_tv80_core_n962) );
  sky130_fd_sc_hd__mux2_1 U227 ( .A0(i_tv80_core_RegBusA_r[7]), .A1(
        i_tv80_core_RegBusA[7]), .S(busak_n), .X(i_tv80_core_n961) );
  sky130_fd_sc_hd__mux2_1 U228 ( .A0(i_tv80_core_RegBusA_r[8]), .A1(
        i_tv80_core_RegBusA[8]), .S(busak_n), .X(i_tv80_core_n960) );
  sky130_fd_sc_hd__mux2_1 U229 ( .A0(i_tv80_core_RegBusA_r[9]), .A1(
        i_tv80_core_RegBusA[9]), .S(busak_n), .X(i_tv80_core_n959) );
  sky130_fd_sc_hd__mux2_1 U230 ( .A0(i_tv80_core_RegBusA_r[10]), .A1(
        i_tv80_core_RegBusA[10]), .S(busak_n), .X(i_tv80_core_n958) );
  sky130_fd_sc_hd__mux2_1 U231 ( .A0(i_tv80_core_RegBusA_r[11]), .A1(
        i_tv80_core_RegBusA[11]), .S(busak_n), .X(i_tv80_core_n957) );
  sky130_fd_sc_hd__mux2_1 U232 ( .A0(i_tv80_core_RegBusA_r[12]), .A1(
        i_tv80_core_RegBusA[12]), .S(busak_n), .X(i_tv80_core_n956) );
  sky130_fd_sc_hd__mux2_1 U233 ( .A0(i_tv80_core_RegBusA_r[13]), .A1(
        i_tv80_core_RegBusA[13]), .S(busak_n), .X(i_tv80_core_n955) );
  sky130_fd_sc_hd__mux2_1 U234 ( .A0(i_tv80_core_RegBusA_r[14]), .A1(
        i_tv80_core_RegBusA[14]), .S(busak_n), .X(i_tv80_core_n954) );
  sky130_fd_sc_hd__mux2_1 U235 ( .A0(i_tv80_core_RegBusA_r[15]), .A1(
        i_tv80_core_RegBusA[15]), .S(busak_n), .X(i_tv80_core_n953) );
  sky130_fd_sc_hd__mux2i_1 U236 ( .A0(n232), .A1(n233), .S(i_tv80_core_BusAck), 
        .Y(i_tv80_core_n952) );
  sky130_fd_sc_hd__nor2_1 U237 ( .A(n234), .B(n235), .Y(n232) );
  sky130_fd_sc_hd__mux2i_1 U238 ( .A0(n236), .A1(n237), .S(n238), .Y(n235) );
  sky130_fd_sc_hd__mux2i_1 U239 ( .A0(n239), .A1(n240), .S(i_tv80_core_BusAck), 
        .Y(i_tv80_core_n951) );
  sky130_fd_sc_hd__o21ai_0 U240 ( .A1(n241), .A2(n242), .B1(n243), .Y(
        i_tv80_core_n950) );
  sky130_fd_sc_hd__mux2i_1 U241 ( .A0(n244), .A1(i_tv80_core_RegAddrC[2]), .S(
        i_tv80_core_BusAck), .Y(n243) );
  sky130_fd_sc_hd__a21oi_1 U242 ( .A1(n238), .A2(n245), .B1(n246), .Y(n244) );
  sky130_fd_sc_hd__o21ai_0 U243 ( .A1(n238), .A2(n247), .B1(n245), .Y(n242) );
  sky130_fd_sc_hd__nor2_1 U244 ( .A(n248), .B(n249), .Y(n238) );
  sky130_fd_sc_hd__o31ai_1 U245 ( .A1(n250), .A2(n236), .A3(n251), .B1(n252), 
        .Y(i_tv80_core_n949) );
  sky130_fd_sc_hd__mux2i_1 U246 ( .A0(n253), .A1(i_tv80_core_RegAddrB_r[0]), 
        .S(i_tv80_core_BusAck), .Y(n252) );
  sky130_fd_sc_hd__o221ai_1 U247 ( .A1(n254), .A2(n241), .B1(busak_n), .B2(
        n255), .C1(n256), .Y(i_tv80_core_n948) );
  sky130_fd_sc_hd__nand4_1 U248 ( .A(n257), .B(i_tv80_core_XY_State[1]), .C(
        n258), .D(n231), .Y(n256) );
  sky130_fd_sc_hd__clkinv_1 U249 ( .A(i_tv80_core_RegAddrB_r[2]), .Y(n255) );
  sky130_fd_sc_hd__nor4_1 U250 ( .A(i_tv80_core_XY_Ind), .B(n251), .C(n253), 
        .D(n247), .Y(n254) );
  sky130_fd_sc_hd__o31ai_1 U251 ( .A1(n250), .A2(n236), .A3(n229), .B1(n259), 
        .Y(i_tv80_core_n947) );
  sky130_fd_sc_hd__mux2i_1 U252 ( .A0(n260), .A1(i_tv80_core_RegAddrA_r[0]), 
        .S(i_tv80_core_BusAck), .Y(n259) );
  sky130_fd_sc_hd__o221ai_1 U253 ( .A1(n261), .A2(n241), .B1(busak_n), .B2(
        n262), .C1(n263), .Y(i_tv80_core_n946) );
  sky130_fd_sc_hd__nand4_1 U254 ( .A(n264), .B(n257), .C(
        i_tv80_core_XY_State[1]), .D(n265), .Y(n263) );
  sky130_fd_sc_hd__clkinv_1 U255 ( .A(n250), .Y(n257) );
  sky130_fd_sc_hd__nand2_1 U256 ( .A(busak_n), .B(n266), .Y(n250) );
  sky130_fd_sc_hd__nand2_1 U257 ( .A(i_tv80_core_Alternate), .B(busak_n), .Y(
        n241) );
  sky130_fd_sc_hd__nor4_1 U258 ( .A(i_tv80_core_XY_Ind), .B(n229), .C(n247), 
        .D(n260), .Y(n261) );
  sky130_fd_sc_hd__nand4_1 U259 ( .A(n267), .B(n268), .C(n269), .D(n270), .Y(
        i_tv80_core_n945) );
  sky130_fd_sc_hd__a222oi_1 U260 ( .A1(n216), .A2(i_tv80_core_SP[14]), .B1(
        n217), .B2(n271), .C1(i_tv80_core_SP[6]), .C2(n219), .Y(n270) );
  sky130_fd_sc_hd__clkinv_1 U261 ( .A(n272), .Y(n271) );
  sky130_fd_sc_hd__a22oi_1 U262 ( .A1(i_tv80_core_PC[6]), .A2(n221), .B1(n222), 
        .B2(i_tv80_core_PC[14]), .Y(n269) );
  sky130_fd_sc_hd__a222oi_1 U263 ( .A1(n223), .A2(n273), .B1(n225), .B2(
        i_tv80_core_ACC[6]), .C1(n226), .C2(di_reg[6]), .Y(n268) );
  sky130_fd_sc_hd__clkinv_1 U264 ( .A(n274), .Y(n273) );
  sky130_fd_sc_hd__a22oi_1 U265 ( .A1(n228), .A2(i_tv80_core_F[6]), .B1(
        i_tv80_core_BusB[6]), .B2(i_tv80_core_BusAck), .Y(n267) );
  sky130_fd_sc_hd__nand4_1 U266 ( .A(n275), .B(n276), .C(n277), .D(n278), .Y(
        i_tv80_core_n944) );
  sky130_fd_sc_hd__a222oi_1 U267 ( .A1(n216), .A2(i_tv80_core_SP[13]), .B1(
        n217), .B2(n279), .C1(i_tv80_core_SP[5]), .C2(n219), .Y(n278) );
  sky130_fd_sc_hd__clkinv_1 U268 ( .A(n280), .Y(n279) );
  sky130_fd_sc_hd__a22oi_1 U269 ( .A1(i_tv80_core_PC[5]), .A2(n221), .B1(n222), 
        .B2(i_tv80_core_PC[13]), .Y(n277) );
  sky130_fd_sc_hd__a222oi_1 U270 ( .A1(n223), .A2(n281), .B1(n225), .B2(
        i_tv80_core_ACC[5]), .C1(n226), .C2(di_reg[5]), .Y(n276) );
  sky130_fd_sc_hd__clkinv_1 U271 ( .A(n282), .Y(n281) );
  sky130_fd_sc_hd__a22oi_1 U272 ( .A1(n228), .A2(i_tv80_core_F[5]), .B1(
        i_tv80_core_BusB[5]), .B2(i_tv80_core_BusAck), .Y(n275) );
  sky130_fd_sc_hd__o2111ai_1 U273 ( .A1(n283), .A2(n284), .B1(n285), .C1(n286), 
        .D1(n287), .Y(i_tv80_core_n943) );
  sky130_fd_sc_hd__a221oi_1 U274 ( .A1(i_tv80_core_PC[0]), .A2(n221), .B1(n222), .B2(i_tv80_core_PC[8]), .C1(n288), .Y(n287) );
  sky130_fd_sc_hd__o22ai_1 U275 ( .A1(n289), .A2(n290), .B1(n291), .B2(n292), 
        .Y(n288) );
  sky130_fd_sc_hd__a22oi_1 U276 ( .A1(n225), .A2(i_tv80_core_ACC[0]), .B1(n226), .B2(di_reg[0]), .Y(n286) );
  sky130_fd_sc_hd__mux2i_1 U277 ( .A0(n293), .A1(i_tv80_core_BusB[0]), .S(
        i_tv80_core_BusAck), .Y(n285) );
  sky130_fd_sc_hd__nor3_1 U278 ( .A(n231), .B(n294), .C(n295), .Y(n293) );
  sky130_fd_sc_hd__a21oi_1 U279 ( .A1(i_tv80_core_F[0]), .A2(n253), .B1(n296), 
        .Y(n294) );
  sky130_fd_sc_hd__a21oi_1 U280 ( .A1(n258), .A2(n297), .B1(n298), .Y(n296) );
  sky130_fd_sc_hd__clkinv_1 U281 ( .A(n223), .Y(n284) );
  sky130_fd_sc_hd__nand4_1 U282 ( .A(n299), .B(n300), .C(n301), .D(n302), .Y(
        i_tv80_core_n942) );
  sky130_fd_sc_hd__a222oi_1 U283 ( .A1(n216), .A2(i_tv80_core_SP[9]), .B1(n217), .B2(n303), .C1(i_tv80_core_SP[1]), .C2(n219), .Y(n302) );
  sky130_fd_sc_hd__clkinv_1 U284 ( .A(n304), .Y(n303) );
  sky130_fd_sc_hd__a22oi_1 U285 ( .A1(i_tv80_core_PC[1]), .A2(n221), .B1(n222), 
        .B2(i_tv80_core_PC[9]), .Y(n301) );
  sky130_fd_sc_hd__a222oi_1 U286 ( .A1(n223), .A2(n305), .B1(n225), .B2(
        i_tv80_core_ACC[1]), .C1(n226), .C2(di_reg[1]), .Y(n300) );
  sky130_fd_sc_hd__clkinv_1 U287 ( .A(n306), .Y(n305) );
  sky130_fd_sc_hd__a22oi_1 U288 ( .A1(n228), .A2(i_tv80_core_F[1]), .B1(
        i_tv80_core_BusB[1]), .B2(i_tv80_core_BusAck), .Y(n299) );
  sky130_fd_sc_hd__nand4_1 U289 ( .A(n307), .B(n308), .C(n309), .D(n310), .Y(
        i_tv80_core_n941) );
  sky130_fd_sc_hd__a222oi_1 U290 ( .A1(n216), .A2(i_tv80_core_SP[10]), .B1(
        n217), .B2(n311), .C1(i_tv80_core_SP[2]), .C2(n219), .Y(n310) );
  sky130_fd_sc_hd__clkinv_1 U291 ( .A(n312), .Y(n311) );
  sky130_fd_sc_hd__a22oi_1 U292 ( .A1(i_tv80_core_PC[2]), .A2(n221), .B1(n222), 
        .B2(i_tv80_core_PC[10]), .Y(n309) );
  sky130_fd_sc_hd__a222oi_1 U293 ( .A1(n223), .A2(n313), .B1(n225), .B2(
        i_tv80_core_ACC[2]), .C1(n226), .C2(di_reg[2]), .Y(n308) );
  sky130_fd_sc_hd__clkinv_1 U294 ( .A(n314), .Y(n313) );
  sky130_fd_sc_hd__a22oi_1 U295 ( .A1(n228), .A2(i_tv80_core_F[2]), .B1(
        i_tv80_core_BusB[2]), .B2(i_tv80_core_BusAck), .Y(n307) );
  sky130_fd_sc_hd__nand4_1 U296 ( .A(n315), .B(n316), .C(n317), .D(n318), .Y(
        i_tv80_core_n940) );
  sky130_fd_sc_hd__a222oi_1 U297 ( .A1(n216), .A2(i_tv80_core_SP[11]), .B1(
        n217), .B2(n319), .C1(i_tv80_core_SP[3]), .C2(n219), .Y(n318) );
  sky130_fd_sc_hd__clkinv_1 U298 ( .A(n320), .Y(n319) );
  sky130_fd_sc_hd__a22oi_1 U299 ( .A1(i_tv80_core_PC[3]), .A2(n221), .B1(n222), 
        .B2(i_tv80_core_PC[11]), .Y(n317) );
  sky130_fd_sc_hd__a222oi_1 U300 ( .A1(n223), .A2(n321), .B1(n225), .B2(
        i_tv80_core_ACC[3]), .C1(n226), .C2(di_reg[3]), .Y(n316) );
  sky130_fd_sc_hd__clkinv_1 U301 ( .A(n322), .Y(n321) );
  sky130_fd_sc_hd__a22oi_1 U302 ( .A1(n228), .A2(i_tv80_core_F[3]), .B1(
        i_tv80_core_BusB[3]), .B2(i_tv80_core_BusAck), .Y(n315) );
  sky130_fd_sc_hd__nand4_1 U303 ( .A(n323), .B(n324), .C(n325), .D(n326), .Y(
        i_tv80_core_n939) );
  sky130_fd_sc_hd__a222oi_1 U304 ( .A1(n216), .A2(i_tv80_core_SP[12]), .B1(
        n217), .B2(n327), .C1(i_tv80_core_SP[4]), .C2(n219), .Y(n326) );
  sky130_fd_sc_hd__nor2b_1 U305 ( .B_N(n328), .A(n231), .Y(n219) );
  sky130_fd_sc_hd__clkinv_1 U306 ( .A(n329), .Y(n327) );
  sky130_fd_sc_hd__clkinv_1 U307 ( .A(n292), .Y(n217) );
  sky130_fd_sc_hd__nand3_1 U308 ( .A(n330), .B(n295), .C(n331), .Y(n292) );
  sky130_fd_sc_hd__clkinv_1 U309 ( .A(n290), .Y(n216) );
  sky130_fd_sc_hd__nand4_1 U310 ( .A(n251), .B(n332), .C(n258), .D(n331), .Y(
        n290) );
  sky130_fd_sc_hd__clkinv_1 U311 ( .A(n253), .Y(n258) );
  sky130_fd_sc_hd__a22oi_1 U312 ( .A1(i_tv80_core_PC[4]), .A2(n221), .B1(n222), 
        .B2(i_tv80_core_PC[12]), .Y(n325) );
  sky130_fd_sc_hd__and3_1 U313 ( .A(n331), .B(n231), .C(n332), .X(n222) );
  sky130_fd_sc_hd__nor2b_1 U314 ( .B_N(n328), .A(n251), .Y(n221) );
  sky130_fd_sc_hd__clkinv_1 U315 ( .A(n231), .Y(n251) );
  sky130_fd_sc_hd__nor4_1 U316 ( .A(n295), .B(n253), .C(n298), .D(
        i_tv80_core_BusAck), .Y(n328) );
  sky130_fd_sc_hd__a222oi_1 U317 ( .A1(n223), .A2(n333), .B1(n225), .B2(
        i_tv80_core_ACC[4]), .C1(n226), .C2(di_reg[4]), .Y(n324) );
  sky130_fd_sc_hd__nor4_1 U318 ( .A(n330), .B(n298), .C(n332), .D(
        i_tv80_core_BusAck), .Y(n226) );
  sky130_fd_sc_hd__nor2b_1 U319 ( .B_N(n331), .A(n330), .Y(n225) );
  sky130_fd_sc_hd__clkinv_1 U320 ( .A(n334), .Y(n333) );
  sky130_fd_sc_hd__nor4_1 U321 ( .A(n298), .B(n335), .C(n332), .D(
        i_tv80_core_BusAck), .Y(n223) );
  sky130_fd_sc_hd__clkinv_1 U322 ( .A(n330), .Y(n335) );
  sky130_fd_sc_hd__nand2_1 U323 ( .A(n253), .B(n231), .Y(n330) );
  sky130_fd_sc_hd__nand2_1 U324 ( .A(n336), .B(n337), .Y(n231) );
  sky130_fd_sc_hd__a222oi_1 U325 ( .A1(n338), .A2(n339), .B1(
        i_tv80_core_ISet[1]), .B2(n340), .C1(i_tv80_core_IR[2]), .C2(n341), 
        .Y(n337) );
  sky130_fd_sc_hd__o21ai_0 U326 ( .A1(n342), .A2(n343), .B1(n344), .Y(n340) );
  sky130_fd_sc_hd__o2111ai_1 U327 ( .A1(n345), .A2(n346), .B1(n347), .C1(n348), 
        .D1(n349), .Y(n339) );
  sky130_fd_sc_hd__a32oi_1 U328 ( .A1(n350), .A2(n351), .A3(n352), .B1(
        i_tv80_core_IR[5]), .B2(n353), .Y(n349) );
  sky130_fd_sc_hd__o22ai_1 U329 ( .A1(n354), .A2(n355), .B1(n356), .B2(n357), 
        .Y(n353) );
  sky130_fd_sc_hd__a21oi_1 U330 ( .A1(n358), .A2(n359), .B1(n360), .Y(n347) );
  sky130_fd_sc_hd__a222oi_1 U331 ( .A1(n361), .A2(n362), .B1(n363), .B2(n364), 
        .C1(n365), .C2(n359), .Y(n336) );
  sky130_fd_sc_hd__a22oi_1 U332 ( .A1(n228), .A2(i_tv80_core_F[4]), .B1(
        i_tv80_core_BusB[4]), .B2(i_tv80_core_BusAck), .Y(n323) );
  sky130_fd_sc_hd__and3_1 U333 ( .A(n331), .B(n253), .C(n332), .X(n228) );
  sky130_fd_sc_hd__clkinv_1 U334 ( .A(n295), .Y(n332) );
  sky130_fd_sc_hd__o21ai_0 U335 ( .A1(n366), .A2(n367), .B1(n368), .Y(n295) );
  sky130_fd_sc_hd__o22ai_1 U336 ( .A1(n369), .A2(n370), .B1(n371), .B2(n372), 
        .Y(n367) );
  sky130_fd_sc_hd__nor2b_1 U337 ( .B_N(n373), .A(n360), .Y(n371) );
  sky130_fd_sc_hd__a21oi_1 U338 ( .A1(n374), .A2(n375), .B1(n376), .Y(n369) );
  sky130_fd_sc_hd__a21oi_1 U339 ( .A1(n377), .A2(n378), .B1(n379), .Y(n366) );
  sky130_fd_sc_hd__clkinv_1 U340 ( .A(n364), .Y(n377) );
  sky130_fd_sc_hd__o32ai_1 U341 ( .A1(n380), .A2(n381), .A3(n370), .B1(n382), 
        .B2(n355), .Y(n364) );
  sky130_fd_sc_hd__o22ai_1 U342 ( .A1(n383), .A2(n384), .B1(n385), .B2(n386), 
        .Y(n253) );
  sky130_fd_sc_hd__a21oi_1 U343 ( .A1(i_tv80_core_ISet[1]), .A2(n387), .B1(
        n388), .Y(n385) );
  sky130_fd_sc_hd__a31oi_1 U344 ( .A1(n348), .A2(n373), .A3(n389), .B1(n372), 
        .Y(n388) );
  sky130_fd_sc_hd__a22oi_1 U345 ( .A1(i_tv80_core_IR[4]), .A2(n390), .B1(
        i_tv80_core_IR[1]), .B2(n391), .Y(n389) );
  sky130_fd_sc_hd__o22ai_1 U346 ( .A1(n392), .A2(n355), .B1(n356), .B2(n357), 
        .Y(n390) );
  sky130_fd_sc_hd__clkinv_1 U347 ( .A(n393), .Y(n356) );
  sky130_fd_sc_hd__o221ai_1 U348 ( .A1(n394), .A2(n395), .B1(n396), .B2(n392), 
        .C1(n344), .Y(n387) );
  sky130_fd_sc_hd__o31a_1 U349 ( .A1(n381), .A2(n397), .A3(n380), .B1(n342), 
        .X(n394) );
  sky130_fd_sc_hd__a21oi_1 U350 ( .A1(n398), .A2(n399), .B1(n374), .Y(n342) );
  sky130_fd_sc_hd__and2_0 U351 ( .A(n298), .B(busak_n), .X(n331) );
  sky130_fd_sc_hd__o22ai_1 U352 ( .A1(n400), .A2(n386), .B1(n383), .B2(n401), 
        .Y(n298) );
  sky130_fd_sc_hd__clkinv_1 U353 ( .A(n341), .Y(n383) );
  sky130_fd_sc_hd__nand2_1 U354 ( .A(n368), .B(n402), .Y(n341) );
  sky130_fd_sc_hd__clkinv_1 U355 ( .A(n368), .Y(n386) );
  sky130_fd_sc_hd__nor2_1 U356 ( .A(n234), .B(n403), .Y(n368) );
  sky130_fd_sc_hd__a2111oi_0 U357 ( .A1(n374), .A2(i_tv80_core_IR[3]), .B1(
        n404), .C1(n405), .D1(n406), .Y(n400) );
  sky130_fd_sc_hd__a31o_1 U358 ( .A1(n407), .A2(n398), .A3(n361), .B1(n408), 
        .X(n406) );
  sky130_fd_sc_hd__nand2_1 U359 ( .A(i_tv80_core_IR[4]), .B(n409), .Y(n398) );
  sky130_fd_sc_hd__o22ai_1 U360 ( .A1(n410), .A2(n382), .B1(n411), .B2(n372), 
        .Y(n405) );
  sky130_fd_sc_hd__a2111oi_0 U361 ( .A1(n412), .A2(n413), .B1(n414), .C1(n415), 
        .D1(n416), .Y(n411) );
  sky130_fd_sc_hd__o22ai_1 U362 ( .A1(n417), .A2(n354), .B1(n418), .B2(n419), 
        .Y(n415) );
  sky130_fd_sc_hd__a21oi_1 U363 ( .A1(n352), .A2(n350), .B1(n420), .Y(n418) );
  sky130_fd_sc_hd__o221ai_1 U364 ( .A1(n345), .A2(n401), .B1(n421), .B2(n357), 
        .C1(n348), .Y(n414) );
  sky130_fd_sc_hd__a32oi_1 U365 ( .A1(n422), .A2(n423), .A3(n424), .B1(n352), 
        .B2(n425), .Y(n348) );
  sky130_fd_sc_hd__o22ai_1 U366 ( .A1(n426), .A2(n419), .B1(n427), .B2(n354), 
        .Y(n425) );
  sky130_fd_sc_hd__o21ai_0 U367 ( .A1(n428), .A2(n429), .B1(n430), .Y(n357) );
  sky130_fd_sc_hd__clkinv_1 U368 ( .A(n391), .Y(n345) );
  sky130_fd_sc_hd__nand3b_1 U369 ( .A_N(n431), .B(n432), .C(n433), .Y(n391) );
  sky130_fd_sc_hd__a22oi_1 U370 ( .A1(n424), .A2(n434), .B1(n435), .B2(n436), 
        .Y(n433) );
  sky130_fd_sc_hd__o21ai_0 U371 ( .A1(n379), .A2(n354), .B1(n421), .Y(n413) );
  sky130_fd_sc_hd__mux2i_1 U372 ( .A0(n437), .A1(n438), .S(n397), .Y(n404) );
  sky130_fd_sc_hd__a222oi_1 U373 ( .A1(n407), .A2(n439), .B1(n440), .B2(n441), 
        .C1(n430), .C2(n442), .Y(n438) );
  sky130_fd_sc_hd__clkinv_1 U374 ( .A(n443), .Y(n441) );
  sky130_fd_sc_hd__nand2_1 U375 ( .A(n440), .B(n439), .Y(n437) );
  sky130_fd_sc_hd__nor2_1 U376 ( .A(n444), .B(n354), .Y(n374) );
  sky130_fd_sc_hd__nor2_1 U377 ( .A(busrq_n), .B(n65), .Y(i_tv80_core_n1159)
         );
  sky130_fd_sc_hd__nor2_1 U378 ( .A(int_n), .B(n65), .Y(i_tv80_core_n1158) );
  sky130_fd_sc_hd__nor2_1 U379 ( .A(n445), .B(n65), .Y(i_tv80_core_n1157) );
  sky130_fd_sc_hd__a222oi_1 U380 ( .A1(n446), .A2(n447), .B1(i_tv80_core_F[6]), 
        .B2(n448), .C1(n449), .C2(n395), .Y(n445) );
  sky130_fd_sc_hd__o21ai_0 U381 ( .A1(n450), .A2(n451), .B1(n452), .Y(n448) );
  sky130_fd_sc_hd__mux2i_1 U382 ( .A0(n453), .A1(n454), .S(n455), .Y(
        i_tv80_core_n1156) );
  sky130_fd_sc_hd__clkinv_1 U383 ( .A(i_tv80_core_BTR_r), .Y(n454) );
  sky130_fd_sc_hd__nand3b_1 U384 ( .A_N(i_tv80_core_No_BTR), .B(n449), .C(n159), .Y(n453) );
  sky130_fd_sc_hd__nand2_1 U385 ( .A(n452), .B(n456), .Y(n449) );
  sky130_fd_sc_hd__o221ai_1 U386 ( .A1(n457), .A2(n458), .B1(n459), .B2(n460), 
        .C1(n461), .Y(i_tv80_core_n1155) );
  sky130_fd_sc_hd__a22oi_1 U387 ( .A1(i_tv80_core_PC16[15]), .A2(n462), .B1(
        n463), .B2(i_tv80_core_PC[15]), .Y(n461) );
  sky130_fd_sc_hd__clkinv_1 U388 ( .A(n156), .Y(n457) );
  sky130_fd_sc_hd__o21ai_0 U389 ( .A1(n464), .A2(n82), .B1(n465), .Y(n156) );
  sky130_fd_sc_hd__a22oi_1 U390 ( .A1(n248), .A2(n466), .B1(
        i_tv80_core_TmpAddr[15]), .B2(n467), .Y(n465) );
  sky130_fd_sc_hd__mux2i_1 U391 ( .A0(n468), .A1(n469), .S(n470), .Y(
        i_tv80_core_n1154) );
  sky130_fd_sc_hd__a221oi_1 U392 ( .A1(n471), .A2(n472), .B1(n473), .B2(n474), 
        .C1(n65), .Y(n469) );
  sky130_fd_sc_hd__mux2i_1 U393 ( .A0(n475), .A1(n82), .S(n476), .Y(n471) );
  sky130_fd_sc_hd__mux2i_1 U394 ( .A0(n477), .A1(i_tv80_core_Fp[7]), .S(n478), 
        .Y(n475) );
  sky130_fd_sc_hd__o211ai_1 U395 ( .A1(n479), .A2(n480), .B1(n481), .C1(n482), 
        .Y(n477) );
  sky130_fd_sc_hd__a32oi_1 U396 ( .A1(n483), .A2(n484), .A3(n485), .B1(
        i_tv80_core_F[7]), .B2(n486), .Y(n482) );
  sky130_fd_sc_hd__clkinv_1 U397 ( .A(n487), .Y(n479) );
  sky130_fd_sc_hd__clkinv_1 U398 ( .A(i_tv80_core_F[7]), .Y(n468) );
  sky130_fd_sc_hd__o22ai_1 U399 ( .A1(n488), .A2(n209), .B1(n489), .B2(n490), 
        .Y(i_tv80_core_n1153) );
  sky130_fd_sc_hd__a311oi_1 U400 ( .A1(n491), .A2(n492), .A3(n442), .B1(n493), 
        .C1(n494), .Y(n489) );
  sky130_fd_sc_hd__a31oi_1 U401 ( .A1(n495), .A2(n496), .A3(n497), .B1(n372), 
        .Y(n494) );
  sky130_fd_sc_hd__nor3_1 U402 ( .A(n420), .B(n359), .C(n498), .Y(n497) );
  sky130_fd_sc_hd__a21o_1 U403 ( .A1(n499), .A2(n500), .B1(n501), .X(n496) );
  sky130_fd_sc_hd__nor2_1 U404 ( .A(n502), .B(n370), .Y(n493) );
  sky130_fd_sc_hd__o221ai_1 U405 ( .A1(n503), .A2(n504), .B1(n505), .B2(n506), 
        .C1(n507), .Y(i_tv80_core_n1152) );
  sky130_fd_sc_hd__a21oi_1 U406 ( .A1(mcycle[2]), .A2(n508), .B1(n509), .Y(
        n503) );
  sky130_fd_sc_hd__xor2_1 U407 ( .A(n510), .B(n511), .X(n509) );
  sky130_fd_sc_hd__nor2_1 U408 ( .A(n508), .B(n512), .Y(n511) );
  sky130_fd_sc_hd__nor2b_1 U409 ( .B_N(n513), .A(n514), .Y(n510) );
  sky130_fd_sc_hd__mux2i_1 U410 ( .A0(n515), .A1(n516), .S(n517), .Y(
        i_tv80_core_n1151) );
  sky130_fd_sc_hd__a211oi_1 U411 ( .A1(n518), .A2(n519), .B1(n520), .C1(n521), 
        .Y(n517) );
  sky130_fd_sc_hd__o21ai_0 U412 ( .A1(n522), .A2(n523), .B1(reset_n), .Y(n520)
         );
  sky130_fd_sc_hd__clkinv_1 U413 ( .A(n524), .Y(n522) );
  sky130_fd_sc_hd__clkinv_1 U414 ( .A(i_tv80_core_IntE_FF2), .Y(n516) );
  sky130_fd_sc_hd__nand2_1 U415 ( .A(n525), .B(n526), .Y(n515) );
  sky130_fd_sc_hd__o22ai_1 U416 ( .A1(n65), .A2(n527), .B1(n528), .B2(n524), 
        .Y(n525) );
  sky130_fd_sc_hd__mux2i_1 U417 ( .A0(n529), .A1(n530), .S(n531), .Y(
        i_tv80_core_n1150) );
  sky130_fd_sc_hd__nor4_1 U418 ( .A(n521), .B(n532), .C(n533), .D(n65), .Y(
        n531) );
  sky130_fd_sc_hd__a2111oi_0 U419 ( .A1(n534), .A2(n535), .B1(n536), .C1(n537), 
        .D1(n523), .Y(n533) );
  sky130_fd_sc_hd__a21oi_1 U420 ( .A1(n538), .A2(n539), .B1(n540), .Y(n532) );
  sky130_fd_sc_hd__clkinv_1 U421 ( .A(i_tv80_core_IntE), .Y(n530) );
  sky130_fd_sc_hd__o2111ai_1 U422 ( .A1(i_tv80_core_IntE_FF2), .A2(n538), .B1(
        n526), .C1(n541), .D1(reset_n), .Y(n529) );
  sky130_fd_sc_hd__clkinv_1 U423 ( .A(n521), .Y(n526) );
  sky130_fd_sc_hd__nor4_1 U424 ( .A(n542), .B(n372), .C(n543), .D(n544), .Y(
        n521) );
  sky130_fd_sc_hd__mux2i_1 U425 ( .A0(n545), .A1(n546), .S(n547), .Y(
        i_tv80_core_n1149) );
  sky130_fd_sc_hd__nand2_1 U426 ( .A(n524), .B(reset_n), .Y(n545) );
  sky130_fd_sc_hd__nor4_1 U427 ( .A(n534), .B(n537), .C(n536), .D(
        i_tv80_core_NMI_s), .Y(n524) );
  sky130_fd_sc_hd__nand3_1 U428 ( .A(i_tv80_core_INT_s), .B(n539), .C(
        i_tv80_core_IntE), .Y(n534) );
  sky130_fd_sc_hd__clkinv_1 U429 ( .A(n518), .Y(n539) );
  sky130_fd_sc_hd__nor3_1 U430 ( .A(n543), .B(n548), .C(n372), .Y(n518) );
  sky130_fd_sc_hd__mux2i_1 U431 ( .A0(n549), .A1(n550), .S(tstate[1]), .Y(
        i_tv80_core_n1148) );
  sky130_fd_sc_hd__nand3_1 U432 ( .A(tstate[0]), .B(n551), .C(n552), .Y(n549)
         );
  sky130_fd_sc_hd__mux2i_1 U433 ( .A0(n553), .A1(n554), .S(n555), .Y(
        i_tv80_core_n1147) );
  sky130_fd_sc_hd__o21ai_0 U434 ( .A1(n556), .A2(n554), .B1(reset_n), .Y(n553)
         );
  sky130_fd_sc_hd__o32ai_1 U435 ( .A1(n557), .A2(n555), .A3(n542), .B1(n558), 
        .B2(n559), .Y(i_tv80_core_n1146) );
  sky130_fd_sc_hd__a21boi_0 U436 ( .A1(n552), .A2(n560), .B1_N(n550), .Y(n558)
         );
  sky130_fd_sc_hd__a21oi_1 U437 ( .A1(n554), .A2(n552), .B1(n555), .Y(n550) );
  sky130_fd_sc_hd__clkinv_1 U438 ( .A(n557), .Y(n552) );
  sky130_fd_sc_hd__clkinv_1 U439 ( .A(n551), .Y(n555) );
  sky130_fd_sc_hd__o41ai_1 U440 ( .A1(n561), .A2(n528), .A3(n562), .A4(n556), 
        .B1(n563), .Y(n551) );
  sky130_fd_sc_hd__o32ai_1 U441 ( .A1(n354), .A2(i_tv80_core_Auto_Wait_t2), 
        .A3(n564), .B1(i_tv80_core_Auto_Wait_t1), .B2(n565), .Y(n561) );
  sky130_fd_sc_hd__a21oi_1 U442 ( .A1(n566), .A2(n567), .B1(n65), .Y(
        i_tv80_core_n1145) );
  sky130_fd_sc_hd__nand2_1 U443 ( .A(i_tv80_core_BusReq_s), .B(n556), .Y(n566)
         );
  sky130_fd_sc_hd__mux2i_1 U444 ( .A0(n568), .A1(n569), .S(n570), .Y(
        i_tv80_core_n1144) );
  sky130_fd_sc_hd__nand2_1 U445 ( .A(n159), .B(n571), .Y(n568) );
  sky130_fd_sc_hd__mux2i_1 U446 ( .A0(n572), .A1(n573), .S(n570), .Y(
        i_tv80_core_n1143) );
  sky130_fd_sc_hd__nor2b_1 U447 ( .B_N(n574), .A(n65), .Y(n570) );
  sky130_fd_sc_hd__a21o_1 U448 ( .A1(n571), .A2(n575), .B1(n490), .X(n574) );
  sky130_fd_sc_hd__o2111ai_1 U449 ( .A1(n576), .A2(n577), .B1(n502), .C1(n578), 
        .D1(n579), .Y(n571) );
  sky130_fd_sc_hd__nand2_1 U450 ( .A(n159), .B(n575), .Y(n572) );
  sky130_fd_sc_hd__o2111ai_1 U451 ( .A1(n580), .A2(n577), .B1(n502), .C1(n578), 
        .D1(n581), .Y(n575) );
  sky130_fd_sc_hd__nor4b_1 U452 ( .D_N(n582), .A(n583), .B(n584), .C(n338), 
        .Y(n578) );
  sky130_fd_sc_hd__nor4b_1 U453 ( .D_N(n585), .A(n362), .B(n586), .C(n587), 
        .Y(n502) );
  sky130_fd_sc_hd__o22ai_1 U454 ( .A1(n484), .A2(n209), .B1(n490), .B2(n588), 
        .Y(i_tv80_core_n1142) );
  sky130_fd_sc_hd__o22ai_1 U455 ( .A1(n589), .A2(n209), .B1(n590), .B2(n490), 
        .Y(i_tv80_core_n1141) );
  sky130_fd_sc_hd__nor4_1 U456 ( .A(n591), .B(n592), .C(n593), .D(n594), .Y(
        n590) );
  sky130_fd_sc_hd__a21oi_1 U457 ( .A1(n595), .A2(n596), .B1(n372), .Y(n592) );
  sky130_fd_sc_hd__a2111oi_0 U458 ( .A1(n597), .A2(n598), .B1(n430), .C1(n599), 
        .D1(n600), .Y(n596) );
  sky130_fd_sc_hd__a21boi_0 U459 ( .A1(n601), .A2(n602), .B1_N(n603), .Y(n600)
         );
  sky130_fd_sc_hd__nor4b_1 U460 ( .D_N(n604), .A(n605), .B(n606), .C(n607), 
        .Y(n595) );
  sky130_fd_sc_hd__o22ai_1 U461 ( .A1(n608), .A2(n402), .B1(n582), .B2(n370), 
        .Y(n591) );
  sky130_fd_sc_hd__nor2_1 U462 ( .A(n609), .B(n610), .Y(n582) );
  sky130_fd_sc_hd__o22ai_1 U463 ( .A1(n611), .A2(n209), .B1(n612), .B2(n490), 
        .Y(i_tv80_core_n1140) );
  sky130_fd_sc_hd__a222oi_1 U464 ( .A1(n584), .A2(n608), .B1(n338), .B2(n613), 
        .C1(i_tv80_core_ISet[1]), .C2(n614), .Y(n612) );
  sky130_fd_sc_hd__nand4_1 U465 ( .A(n615), .B(n616), .C(n617), .D(n618), .Y(
        n613) );
  sky130_fd_sc_hd__nor4_1 U466 ( .A(n619), .B(n620), .C(n621), .D(n622), .Y(
        n618) );
  sky130_fd_sc_hd__o21bai_1 U467 ( .A1(n623), .A2(n624), .B1_N(n625), .Y(n619)
         );
  sky130_fd_sc_hd__a22oi_1 U468 ( .A1(n626), .A2(n627), .B1(n350), .B2(n628), 
        .Y(n623) );
  sky130_fd_sc_hd__a221oi_1 U469 ( .A1(n629), .A2(n630), .B1(n631), .B2(n421), 
        .C1(n632), .Y(n617) );
  sky130_fd_sc_hd__clkinv_1 U470 ( .A(n633), .Y(n631) );
  sky130_fd_sc_hd__o221ai_1 U471 ( .A1(n426), .A2(n627), .B1(n634), .B2(n628), 
        .C1(n635), .Y(n630) );
  sky130_fd_sc_hd__o22ai_1 U472 ( .A1(n209), .A2(n636), .B1(n637), .B2(n490), 
        .Y(i_tv80_core_n1139) );
  sky130_fd_sc_hd__a221oi_1 U473 ( .A1(n338), .A2(n638), .B1(n365), .B2(n621), 
        .C1(n639), .Y(n637) );
  sky130_fd_sc_hd__o211ai_1 U474 ( .A1(n513), .A2(n504), .B1(reset_n), .C1(
        n640), .Y(i_tv80_core_n1138) );
  sky130_fd_sc_hd__mux2i_1 U475 ( .A0(n641), .A1(mcycle[0]), .S(n563), .Y(n640) );
  sky130_fd_sc_hd__clkinv_1 U476 ( .A(n506), .Y(n563) );
  sky130_fd_sc_hd__o221ai_1 U477 ( .A1(n504), .A2(n642), .B1(n643), .B2(n506), 
        .C1(n507), .Y(i_tv80_core_n1137) );
  sky130_fd_sc_hd__nand3_1 U478 ( .A(reset_n), .B(n506), .C(n644), .Y(n507) );
  sky130_fd_sc_hd__xor2_1 U479 ( .A(n514), .B(n513), .X(n642) );
  sky130_fd_sc_hd__mux2i_1 U480 ( .A0(n645), .A1(n646), .S(n508), .Y(n513) );
  sky130_fd_sc_hd__mux2i_1 U481 ( .A0(i_tv80_core_Pre_XY_F_M[1]), .A1(
        mcycle[1]), .S(n508), .Y(n514) );
  sky130_fd_sc_hd__nand4_1 U482 ( .A(reset_n), .B(n647), .C(n506), .D(n648), 
        .Y(n504) );
  sky130_fd_sc_hd__nand2_1 U483 ( .A(reset_n), .B(n541), .Y(n506) );
  sky130_fd_sc_hd__o211ai_1 U484 ( .A1(wait_n), .A2(tstate[0]), .B1(reset_n), 
        .C1(n649), .Y(i_tv80_core_n1136) );
  sky130_fd_sc_hd__mux2i_1 U485 ( .A0(n650), .A1(n651), .S(
        i_tv80_core_Alternate), .Y(i_tv80_core_n1135) );
  sky130_fd_sc_hd__nand2_1 U486 ( .A(n159), .B(n651), .Y(n650) );
  sky130_fd_sc_hd__o41ai_1 U487 ( .A1(n652), .A2(n653), .A3(n372), .A4(n654), 
        .B1(reset_n), .Y(n651) );
  sky130_fd_sc_hd__mux2i_1 U488 ( .A0(n654), .A1(n266), .S(n655), .Y(
        i_tv80_core_n1134) );
  sky130_fd_sc_hd__a21boi_0 U489 ( .A1(n656), .A2(n234), .B1_N(n657), .Y(n655)
         );
  sky130_fd_sc_hd__o22ai_1 U490 ( .A1(n658), .A2(n659), .B1(n660), .B2(n661), 
        .Y(i_tv80_core_n1133) );
  sky130_fd_sc_hd__o22ai_1 U491 ( .A1(n370), .A2(n659), .B1(n662), .B2(n661), 
        .Y(i_tv80_core_n1132) );
  sky130_fd_sc_hd__o211ai_1 U492 ( .A1(n660), .A2(n662), .B1(n659), .C1(n159), 
        .Y(n661) );
  sky130_fd_sc_hd__o211ai_1 U493 ( .A1(n245), .A2(n660), .B1(n663), .C1(
        reset_n), .Y(n659) );
  sky130_fd_sc_hd__o32ai_1 U494 ( .A1(n664), .A2(n490), .A3(n665), .B1(n209), 
        .B2(n666), .Y(i_tv80_core_n1131) );
  sky130_fd_sc_hd__nand3_1 U495 ( .A(n667), .B(n658), .C(n439), .Y(n664) );
  sky130_fd_sc_hd__o21ai_0 U496 ( .A1(n668), .A2(n209), .B1(n669), .Y(
        i_tv80_core_n1130) );
  sky130_fd_sc_hd__o21ai_0 U497 ( .A1(n670), .A2(n671), .B1(n672), .Y(n669) );
  sky130_fd_sc_hd__mux2i_1 U498 ( .A0(n673), .A1(n674), .S(n675), .Y(
        i_tv80_core_n1129) );
  sky130_fd_sc_hd__a21oi_1 U499 ( .A1(n676), .A2(n677), .B1(i_tv80_core_BusAck), .Y(n675) );
  sky130_fd_sc_hd__or2_0 U500 ( .A(n678), .B(n668), .X(n677) );
  sky130_fd_sc_hd__mux2i_1 U501 ( .A0(n679), .A1(n680), .S(n676), .Y(n674) );
  sky130_fd_sc_hd__o2111ai_1 U502 ( .A1(n519), .A2(n649), .B1(n681), .C1(n682), 
        .D1(n683), .Y(n676) );
  sky130_fd_sc_hd__nand4_1 U503 ( .A(n684), .B(n685), .C(n686), .D(n687), .Y(
        n679) );
  sky130_fd_sc_hd__nor4_1 U504 ( .A(i_tv80_core_ID16[9]), .B(
        i_tv80_core_ID16[8]), .C(i_tv80_core_ID16[7]), .D(i_tv80_core_ID16[6]), 
        .Y(n687) );
  sky130_fd_sc_hd__nor4_1 U505 ( .A(i_tv80_core_ID16[5]), .B(
        i_tv80_core_ID16[4]), .C(i_tv80_core_ID16[3]), .D(i_tv80_core_ID16[2]), 
        .Y(n686) );
  sky130_fd_sc_hd__nor4_1 U506 ( .A(i_tv80_core_ID16[1]), .B(
        i_tv80_core_ID16[15]), .C(i_tv80_core_ID16[14]), .D(
        i_tv80_core_ID16[13]), .Y(n685) );
  sky130_fd_sc_hd__nor4_1 U507 ( .A(i_tv80_core_ID16[12]), .B(
        i_tv80_core_ID16[11]), .C(i_tv80_core_ID16[10]), .D(n688), .Y(n684) );
  sky130_fd_sc_hd__o2bb2ai_1 U508 ( .B1(n689), .B2(n209), .A1_N(n667), .A2_N(
        n672), .Y(i_tv80_core_n1128) );
  sky130_fd_sc_hd__nand4_1 U509 ( .A(n690), .B(n691), .C(n692), .D(n693), .Y(
        n667) );
  sky130_fd_sc_hd__a22oi_1 U510 ( .A1(n584), .A2(n694), .B1(n430), .B2(n442), 
        .Y(n693) );
  sky130_fd_sc_hd__o221ai_1 U511 ( .A1(n421), .A2(n695), .B1(n696), .B2(n697), 
        .C1(n698), .Y(n694) );
  sky130_fd_sc_hd__a21oi_1 U512 ( .A1(n699), .A2(n436), .B1(n700), .Y(n698) );
  sky130_fd_sc_hd__clkinv_1 U513 ( .A(n701), .Y(n699) );
  sky130_fd_sc_hd__o211a_1 U514 ( .A1(n702), .A2(n436), .B1(n703), .C1(n704), 
        .X(n696) );
  sky130_fd_sc_hd__o21ai_0 U515 ( .A1(n593), .A2(n705), .B1(i_tv80_core_IR[3]), 
        .Y(n692) );
  sky130_fd_sc_hd__o22ai_1 U516 ( .A1(n706), .A2(n209), .B1(n707), .B2(n708), 
        .Y(i_tv80_core_n1127) );
  sky130_fd_sc_hd__nor3_1 U517 ( .A(n709), .B(n670), .C(n710), .Y(n707) );
  sky130_fd_sc_hd__o22ai_1 U518 ( .A1(n451), .A2(n711), .B1(n712), .B2(n395), 
        .Y(n710) );
  sky130_fd_sc_hd__a221oi_1 U519 ( .A1(n338), .A2(n713), .B1(n584), .B2(n714), 
        .C1(n715), .Y(n712) );
  sky130_fd_sc_hd__o31a_1 U520 ( .A1(n362), .A2(n716), .A3(n717), .B1(
        i_tv80_core_ISet[1]), .X(n715) );
  sky130_fd_sc_hd__o211ai_1 U521 ( .A1(n436), .A2(n704), .B1(n703), .C1(n718), 
        .Y(n714) );
  sky130_fd_sc_hd__o21a_1 U522 ( .A1(n719), .A2(n720), .B1(n702), .X(n718) );
  sky130_fd_sc_hd__o211a_1 U523 ( .A1(n721), .A2(n436), .B1(n722), .C1(n701), 
        .X(n703) );
  sky130_fd_sc_hd__or2_0 U524 ( .A(n408), .B(n639), .X(n670) );
  sky130_fd_sc_hd__clkinv_1 U525 ( .A(n691), .Y(n639) );
  sky130_fd_sc_hd__o21ai_0 U526 ( .A1(n723), .A2(n370), .B1(n724), .Y(n709) );
  sky130_fd_sc_hd__a32oi_1 U527 ( .A1(n725), .A2(n726), .A3(n338), .B1(n584), 
        .B2(n727), .Y(n724) );
  sky130_fd_sc_hd__o22ai_1 U528 ( .A1(n728), .A2(n421), .B1(n729), .B2(n354), 
        .Y(n727) );
  sky130_fd_sc_hd__a31oi_1 U529 ( .A1(n730), .A2(n731), .A3(n352), .B1(n376), 
        .Y(n723) );
  sky130_fd_sc_hd__o2bb2ai_1 U530 ( .B1(n732), .B2(n209), .A1_N(n665), .A2_N(
        n672), .Y(i_tv80_core_n1126) );
  sky130_fd_sc_hd__o221ai_1 U531 ( .A1(n733), .A2(n343), .B1(n372), .B2(n734), 
        .C1(n691), .Y(n665) );
  sky130_fd_sc_hd__a221oi_1 U532 ( .A1(n584), .A2(n735), .B1(n593), .B2(n716), 
        .C1(n705), .Y(n733) );
  sky130_fd_sc_hd__o221ai_1 U533 ( .A1(n720), .A2(n736), .B1(n737), .B2(n372), 
        .C1(n738), .Y(n705) );
  sky130_fd_sc_hd__o21ai_0 U534 ( .A1(n717), .A2(n739), .B1(
        i_tv80_core_ISet[1]), .Y(n738) );
  sky130_fd_sc_hd__o21ai_0 U535 ( .A1(n396), .A2(n740), .B1(n741), .Y(n739) );
  sky130_fd_sc_hd__nand4_1 U536 ( .A(n742), .B(n743), .C(n744), .D(n745), .Y(
        n717) );
  sky130_fd_sc_hd__nor4_1 U537 ( .A(n746), .B(n747), .C(n748), .D(n609), .Y(
        n745) );
  sky130_fd_sc_hd__a21oi_1 U538 ( .A1(n749), .A2(n586), .B1(n750), .Y(n744) );
  sky130_fd_sc_hd__clkinv_1 U539 ( .A(n713), .Y(n737) );
  sky130_fd_sc_hd__nand4b_1 U540 ( .A_N(n607), .B(n495), .C(n751), .D(n752), 
        .Y(n713) );
  sky130_fd_sc_hd__a211oi_1 U541 ( .A1(n430), .A2(n716), .B1(n753), .C1(n754), 
        .Y(n752) );
  sky130_fd_sc_hd__o21bai_1 U542 ( .A1(n755), .A2(n756), .B1_N(n599), .Y(n753)
         );
  sky130_fd_sc_hd__nand4_1 U543 ( .A(n757), .B(n758), .C(n615), .D(n759), .Y(
        n607) );
  sky130_fd_sc_hd__nor4_1 U544 ( .A(n622), .B(n760), .C(n761), .D(n762), .Y(
        n759) );
  sky130_fd_sc_hd__nor4_1 U545 ( .A(n436), .B(n763), .C(n764), .D(mcycle[2]), 
        .Y(n720) );
  sky130_fd_sc_hd__nor2_1 U546 ( .A(n765), .B(n370), .Y(n593) );
  sky130_fd_sc_hd__o21ai_0 U547 ( .A1(n436), .A2(n766), .B1(n722), .Y(n735) );
  sky130_fd_sc_hd__o31ai_1 U548 ( .A1(n436), .A2(n403), .A3(n767), .B1(n768), 
        .Y(n722) );
  sky130_fd_sc_hd__o21ai_0 U549 ( .A1(n483), .A2(n209), .B1(n769), .Y(
        i_tv80_core_n1125) );
  sky130_fd_sc_hd__o21ai_0 U550 ( .A1(n770), .A2(n771), .B1(n672), .Y(n769) );
  sky130_fd_sc_hd__clkinv_1 U551 ( .A(n772), .Y(n771) );
  sky130_fd_sc_hd__o21a_1 U552 ( .A1(n773), .A2(n700), .B1(n584), .X(n770) );
  sky130_fd_sc_hd__o21ai_0 U553 ( .A1(n354), .A2(n704), .B1(n774), .Y(n700) );
  sky130_fd_sc_hd__o221ai_1 U554 ( .A1(n775), .A2(n708), .B1(n776), .B2(n209), 
        .C1(n777), .Y(i_tv80_core_n1124) );
  sky130_fd_sc_hd__o221ai_1 U555 ( .A1(n264), .A2(n708), .B1(n778), .B2(n209), 
        .C1(n777), .Y(i_tv80_core_n1123) );
  sky130_fd_sc_hd__o221ai_1 U556 ( .A1(n229), .A2(n708), .B1(n779), .B2(n209), 
        .C1(n777), .Y(i_tv80_core_n1122) );
  sky130_fd_sc_hd__clkinv_1 U557 ( .A(n265), .Y(n229) );
  sky130_fd_sc_hd__o32ai_1 U558 ( .A1(n780), .A2(n781), .A3(n708), .B1(n782), 
        .B2(n209), .Y(i_tv80_core_n1121) );
  sky130_fd_sc_hd__o221ai_1 U559 ( .A1(n783), .A2(n708), .B1(n784), .B2(n209), 
        .C1(n777), .Y(i_tv80_core_n1120) );
  sky130_fd_sc_hd__nand2_1 U560 ( .A(n672), .B(n780), .Y(n777) );
  sky130_fd_sc_hd__o21ai_0 U561 ( .A1(n785), .A2(n786), .B1(n787), .Y(n780) );
  sky130_fd_sc_hd__a31oi_1 U562 ( .A1(n422), .A2(n788), .A3(n442), .B1(n408), 
        .Y(n787) );
  sky130_fd_sc_hd__a2bb2oi_1 U563 ( .B1(n365), .B2(n789), .A1_N(n790), .A2_N(
        n426), .Y(n785) );
  sky130_fd_sc_hd__clkinv_1 U564 ( .A(n708), .Y(n672) );
  sky130_fd_sc_hd__clkinv_1 U565 ( .A(i_tv80_core_Read_To_Reg_r[4]), .Y(n784)
         );
  sky130_fd_sc_hd__nand2_1 U566 ( .A(n556), .B(n159), .Y(n708) );
  sky130_fd_sc_hd__nor3_1 U567 ( .A(n791), .B(n792), .C(n671), .Y(n783) );
  sky130_fd_sc_hd__o221ai_1 U568 ( .A1(n793), .A2(n370), .B1(n373), .B2(n372), 
        .C1(n794), .Y(n671) );
  sky130_fd_sc_hd__a21oi_1 U569 ( .A1(n584), .A2(n773), .B1(n795), .Y(n794) );
  sky130_fd_sc_hd__o22ai_1 U570 ( .A1(n796), .A2(n421), .B1(n797), .B2(n354), 
        .Y(n773) );
  sky130_fd_sc_hd__a21oi_1 U571 ( .A1(n436), .A2(n599), .B1(n798), .Y(n373) );
  sky130_fd_sc_hd__a21oi_1 U572 ( .A1(n763), .A2(n587), .B1(n376), .Y(n793) );
  sky130_fd_sc_hd__nor2_1 U573 ( .A(n354), .B(n396), .Y(n376) );
  sky130_fd_sc_hd__o221ai_1 U574 ( .A1(n799), .A2(n372), .B1(n370), .B2(n800), 
        .C1(n801), .Y(n791) );
  sky130_fd_sc_hd__nor2_1 U575 ( .A(n802), .B(n803), .Y(n799) );
  sky130_fd_sc_hd__nor2_1 U576 ( .A(n804), .B(n557), .Y(i_tv80_core_n1119) );
  sky130_fd_sc_hd__nand2_1 U577 ( .A(reset_n), .B(n805), .Y(n557) );
  sky130_fd_sc_hd__a21oi_1 U578 ( .A1(n436), .A2(n806), .B1(n807), .Y(n804) );
  sky130_fd_sc_hd__nor2b_1 U579 ( .B_N(i_tv80_core_Auto_Wait_t1), .A(n65), .Y(
        i_tv80_core_n1118) );
  sky130_fd_sc_hd__o211ai_1 U580 ( .A1(n808), .A2(n297), .B1(reset_n), .C1(
        n809), .Y(i_tv80_core_n1117) );
  sky130_fd_sc_hd__a222oi_1 U581 ( .A1(n810), .A2(n811), .B1(
        i_tv80_core_SP16[0]), .B2(n812), .C1(n813), .C2(n814), .Y(n809) );
  sky130_fd_sc_hd__o211ai_1 U582 ( .A1(n808), .A2(n815), .B1(reset_n), .C1(
        n816), .Y(i_tv80_core_n1116) );
  sky130_fd_sc_hd__a222oi_1 U583 ( .A1(n810), .A2(n817), .B1(
        i_tv80_core_SP16[1]), .B2(n812), .C1(n813), .C2(n818), .Y(n816) );
  sky130_fd_sc_hd__o211ai_1 U584 ( .A1(n808), .A2(n819), .B1(reset_n), .C1(
        n820), .Y(i_tv80_core_n1115) );
  sky130_fd_sc_hd__a222oi_1 U585 ( .A1(n810), .A2(n821), .B1(
        i_tv80_core_SP16[2]), .B2(n812), .C1(n813), .C2(n822), .Y(n820) );
  sky130_fd_sc_hd__o211ai_1 U586 ( .A1(n808), .A2(n823), .B1(reset_n), .C1(
        n824), .Y(i_tv80_core_n1114) );
  sky130_fd_sc_hd__a222oi_1 U587 ( .A1(n810), .A2(n825), .B1(
        i_tv80_core_SP16[3]), .B2(n812), .C1(n813), .C2(n826), .Y(n824) );
  sky130_fd_sc_hd__o211ai_1 U588 ( .A1(n808), .A2(n827), .B1(reset_n), .C1(
        n828), .Y(i_tv80_core_n1113) );
  sky130_fd_sc_hd__a222oi_1 U589 ( .A1(n810), .A2(n829), .B1(
        i_tv80_core_SP16[4]), .B2(n812), .C1(n813), .C2(n830), .Y(n828) );
  sky130_fd_sc_hd__o211ai_1 U590 ( .A1(n808), .A2(n831), .B1(reset_n), .C1(
        n832), .Y(i_tv80_core_n1112) );
  sky130_fd_sc_hd__a222oi_1 U591 ( .A1(n810), .A2(n833), .B1(
        i_tv80_core_SP16[5]), .B2(n812), .C1(n813), .C2(n834), .Y(n832) );
  sky130_fd_sc_hd__o211ai_1 U592 ( .A1(n808), .A2(n835), .B1(reset_n), .C1(
        n836), .Y(i_tv80_core_n1111) );
  sky130_fd_sc_hd__a222oi_1 U593 ( .A1(n810), .A2(n837), .B1(
        i_tv80_core_SP16[6]), .B2(n812), .C1(n813), .C2(n838), .Y(n836) );
  sky130_fd_sc_hd__o211ai_1 U594 ( .A1(n808), .A2(n839), .B1(reset_n), .C1(
        n840), .Y(i_tv80_core_n1110) );
  sky130_fd_sc_hd__a222oi_1 U595 ( .A1(n810), .A2(n90), .B1(
        i_tv80_core_SP16[7]), .B2(n812), .C1(n813), .C2(n474), .Y(n840) );
  sky130_fd_sc_hd__and3_1 U596 ( .A(n808), .B(n841), .C(n842), .X(n813) );
  sky130_fd_sc_hd__nor2b_1 U597 ( .B_N(n843), .A(n249), .Y(n812) );
  sky130_fd_sc_hd__clkinv_1 U598 ( .A(n844), .Y(n90) );
  sky130_fd_sc_hd__nor2b_1 U599 ( .B_N(n843), .A(n845), .Y(n810) );
  sky130_fd_sc_hd__o21a_1 U600 ( .A1(n846), .A2(n847), .B1(n808), .X(n843) );
  sky130_fd_sc_hd__o21a_1 U601 ( .A1(n848), .A2(n842), .B1(n849), .X(n808) );
  sky130_fd_sc_hd__o211ai_1 U602 ( .A1(n850), .A2(n289), .B1(reset_n), .C1(
        n851), .Y(i_tv80_core_n1109) );
  sky130_fd_sc_hd__a222oi_1 U603 ( .A1(n852), .A2(n110), .B1(
        i_tv80_core_SP16[8]), .B2(n853), .C1(n854), .C2(n814), .Y(n851) );
  sky130_fd_sc_hd__o211ai_1 U604 ( .A1(n850), .A2(n855), .B1(reset_n), .C1(
        n856), .Y(i_tv80_core_n1108) );
  sky130_fd_sc_hd__a222oi_1 U605 ( .A1(n852), .A2(n118), .B1(
        i_tv80_core_SP16[9]), .B2(n853), .C1(n854), .C2(n818), .Y(n856) );
  sky130_fd_sc_hd__o211ai_1 U606 ( .A1(n850), .A2(n857), .B1(reset_n), .C1(
        n858), .Y(i_tv80_core_n1107) );
  sky130_fd_sc_hd__a222oi_1 U607 ( .A1(n852), .A2(n124), .B1(
        i_tv80_core_SP16[10]), .B2(n853), .C1(n854), .C2(n822), .Y(n858) );
  sky130_fd_sc_hd__o211ai_1 U608 ( .A1(n850), .A2(n859), .B1(reset_n), .C1(
        n860), .Y(i_tv80_core_n1106) );
  sky130_fd_sc_hd__a222oi_1 U609 ( .A1(n852), .A2(n130), .B1(
        i_tv80_core_SP16[11]), .B2(n853), .C1(n854), .C2(n826), .Y(n860) );
  sky130_fd_sc_hd__o211ai_1 U610 ( .A1(n850), .A2(n861), .B1(reset_n), .C1(
        n862), .Y(i_tv80_core_n1105) );
  sky130_fd_sc_hd__a222oi_1 U611 ( .A1(n852), .A2(n136), .B1(
        i_tv80_core_SP16[12]), .B2(n853), .C1(n854), .C2(n830), .Y(n862) );
  sky130_fd_sc_hd__o211ai_1 U612 ( .A1(n850), .A2(n863), .B1(reset_n), .C1(
        n864), .Y(i_tv80_core_n1104) );
  sky130_fd_sc_hd__a222oi_1 U613 ( .A1(n852), .A2(n142), .B1(
        i_tv80_core_SP16[13]), .B2(n853), .C1(n854), .C2(n834), .Y(n864) );
  sky130_fd_sc_hd__o211ai_1 U614 ( .A1(n850), .A2(n865), .B1(reset_n), .C1(
        n866), .Y(i_tv80_core_n1103) );
  sky130_fd_sc_hd__a222oi_1 U615 ( .A1(n852), .A2(n148), .B1(
        i_tv80_core_SP16[14]), .B2(n853), .C1(n854), .C2(n838), .Y(n866) );
  sky130_fd_sc_hd__o211ai_1 U616 ( .A1(n850), .A2(n867), .B1(reset_n), .C1(
        n868), .Y(i_tv80_core_n1102) );
  sky130_fd_sc_hd__a222oi_1 U617 ( .A1(n852), .A2(n466), .B1(
        i_tv80_core_SP16[15]), .B2(n853), .C1(n854), .C2(n474), .Y(n868) );
  sky130_fd_sc_hd__and3_1 U618 ( .A(n850), .B(n841), .C(n846), .X(n854) );
  sky130_fd_sc_hd__nor2b_1 U619 ( .B_N(n869), .A(n249), .Y(n853) );
  sky130_fd_sc_hd__clkinv_1 U620 ( .A(n154), .Y(n466) );
  sky130_fd_sc_hd__nor2b_1 U621 ( .B_N(n869), .A(n845), .Y(n852) );
  sky130_fd_sc_hd__o21a_1 U622 ( .A1(n842), .A2(n847), .B1(n850), .X(n869) );
  sky130_fd_sc_hd__nand2_1 U623 ( .A(n870), .B(n871), .Y(n847) );
  sky130_fd_sc_hd__o21a_1 U624 ( .A1(n848), .A2(n846), .B1(n849), .X(n850) );
  sky130_fd_sc_hd__o21a_1 U625 ( .A1(n848), .A2(n841), .B1(n159), .X(n849) );
  sky130_fd_sc_hd__clkinv_1 U626 ( .A(n872), .Y(n846) );
  sky130_fd_sc_hd__o21a_1 U627 ( .A1(n873), .A2(n249), .B1(n874), .X(n848) );
  sky130_fd_sc_hd__clkinv_1 U628 ( .A(n845), .Y(n249) );
  sky130_fd_sc_hd__nor3_1 U629 ( .A(n875), .B(n681), .C(n682), .Y(n873) );
  sky130_fd_sc_hd__a31oi_1 U630 ( .A1(n554), .A2(n560), .A3(n436), .B1(n876), 
        .Y(n875) );
  sky130_fd_sc_hd__o41ai_1 U631 ( .A1(n877), .A2(n878), .A3(n879), .A4(n880), 
        .B1(n881), .Y(i_tv80_core_n1101) );
  sky130_fd_sc_hd__mux2i_1 U632 ( .A0(n882), .A1(i_tv80_core_F[0]), .S(n879), 
        .Y(n881) );
  sky130_fd_sc_hd__o221ai_1 U633 ( .A1(n883), .A2(n884), .B1(n175), .B2(n885), 
        .C1(reset_n), .Y(n882) );
  sky130_fd_sc_hd__o21ai_0 U634 ( .A1(n886), .A2(n887), .B1(n472), .Y(n884) );
  sky130_fd_sc_hd__o22ai_1 U635 ( .A1(n888), .A2(n889), .B1(n890), .B2(n627), 
        .Y(n887) );
  sky130_fd_sc_hd__and3_1 U636 ( .A(n891), .B(n892), .C(n893), .X(n890) );
  sky130_fd_sc_hd__o22ai_1 U637 ( .A1(i_tv80_core_ALU_Op_r[3]), .A2(n894), 
        .B1(n895), .B2(n896), .Y(n886) );
  sky130_fd_sc_hd__mux2i_1 U638 ( .A0(i_tv80_core_BusA[7]), .A1(
        i_tv80_core_i_alu_N238), .S(i_tv80_core_IR[3]), .Y(n896) );
  sky130_fd_sc_hd__mux2_1 U639 ( .A0(n897), .A1(n898), .S(n899), .X(n894) );
  sky130_fd_sc_hd__mux2i_1 U640 ( .A0(n900), .A1(i_tv80_core_Fp[0]), .S(n901), 
        .Y(n880) );
  sky130_fd_sc_hd__or2_0 U641 ( .A(n902), .B(n627), .X(n900) );
  sky130_fd_sc_hd__o2111a_1 U642 ( .A1(n490), .A2(n883), .B1(n903), .C1(n904), 
        .D1(n905), .X(n879) );
  sky130_fd_sc_hd__nand2_1 U643 ( .A(n906), .B(n907), .Y(n903) );
  sky130_fd_sc_hd__clkinv_1 U644 ( .A(n883), .Y(n877) );
  sky130_fd_sc_hd__nand2_1 U645 ( .A(n908), .B(n636), .Y(n883) );
  sky130_fd_sc_hd__clkinv_1 U646 ( .A(i_tv80_core_PreserveC_r), .Y(n636) );
  sky130_fd_sc_hd__o211ai_1 U647 ( .A1(n909), .A2(n910), .B1(n911), .C1(n912), 
        .Y(i_tv80_core_n1100) );
  sky130_fd_sc_hd__mux2i_1 U648 ( .A0(i_tv80_core_F[1]), .A1(n913), .S(n914), 
        .Y(n912) );
  sky130_fd_sc_hd__nor2_1 U649 ( .A(n183), .B(n885), .Y(n913) );
  sky130_fd_sc_hd__a22oi_1 U650 ( .A1(n915), .A2(n916), .B1(n917), .B2(
        i_tv80_core_Fp[1]), .Y(n909) );
  sky130_fd_sc_hd__o22ai_1 U651 ( .A1(i_tv80_core_ALU_Op_r[3]), .A2(n897), 
        .B1(n891), .B2(n918), .Y(n916) );
  sky130_fd_sc_hd__nor2_1 U652 ( .A(n919), .B(n920), .Y(n891) );
  sky130_fd_sc_hd__o211ai_1 U653 ( .A1(n921), .A2(n910), .B1(n911), .C1(n922), 
        .Y(i_tv80_core_n1099) );
  sky130_fd_sc_hd__mux2i_1 U654 ( .A0(i_tv80_core_F[4]), .A1(n923), .S(n914), 
        .Y(n922) );
  sky130_fd_sc_hd__nor2_1 U655 ( .A(n192), .B(n885), .Y(n923) );
  sky130_fd_sc_hd__o21a_1 U656 ( .A1(n910), .A2(n924), .B1(reset_n), .X(n911)
         );
  sky130_fd_sc_hd__nand3_1 U657 ( .A(n472), .B(n925), .C(n914), .Y(n910) );
  sky130_fd_sc_hd__o31a_1 U658 ( .A1(n926), .A2(n473), .A3(n476), .B1(n209), 
        .X(n914) );
  sky130_fd_sc_hd__a222oi_1 U659 ( .A1(n917), .A2(i_tv80_core_Fp[4]), .B1(n927), .B2(n928), .C1(n915), .C2(n929), .Y(n921) );
  sky130_fd_sc_hd__o211ai_1 U660 ( .A1(n930), .A2(n931), .B1(n932), .C1(n933), 
        .Y(n929) );
  sky130_fd_sc_hd__o31a_1 U661 ( .A1(n934), .A2(i_tv80_core_F[1]), .A3(n888), 
        .B1(n893), .X(n933) );
  sky130_fd_sc_hd__o21ai_0 U662 ( .A1(n935), .A2(n936), .B1(n483), .Y(n932) );
  sky130_fd_sc_hd__mux2i_1 U663 ( .A0(n897), .A1(n898), .S(
        i_tv80_core_i_alu_HalfCarry_v), .Y(n936) );
  sky130_fd_sc_hd__a31oi_1 U664 ( .A1(n920), .A2(i_tv80_core_F[1]), .A3(n934), 
        .B1(n919), .Y(n930) );
  sky130_fd_sc_hd__a2bb2oi_1 U665 ( .B1(n937), .B2(i_tv80_core_BusA[3]), 
        .A1_N(n938), .A2_N(n918), .Y(n934) );
  sky130_fd_sc_hd__nor2_1 U666 ( .A(i_tv80_core_BusA[3]), .B(n937), .Y(n938)
         );
  sky130_fd_sc_hd__o22ai_1 U667 ( .A1(n939), .A2(n60), .B1(i_tv80_core_F[1]), 
        .B2(n940), .Y(n937) );
  sky130_fd_sc_hd__nor2_1 U668 ( .A(n902), .B(n627), .Y(n927) );
  sky130_fd_sc_hd__clkinv_1 U669 ( .A(n941), .Y(n917) );
  sky130_fd_sc_hd__mux2_1 U670 ( .A0(n942), .A1(i_tv80_core_F[2]), .S(n943), 
        .X(i_tv80_core_n1098) );
  sky130_fd_sc_hd__a21oi_1 U671 ( .A1(n159), .A2(n944), .B1(n470), .Y(n943) );
  sky130_fd_sc_hd__nand2_1 U672 ( .A(n945), .B(n456), .Y(n944) );
  sky130_fd_sc_hd__o221ai_1 U673 ( .A1(n878), .A2(n946), .B1(n186), .B2(n885), 
        .C1(reset_n), .Y(n942) );
  sky130_fd_sc_hd__mux2i_1 U674 ( .A0(n947), .A1(i_tv80_core_IncDecZ), .S(n446), .Y(n946) );
  sky130_fd_sc_hd__clkinv_1 U675 ( .A(n456), .Y(n446) );
  sky130_fd_sc_hd__nand2_1 U676 ( .A(n439), .B(n586), .Y(n456) );
  sky130_fd_sc_hd__mux2i_1 U677 ( .A0(n948), .A1(n949), .S(n476), .Y(n947) );
  sky130_fd_sc_hd__xor2_1 U678 ( .A(n950), .B(n951), .X(n949) );
  sky130_fd_sc_hd__xor2_1 U679 ( .A(n952), .B(n953), .X(n951) );
  sky130_fd_sc_hd__xor2_1 U680 ( .A(di_reg[1]), .B(di_reg[0]), .X(n953) );
  sky130_fd_sc_hd__xor2_1 U681 ( .A(di_reg[3]), .B(di_reg[2]), .X(n952) );
  sky130_fd_sc_hd__xor2_1 U682 ( .A(n954), .B(n955), .X(n950) );
  sky130_fd_sc_hd__xor2_1 U683 ( .A(di_reg[5]), .B(di_reg[4]), .X(n955) );
  sky130_fd_sc_hd__xor2_1 U684 ( .A(di_reg[7]), .B(di_reg[6]), .X(n954) );
  sky130_fd_sc_hd__mux2i_1 U685 ( .A0(n956), .A1(n957), .S(n478), .Y(n948) );
  sky130_fd_sc_hd__mux2_1 U686 ( .A0(i_tv80_core_IntE_FF2), .A1(
        i_tv80_core_Fp[2]), .S(n945), .X(n957) );
  sky130_fd_sc_hd__o2111ai_1 U687 ( .A1(n958), .A2(n480), .B1(n959), .C1(n960), 
        .D1(n961), .Y(n956) );
  sky130_fd_sc_hd__a222oi_1 U688 ( .A1(i_tv80_core_F[2]), .A2(n486), .B1(n962), 
        .B2(n963), .C1(n920), .C2(n964), .Y(n961) );
  sky130_fd_sc_hd__xor2_1 U689 ( .A(i_tv80_core_i_alu_N238), .B(n965), .X(n964) );
  sky130_fd_sc_hd__xor2_1 U690 ( .A(n966), .B(n967), .X(n965) );
  sky130_fd_sc_hd__xor2_1 U691 ( .A(n968), .B(n969), .X(n967) );
  sky130_fd_sc_hd__xor2_1 U692 ( .A(n970), .B(n889), .X(n969) );
  sky130_fd_sc_hd__mux2i_1 U693 ( .A0(i_tv80_core_i_alu_N246), .A1(
        i_tv80_core_i_alu_N216), .S(n918), .Y(n889) );
  sky130_fd_sc_hd__xnor2_1 U694 ( .A(n971), .B(n972), .Y(n968) );
  sky130_fd_sc_hd__xor2_1 U695 ( .A(n973), .B(n974), .X(n966) );
  sky130_fd_sc_hd__xor2_1 U696 ( .A(n975), .B(n976), .X(n974) );
  sky130_fd_sc_hd__xor2_1 U697 ( .A(n977), .B(n978), .X(n973) );
  sky130_fd_sc_hd__xor2_1 U698 ( .A(n979), .B(n980), .X(n962) );
  sky130_fd_sc_hd__xor2_1 U699 ( .A(n981), .B(n982), .X(n980) );
  sky130_fd_sc_hd__xor2_1 U700 ( .A(n983), .B(n984), .X(n982) );
  sky130_fd_sc_hd__xor2_1 U701 ( .A(n985), .B(n986), .X(n981) );
  sky130_fd_sc_hd__xor2_1 U702 ( .A(n987), .B(n988), .X(n979) );
  sky130_fd_sc_hd__xor2_1 U703 ( .A(i_tv80_core_BusA[7]), .B(
        i_tv80_core_BusA[6]), .X(n988) );
  sky130_fd_sc_hd__xor2_1 U704 ( .A(n989), .B(i_tv80_core_BusA[4]), .X(n987)
         );
  sky130_fd_sc_hd__clkinv_1 U705 ( .A(n990), .Y(n486) );
  sky130_fd_sc_hd__clkinv_1 U706 ( .A(n991), .Y(n960) );
  sky130_fd_sc_hd__nand3_1 U707 ( .A(n483), .B(n484), .C(n992), .Y(n959) );
  sky130_fd_sc_hd__mux2i_1 U708 ( .A0(n993), .A1(n994), .S(n995), .Y(n992) );
  sky130_fd_sc_hd__nor2_1 U709 ( .A(n996), .B(n732), .Y(n995) );
  sky130_fd_sc_hd__xor2_1 U710 ( .A(n997), .B(n998), .X(n994) );
  sky130_fd_sc_hd__xor2_1 U711 ( .A(n999), .B(n1000), .X(n998) );
  sky130_fd_sc_hd__xor2_1 U712 ( .A(n1001), .B(n1002), .X(n1000) );
  sky130_fd_sc_hd__xnor2_1 U713 ( .A(n1003), .B(n1004), .Y(n999) );
  sky130_fd_sc_hd__xor2_1 U714 ( .A(n1005), .B(n1006), .X(n997) );
  sky130_fd_sc_hd__xor2_1 U715 ( .A(n1007), .B(n1008), .X(n1006) );
  sky130_fd_sc_hd__xor2_1 U716 ( .A(n1009), .B(n1010), .X(n1005) );
  sky130_fd_sc_hd__xor2_1 U717 ( .A(n1011), .B(n899), .X(n993) );
  sky130_fd_sc_hd__o22ai_1 U718 ( .A1(n1012), .A2(n1011), .B1(n1013), .B2(
        n1014), .Y(n899) );
  sky130_fd_sc_hd__xor2_1 U719 ( .A(n1015), .B(n1016), .X(n958) );
  sky130_fd_sc_hd__xor2_1 U720 ( .A(n1017), .B(n1018), .X(n1016) );
  sky130_fd_sc_hd__xnor2_1 U721 ( .A(n1019), .B(n1020), .Y(n1018) );
  sky130_fd_sc_hd__xor2_1 U722 ( .A(n1021), .B(n1022), .X(n1017) );
  sky130_fd_sc_hd__xor2_1 U723 ( .A(n1023), .B(n1024), .X(n1015) );
  sky130_fd_sc_hd__xor2_1 U724 ( .A(n487), .B(n1025), .X(n1024) );
  sky130_fd_sc_hd__xnor2_1 U725 ( .A(n1026), .B(n1027), .Y(n1023) );
  sky130_fd_sc_hd__clkinv_1 U726 ( .A(n472), .Y(n878) );
  sky130_fd_sc_hd__mux2i_1 U727 ( .A0(n1028), .A1(n1029), .S(n1030), .Y(
        i_tv80_core_n1097) );
  sky130_fd_sc_hd__clkinv_1 U728 ( .A(i_tv80_core_F[3]), .Y(n1029) );
  sky130_fd_sc_hd__a221oi_1 U729 ( .A1(n1031), .A2(n472), .B1(n473), .B2(n826), 
        .C1(n65), .Y(n1028) );
  sky130_fd_sc_hd__o221ai_1 U730 ( .A1(n1032), .A2(n1033), .B1(n1034), .B2(
        n941), .C1(n1035), .Y(n1031) );
  sky130_fd_sc_hd__a21oi_1 U731 ( .A1(n1036), .A2(n1037), .B1(n1038), .Y(n1035) );
  sky130_fd_sc_hd__mux2i_1 U732 ( .A0(n924), .A1(n1039), .S(i_tv80_core_ACC[3]), .Y(n1038) );
  sky130_fd_sc_hd__clkinv_1 U733 ( .A(i_tv80_core_Fp[3]), .Y(n1034) );
  sky130_fd_sc_hd__a211oi_1 U734 ( .A1(i_tv80_core_F[3]), .A2(n919), .B1(n1040), .C1(n1041), .Y(n1032) );
  sky130_fd_sc_hd__o32ai_1 U735 ( .A1(n1003), .A2(i_tv80_core_ALU_Op_r[3]), 
        .A3(n1042), .B1(n1043), .B2(n1044), .Y(n1040) );
  sky130_fd_sc_hd__mux2i_1 U736 ( .A0(n1045), .A1(n1046), .S(n1030), .Y(
        i_tv80_core_n1096) );
  sky130_fd_sc_hd__a21boi_0 U737 ( .A1(n926), .A2(n159), .B1_N(n905), .Y(n1030) );
  sky130_fd_sc_hd__a21oi_1 U738 ( .A1(n159), .A2(n473), .B1(n65), .Y(n905) );
  sky130_fd_sc_hd__o21ai_0 U739 ( .A1(n1047), .A2(n1048), .B1(n1049), .Y(n926)
         );
  sky130_fd_sc_hd__a211oi_1 U740 ( .A1(n556), .A2(n907), .B1(n901), .C1(n1050), 
        .Y(n1048) );
  sky130_fd_sc_hd__clkinv_1 U741 ( .A(i_tv80_core_F[5]), .Y(n1046) );
  sky130_fd_sc_hd__a221oi_1 U742 ( .A1(n1051), .A2(n472), .B1(n473), .B2(n834), 
        .C1(n65), .Y(n1045) );
  sky130_fd_sc_hd__o221ai_1 U743 ( .A1(n1052), .A2(n1033), .B1(n1053), .B2(
        n941), .C1(n1054), .Y(n1051) );
  sky130_fd_sc_hd__a21oi_1 U744 ( .A1(n1036), .A2(n1055), .B1(n1056), .Y(n1054) );
  sky130_fd_sc_hd__mux2i_1 U745 ( .A0(n924), .A1(n1039), .S(i_tv80_core_ACC[5]), .Y(n1056) );
  sky130_fd_sc_hd__nand2_1 U746 ( .A(n928), .B(n907), .Y(n1039) );
  sky130_fd_sc_hd__clkinv_1 U747 ( .A(n1057), .Y(n907) );
  sky130_fd_sc_hd__nand2_1 U748 ( .A(n1057), .B(n928), .Y(n924) );
  sky130_fd_sc_hd__nor2b_1 U749 ( .B_N(n1049), .A(n901), .Y(n928) );
  sky130_fd_sc_hd__a31oi_1 U750 ( .A1(n338), .A2(n1058), .A3(n626), .B1(n902), 
        .Y(n1057) );
  sky130_fd_sc_hd__nor3_1 U751 ( .A(n426), .B(n581), .C(n372), .Y(n902) );
  sky130_fd_sc_hd__nand2_1 U752 ( .A(n1049), .B(n901), .Y(n941) );
  sky130_fd_sc_hd__nor2_1 U753 ( .A(n908), .B(n1036), .Y(n1049) );
  sky130_fd_sc_hd__clkinv_1 U754 ( .A(i_tv80_core_Fp[5]), .Y(n1053) );
  sky130_fd_sc_hd__clkinv_1 U755 ( .A(n915), .Y(n1033) );
  sky130_fd_sc_hd__nor2_1 U756 ( .A(n1036), .B(n478), .Y(n915) );
  sky130_fd_sc_hd__nor3_1 U757 ( .A(n451), .B(n1059), .C(n1060), .Y(n1036) );
  sky130_fd_sc_hd__a211oi_1 U758 ( .A1(i_tv80_core_F[5]), .A2(n919), .B1(n1061), .C1(n1062), .Y(n1052) );
  sky130_fd_sc_hd__o32ai_1 U759 ( .A1(n1001), .A2(i_tv80_core_ALU_Op_r[3]), 
        .A3(n1042), .B1(n1043), .B2(n1063), .Y(n1061) );
  sky130_fd_sc_hd__o21a_1 U760 ( .A1(n1064), .A2(n893), .B1(n1065), .X(n1043)
         );
  sky130_fd_sc_hd__nor2b_1 U761 ( .B_N(n1066), .A(n346), .Y(n1064) );
  sky130_fd_sc_hd__mux2i_1 U762 ( .A0(n628), .A1(n1067), .S(n470), .Y(
        i_tv80_core_n1095) );
  sky130_fd_sc_hd__o31a_1 U763 ( .A1(n1068), .A2(n65), .A3(n908), .B1(n209), 
        .X(n470) );
  sky130_fd_sc_hd__clkinv_1 U764 ( .A(n478), .Y(n908) );
  sky130_fd_sc_hd__o211ai_1 U765 ( .A1(n1047), .A2(n1069), .B1(n925), .C1(n885), .Y(n1068) );
  sky130_fd_sc_hd__a221oi_1 U766 ( .A1(n1070), .A2(n472), .B1(n473), .B2(n838), 
        .C1(n65), .Y(n1067) );
  sky130_fd_sc_hd__clkinv_1 U767 ( .A(n885), .Y(n473) );
  sky130_fd_sc_hd__nand2_1 U768 ( .A(n205), .B(n841), .Y(n885) );
  sky130_fd_sc_hd__nand3_1 U769 ( .A(n1071), .B(n872), .C(n870), .Y(n472) );
  sky130_fd_sc_hd__nor3b_1 U770 ( .C_N(n1072), .A(n1073), .B(n204), .Y(n870)
         );
  sky130_fd_sc_hd__mux2i_1 U771 ( .A0(n1074), .A1(n1075), .S(n476), .Y(n1070)
         );
  sky130_fd_sc_hd__clkinv_1 U772 ( .A(n925), .Y(n476) );
  sky130_fd_sc_hd__nand4_1 U773 ( .A(n556), .B(n361), .C(n731), .D(n1076), .Y(
        n925) );
  sky130_fd_sc_hd__nand2_1 U774 ( .A(n1077), .B(n1078), .Y(n1075) );
  sky130_fd_sc_hd__nor4_1 U775 ( .A(di_reg[7]), .B(di_reg[6]), .C(di_reg[5]), 
        .D(di_reg[4]), .Y(n1078) );
  sky130_fd_sc_hd__nor4_1 U776 ( .A(di_reg[3]), .B(di_reg[2]), .C(di_reg[1]), 
        .D(di_reg[0]), .Y(n1077) );
  sky130_fd_sc_hd__mux2i_1 U777 ( .A0(n680), .A1(i_tv80_core_Fp[6]), .S(n478), 
        .Y(n1074) );
  sky130_fd_sc_hd__a21oi_1 U778 ( .A1(n678), .A2(i_tv80_core_Save_ALU_r), .B1(
        n1079), .Y(n478) );
  sky130_fd_sc_hd__o2111ai_1 U779 ( .A1(n990), .A2(n628), .B1(n1080), .C1(
        n1081), .D1(n1082), .Y(n680) );
  sky130_fd_sc_hd__a41oi_1 U780 ( .A1(n970), .A2(n972), .A3(n1083), .A4(n1084), 
        .B1(n1085), .Y(n1082) );
  sky130_fd_sc_hd__nor4_1 U781 ( .A(n1086), .B(n1087), .C(i_tv80_core_BusA[4]), 
        .D(n892), .Y(n1085) );
  sky130_fd_sc_hd__nand3_1 U782 ( .A(n1088), .B(n1014), .C(n989), .Y(n1087) );
  sky130_fd_sc_hd__nand4_1 U783 ( .A(n986), .B(n985), .C(n984), .D(n983), .Y(
        n1086) );
  sky130_fd_sc_hd__nor4_1 U784 ( .A(n888), .B(n971), .C(n976), .D(n978), .Y(
        n1084) );
  sky130_fd_sc_hd__nor3b_1 U785 ( .C_N(n975), .A(i_tv80_core_i_alu_N238), .B(
        n977), .Y(n1083) );
  sky130_fd_sc_hd__nand4_1 U786 ( .A(n1019), .B(n1089), .C(n1090), .D(n1091), 
        .Y(n1081) );
  sky130_fd_sc_hd__nor4_1 U787 ( .A(n1027), .B(n1026), .C(n1025), .D(n487), 
        .Y(n1091) );
  sky130_fd_sc_hd__nor3_1 U788 ( .A(n1020), .B(n1092), .C(n480), .Y(n1090) );
  sky130_fd_sc_hd__nand2_1 U789 ( .A(n1093), .B(n372), .Y(n480) );
  sky130_fd_sc_hd__a41oi_1 U790 ( .A1(n1007), .A2(n1008), .A3(n1094), .A4(
        n1095), .B1(n991), .Y(n1080) );
  sky130_fd_sc_hd__a2111oi_0 U791 ( .A1(i_tv80_core_BusB[4]), .A2(n1096), .B1(
        n893), .C1(n1097), .D1(n1098), .Y(n991) );
  sky130_fd_sc_hd__o221ai_1 U792 ( .A1(n1099), .A2(n1100), .B1(n1101), .B2(
        n1102), .C1(n1103), .Y(n1098) );
  sky130_fd_sc_hd__a222oi_1 U793 ( .A1(i_tv80_core_BusB[1]), .A2(n1104), .B1(
        i_tv80_core_BusB[3]), .B2(n1105), .C1(i_tv80_core_BusB[2]), .C2(n1106), 
        .Y(n1103) );
  sky130_fd_sc_hd__o22ai_1 U794 ( .A1(n1107), .A2(n1063), .B1(n1108), .B2(
        n1109), .Y(n1097) );
  sky130_fd_sc_hd__nor4_1 U795 ( .A(n1110), .B(n1111), .C(
        i_tv80_core_ALU_Op_r[3]), .D(n1112), .Y(n1095) );
  sky130_fd_sc_hd__a21oi_1 U796 ( .A1(n666), .A2(n484), .B1(i_tv80_core_F[6]), 
        .Y(n1112) );
  sky130_fd_sc_hd__clkinv_1 U797 ( .A(i_tv80_core_Arith16_r), .Y(n484) );
  sky130_fd_sc_hd__clkinv_1 U798 ( .A(i_tv80_core_Z16_r), .Y(n666) );
  sky130_fd_sc_hd__nand2_1 U799 ( .A(n1004), .B(n1001), .Y(n1110) );
  sky130_fd_sc_hd__and3_1 U800 ( .A(n1113), .B(n1003), .C(n1009), .X(n1094) );
  sky130_fd_sc_hd__a221oi_1 U801 ( .A1(n338), .A2(n1093), .B1(n483), .B2(
        i_tv80_core_Arith16_r), .C1(n919), .Y(n990) );
  sky130_fd_sc_hd__o211ai_1 U802 ( .A1(n1114), .A2(n483), .B1(n1115), .C1(
        n1116), .Y(n919) );
  sky130_fd_sc_hd__clkinv_1 U803 ( .A(i_tv80_core_F[6]), .Y(n628) );
  sky130_fd_sc_hd__o2111ai_1 U804 ( .A1(n1117), .A2(n1118), .B1(reset_n), .C1(
        n1119), .D1(n1120), .Y(i_tv80_core_n1094) );
  sky130_fd_sc_hd__a222oi_1 U805 ( .A1(n1121), .A2(i_tv80_core_I[1]), .B1(
        n1122), .B2(n818), .C1(i_tv80_core_R[1]), .C2(n1123), .Y(n1120) );
  sky130_fd_sc_hd__mux2i_1 U806 ( .A0(n1124), .A1(n1125), .S(
        i_tv80_core_ACC[1]), .Y(n1119) );
  sky130_fd_sc_hd__clkinv_1 U807 ( .A(i_tv80_core_Ap[1]), .Y(n1118) );
  sky130_fd_sc_hd__o2111ai_1 U808 ( .A1(n1117), .A2(n1126), .B1(reset_n), .C1(
        n1127), .D1(n1128), .Y(i_tv80_core_n1093) );
  sky130_fd_sc_hd__a222oi_1 U809 ( .A1(n1121), .A2(i_tv80_core_I[0]), .B1(
        n1122), .B2(n814), .C1(i_tv80_core_R[0]), .C2(n1123), .Y(n1128) );
  sky130_fd_sc_hd__mux2i_1 U810 ( .A0(n1124), .A1(n1125), .S(
        i_tv80_core_ACC[0]), .Y(n1127) );
  sky130_fd_sc_hd__clkinv_1 U811 ( .A(i_tv80_core_Ap[0]), .Y(n1126) );
  sky130_fd_sc_hd__o2111ai_1 U812 ( .A1(n1117), .A2(n1129), .B1(reset_n), .C1(
        n1130), .D1(n1131), .Y(i_tv80_core_n1092) );
  sky130_fd_sc_hd__a222oi_1 U813 ( .A1(n1121), .A2(i_tv80_core_I[2]), .B1(
        n1122), .B2(n822), .C1(i_tv80_core_R[2]), .C2(n1123), .Y(n1131) );
  sky130_fd_sc_hd__mux2i_1 U814 ( .A0(n1124), .A1(n1125), .S(
        i_tv80_core_ACC[2]), .Y(n1130) );
  sky130_fd_sc_hd__clkinv_1 U815 ( .A(i_tv80_core_Ap[2]), .Y(n1129) );
  sky130_fd_sc_hd__o2111ai_1 U816 ( .A1(n1117), .A2(n1132), .B1(reset_n), .C1(
        n1133), .D1(n1134), .Y(i_tv80_core_n1091) );
  sky130_fd_sc_hd__a222oi_1 U817 ( .A1(n1121), .A2(i_tv80_core_I[3]), .B1(
        n1122), .B2(n826), .C1(i_tv80_core_R[3]), .C2(n1123), .Y(n1134) );
  sky130_fd_sc_hd__mux2i_1 U818 ( .A0(n1124), .A1(n1125), .S(
        i_tv80_core_ACC[3]), .Y(n1133) );
  sky130_fd_sc_hd__clkinv_1 U819 ( .A(i_tv80_core_Ap[3]), .Y(n1132) );
  sky130_fd_sc_hd__o2111ai_1 U820 ( .A1(n1117), .A2(n1135), .B1(reset_n), .C1(
        n1136), .D1(n1137), .Y(i_tv80_core_n1090) );
  sky130_fd_sc_hd__a222oi_1 U821 ( .A1(n1121), .A2(i_tv80_core_I[4]), .B1(
        n1122), .B2(n830), .C1(i_tv80_core_R[4]), .C2(n1123), .Y(n1137) );
  sky130_fd_sc_hd__mux2i_1 U822 ( .A0(n1124), .A1(n1125), .S(
        i_tv80_core_ACC[4]), .Y(n1136) );
  sky130_fd_sc_hd__clkinv_1 U823 ( .A(i_tv80_core_Ap[4]), .Y(n1135) );
  sky130_fd_sc_hd__o2111ai_1 U824 ( .A1(n1117), .A2(n1138), .B1(reset_n), .C1(
        n1139), .D1(n1140), .Y(i_tv80_core_n1089) );
  sky130_fd_sc_hd__a222oi_1 U825 ( .A1(n1121), .A2(i_tv80_core_I[5]), .B1(
        n1122), .B2(n834), .C1(i_tv80_core_R[5]), .C2(n1123), .Y(n1140) );
  sky130_fd_sc_hd__mux2i_1 U826 ( .A0(n1124), .A1(n1125), .S(
        i_tv80_core_ACC[5]), .Y(n1139) );
  sky130_fd_sc_hd__clkinv_1 U827 ( .A(i_tv80_core_Ap[5]), .Y(n1138) );
  sky130_fd_sc_hd__o2111ai_1 U828 ( .A1(n1117), .A2(n1141), .B1(reset_n), .C1(
        n1142), .D1(n1143), .Y(i_tv80_core_n1088) );
  sky130_fd_sc_hd__a222oi_1 U829 ( .A1(n1121), .A2(i_tv80_core_I[6]), .B1(
        n1122), .B2(n838), .C1(i_tv80_core_R[6]), .C2(n1123), .Y(n1143) );
  sky130_fd_sc_hd__mux2i_1 U830 ( .A0(n1124), .A1(n1125), .S(
        i_tv80_core_ACC[6]), .Y(n1142) );
  sky130_fd_sc_hd__clkinv_1 U831 ( .A(i_tv80_core_Ap[6]), .Y(n1141) );
  sky130_fd_sc_hd__o2111ai_1 U832 ( .A1(n1117), .A2(n1144), .B1(reset_n), .C1(
        n1145), .D1(n1146), .Y(i_tv80_core_n1087) );
  sky130_fd_sc_hd__a222oi_1 U833 ( .A1(n1121), .A2(i_tv80_core_I[7]), .B1(
        n1122), .B2(n474), .C1(n1123), .C2(i_tv80_core_R[7]), .Y(n1146) );
  sky130_fd_sc_hd__nor2b_1 U834 ( .B_N(n1147), .A(n1148), .Y(n1123) );
  sky130_fd_sc_hd__nor3_1 U835 ( .A(n210), .B(n1125), .C(n1072), .Y(n1122) );
  sky130_fd_sc_hd__nor3b_1 U836 ( .C_N(n1147), .A(n945), .B(n1149), .Y(n1121)
         );
  sky130_fd_sc_hd__mux2i_1 U837 ( .A0(n1124), .A1(n1125), .S(
        i_tv80_core_ACC[7]), .Y(n1145) );
  sky130_fd_sc_hd__and3_1 U838 ( .A(n945), .B(n1069), .C(n1147), .X(n1124) );
  sky130_fd_sc_hd__clkinv_1 U839 ( .A(i_tv80_core_Ap[7]), .Y(n1144) );
  sky130_fd_sc_hd__nand2_1 U840 ( .A(n1147), .B(n901), .Y(n1117) );
  sky130_fd_sc_hd__o31a_1 U841 ( .A1(n1150), .A2(n842), .A3(n204), .B1(n1151), 
        .X(n1147) );
  sky130_fd_sc_hd__clkinv_1 U842 ( .A(n1125), .Y(n1151) );
  sky130_fd_sc_hd__a221oi_1 U843 ( .A1(n1152), .A2(n159), .B1(n656), .B2(n1050), .C1(n165), .Y(n1125) );
  sky130_fd_sc_hd__nor4_1 U844 ( .A(n805), .B(n372), .C(n634), .D(n1153), .Y(
        n1050) );
  sky130_fd_sc_hd__o21ai_0 U845 ( .A1(n1072), .A2(n210), .B1(n945), .Y(n1152)
         );
  sky130_fd_sc_hd__nand2_1 U846 ( .A(n1154), .B(n1155), .Y(n945) );
  sky130_fd_sc_hd__o31ai_1 U847 ( .A1(n206), .A2(n1073), .A3(n205), .B1(n841), 
        .Y(n204) );
  sky130_fd_sc_hd__clkinv_1 U848 ( .A(n210), .Y(n841) );
  sky130_fd_sc_hd__clkinv_1 U849 ( .A(n871), .Y(n205) );
  sky130_fd_sc_hd__clkinv_1 U850 ( .A(n211), .Y(n1073) );
  sky130_fd_sc_hd__nand3_1 U851 ( .A(n872), .B(n1072), .C(n1071), .Y(n206) );
  sky130_fd_sc_hd__nand3_1 U852 ( .A(n1156), .B(n782), .C(
        i_tv80_core_Read_To_Reg_r[0]), .Y(n1072) );
  sky130_fd_sc_hd__clkinv_1 U853 ( .A(n1071), .Y(n842) );
  sky130_fd_sc_hd__nand4_1 U854 ( .A(i_tv80_core_Read_To_Reg_r[3]), .B(n776), 
        .C(n778), .D(n779), .Y(n1071) );
  sky130_fd_sc_hd__nand3_1 U855 ( .A(n871), .B(n211), .C(n872), .Y(n1150) );
  sky130_fd_sc_hd__nand2_1 U856 ( .A(n1157), .B(n778), .Y(n872) );
  sky130_fd_sc_hd__nand3_1 U857 ( .A(n776), .B(n782), .C(n1156), .Y(n211) );
  sky130_fd_sc_hd__nand2_1 U858 ( .A(n1157), .B(i_tv80_core_Read_To_Reg_r[1]), 
        .Y(n871) );
  sky130_fd_sc_hd__nor3_1 U859 ( .A(n776), .B(i_tv80_core_Read_To_Reg_r[2]), 
        .C(n782), .Y(n1157) );
  sky130_fd_sc_hd__clkinv_1 U860 ( .A(i_tv80_core_Read_To_Reg_r[3]), .Y(n782)
         );
  sky130_fd_sc_hd__o21ai_0 U861 ( .A1(n1158), .A2(n1159), .B1(n1160), .Y(
        i_tv80_core_n1086) );
  sky130_fd_sc_hd__mux2_1 U862 ( .A0(n1161), .A1(n1162), .S(i_tv80_core_R[0]), 
        .X(n1160) );
  sky130_fd_sc_hd__o221ai_1 U863 ( .A1(n1163), .A2(n1159), .B1(n1164), .B2(
        n1162), .C1(n1165), .Y(i_tv80_core_n1085) );
  sky130_fd_sc_hd__nand2_1 U864 ( .A(i_tv80_core_N154), .B(n1166), .Y(n1165)
         );
  sky130_fd_sc_hd__clkinv_1 U865 ( .A(i_tv80_core_R[1]), .Y(n1164) );
  sky130_fd_sc_hd__o221ai_1 U866 ( .A1(n1167), .A2(n1159), .B1(n1168), .B2(
        n1162), .C1(n1169), .Y(i_tv80_core_n1084) );
  sky130_fd_sc_hd__nand2_1 U867 ( .A(i_tv80_core_N155), .B(n1166), .Y(n1169)
         );
  sky130_fd_sc_hd__clkinv_1 U868 ( .A(i_tv80_core_R[2]), .Y(n1168) );
  sky130_fd_sc_hd__o221ai_1 U869 ( .A1(n1170), .A2(n1159), .B1(n1171), .B2(
        n1162), .C1(n1172), .Y(i_tv80_core_n1083) );
  sky130_fd_sc_hd__nand2_1 U870 ( .A(i_tv80_core_N156), .B(n1166), .Y(n1172)
         );
  sky130_fd_sc_hd__o221ai_1 U871 ( .A1(n1173), .A2(n1159), .B1(n1174), .B2(
        n1162), .C1(n1175), .Y(i_tv80_core_n1082) );
  sky130_fd_sc_hd__nand2_1 U872 ( .A(i_tv80_core_N157), .B(n1166), .Y(n1175)
         );
  sky130_fd_sc_hd__o221ai_1 U873 ( .A1(n1176), .A2(n1159), .B1(n1177), .B2(
        n1162), .C1(n1178), .Y(i_tv80_core_n1081) );
  sky130_fd_sc_hd__nand2_1 U874 ( .A(i_tv80_core_N158), .B(n1166), .Y(n1178)
         );
  sky130_fd_sc_hd__clkinv_1 U875 ( .A(n1161), .Y(n1166) );
  sky130_fd_sc_hd__clkinv_1 U876 ( .A(i_tv80_core_R[5]), .Y(n1177) );
  sky130_fd_sc_hd__o21ai_0 U877 ( .A1(n1179), .A2(n1159), .B1(n1180), .Y(
        i_tv80_core_n1080) );
  sky130_fd_sc_hd__mux2i_1 U878 ( .A0(n1181), .A1(n1182), .S(i_tv80_core_R[6]), 
        .Y(n1180) );
  sky130_fd_sc_hd__o21ai_0 U879 ( .A1(i_tv80_core_add_380_carry[6]), .A2(n1161), .B1(n1162), .Y(n1182) );
  sky130_fd_sc_hd__nor2b_1 U880 ( .B_N(i_tv80_core_add_380_carry[6]), .A(n1161), .Y(n1181) );
  sky130_fd_sc_hd__nand3_1 U881 ( .A(n1162), .B(n1183), .C(n159), .Y(n1161) );
  sky130_fd_sc_hd__nand3_1 U882 ( .A(n159), .B(n1162), .C(n1154), .Y(n1159) );
  sky130_fd_sc_hd__clkinv_1 U883 ( .A(n1183), .Y(n1154) );
  sky130_fd_sc_hd__nand2_1 U884 ( .A(n663), .B(n1184), .Y(n1162) );
  sky130_fd_sc_hd__mux2i_1 U885 ( .A0(n1185), .A1(n95), .S(n1184), .Y(
        i_tv80_core_n1079) );
  sky130_fd_sc_hd__o21ai_0 U886 ( .A1(n1186), .A2(n65), .B1(n209), .Y(n1184)
         );
  sky130_fd_sc_hd__nand2_1 U887 ( .A(reset_n), .B(n490), .Y(n209) );
  sky130_fd_sc_hd__nor3_1 U888 ( .A(n1155), .B(n1183), .C(n1148), .Y(n1186) );
  sky130_fd_sc_hd__clkinv_1 U889 ( .A(i_tv80_core_R[7]), .Y(n95) );
  sky130_fd_sc_hd__nand2_1 U890 ( .A(i_tv80_core_ACC[7]), .B(n159), .Y(n1185)
         );
  sky130_fd_sc_hd__nand2_1 U891 ( .A(n1187), .B(reset_n), .Y(i_tv80_core_n1078) );
  sky130_fd_sc_hd__mux2i_1 U892 ( .A0(i_tv80_core_Ap[0]), .A1(
        i_tv80_core_ACC[0]), .S(n165), .Y(n1187) );
  sky130_fd_sc_hd__nand2_1 U893 ( .A(n1188), .B(reset_n), .Y(i_tv80_core_n1077) );
  sky130_fd_sc_hd__mux2i_1 U894 ( .A0(i_tv80_core_Ap[1]), .A1(
        i_tv80_core_ACC[1]), .S(n165), .Y(n1188) );
  sky130_fd_sc_hd__nand2_1 U895 ( .A(n1189), .B(reset_n), .Y(i_tv80_core_n1076) );
  sky130_fd_sc_hd__mux2i_1 U896 ( .A0(i_tv80_core_Ap[2]), .A1(
        i_tv80_core_ACC[2]), .S(n165), .Y(n1189) );
  sky130_fd_sc_hd__nand2_1 U897 ( .A(n1190), .B(reset_n), .Y(i_tv80_core_n1075) );
  sky130_fd_sc_hd__mux2i_1 U898 ( .A0(i_tv80_core_Ap[3]), .A1(
        i_tv80_core_ACC[3]), .S(n165), .Y(n1190) );
  sky130_fd_sc_hd__nand2_1 U899 ( .A(n1191), .B(reset_n), .Y(i_tv80_core_n1074) );
  sky130_fd_sc_hd__mux2i_1 U900 ( .A0(i_tv80_core_Ap[4]), .A1(
        i_tv80_core_ACC[4]), .S(n165), .Y(n1191) );
  sky130_fd_sc_hd__nand2_1 U901 ( .A(n1192), .B(reset_n), .Y(i_tv80_core_n1073) );
  sky130_fd_sc_hd__mux2i_1 U902 ( .A0(i_tv80_core_Ap[5]), .A1(
        i_tv80_core_ACC[5]), .S(n165), .Y(n1192) );
  sky130_fd_sc_hd__nand2_1 U903 ( .A(n1193), .B(reset_n), .Y(i_tv80_core_n1072) );
  sky130_fd_sc_hd__mux2i_1 U904 ( .A0(i_tv80_core_Ap[6]), .A1(
        i_tv80_core_ACC[6]), .S(n165), .Y(n1193) );
  sky130_fd_sc_hd__nand2_1 U905 ( .A(n1194), .B(reset_n), .Y(i_tv80_core_n1071) );
  sky130_fd_sc_hd__mux2i_1 U906 ( .A0(i_tv80_core_Ap[7]), .A1(
        i_tv80_core_ACC[7]), .S(n165), .Y(n1194) );
  sky130_fd_sc_hd__clkinv_1 U907 ( .A(n904), .Y(n165) );
  sky130_fd_sc_hd__nand2_1 U908 ( .A(n901), .B(n656), .Y(n904) );
  sky130_fd_sc_hd__clkinv_1 U909 ( .A(n1069), .Y(n901) );
  sky130_fd_sc_hd__nand2_1 U910 ( .A(n1195), .B(n338), .Y(n1069) );
  sky130_fd_sc_hd__o221ai_1 U911 ( .A1(n1196), .A2(n1197), .B1(n688), .B2(
        n1198), .C1(n1199), .Y(i_tv80_core_n1070) );
  sky130_fd_sc_hd__mux2i_1 U912 ( .A0(i_tv80_core_i_alu_N238), .A1(n1200), .S(
        n1201), .Y(n1199) );
  sky130_fd_sc_hd__o221ai_1 U913 ( .A1(n297), .A2(n1202), .B1(n289), .B2(n1203), .C1(n1204), .Y(n1200) );
  sky130_fd_sc_hd__a22oi_1 U914 ( .A1(n1205), .A2(i_tv80_core_ACC[0]), .B1(
        n1206), .B2(di_reg[0]), .Y(n1204) );
  sky130_fd_sc_hd__o221ai_1 U915 ( .A1(n1207), .A2(n1197), .B1(n1208), .B2(
        n1198), .C1(n1209), .Y(i_tv80_core_n1069) );
  sky130_fd_sc_hd__mux2i_1 U916 ( .A0(i_tv80_core_BusA[1]), .A1(n1210), .S(
        n1201), .Y(n1209) );
  sky130_fd_sc_hd__o221ai_1 U917 ( .A1(n815), .A2(n1202), .B1(n855), .B2(n1203), .C1(n1211), .Y(n1210) );
  sky130_fd_sc_hd__a22oi_1 U918 ( .A1(n1205), .A2(i_tv80_core_ACC[1]), .B1(
        n1206), .B2(di_reg[1]), .Y(n1211) );
  sky130_fd_sc_hd__o221ai_1 U919 ( .A1(n1212), .A2(n1197), .B1(n1213), .B2(
        n1198), .C1(n1214), .Y(i_tv80_core_n1068) );
  sky130_fd_sc_hd__mux2i_1 U920 ( .A0(i_tv80_core_BusA[2]), .A1(n1215), .S(
        n1201), .Y(n1214) );
  sky130_fd_sc_hd__o221ai_1 U921 ( .A1(n819), .A2(n1202), .B1(n857), .B2(n1203), .C1(n1216), .Y(n1215) );
  sky130_fd_sc_hd__a22oi_1 U922 ( .A1(n1205), .A2(i_tv80_core_ACC[2]), .B1(
        n1206), .B2(di_reg[2]), .Y(n1216) );
  sky130_fd_sc_hd__o221ai_1 U923 ( .A1(n1217), .A2(n1197), .B1(n1218), .B2(
        n1198), .C1(n1219), .Y(i_tv80_core_n1067) );
  sky130_fd_sc_hd__mux2i_1 U924 ( .A0(i_tv80_core_BusA[3]), .A1(n1220), .S(
        n1201), .Y(n1219) );
  sky130_fd_sc_hd__o221ai_1 U925 ( .A1(n823), .A2(n1202), .B1(n859), .B2(n1203), .C1(n1221), .Y(n1220) );
  sky130_fd_sc_hd__a22oi_1 U926 ( .A1(n1205), .A2(i_tv80_core_ACC[3]), .B1(
        n1206), .B2(di_reg[3]), .Y(n1221) );
  sky130_fd_sc_hd__o221ai_1 U927 ( .A1(n1222), .A2(n1197), .B1(n1223), .B2(
        n1198), .C1(n1224), .Y(i_tv80_core_n1066) );
  sky130_fd_sc_hd__mux2i_1 U928 ( .A0(i_tv80_core_BusA[4]), .A1(n1225), .S(
        n1201), .Y(n1224) );
  sky130_fd_sc_hd__o221ai_1 U929 ( .A1(n827), .A2(n1202), .B1(n861), .B2(n1203), .C1(n1226), .Y(n1225) );
  sky130_fd_sc_hd__a22oi_1 U930 ( .A1(n1205), .A2(i_tv80_core_ACC[4]), .B1(
        n1206), .B2(di_reg[4]), .Y(n1226) );
  sky130_fd_sc_hd__o221ai_1 U931 ( .A1(n1227), .A2(n1197), .B1(n1228), .B2(
        n1198), .C1(n1229), .Y(i_tv80_core_n1065) );
  sky130_fd_sc_hd__mux2i_1 U932 ( .A0(i_tv80_core_BusA[5]), .A1(n1230), .S(
        n1201), .Y(n1229) );
  sky130_fd_sc_hd__o221ai_1 U933 ( .A1(n831), .A2(n1202), .B1(n863), .B2(n1203), .C1(n1231), .Y(n1230) );
  sky130_fd_sc_hd__a22oi_1 U934 ( .A1(n1205), .A2(i_tv80_core_ACC[5]), .B1(
        n1206), .B2(di_reg[5]), .Y(n1231) );
  sky130_fd_sc_hd__o221ai_1 U935 ( .A1(n1232), .A2(n1197), .B1(n1233), .B2(
        n1198), .C1(n1234), .Y(i_tv80_core_n1064) );
  sky130_fd_sc_hd__mux2i_1 U936 ( .A0(i_tv80_core_BusA[6]), .A1(n1235), .S(
        n1201), .Y(n1234) );
  sky130_fd_sc_hd__o221ai_1 U937 ( .A1(n835), .A2(n1202), .B1(n865), .B2(n1203), .C1(n1236), .Y(n1235) );
  sky130_fd_sc_hd__a22oi_1 U938 ( .A1(n1205), .A2(i_tv80_core_ACC[6]), .B1(
        n1206), .B2(di_reg[6]), .Y(n1236) );
  sky130_fd_sc_hd__o221ai_1 U939 ( .A1(n1237), .A2(n1197), .B1(n1238), .B2(
        n1198), .C1(n1239), .Y(i_tv80_core_n1063) );
  sky130_fd_sc_hd__mux2i_1 U940 ( .A0(i_tv80_core_BusA[7]), .A1(n1240), .S(
        n1201), .Y(n1239) );
  sky130_fd_sc_hd__o221ai_1 U941 ( .A1(n839), .A2(n1202), .B1(n867), .B2(n1203), .C1(n1241), .Y(n1240) );
  sky130_fd_sc_hd__a22oi_1 U942 ( .A1(n1205), .A2(i_tv80_core_ACC[7]), .B1(
        n1206), .B2(di_reg[7]), .Y(n1241) );
  sky130_fd_sc_hd__nor2_1 U943 ( .A(n1242), .B(n1243), .Y(n1206) );
  sky130_fd_sc_hd__nor2_1 U944 ( .A(n1242), .B(n775), .Y(n1205) );
  sky130_fd_sc_hd__nand3_1 U945 ( .A(n264), .B(n1244), .C(n775), .Y(n1202) );
  sky130_fd_sc_hd__nand4_1 U946 ( .A(n781), .B(n1201), .C(n1242), .D(n1243), 
        .Y(n1198) );
  sky130_fd_sc_hd__nand4_1 U947 ( .A(n775), .B(n781), .C(n1201), .D(n1242), 
        .Y(n1197) );
  sky130_fd_sc_hd__nand2_1 U948 ( .A(n260), .B(n265), .Y(n1242) );
  sky130_fd_sc_hd__o2111ai_1 U949 ( .A1(n1245), .A2(n343), .B1(n1246), .C1(
        n1247), .D1(n1248), .Y(n265) );
  sky130_fd_sc_hd__a221oi_1 U950 ( .A1(n439), .A2(n587), .B1(n584), .B2(
        i_tv80_core_IR[2]), .C1(n795), .Y(n1248) );
  sky130_fd_sc_hd__o21ai_0 U951 ( .A1(n1249), .A2(n372), .B1(n690), .Y(n795)
         );
  sky130_fd_sc_hd__a21boi_0 U952 ( .A1(n430), .A2(n730), .B1_N(n1250), .Y(
        n1249) );
  sky130_fd_sc_hd__a22oi_1 U953 ( .A1(n363), .A2(n1251), .B1(n338), .B2(n803), 
        .Y(n1247) );
  sky130_fd_sc_hd__o32ai_1 U954 ( .A1(n786), .A2(n1252), .A3(n634), .B1(n1253), 
        .B2(n410), .Y(n803) );
  sky130_fd_sc_hd__nor2_1 U955 ( .A(n424), .B(n358), .Y(n1253) );
  sky130_fd_sc_hd__clkinv_1 U956 ( .A(n1254), .Y(n1252) );
  sky130_fd_sc_hd__nor2_1 U957 ( .A(n343), .B(n397), .Y(n363) );
  sky130_fd_sc_hd__a21oi_1 U958 ( .A1(n622), .A2(n442), .B1(n1255), .Y(n1245)
         );
  sky130_fd_sc_hd__o21a_1 U959 ( .A1(n264), .A2(n1203), .B1(busak_n), .X(n1201) );
  sky130_fd_sc_hd__nand2_1 U960 ( .A(n1243), .B(n1244), .Y(n1203) );
  sky130_fd_sc_hd__clkinv_1 U961 ( .A(n781), .Y(n1244) );
  sky130_fd_sc_hd__clkinv_1 U962 ( .A(n260), .Y(n264) );
  sky130_fd_sc_hd__o221ai_1 U963 ( .A1(n1256), .A2(n395), .B1(n1250), .B2(n372), .C1(n1257), .Y(n260) );
  sky130_fd_sc_hd__o22a_1 U964 ( .A1(n402), .A2(n384), .B1(n370), .B2(n344), 
        .X(n1257) );
  sky130_fd_sc_hd__o221a_1 U965 ( .A1(n741), .A2(n419), .B1(n1258), .B2(n421), 
        .C1(n1259), .X(n344) );
  sky130_fd_sc_hd__nor2_1 U966 ( .A(n431), .B(n1260), .Y(n1250) );
  sky130_fd_sc_hd__a211oi_1 U967 ( .A1(n792), .A2(n379), .B1(n1255), .C1(n1261), .Y(n1256) );
  sky130_fd_sc_hd__clkinv_1 U968 ( .A(n801), .Y(n1261) );
  sky130_fd_sc_hd__nand3_1 U969 ( .A(n338), .B(n393), .C(n622), .Y(n801) );
  sky130_fd_sc_hd__a21oi_1 U970 ( .A1(n1251), .A2(n397), .B1(n408), .Y(n781)
         );
  sky130_fd_sc_hd__nor2_1 U971 ( .A(n1259), .B(n370), .Y(n408) );
  sky130_fd_sc_hd__o21bai_1 U972 ( .A1(n382), .A2(n1262), .B1_N(n792), .Y(
        n1251) );
  sky130_fd_sc_hd__a32o_1 U973 ( .A1(n1263), .A2(n1254), .A3(
        i_tv80_core_ISet[1]), .B1(n338), .B2(n1264), .X(n792) );
  sky130_fd_sc_hd__clkinv_1 U974 ( .A(n1243), .Y(n775) );
  sky130_fd_sc_hd__o2111ai_1 U975 ( .A1(n401), .A2(n402), .B1(n772), .C1(n1265), .D1(n1266), .Y(n1243) );
  sky130_fd_sc_hd__a221oi_1 U976 ( .A1(n1267), .A2(n1263), .B1(n365), .B2(
        n1268), .C1(n1269), .Y(n1266) );
  sky130_fd_sc_hd__o311ai_0 U977 ( .A1(n786), .A2(n634), .A3(n790), .B1(n1246), 
        .C1(n1270), .Y(n1269) );
  sky130_fd_sc_hd__a211o_1 U978 ( .A1(n1271), .A2(n1262), .B1(n379), .C1(n1272), .X(n1270) );
  sky130_fd_sc_hd__o2111ai_1 U979 ( .A1(n397), .A2(n1271), .B1(n1273), .C1(
        n410), .D1(n1262), .Y(n1268) );
  sky130_fd_sc_hd__clkinv_1 U980 ( .A(n382), .Y(n365) );
  sky130_fd_sc_hd__mux2i_1 U981 ( .A0(n499), .A1(n1274), .S(n397), .Y(n1267)
         );
  sky130_fd_sc_hd__a222oi_1 U982 ( .A1(n407), .A2(n361), .B1(i_tv80_core_IR[3]), .B2(n1255), .C1(n338), .C2(n431), .Y(n1265) );
  sky130_fd_sc_hd__nand2_1 U983 ( .A(n1275), .B(n1276), .Y(n431) );
  sky130_fd_sc_hd__o21ai_0 U984 ( .A1(n1277), .A2(n762), .B1(n424), .Y(n1275)
         );
  sky130_fd_sc_hd__o22ai_1 U985 ( .A1(n370), .A2(n800), .B1(n1278), .B2(n372), 
        .Y(n1255) );
  sky130_fd_sc_hd__nor2_1 U986 ( .A(n798), .B(n802), .Y(n1278) );
  sky130_fd_sc_hd__o21ai_0 U987 ( .A1(n1279), .A2(n421), .B1(n432), .Y(n802)
         );
  sky130_fd_sc_hd__nor3_1 U988 ( .A(n1280), .B(n1281), .C(n1282), .Y(n1279) );
  sky130_fd_sc_hd__o21bai_1 U989 ( .A1(n755), .A2(n421), .B1_N(n638), .Y(n798)
         );
  sky130_fd_sc_hd__nand4_1 U990 ( .A(n424), .B(n1108), .C(n731), .D(n1076), 
        .Y(n800) );
  sky130_fd_sc_hd__clkinv_1 U991 ( .A(n765), .Y(n407) );
  sky130_fd_sc_hd__a22oi_1 U992 ( .A1(n587), .A2(n439), .B1(n1260), .B2(n338), 
        .Y(n772) );
  sky130_fd_sc_hd__o22ai_1 U993 ( .A1(n1283), .A2(n1284), .B1(n1158), .B2(
        n1285), .Y(i_tv80_core_n1062) );
  sky130_fd_sc_hd__clkinv_1 U994 ( .A(i_tv80_core_ACC[0]), .Y(n1158) );
  sky130_fd_sc_hd__o22ai_1 U995 ( .A1(n1286), .A2(n1284), .B1(n1163), .B2(
        n1285), .Y(i_tv80_core_n1061) );
  sky130_fd_sc_hd__clkinv_1 U996 ( .A(i_tv80_core_ACC[1]), .Y(n1163) );
  sky130_fd_sc_hd__o22ai_1 U997 ( .A1(n1287), .A2(n1284), .B1(n1167), .B2(
        n1285), .Y(i_tv80_core_n1060) );
  sky130_fd_sc_hd__clkinv_1 U998 ( .A(i_tv80_core_ACC[2]), .Y(n1167) );
  sky130_fd_sc_hd__o22ai_1 U999 ( .A1(n1288), .A2(n1284), .B1(n1170), .B2(
        n1285), .Y(i_tv80_core_n1059) );
  sky130_fd_sc_hd__clkinv_1 U1000 ( .A(i_tv80_core_ACC[3]), .Y(n1170) );
  sky130_fd_sc_hd__o22ai_1 U1001 ( .A1(n1289), .A2(n1284), .B1(n1173), .B2(
        n1285), .Y(i_tv80_core_n1058) );
  sky130_fd_sc_hd__clkinv_1 U1002 ( .A(i_tv80_core_ACC[4]), .Y(n1173) );
  sky130_fd_sc_hd__o22ai_1 U1003 ( .A1(n1290), .A2(n1284), .B1(n1176), .B2(
        n1285), .Y(i_tv80_core_n1057) );
  sky130_fd_sc_hd__clkinv_1 U1004 ( .A(i_tv80_core_ACC[5]), .Y(n1176) );
  sky130_fd_sc_hd__o22ai_1 U1005 ( .A1(n1291), .A2(n1284), .B1(n1179), .B2(
        n1285), .Y(i_tv80_core_n1056) );
  sky130_fd_sc_hd__clkinv_1 U1006 ( .A(i_tv80_core_ACC[6]), .Y(n1179) );
  sky130_fd_sc_hd__o22ai_1 U1007 ( .A1(n459), .A2(n1284), .B1(n153), .B2(n1285), .Y(i_tv80_core_n1055) );
  sky130_fd_sc_hd__nand2_1 U1008 ( .A(n159), .B(n1284), .Y(n1285) );
  sky130_fd_sc_hd__clkinv_1 U1009 ( .A(i_tv80_core_ACC[7]), .Y(n153) );
  sky130_fd_sc_hd__o41ai_1 U1010 ( .A1(n1149), .A2(n490), .A3(n1183), .A4(
        n1155), .B1(reset_n), .Y(n1284) );
  sky130_fd_sc_hd__nand2_1 U1011 ( .A(n1292), .B(n1293), .Y(n1183) );
  sky130_fd_sc_hd__o21ai_0 U1012 ( .A1(n577), .A2(n1294), .B1(n1155), .Y(n1293) );
  sky130_fd_sc_hd__or3_1 U1013 ( .A(n1295), .B(n1296), .C(n1294), .X(n1155) );
  sky130_fd_sc_hd__nand2_1 U1014 ( .A(i_tv80_core_ISet[1]), .B(n1297), .Y(
        n1294) );
  sky130_fd_sc_hd__clkinv_1 U1015 ( .A(n1148), .Y(n1149) );
  sky130_fd_sc_hd__nand2_1 U1016 ( .A(n1058), .B(n1298), .Y(n1148) );
  sky130_fd_sc_hd__clkinv_1 U1017 ( .A(i_tv80_core_I[7]), .Y(n459) );
  sky130_fd_sc_hd__mux2i_1 U1018 ( .A0(n1299), .A1(n1300), .S(n547), .Y(
        i_tv80_core_n1054) );
  sky130_fd_sc_hd__nor2b_1 U1019 ( .B_N(n523), .A(n65), .Y(n547) );
  sky130_fd_sc_hd__nand2_1 U1020 ( .A(n1301), .B(n641), .Y(n523) );
  sky130_fd_sc_hd__nand4_1 U1021 ( .A(i_tv80_core_NMI_s), .B(reset_n), .C(n660), .D(n662), .Y(n1299) );
  sky130_fd_sc_hd__o41ai_1 U1022 ( .A1(n528), .A2(n372), .A3(n805), .A4(n579), 
        .B1(n1302), .Y(i_tv80_core_n1053) );
  sky130_fd_sc_hd__nand3_1 U1023 ( .A(reset_n), .B(i_tv80_core_Halt_FF), .C(
        n564), .Y(n1302) );
  sky130_fd_sc_hd__clkinv_1 U1024 ( .A(n567), .Y(n528) );
  sky130_fd_sc_hd__o21ai_0 U1025 ( .A1(i_tv80_core_BusReq_s), .A2(n65), .B1(
        n490), .Y(n567) );
  sky130_fd_sc_hd__o221ai_1 U1026 ( .A1(n69), .A2(n1303), .B1(n401), .B2(n1304), .C1(n1305), .Y(i_tv80_core_n1052) );
  sky130_fd_sc_hd__clkinv_1 U1027 ( .A(di[0]), .Y(n69) );
  sky130_fd_sc_hd__o221ai_1 U1028 ( .A1(n71), .A2(n1303), .B1(n384), .B2(n1304), .C1(n1305), .Y(i_tv80_core_n1051) );
  sky130_fd_sc_hd__clkinv_1 U1029 ( .A(di[1]), .Y(n71) );
  sky130_fd_sc_hd__o221ai_1 U1030 ( .A1(n73), .A2(n1303), .B1(n346), .B2(n1304), .C1(n1305), .Y(i_tv80_core_n1050) );
  sky130_fd_sc_hd__clkinv_1 U1031 ( .A(di[2]), .Y(n73) );
  sky130_fd_sc_hd__o221ai_1 U1032 ( .A1(n75), .A2(n1303), .B1(n697), .B2(n1304), .C1(n1305), .Y(i_tv80_core_n1049) );
  sky130_fd_sc_hd__clkinv_1 U1033 ( .A(di[3]), .Y(n75) );
  sky130_fd_sc_hd__o221ai_1 U1034 ( .A1(n77), .A2(n1303), .B1(n395), .B2(n1304), .C1(n1305), .Y(i_tv80_core_n1048) );
  sky130_fd_sc_hd__clkinv_1 U1035 ( .A(di[4]), .Y(n77) );
  sky130_fd_sc_hd__o221ai_1 U1036 ( .A1(n79), .A2(n1303), .B1(n343), .B2(n1304), .C1(n1305), .Y(i_tv80_core_n1047) );
  sky130_fd_sc_hd__clkinv_1 U1037 ( .A(di[5]), .Y(n79) );
  sky130_fd_sc_hd__o221ai_1 U1038 ( .A1(n1306), .A2(n1307), .B1(n1308), .B2(
        n1309), .C1(n1310), .Y(i_tv80_core_n1046) );
  sky130_fd_sc_hd__nand2_1 U1039 ( .A(n1311), .B(di_reg[0]), .Y(n1310) );
  sky130_fd_sc_hd__clkinv_1 U1040 ( .A(i_tv80_core_SP16[0]), .Y(n1308) );
  sky130_fd_sc_hd__o221ai_1 U1041 ( .A1(n1306), .A2(n1312), .B1(n1313), .B2(
        n1309), .C1(n1314), .Y(i_tv80_core_n1045) );
  sky130_fd_sc_hd__nand2_1 U1042 ( .A(n1311), .B(di_reg[1]), .Y(n1314) );
  sky130_fd_sc_hd__clkinv_1 U1043 ( .A(i_tv80_core_SP16[1]), .Y(n1313) );
  sky130_fd_sc_hd__o221ai_1 U1044 ( .A1(n1306), .A2(n1315), .B1(n1316), .B2(
        n1309), .C1(n1317), .Y(i_tv80_core_n1044) );
  sky130_fd_sc_hd__nand2_1 U1045 ( .A(n1311), .B(di_reg[2]), .Y(n1317) );
  sky130_fd_sc_hd__clkinv_1 U1046 ( .A(i_tv80_core_SP16[2]), .Y(n1316) );
  sky130_fd_sc_hd__o221ai_1 U1047 ( .A1(n697), .A2(n1318), .B1(n1306), .B2(
        n1319), .C1(n1320), .Y(i_tv80_core_n1043) );
  sky130_fd_sc_hd__a22oi_1 U1048 ( .A1(n1311), .A2(di_reg[3]), .B1(n1321), 
        .B2(i_tv80_core_SP16[3]), .Y(n1320) );
  sky130_fd_sc_hd__o221ai_1 U1049 ( .A1(n395), .A2(n1318), .B1(n1306), .B2(
        n1322), .C1(n1323), .Y(i_tv80_core_n1042) );
  sky130_fd_sc_hd__a22oi_1 U1050 ( .A1(n1311), .A2(di_reg[4]), .B1(n1321), 
        .B2(i_tv80_core_SP16[4]), .Y(n1323) );
  sky130_fd_sc_hd__o221ai_1 U1051 ( .A1(n343), .A2(n1318), .B1(n1306), .B2(
        n1324), .C1(n1325), .Y(i_tv80_core_n1041) );
  sky130_fd_sc_hd__a22oi_1 U1052 ( .A1(n1311), .A2(di_reg[5]), .B1(n1321), 
        .B2(i_tv80_core_SP16[5]), .Y(n1325) );
  sky130_fd_sc_hd__clkinv_1 U1053 ( .A(n1309), .Y(n1321) );
  sky130_fd_sc_hd__nand4_1 U1054 ( .A(n159), .B(n1306), .C(n1326), .D(n1327), 
        .Y(n1318) );
  sky130_fd_sc_hd__o221ai_1 U1055 ( .A1(n1306), .A2(n1328), .B1(n1329), .B2(
        n1309), .C1(n1330), .Y(i_tv80_core_n1040) );
  sky130_fd_sc_hd__nand2_1 U1056 ( .A(n1311), .B(di_reg[6]), .Y(n1330) );
  sky130_fd_sc_hd__clkinv_1 U1057 ( .A(i_tv80_core_SP16[6]), .Y(n1329) );
  sky130_fd_sc_hd__o221ai_1 U1058 ( .A1(n1331), .A2(n1306), .B1(n1332), .B2(
        n1309), .C1(n1333), .Y(i_tv80_core_n1039) );
  sky130_fd_sc_hd__nand2_1 U1059 ( .A(n1311), .B(di_reg[7]), .Y(n1333) );
  sky130_fd_sc_hd__clkinv_1 U1060 ( .A(i_tv80_core_SP16[7]), .Y(n1332) );
  sky130_fd_sc_hd__nand2b_1 U1061 ( .A_N(n1311), .B(n1334), .Y(n1306) );
  sky130_fd_sc_hd__nor2_1 U1062 ( .A(n1326), .B(n490), .Y(n1311) );
  sky130_fd_sc_hd__nand2_1 U1063 ( .A(n1292), .B(n1335), .Y(n1326) );
  sky130_fd_sc_hd__o221ai_1 U1064 ( .A1(n1336), .A2(n382), .B1(n1337), .B2(
        n1338), .C1(n1339), .Y(n1335) );
  sky130_fd_sc_hd__a31oi_1 U1065 ( .A1(n498), .A2(n338), .A3(n436), .B1(n1340), 
        .Y(n1339) );
  sky130_fd_sc_hd__clkinv_1 U1066 ( .A(n1341), .Y(n498) );
  sky130_fd_sc_hd__nor3_1 U1067 ( .A(n1342), .B(n1343), .C(n1344), .Y(n1336)
         );
  sky130_fd_sc_hd__o221ai_1 U1068 ( .A1(n1345), .A2(n1309), .B1(n1346), .B2(
        n1347), .C1(n1348), .Y(i_tv80_core_n1038) );
  sky130_fd_sc_hd__nand2_1 U1069 ( .A(n1349), .B(di_reg[0]), .Y(n1348) );
  sky130_fd_sc_hd__clkinv_1 U1070 ( .A(i_tv80_core_TmpAddr[8]), .Y(n1346) );
  sky130_fd_sc_hd__clkinv_1 U1071 ( .A(i_tv80_core_SP16[8]), .Y(n1345) );
  sky130_fd_sc_hd__o221ai_1 U1072 ( .A1(n1350), .A2(n1309), .B1(n1351), .B2(
        n1347), .C1(n1352), .Y(i_tv80_core_n1037) );
  sky130_fd_sc_hd__nand2_1 U1073 ( .A(n1349), .B(di_reg[1]), .Y(n1352) );
  sky130_fd_sc_hd__clkinv_1 U1074 ( .A(i_tv80_core_TmpAddr[9]), .Y(n1351) );
  sky130_fd_sc_hd__clkinv_1 U1075 ( .A(i_tv80_core_SP16[9]), .Y(n1350) );
  sky130_fd_sc_hd__o221ai_1 U1076 ( .A1(n1353), .A2(n1309), .B1(n1354), .B2(
        n1347), .C1(n1355), .Y(i_tv80_core_n1036) );
  sky130_fd_sc_hd__nand2_1 U1077 ( .A(n1349), .B(di_reg[2]), .Y(n1355) );
  sky130_fd_sc_hd__clkinv_1 U1078 ( .A(i_tv80_core_TmpAddr[10]), .Y(n1354) );
  sky130_fd_sc_hd__clkinv_1 U1079 ( .A(i_tv80_core_SP16[10]), .Y(n1353) );
  sky130_fd_sc_hd__o221ai_1 U1080 ( .A1(n1356), .A2(n1309), .B1(n1357), .B2(
        n1347), .C1(n1358), .Y(i_tv80_core_n1035) );
  sky130_fd_sc_hd__nand2_1 U1081 ( .A(n1349), .B(di_reg[3]), .Y(n1358) );
  sky130_fd_sc_hd__clkinv_1 U1082 ( .A(i_tv80_core_TmpAddr[11]), .Y(n1357) );
  sky130_fd_sc_hd__clkinv_1 U1083 ( .A(i_tv80_core_SP16[11]), .Y(n1356) );
  sky130_fd_sc_hd__o221ai_1 U1084 ( .A1(n1359), .A2(n1309), .B1(n1360), .B2(
        n1347), .C1(n1361), .Y(i_tv80_core_n1034) );
  sky130_fd_sc_hd__nand2_1 U1085 ( .A(n1349), .B(di_reg[4]), .Y(n1361) );
  sky130_fd_sc_hd__clkinv_1 U1086 ( .A(i_tv80_core_TmpAddr[12]), .Y(n1360) );
  sky130_fd_sc_hd__clkinv_1 U1087 ( .A(i_tv80_core_SP16[12]), .Y(n1359) );
  sky130_fd_sc_hd__o221ai_1 U1088 ( .A1(n1362), .A2(n1309), .B1(n1363), .B2(
        n1347), .C1(n1364), .Y(i_tv80_core_n1033) );
  sky130_fd_sc_hd__nand2_1 U1089 ( .A(n1349), .B(di_reg[5]), .Y(n1364) );
  sky130_fd_sc_hd__clkinv_1 U1090 ( .A(i_tv80_core_TmpAddr[13]), .Y(n1363) );
  sky130_fd_sc_hd__clkinv_1 U1091 ( .A(i_tv80_core_SP16[13]), .Y(n1362) );
  sky130_fd_sc_hd__o221ai_1 U1092 ( .A1(n1365), .A2(n1309), .B1(n1366), .B2(
        n1347), .C1(n1367), .Y(i_tv80_core_n1032) );
  sky130_fd_sc_hd__nand2_1 U1093 ( .A(n1349), .B(di_reg[6]), .Y(n1367) );
  sky130_fd_sc_hd__clkinv_1 U1094 ( .A(i_tv80_core_TmpAddr[14]), .Y(n1366) );
  sky130_fd_sc_hd__clkinv_1 U1095 ( .A(i_tv80_core_SP16[14]), .Y(n1365) );
  sky130_fd_sc_hd__o221ai_1 U1096 ( .A1(n1368), .A2(n1309), .B1(n1369), .B2(
        n1347), .C1(n1370), .Y(i_tv80_core_n1031) );
  sky130_fd_sc_hd__nand2_1 U1097 ( .A(n1349), .B(di_reg[7]), .Y(n1370) );
  sky130_fd_sc_hd__clkinv_1 U1098 ( .A(n1371), .Y(n1349) );
  sky130_fd_sc_hd__nand2_1 U1099 ( .A(n1334), .B(n1371), .Y(n1347) );
  sky130_fd_sc_hd__nand3_1 U1100 ( .A(n159), .B(n1372), .C(n1292), .Y(n1371)
         );
  sky130_fd_sc_hd__o22ai_1 U1101 ( .A1(n585), .A2(n451), .B1(n1373), .B2(n1272), .Y(n1372) );
  sky130_fd_sc_hd__nor2_1 U1102 ( .A(n620), .B(n1374), .Y(n1373) );
  sky130_fd_sc_hd__o21a_1 U1103 ( .A1(n1375), .A2(n654), .B1(reset_n), .X(
        n1334) );
  sky130_fd_sc_hd__o21a_1 U1104 ( .A1(n1376), .A2(n84), .B1(n1327), .X(n1375)
         );
  sky130_fd_sc_hd__clkinv_1 U1105 ( .A(i_tv80_core_TmpAddr[15]), .Y(n1369) );
  sky130_fd_sc_hd__nand2_1 U1106 ( .A(n1377), .B(n159), .Y(n1309) );
  sky130_fd_sc_hd__clkinv_1 U1107 ( .A(n1327), .Y(n1377) );
  sky130_fd_sc_hd__nand2_1 U1108 ( .A(n1292), .B(n234), .Y(n1327) );
  sky130_fd_sc_hd__clkinv_1 U1109 ( .A(i_tv80_core_SP16[15]), .Y(n1368) );
  sky130_fd_sc_hd__mux2i_1 U1110 ( .A0(n1378), .A1(n247), .S(n1379), .Y(
        i_tv80_core_n1030) );
  sky130_fd_sc_hd__nand2_1 U1111 ( .A(n1380), .B(n343), .Y(n1378) );
  sky130_fd_sc_hd__mux2i_1 U1112 ( .A0(n1381), .A1(n246), .S(n1379), .Y(
        i_tv80_core_n1029) );
  sky130_fd_sc_hd__a21boi_0 U1113 ( .A1(n1382), .A2(n536), .B1_N(n657), .Y(
        n1379) );
  sky130_fd_sc_hd__a21oi_1 U1114 ( .A1(n660), .A2(n1382), .B1(n65), .Y(n657)
         );
  sky130_fd_sc_hd__clkinv_1 U1115 ( .A(n662), .Y(n536) );
  sky130_fd_sc_hd__nand2_1 U1116 ( .A(n338), .B(n1383), .Y(n662) );
  sky130_fd_sc_hd__nand2_1 U1117 ( .A(n1380), .B(i_tv80_core_IR[5]), .Y(n1381)
         );
  sky130_fd_sc_hd__nor2_1 U1118 ( .A(n660), .B(n490), .Y(n1380) );
  sky130_fd_sc_hd__clkinv_1 U1119 ( .A(n537), .Y(n660) );
  sky130_fd_sc_hd__a21oi_1 U1120 ( .A1(n1384), .A2(n1385), .B1(n372), .Y(n537)
         );
  sky130_fd_sc_hd__o221ai_1 U1121 ( .A1(n81), .A2(n1303), .B1(n1386), .B2(
        n1304), .C1(n1305), .Y(i_tv80_core_n1028) );
  sky130_fd_sc_hd__clkinv_1 U1122 ( .A(di[6]), .Y(n81) );
  sky130_fd_sc_hd__o221ai_1 U1123 ( .A1(n83), .A2(n1303), .B1(n1387), .B2(
        n1304), .C1(n1305), .Y(i_tv80_core_n1027) );
  sky130_fd_sc_hd__nand4_1 U1124 ( .A(n1304), .B(n573), .C(
        i_tv80_core_IntCycle), .D(n1388), .Y(n1305) );
  sky130_fd_sc_hd__nor3_1 U1125 ( .A(n569), .B(n490), .C(n874), .Y(n1388) );
  sky130_fd_sc_hd__clkinv_1 U1126 ( .A(i_tv80_core_IStatus[1]), .Y(n573) );
  sky130_fd_sc_hd__o21ai_0 U1127 ( .A1(n1389), .A2(n656), .B1(n1304), .Y(n1303) );
  sky130_fd_sc_hd__nand3_1 U1128 ( .A(n1390), .B(n663), .C(reset_n), .Y(n1304)
         );
  sky130_fd_sc_hd__nand4_1 U1129 ( .A(n876), .B(n656), .C(n584), .D(n403), .Y(
        n1390) );
  sky130_fd_sc_hd__nor3_1 U1130 ( .A(n490), .B(i_tv80_core_Halt_FF), .C(n1391), 
        .Y(n1389) );
  sky130_fd_sc_hd__a21oi_1 U1131 ( .A1(n1392), .A2(n1300), .B1(n564), .Y(n1391) );
  sky130_fd_sc_hd__clkinv_1 U1132 ( .A(di[7]), .Y(n83) );
  sky130_fd_sc_hd__o22ai_1 U1133 ( .A1(n1393), .A2(n645), .B1(n646), .B2(n1394), .Y(i_tv80_core_n1026) );
  sky130_fd_sc_hd__clkinv_1 U1134 ( .A(i_tv80_core_Pre_XY_F_M[0]), .Y(n645) );
  sky130_fd_sc_hd__o22ai_1 U1135 ( .A1(n512), .A2(n1393), .B1(n505), .B2(n1394), .Y(i_tv80_core_n1025) );
  sky130_fd_sc_hd__clkinv_1 U1136 ( .A(i_tv80_core_Pre_XY_F_M[2]), .Y(n512) );
  sky130_fd_sc_hd__o22ai_1 U1137 ( .A1(n1395), .A2(n1393), .B1(n643), .B2(
        n1394), .Y(i_tv80_core_n1024) );
  sky130_fd_sc_hd__nand2_1 U1138 ( .A(reset_n), .B(n1393), .Y(n1394) );
  sky130_fd_sc_hd__o21ai_0 U1139 ( .A1(n648), .A2(n541), .B1(reset_n), .Y(
        n1393) );
  sky130_fd_sc_hd__clkinv_1 U1140 ( .A(i_tv80_core_Pre_XY_F_M[1]), .Y(n1395)
         );
  sky130_fd_sc_hd__nand2_1 U1141 ( .A(n1396), .B(reset_n), .Y(
        i_tv80_core_n1023) );
  sky130_fd_sc_hd__mux2i_1 U1142 ( .A0(n1397), .A1(m1_n), .S(n1398), .Y(n1396)
         );
  sky130_fd_sc_hd__a31oi_1 U1143 ( .A1(wait_n), .A2(n554), .A3(n649), .B1(
        n1399), .Y(n1398) );
  sky130_fd_sc_hd__clkinv_1 U1144 ( .A(n1397), .Y(n1399) );
  sky130_fd_sc_hd__a32oi_1 U1145 ( .A1(n554), .A2(n559), .A3(n560), .B1(n641), 
        .B2(n1301), .Y(n1397) );
  sky130_fd_sc_hd__clkinv_1 U1146 ( .A(n541), .Y(n1301) );
  sky130_fd_sc_hd__nand2_1 U1147 ( .A(n556), .B(n527), .Y(n541) );
  sky130_fd_sc_hd__clkinv_1 U1148 ( .A(i_tv80_core_BusReq_s), .Y(n527) );
  sky130_fd_sc_hd__clkinv_1 U1149 ( .A(n805), .Y(n556) );
  sky130_fd_sc_hd__nor2_1 U1150 ( .A(n647), .B(n644), .Y(n641) );
  sky130_fd_sc_hd__o31ai_1 U1151 ( .A1(n1400), .A2(i_tv80_core_No_BTR), .A3(
        n1401), .B1(n508), .Y(n647) );
  sky130_fd_sc_hd__o21ai_0 U1152 ( .A1(mcycle[0]), .A2(n402), .B1(n1402), .Y(
        n508) );
  sky130_fd_sc_hd__nor3_1 U1153 ( .A(n1403), .B(n1404), .C(n1405), .Y(n1401)
         );
  sky130_fd_sc_hd__nor3_1 U1154 ( .A(n673), .B(n421), .C(n678), .Y(n1400) );
  sky130_fd_sc_hd__nand3_1 U1155 ( .A(n338), .B(n1406), .C(n599), .Y(n678) );
  sky130_fd_sc_hd__clkinv_1 U1156 ( .A(i_tv80_core_IncDecZ), .Y(n673) );
  sky130_fd_sc_hd__mux2i_1 U1157 ( .A0(n1407), .A1(n535), .S(n1408), .Y(
        i_tv80_core_n1022) );
  sky130_fd_sc_hd__a211oi_1 U1158 ( .A1(i_tv80_core_Oldnmi_n), .A2(n64), .B1(
        n65), .C1(i_tv80_core_NMICycle), .Y(n1408) );
  sky130_fd_sc_hd__clkinv_1 U1159 ( .A(nmi_n), .Y(n64) );
  sky130_fd_sc_hd__clkinv_1 U1160 ( .A(i_tv80_core_NMI_s), .Y(n535) );
  sky130_fd_sc_hd__nand2_1 U1161 ( .A(reset_n), .B(n1300), .Y(n1407) );
  sky130_fd_sc_hd__o221ai_1 U1162 ( .A1(n1409), .A2(n1410), .B1(n1307), .B2(
        n1411), .C1(n1412), .Y(i_tv80_core_n1021) );
  sky130_fd_sc_hd__a22oi_1 U1163 ( .A1(i_tv80_core_PC16[0]), .A2(n462), .B1(
        n463), .B2(i_tv80_core_PC[0]), .Y(n1412) );
  sky130_fd_sc_hd__clkinv_1 U1164 ( .A(i_tv80_core_TmpAddr[0]), .Y(n1307) );
  sky130_fd_sc_hd__o221ai_1 U1165 ( .A1(n1413), .A2(n458), .B1(n1291), .B2(
        n460), .C1(n1414), .Y(i_tv80_core_n1020) );
  sky130_fd_sc_hd__a22oi_1 U1166 ( .A1(i_tv80_core_PC16[14]), .A2(n462), .B1(
        n463), .B2(i_tv80_core_PC[14]), .Y(n1414) );
  sky130_fd_sc_hd__clkinv_1 U1167 ( .A(i_tv80_core_I[6]), .Y(n1291) );
  sky130_fd_sc_hd__clkinv_1 U1168 ( .A(n147), .Y(n1413) );
  sky130_fd_sc_hd__o21ai_0 U1169 ( .A1(n464), .A2(n80), .B1(n1415), .Y(n147)
         );
  sky130_fd_sc_hd__a22oi_1 U1170 ( .A1(n248), .A2(n148), .B1(
        i_tv80_core_TmpAddr[14]), .B2(n467), .Y(n1415) );
  sky130_fd_sc_hd__clkinv_1 U1171 ( .A(n1416), .Y(n148) );
  sky130_fd_sc_hd__o221ai_1 U1172 ( .A1(n1417), .A2(n458), .B1(n1290), .B2(
        n460), .C1(n1418), .Y(i_tv80_core_n1019) );
  sky130_fd_sc_hd__a22oi_1 U1173 ( .A1(i_tv80_core_PC16[13]), .A2(n462), .B1(
        n463), .B2(i_tv80_core_PC[13]), .Y(n1418) );
  sky130_fd_sc_hd__clkinv_1 U1174 ( .A(i_tv80_core_I[5]), .Y(n1290) );
  sky130_fd_sc_hd__clkinv_1 U1175 ( .A(n141), .Y(n1417) );
  sky130_fd_sc_hd__o21ai_0 U1176 ( .A1(n464), .A2(n78), .B1(n1419), .Y(n141)
         );
  sky130_fd_sc_hd__a22oi_1 U1177 ( .A1(n248), .A2(n142), .B1(
        i_tv80_core_TmpAddr[13]), .B2(n467), .Y(n1419) );
  sky130_fd_sc_hd__clkinv_1 U1178 ( .A(n1420), .Y(n142) );
  sky130_fd_sc_hd__o221ai_1 U1179 ( .A1(n1421), .A2(n458), .B1(n1289), .B2(
        n460), .C1(n1422), .Y(i_tv80_core_n1018) );
  sky130_fd_sc_hd__a22oi_1 U1180 ( .A1(i_tv80_core_PC16[12]), .A2(n462), .B1(
        n463), .B2(i_tv80_core_PC[12]), .Y(n1422) );
  sky130_fd_sc_hd__clkinv_1 U1181 ( .A(i_tv80_core_I[4]), .Y(n1289) );
  sky130_fd_sc_hd__clkinv_1 U1182 ( .A(n135), .Y(n1421) );
  sky130_fd_sc_hd__o21ai_0 U1183 ( .A1(n464), .A2(n76), .B1(n1423), .Y(n135)
         );
  sky130_fd_sc_hd__a22oi_1 U1184 ( .A1(n248), .A2(n136), .B1(
        i_tv80_core_TmpAddr[12]), .B2(n467), .Y(n1423) );
  sky130_fd_sc_hd__clkinv_1 U1185 ( .A(n1424), .Y(n136) );
  sky130_fd_sc_hd__o221ai_1 U1186 ( .A1(n1425), .A2(n458), .B1(n1288), .B2(
        n460), .C1(n1426), .Y(i_tv80_core_n1017) );
  sky130_fd_sc_hd__a22oi_1 U1187 ( .A1(i_tv80_core_PC16[11]), .A2(n462), .B1(
        n463), .B2(i_tv80_core_PC[11]), .Y(n1426) );
  sky130_fd_sc_hd__clkinv_1 U1188 ( .A(i_tv80_core_I[3]), .Y(n1288) );
  sky130_fd_sc_hd__clkinv_1 U1189 ( .A(n129), .Y(n1425) );
  sky130_fd_sc_hd__o21ai_0 U1190 ( .A1(n464), .A2(n74), .B1(n1427), .Y(n129)
         );
  sky130_fd_sc_hd__a22oi_1 U1191 ( .A1(n248), .A2(n130), .B1(
        i_tv80_core_TmpAddr[11]), .B2(n467), .Y(n1427) );
  sky130_fd_sc_hd__clkinv_1 U1192 ( .A(n1428), .Y(n130) );
  sky130_fd_sc_hd__o221ai_1 U1193 ( .A1(n1429), .A2(n458), .B1(n1287), .B2(
        n460), .C1(n1430), .Y(i_tv80_core_n1016) );
  sky130_fd_sc_hd__a22oi_1 U1194 ( .A1(i_tv80_core_PC16[10]), .A2(n462), .B1(
        n463), .B2(i_tv80_core_PC[10]), .Y(n1430) );
  sky130_fd_sc_hd__clkinv_1 U1195 ( .A(i_tv80_core_I[2]), .Y(n1287) );
  sky130_fd_sc_hd__clkinv_1 U1196 ( .A(n123), .Y(n1429) );
  sky130_fd_sc_hd__o21ai_0 U1197 ( .A1(n464), .A2(n72), .B1(n1431), .Y(n123)
         );
  sky130_fd_sc_hd__a22oi_1 U1198 ( .A1(n248), .A2(n124), .B1(
        i_tv80_core_TmpAddr[10]), .B2(n467), .Y(n1431) );
  sky130_fd_sc_hd__clkinv_1 U1199 ( .A(n1432), .Y(n124) );
  sky130_fd_sc_hd__o221ai_1 U1200 ( .A1(n1433), .A2(n458), .B1(n1286), .B2(
        n460), .C1(n1434), .Y(i_tv80_core_n1015) );
  sky130_fd_sc_hd__a22oi_1 U1201 ( .A1(i_tv80_core_PC16[9]), .A2(n462), .B1(
        n463), .B2(i_tv80_core_PC[9]), .Y(n1434) );
  sky130_fd_sc_hd__clkinv_1 U1202 ( .A(i_tv80_core_I[1]), .Y(n1286) );
  sky130_fd_sc_hd__clkinv_1 U1203 ( .A(n117), .Y(n1433) );
  sky130_fd_sc_hd__o21ai_0 U1204 ( .A1(n464), .A2(n70), .B1(n1435), .Y(n117)
         );
  sky130_fd_sc_hd__a22oi_1 U1205 ( .A1(n248), .A2(n118), .B1(
        i_tv80_core_TmpAddr[9]), .B2(n467), .Y(n1435) );
  sky130_fd_sc_hd__clkinv_1 U1206 ( .A(n1436), .Y(n118) );
  sky130_fd_sc_hd__o221ai_1 U1207 ( .A1(n1437), .A2(n458), .B1(n1283), .B2(
        n460), .C1(n1438), .Y(i_tv80_core_n1014) );
  sky130_fd_sc_hd__a22oi_1 U1208 ( .A1(i_tv80_core_PC16[8]), .A2(n462), .B1(
        n463), .B2(i_tv80_core_PC[8]), .Y(n1438) );
  sky130_fd_sc_hd__nand2_1 U1209 ( .A(n1439), .B(n157), .Y(n460) );
  sky130_fd_sc_hd__clkinv_1 U1210 ( .A(i_tv80_core_I[0]), .Y(n1283) );
  sky130_fd_sc_hd__clkinv_1 U1211 ( .A(n1439), .Y(n458) );
  sky130_fd_sc_hd__clkinv_1 U1212 ( .A(n108), .Y(n1437) );
  sky130_fd_sc_hd__o21ai_0 U1213 ( .A1(n464), .A2(n67), .B1(n1440), .Y(n108)
         );
  sky130_fd_sc_hd__a22oi_1 U1214 ( .A1(n248), .A2(n110), .B1(
        i_tv80_core_TmpAddr[8]), .B2(n467), .Y(n1440) );
  sky130_fd_sc_hd__clkinv_1 U1215 ( .A(n1441), .Y(n110) );
  sky130_fd_sc_hd__o221ai_1 U1216 ( .A1(n844), .A2(n1410), .B1(n1331), .B2(
        n1411), .C1(n1442), .Y(i_tv80_core_n1013) );
  sky130_fd_sc_hd__a22oi_1 U1217 ( .A1(i_tv80_core_PC16[7]), .A2(n462), .B1(
        n463), .B2(i_tv80_core_PC[7]), .Y(n1442) );
  sky130_fd_sc_hd__clkinv_1 U1218 ( .A(i_tv80_core_TmpAddr[7]), .Y(n1331) );
  sky130_fd_sc_hd__a221o_1 U1219 ( .A1(i_tv80_core_PC16[6]), .A2(n462), .B1(
        n463), .B2(i_tv80_core_PC[6]), .C1(n1443), .X(i_tv80_core_n1012) );
  sky130_fd_sc_hd__o221ai_1 U1220 ( .A1(n1444), .A2(n1410), .B1(n1328), .B2(
        n1411), .C1(n1445), .Y(n1443) );
  sky130_fd_sc_hd__clkinv_1 U1221 ( .A(i_tv80_core_TmpAddr[6]), .Y(n1328) );
  sky130_fd_sc_hd__a221o_1 U1222 ( .A1(i_tv80_core_PC16[5]), .A2(n462), .B1(
        n463), .B2(i_tv80_core_PC[5]), .C1(n1446), .X(i_tv80_core_n1011) );
  sky130_fd_sc_hd__o221ai_1 U1223 ( .A1(n1447), .A2(n1410), .B1(n1324), .B2(
        n1411), .C1(n1445), .Y(n1446) );
  sky130_fd_sc_hd__clkinv_1 U1224 ( .A(i_tv80_core_TmpAddr[5]), .Y(n1324) );
  sky130_fd_sc_hd__o221ai_1 U1225 ( .A1(n1448), .A2(n1410), .B1(n1322), .B2(
        n1411), .C1(n1449), .Y(i_tv80_core_n1010) );
  sky130_fd_sc_hd__a22oi_1 U1226 ( .A1(i_tv80_core_PC16[4]), .A2(n462), .B1(
        n463), .B2(i_tv80_core_PC[4]), .Y(n1449) );
  sky130_fd_sc_hd__clkinv_1 U1227 ( .A(i_tv80_core_TmpAddr[4]), .Y(n1322) );
  sky130_fd_sc_hd__o221ai_1 U1228 ( .A1(n1450), .A2(n1410), .B1(n1319), .B2(
        n1411), .C1(n1451), .Y(i_tv80_core_n1009) );
  sky130_fd_sc_hd__a22oi_1 U1229 ( .A1(i_tv80_core_PC16[3]), .A2(n462), .B1(
        n463), .B2(i_tv80_core_PC[3]), .Y(n1451) );
  sky130_fd_sc_hd__clkinv_1 U1230 ( .A(i_tv80_core_TmpAddr[3]), .Y(n1319) );
  sky130_fd_sc_hd__a221o_1 U1231 ( .A1(i_tv80_core_PC16[2]), .A2(n462), .B1(
        n463), .B2(i_tv80_core_PC[2]), .C1(n1452), .X(i_tv80_core_n1008) );
  sky130_fd_sc_hd__o221ai_1 U1232 ( .A1(n1453), .A2(n1410), .B1(n1315), .B2(
        n1411), .C1(n1445), .Y(n1452) );
  sky130_fd_sc_hd__clkinv_1 U1233 ( .A(i_tv80_core_TmpAddr[2]), .Y(n1315) );
  sky130_fd_sc_hd__a221o_1 U1234 ( .A1(i_tv80_core_PC16[1]), .A2(n462), .B1(
        n463), .B2(i_tv80_core_PC[1]), .C1(n1454), .X(i_tv80_core_n1007) );
  sky130_fd_sc_hd__o221ai_1 U1235 ( .A1(n1455), .A2(n1410), .B1(n1312), .B2(
        n1411), .C1(n1445), .Y(n1454) );
  sky130_fd_sc_hd__nand2_1 U1236 ( .A(n1456), .B(n1439), .Y(n1445) );
  sky130_fd_sc_hd__nand2_1 U1237 ( .A(n1439), .B(n1457), .Y(n1411) );
  sky130_fd_sc_hd__clkinv_1 U1238 ( .A(i_tv80_core_TmpAddr[1]), .Y(n1312) );
  sky130_fd_sc_hd__nand2_1 U1239 ( .A(n1439), .B(n248), .Y(n1410) );
  sky130_fd_sc_hd__nor3b_1 U1240 ( .C_N(n1458), .A(n463), .B(n654), .Y(n1439)
         );
  sky130_fd_sc_hd__a211oi_1 U1241 ( .A1(n1458), .A2(n874), .B1(n463), .C1(n490), .Y(n462) );
  sky130_fd_sc_hd__o2111a_1 U1242 ( .A1(n654), .A2(n1458), .B1(n1459), .C1(
        n1460), .D1(reset_n), .X(n463) );
  sky130_fd_sc_hd__o2111ai_1 U1243 ( .A1(n372), .A2(n579), .B1(n564), .C1(
        n1382), .D1(halt_n), .Y(n1460) );
  sky130_fd_sc_hd__clkinv_1 U1244 ( .A(i_tv80_core_Halt_FF), .Y(halt_n) );
  sky130_fd_sc_hd__clkinv_1 U1245 ( .A(n663), .Y(n1382) );
  sky130_fd_sc_hd__clkinv_1 U1246 ( .A(n1461), .Y(n579) );
  sky130_fd_sc_hd__o31ai_1 U1247 ( .A1(n1457), .A2(n248), .A3(n1456), .B1(n906), .Y(n1459) );
  sky130_fd_sc_hd__nand2_1 U1248 ( .A(n876), .B(n1462), .Y(n1458) );
  sky130_fd_sc_hd__o2111ai_1 U1249 ( .A1(n585), .A2(n1463), .B1(n1464), .C1(
        n1465), .D1(n1466), .Y(n1462) );
  sky130_fd_sc_hd__nor4_1 U1250 ( .A(i_tv80_core_BTR_r), .B(n234), .C(n1340), 
        .D(n1467), .Y(n1466) );
  sky130_fd_sc_hd__nor2_1 U1251 ( .A(n790), .B(n1341), .Y(n1340) );
  sky130_fd_sc_hd__a21oi_1 U1252 ( .A1(n338), .A2(n1468), .B1(n1469), .Y(n1465) );
  sky130_fd_sc_hd__a31oi_1 U1253 ( .A1(n615), .A2(n758), .A3(n1470), .B1(n382), 
        .Y(n1469) );
  sky130_fd_sc_hd__nand2_1 U1254 ( .A(n424), .B(n338), .Y(n382) );
  sky130_fd_sc_hd__nor3_1 U1255 ( .A(n1471), .B(n599), .C(n762), .Y(n1470) );
  sky130_fd_sc_hd__clkinv_1 U1256 ( .A(n1280), .Y(n758) );
  sky130_fd_sc_hd__a221o_1 U1257 ( .A1(n393), .A2(n1342), .B1(n1344), .B2(n730), .C1(n1264), .X(n1468) );
  sky130_fd_sc_hd__nor2_1 U1258 ( .A(n1271), .B(n716), .Y(n1264) );
  sky130_fd_sc_hd__nand2_1 U1259 ( .A(n495), .B(n1472), .Y(n1342) );
  sky130_fd_sc_hd__o21ai_0 U1260 ( .A1(n1473), .A2(n584), .B1(n403), .Y(n1464)
         );
  sky130_fd_sc_hd__clkinv_1 U1261 ( .A(n402), .Y(n584) );
  sky130_fd_sc_hd__nand3_1 U1262 ( .A(n1474), .B(n1475), .C(n1476), .Y(
        i_tv80_core_n1006) );
  sky130_fd_sc_hd__a221oi_1 U1263 ( .A1(n811), .A2(n91), .B1(n109), .B2(
        di_reg[0]), .C1(n1477), .Y(n1476) );
  sky130_fd_sc_hd__a22o_1 U1264 ( .A1(n98), .A2(i_tv80_core_SP[0]), .B1(n160), 
        .B2(i_tv80_core_R[0]), .X(n1477) );
  sky130_fd_sc_hd__clkinv_1 U1265 ( .A(n1409), .Y(n811) );
  sky130_fd_sc_hd__mux2i_1 U1266 ( .A0(n97), .A1(n92), .S(
        i_tv80_core_TmpAddr[0]), .Y(n1475) );
  sky130_fd_sc_hd__a22oi_1 U1267 ( .A1(i_tv80_core_PC[0]), .A2(n112), .B1(A[0]), .B2(n99), .Y(n1474) );
  sky130_fd_sc_hd__nand4_1 U1268 ( .A(n1478), .B(n1479), .C(n1480), .D(n1481), 
        .Y(i_tv80_core_n1005) );
  sky130_fd_sc_hd__a221oi_1 U1269 ( .A1(i_tv80_core_TmpAddr[1]), .A2(n92), 
        .B1(n817), .B2(n91), .C1(n1482), .Y(n1481) );
  sky130_fd_sc_hd__clkinv_1 U1270 ( .A(n1455), .Y(n817) );
  sky130_fd_sc_hd__a22oi_1 U1271 ( .A1(n109), .A2(di_reg[1]), .B1(
        i_tv80_core_R[1]), .B2(n160), .Y(n1480) );
  sky130_fd_sc_hd__a22oi_1 U1272 ( .A1(i_tv80_core_N248), .A2(n97), .B1(
        i_tv80_core_SP[1]), .B2(n98), .Y(n1479) );
  sky130_fd_sc_hd__a22oi_1 U1273 ( .A1(i_tv80_core_PC[1]), .A2(n112), .B1(A[1]), .B2(n99), .Y(n1478) );
  sky130_fd_sc_hd__nand4_1 U1274 ( .A(n1483), .B(n1484), .C(n1485), .D(n1486), 
        .Y(i_tv80_core_n1004) );
  sky130_fd_sc_hd__a221oi_1 U1275 ( .A1(i_tv80_core_TmpAddr[2]), .A2(n92), 
        .B1(n821), .B2(n91), .C1(n1482), .Y(n1486) );
  sky130_fd_sc_hd__clkinv_1 U1276 ( .A(n1453), .Y(n821) );
  sky130_fd_sc_hd__a22oi_1 U1277 ( .A1(n109), .A2(di_reg[2]), .B1(
        i_tv80_core_R[2]), .B2(n160), .Y(n1485) );
  sky130_fd_sc_hd__a22oi_1 U1278 ( .A1(i_tv80_core_N249), .A2(n97), .B1(
        i_tv80_core_SP[2]), .B2(n98), .Y(n1484) );
  sky130_fd_sc_hd__a22oi_1 U1279 ( .A1(i_tv80_core_PC[2]), .A2(n112), .B1(A[2]), .B2(n99), .Y(n1483) );
  sky130_fd_sc_hd__o2111ai_1 U1280 ( .A1(n85), .A2(n1487), .B1(n1488), .C1(
        n1489), .D1(n1490), .Y(i_tv80_core_n1003) );
  sky130_fd_sc_hd__a221oi_1 U1281 ( .A1(n825), .A2(n91), .B1(
        i_tv80_core_TmpAddr[3]), .B2(n92), .C1(n1491), .Y(n1490) );
  sky130_fd_sc_hd__o22ai_1 U1282 ( .A1(n94), .A2(n1171), .B1(n74), .B2(n96), 
        .Y(n1491) );
  sky130_fd_sc_hd__clkinv_1 U1283 ( .A(i_tv80_core_R[3]), .Y(n1171) );
  sky130_fd_sc_hd__clkinv_1 U1284 ( .A(n1450), .Y(n825) );
  sky130_fd_sc_hd__a22oi_1 U1285 ( .A1(i_tv80_core_N250), .A2(n97), .B1(
        i_tv80_core_SP[3]), .B2(n98), .Y(n1489) );
  sky130_fd_sc_hd__nand2_1 U1286 ( .A(A[3]), .B(n99), .Y(n1488) );
  sky130_fd_sc_hd__clkinv_1 U1287 ( .A(i_tv80_core_PC[3]), .Y(n1487) );
  sky130_fd_sc_hd__o2111ai_1 U1288 ( .A1(n85), .A2(n1492), .B1(n1493), .C1(
        n1494), .D1(n1495), .Y(i_tv80_core_n1002) );
  sky130_fd_sc_hd__a221oi_1 U1289 ( .A1(n829), .A2(n91), .B1(
        i_tv80_core_TmpAddr[4]), .B2(n92), .C1(n1496), .Y(n1495) );
  sky130_fd_sc_hd__o22ai_1 U1290 ( .A1(n94), .A2(n1174), .B1(n76), .B2(n96), 
        .Y(n1496) );
  sky130_fd_sc_hd__clkinv_1 U1291 ( .A(i_tv80_core_R[4]), .Y(n1174) );
  sky130_fd_sc_hd__clkinv_1 U1292 ( .A(n1448), .Y(n829) );
  sky130_fd_sc_hd__a22oi_1 U1293 ( .A1(i_tv80_core_N251), .A2(n97), .B1(
        i_tv80_core_SP[4]), .B2(n98), .Y(n1494) );
  sky130_fd_sc_hd__nand2_1 U1294 ( .A(A[4]), .B(n99), .Y(n1493) );
  sky130_fd_sc_hd__clkinv_1 U1295 ( .A(i_tv80_core_PC[4]), .Y(n1492) );
  sky130_fd_sc_hd__nand4_1 U1296 ( .A(n1497), .B(n1498), .C(n1499), .D(n1500), 
        .Y(i_tv80_core_n1001) );
  sky130_fd_sc_hd__a221oi_1 U1297 ( .A1(i_tv80_core_TmpAddr[5]), .A2(n92), 
        .B1(n833), .B2(n91), .C1(n1482), .Y(n1500) );
  sky130_fd_sc_hd__clkinv_1 U1298 ( .A(n1447), .Y(n833) );
  sky130_fd_sc_hd__a22oi_1 U1299 ( .A1(n109), .A2(di_reg[5]), .B1(
        i_tv80_core_R[5]), .B2(n160), .Y(n1499) );
  sky130_fd_sc_hd__a22oi_1 U1300 ( .A1(i_tv80_core_N252), .A2(n97), .B1(
        i_tv80_core_SP[5]), .B2(n98), .Y(n1498) );
  sky130_fd_sc_hd__a22oi_1 U1301 ( .A1(i_tv80_core_PC[5]), .A2(n112), .B1(A[5]), .B2(n99), .Y(n1497) );
  sky130_fd_sc_hd__nand4_1 U1302 ( .A(n1501), .B(n1502), .C(n1503), .D(n1504), 
        .Y(i_tv80_core_n1000) );
  sky130_fd_sc_hd__a221oi_1 U1303 ( .A1(i_tv80_core_TmpAddr[6]), .A2(n92), 
        .B1(n837), .B2(n91), .C1(n1482), .Y(n1504) );
  sky130_fd_sc_hd__nor2b_1 U1304 ( .B_N(n1456), .A(n1505), .Y(n1482) );
  sky130_fd_sc_hd__nor2b_1 U1305 ( .B_N(n1506), .A(n1507), .Y(n1456) );
  sky130_fd_sc_hd__o21ai_0 U1306 ( .A1(n1505), .A2(n1508), .B1(n149), .Y(n91)
         );
  sky130_fd_sc_hd__a32oi_1 U1307 ( .A1(n239), .A2(n1509), .A3(n1510), .B1(n236), .B2(n1511), .Y(n149) );
  sky130_fd_sc_hd__clkinv_1 U1308 ( .A(n1444), .Y(n837) );
  sky130_fd_sc_hd__a211o_1 U1309 ( .A1(n1457), .A2(n107), .B1(n105), .C1(n106), 
        .X(n92) );
  sky130_fd_sc_hd__nor3_1 U1310 ( .A(n644), .B(n236), .C(n1512), .Y(n106) );
  sky130_fd_sc_hd__nor4b_1 U1311 ( .D_N(n1513), .A(n1509), .B(n1514), .C(n1515), .Y(n105) );
  sky130_fd_sc_hd__or3b_1 U1312 ( .A(n467), .B(n157), .C_N(n464), .X(n1457) );
  sky130_fd_sc_hd__nor4b_1 U1313 ( .D_N(n1516), .A(n419), .B(n1506), .C(n546), 
        .Y(n157) );
  sky130_fd_sc_hd__nor2_1 U1314 ( .A(n1392), .B(n1507), .Y(n1516) );
  sky130_fd_sc_hd__nand2_1 U1315 ( .A(n1376), .B(n1517), .Y(n467) );
  sky130_fd_sc_hd__a22oi_1 U1316 ( .A1(n109), .A2(di_reg[6]), .B1(
        i_tv80_core_R[6]), .B2(n160), .Y(n1503) );
  sky130_fd_sc_hd__clkinv_1 U1317 ( .A(n94), .Y(n160) );
  sky130_fd_sc_hd__nand3_1 U1318 ( .A(n159), .B(n158), .C(n1047), .Y(n94) );
  sky130_fd_sc_hd__clkinv_1 U1319 ( .A(n96), .Y(n109) );
  sky130_fd_sc_hd__nand2_1 U1320 ( .A(n1518), .B(n237), .Y(n96) );
  sky130_fd_sc_hd__a22oi_1 U1321 ( .A1(i_tv80_core_N253), .A2(n97), .B1(
        i_tv80_core_SP[6]), .B2(n98), .Y(n1502) );
  sky130_fd_sc_hd__nor2b_1 U1322 ( .B_N(n1518), .A(n237), .Y(n98) );
  sky130_fd_sc_hd__nor3_1 U1323 ( .A(n1519), .B(n1520), .C(n1509), .Y(n1518)
         );
  sky130_fd_sc_hd__and2_0 U1324 ( .A(n1513), .B(n1514), .X(n97) );
  sky130_fd_sc_hd__o22ai_1 U1325 ( .A1(n585), .A2(n443), .B1(n1521), .B2(n790), 
        .Y(n1514) );
  sky130_fd_sc_hd__nand2_1 U1326 ( .A(n358), .B(n338), .Y(n790) );
  sky130_fd_sc_hd__a22oi_1 U1327 ( .A1(i_tv80_core_PC[6]), .A2(n112), .B1(A[6]), .B2(n99), .Y(n1501) );
  sky130_fd_sc_hd__clkinv_1 U1328 ( .A(n158), .Y(n99) );
  sky130_fd_sc_hd__clkinv_1 U1329 ( .A(n85), .Y(n112) );
  sky130_fd_sc_hd__a22oi_1 U1330 ( .A1(n1513), .A2(n1515), .B1(n1511), .B2(
        n644), .Y(n85) );
  sky130_fd_sc_hd__clkinv_1 U1331 ( .A(n648), .Y(n644) );
  sky130_fd_sc_hd__o211ai_1 U1332 ( .A1(n1522), .A2(n1523), .B1(n1524), .C1(
        n266), .Y(n648) );
  sky130_fd_sc_hd__clkinv_1 U1333 ( .A(i_tv80_core_XY_Ind), .Y(n266) );
  sky130_fd_sc_hd__a21oi_1 U1334 ( .A1(n1384), .A2(n1525), .B1(n354), .Y(n1523) );
  sky130_fd_sc_hd__clkinv_1 U1335 ( .A(n1512), .Y(n1511) );
  sky130_fd_sc_hd__nand2_1 U1336 ( .A(n1522), .B(n1510), .Y(n1512) );
  sky130_fd_sc_hd__clkinv_1 U1337 ( .A(n1520), .Y(n1510) );
  sky130_fd_sc_hd__and2_0 U1338 ( .A(n1509), .B(n1519), .X(n1522) );
  sky130_fd_sc_hd__o21ai_0 U1339 ( .A1(n1526), .A2(n1527), .B1(n1528), .Y(
        n1509) );
  sky130_fd_sc_hd__a21oi_1 U1340 ( .A1(n1529), .A2(n1530), .B1(n234), .Y(n1526) );
  sky130_fd_sc_hd__o31ai_1 U1341 ( .A1(n1531), .A2(n1532), .A3(n614), .B1(
        i_tv80_core_ISet[1]), .Y(n1530) );
  sky130_fd_sc_hd__nand3_1 U1342 ( .A(n1533), .B(n1337), .C(n1534), .Y(n614)
         );
  sky130_fd_sc_hd__clkinv_1 U1343 ( .A(n747), .Y(n1337) );
  sky130_fd_sc_hd__nand2_1 U1344 ( .A(n585), .B(n1535), .Y(n747) );
  sky130_fd_sc_hd__o22ai_1 U1345 ( .A1(n740), .A2(n450), .B1(n1536), .B2(n1059), .Y(n1531) );
  sky130_fd_sc_hd__o31ai_1 U1346 ( .A1(n1537), .A2(n1538), .A3(n1539), .B1(
        n338), .Y(n1529) );
  sky130_fd_sc_hd__clkinv_1 U1347 ( .A(n1540), .Y(n1538) );
  sky130_fd_sc_hd__o21ai_0 U1348 ( .A1(n424), .A2(n1541), .B1(n1542), .Y(n1537) );
  sky130_fd_sc_hd__clkinv_1 U1349 ( .A(n237), .Y(n1515) );
  sky130_fd_sc_hd__o21ai_0 U1350 ( .A1(n1543), .A2(n1527), .B1(n1528), .Y(n237) );
  sky130_fd_sc_hd__mux2_1 U1351 ( .A0(n1544), .A1(n1545), .S(n245), .X(n1527)
         );
  sky130_fd_sc_hd__a31oi_1 U1352 ( .A1(n774), .A2(n1546), .A3(n766), .B1(n402), 
        .Y(n1545) );
  sky130_fd_sc_hd__and2_0 U1353 ( .A(n797), .B(n704), .X(n766) );
  sky130_fd_sc_hd__o31ai_1 U1354 ( .A1(n1547), .A2(n1297), .A3(n1076), .B1(
        n731), .Y(n704) );
  sky130_fd_sc_hd__and2_0 U1355 ( .A(n721), .B(n729), .X(n797) );
  sky130_fd_sc_hd__and2_0 U1356 ( .A(n702), .B(n701), .X(n729) );
  sky130_fd_sc_hd__o21ai_0 U1357 ( .A1(n1058), .A2(n1548), .B1(n1549), .Y(n701) );
  sky130_fd_sc_hd__o21bai_1 U1358 ( .A1(n1058), .A2(n1548), .B1_N(n1550), .Y(
        n702) );
  sky130_fd_sc_hd__or3_1 U1359 ( .A(n1076), .B(n1551), .C(n1547), .X(n1548) );
  sky130_fd_sc_hd__and4_1 U1360 ( .A(n1552), .B(n633), .C(n1553), .D(n1554), 
        .X(n721) );
  sky130_fd_sc_hd__nor3_1 U1361 ( .A(n1195), .B(n1555), .C(n599), .Y(n1554) );
  sky130_fd_sc_hd__o21ai_0 U1362 ( .A1(n1297), .A2(n1547), .B1(n725), .Y(n1553) );
  sky130_fd_sc_hd__nand4_1 U1363 ( .A(n1556), .B(n1557), .C(n1558), .D(n1559), 
        .Y(n1547) );
  sky130_fd_sc_hd__nor2_1 U1364 ( .A(n598), .B(n1560), .Y(n1558) );
  sky130_fd_sc_hd__clkinv_1 U1365 ( .A(n767), .Y(n1546) );
  sky130_fd_sc_hd__nor2_1 U1366 ( .A(n1406), .B(n403), .Y(n767) );
  sky130_fd_sc_hd__nand2_1 U1367 ( .A(n424), .B(n768), .Y(n774) );
  sky130_fd_sc_hd__clkinv_1 U1368 ( .A(n608), .Y(n768) );
  sky130_fd_sc_hd__nand2_1 U1369 ( .A(n1561), .B(n731), .Y(n608) );
  sky130_fd_sc_hd__nand2_1 U1370 ( .A(n1384), .B(n1525), .Y(n1544) );
  sky130_fd_sc_hd__a21oi_1 U1371 ( .A1(n1562), .A2(n1563), .B1(n234), .Y(n1543) );
  sky130_fd_sc_hd__o21ai_0 U1372 ( .A1(n1564), .A2(n1565), .B1(n338), .Y(n1563) );
  sky130_fd_sc_hd__o21bai_1 U1373 ( .A1(n424), .A2(n615), .B1_N(n1539), .Y(
        n1565) );
  sky130_fd_sc_hd__nand4_1 U1374 ( .A(n751), .B(n1566), .C(n1567), .D(n1262), 
        .Y(n1539) );
  sky130_fd_sc_hd__o21ai_0 U1375 ( .A1(n760), .A2(n1568), .B1(n1569), .Y(n1567) );
  sky130_fd_sc_hd__clkinv_1 U1376 ( .A(n757), .Y(n1568) );
  sky130_fd_sc_hd__a2111oi_0 U1377 ( .A1(n1570), .A2(n621), .B1(n1471), .C1(
        n632), .D1(n625), .Y(n751) );
  sky130_fd_sc_hd__nand4_1 U1378 ( .A(n1571), .B(n1472), .C(n1572), .D(n1573), 
        .Y(n632) );
  sky130_fd_sc_hd__nor3_1 U1379 ( .A(n1574), .B(n359), .C(n1555), .Y(n1573) );
  sky130_fd_sc_hd__nor2b_1 U1380 ( .B_N(n1542), .A(n434), .Y(n615) );
  sky130_fd_sc_hd__o21ai_0 U1381 ( .A1(n500), .A2(n1521), .B1(n1575), .Y(n1564) );
  sky130_fd_sc_hd__a31oi_1 U1382 ( .A1(n1576), .A2(n419), .A3(n626), .B1(n761), 
        .Y(n1575) );
  sky130_fd_sc_hd__o41ai_1 U1383 ( .A1(n1577), .A2(n1532), .A3(n748), .A4(n583), .B1(i_tv80_core_ISet[1]), .Y(n1562) );
  sky130_fd_sc_hd__clkinv_1 U1384 ( .A(n1533), .Y(n748) );
  sky130_fd_sc_hd__o221ai_1 U1385 ( .A1(n741), .A2(n1578), .B1(n396), .B2(
        n1536), .C1(n1579), .Y(n1532) );
  sky130_fd_sc_hd__nand2_1 U1386 ( .A(n1569), .B(n609), .Y(n1579) );
  sky130_fd_sc_hd__clkinv_1 U1387 ( .A(n749), .Y(n1536) );
  sky130_fd_sc_hd__a21oi_1 U1388 ( .A1(n381), .A2(n421), .B1(n358), .Y(n1578)
         );
  sky130_fd_sc_hd__o221ai_1 U1389 ( .A1(n585), .A2(n500), .B1(n1258), .B2(n740), .C1(n1535), .Y(n1577) );
  sky130_fd_sc_hd__nor2_1 U1390 ( .A(n749), .B(n424), .Y(n740) );
  sky130_fd_sc_hd__nand3_1 U1391 ( .A(n381), .B(n505), .C(n1580), .Y(n749) );
  sky130_fd_sc_hd__clkinv_1 U1392 ( .A(n351), .Y(n381) );
  sky130_fd_sc_hd__clkinv_1 U1393 ( .A(n586), .Y(n1258) );
  sky130_fd_sc_hd__nor2_1 U1394 ( .A(n1520), .B(n239), .Y(n1513) );
  sky130_fd_sc_hd__clkinv_1 U1395 ( .A(n1519), .Y(n239) );
  sky130_fd_sc_hd__o2111ai_1 U1396 ( .A1(n1338), .A2(n1581), .B1(n1582), .C1(
        n402), .D1(n1583), .Y(n1519) );
  sky130_fd_sc_hd__o21ai_0 U1397 ( .A1(n1584), .A2(n1585), .B1(
        i_tv80_core_ISet[1]), .Y(n1583) );
  sky130_fd_sc_hd__nand4_1 U1398 ( .A(n741), .B(n1586), .C(n1534), .D(n1533), 
        .Y(n1585) );
  sky130_fd_sc_hd__a211oi_1 U1399 ( .A1(n1587), .A2(n1551), .B1(n1461), .C1(
        n1281), .Y(n1533) );
  sky130_fd_sc_hd__clkinv_1 U1400 ( .A(n583), .Y(n1534) );
  sky130_fd_sc_hd__nand4_1 U1401 ( .A(n1259), .B(n743), .C(n765), .D(n1588), 
        .Y(n583) );
  sky130_fd_sc_hd__nor2_1 U1402 ( .A(n750), .B(n746), .Y(n1588) );
  sky130_fd_sc_hd__o2111ai_1 U1403 ( .A1(n1589), .A2(n1590), .B1(n1591), .C1(
        n1550), .D1(n1592), .Y(n746) );
  sky130_fd_sc_hd__and3_1 U1404 ( .A(n1593), .B(n719), .C(n1559), .X(n1589) );
  sky130_fd_sc_hd__a21oi_1 U1405 ( .A1(n1153), .A2(n580), .B1(n1594), .Y(n750)
         );
  sky130_fd_sc_hd__nand2_1 U1406 ( .A(n1595), .B(n731), .Y(n1259) );
  sky130_fd_sc_hd__clkinv_1 U1407 ( .A(n587), .Y(n741) );
  sky130_fd_sc_hd__nand2_1 U1408 ( .A(n1596), .B(n711), .Y(n587) );
  sky130_fd_sc_hd__o2111ai_1 U1409 ( .A1(n1597), .A2(n601), .B1(n1598), .C1(
        n450), .D1(n585), .Y(n1584) );
  sky130_fd_sc_hd__nor2_1 U1410 ( .A(n1263), .B(n440), .Y(n585) );
  sky130_fd_sc_hd__nor2_1 U1411 ( .A(n548), .B(n1599), .Y(n1263) );
  sky130_fd_sc_hd__o21ai_0 U1412 ( .A1(n1600), .A2(n1601), .B1(n436), .Y(n1598) );
  sky130_fd_sc_hd__clkinv_1 U1413 ( .A(n609), .Y(n1597) );
  sky130_fd_sc_hd__o41ai_1 U1414 ( .A1(n1602), .A2(n1603), .A3(n1604), .A4(
        n1605), .B1(n338), .Y(n1582) );
  sky130_fd_sc_hd__o21ai_0 U1415 ( .A1(n424), .A2(n1542), .B1(n1580), .Y(n1605) );
  sky130_fd_sc_hd__a21oi_1 U1416 ( .A1(n505), .A2(n764), .B1(n1402), .Y(n1580)
         );
  sky130_fd_sc_hd__o2bb2ai_1 U1417 ( .B1(n500), .B2(n1472), .A1_N(n1569), 
        .A2_N(n760), .Y(n1604) );
  sky130_fd_sc_hd__nor2_1 U1418 ( .A(n1606), .B(n1557), .Y(n760) );
  sky130_fd_sc_hd__a2111oi_0 U1419 ( .A1(n505), .A2(n643), .B1(n424), .C1(
        n1607), .D1(n1402), .Y(n500) );
  sky130_fd_sc_hd__nand4_1 U1420 ( .A(n604), .B(n1540), .C(n1566), .D(n757), 
        .Y(n1603) );
  sky130_fd_sc_hd__nor4_1 U1421 ( .A(n1282), .B(n1277), .C(n1281), .D(n435), 
        .Y(n757) );
  sky130_fd_sc_hd__a21oi_1 U1422 ( .A1(n1608), .A2(n577), .B1(n719), .Y(n1281)
         );
  sky130_fd_sc_hd__clkinv_1 U1423 ( .A(n580), .Y(n1282) );
  sky130_fd_sc_hd__nor3b_1 U1424 ( .C_N(n616), .A(n1280), .B(n762), .Y(n1566)
         );
  sky130_fd_sc_hd__nor2_1 U1425 ( .A(n1550), .B(n719), .Y(n762) );
  sky130_fd_sc_hd__o22ai_1 U1426 ( .A1(n426), .A2(n580), .B1(n1609), .B2(n719), 
        .Y(n1280) );
  sky130_fd_sc_hd__nor4b_1 U1427 ( .D_N(n1610), .A(n599), .B(n430), .C(n754), 
        .Y(n616) );
  sky130_fd_sc_hd__nand4_1 U1428 ( .A(n1611), .B(n432), .C(n1612), .D(n1613), 
        .Y(n754) );
  sky130_fd_sc_hd__nor4b_1 U1429 ( .D_N(n1276), .A(n1614), .B(n1461), .C(n1195), .Y(n1613) );
  sky130_fd_sc_hd__nor2_1 U1430 ( .A(n1606), .B(n1615), .Y(n1195) );
  sky130_fd_sc_hd__nor2_1 U1431 ( .A(n576), .B(n1594), .Y(n1461) );
  sky130_fd_sc_hd__o221ai_1 U1432 ( .A1(n1616), .A2(n1617), .B1(n1556), .B2(
        n543), .C1(n1384), .Y(n1614) );
  sky130_fd_sc_hd__nand2_1 U1433 ( .A(n597), .B(n788), .Y(n1384) );
  sky130_fd_sc_hd__nor2_1 U1434 ( .A(n788), .B(n598), .Y(n1616) );
  sky130_fd_sc_hd__nand2_1 U1435 ( .A(n1549), .B(n1618), .Y(n1276) );
  sky130_fd_sc_hd__a222oi_1 U1436 ( .A1(n350), .A2(n1058), .B1(n626), .B2(
        n1297), .C1(n598), .C2(n422), .Y(n1612) );
  sky130_fd_sc_hd__clkinv_1 U1437 ( .A(n652), .Y(n422) );
  sky130_fd_sc_hd__nor2_1 U1438 ( .A(n605), .B(n1383), .Y(n1611) );
  sky130_fd_sc_hd__o21ai_0 U1439 ( .A1(n1617), .A2(n1619), .B1(n1385), .Y(
        n1383) );
  sky130_fd_sc_hd__a21o_1 U1440 ( .A1(n652), .A2(n543), .B1(n1619), .X(n1385)
         );
  sky130_fd_sc_hd__nand2b_1 U1441 ( .A_N(n1344), .B(n1271), .Y(n605) );
  sky130_fd_sc_hd__nand2_1 U1442 ( .A(n1560), .B(n725), .Y(n1271) );
  sky130_fd_sc_hd__o22ai_1 U1443 ( .A1(n544), .A2(n1620), .B1(n1550), .B2(
        n1557), .Y(n1344) );
  sky130_fd_sc_hd__nor2_1 U1444 ( .A(n638), .B(n1260), .Y(n1610) );
  sky130_fd_sc_hd__o21ai_0 U1445 ( .A1(n427), .A2(n1593), .B1(n734), .Y(n1260)
         );
  sky130_fd_sc_hd__nand2_1 U1446 ( .A(n350), .B(n1551), .Y(n734) );
  sky130_fd_sc_hd__clkinv_1 U1447 ( .A(n1297), .Y(n1593) );
  sky130_fd_sc_hd__clkinv_1 U1448 ( .A(n789), .Y(n427) );
  sky130_fd_sc_hd__o22ai_1 U1449 ( .A1(n1609), .A2(n1559), .B1(n1621), .B2(
        n426), .Y(n638) );
  sky130_fd_sc_hd__and2_0 U1450 ( .A(n1622), .B(n1619), .X(n1621) );
  sky130_fd_sc_hd__nor2_1 U1451 ( .A(n726), .B(n1595), .Y(n1559) );
  sky130_fd_sc_hd__a21boi_0 U1452 ( .A1(n1569), .A2(n761), .B1_N(n495), .Y(
        n1540) );
  sky130_fd_sc_hd__a21oi_1 U1453 ( .A1(n1576), .A2(n626), .B1(n620), .Y(n495)
         );
  sky130_fd_sc_hd__clkinv_1 U1454 ( .A(n1521), .Y(n620) );
  sky130_fd_sc_hd__nand2_1 U1455 ( .A(n350), .B(n1576), .Y(n1521) );
  sky130_fd_sc_hd__nor2_1 U1456 ( .A(n635), .B(n1557), .Y(n761) );
  sky130_fd_sc_hd__clkinv_1 U1457 ( .A(n601), .Y(n1569) );
  sky130_fd_sc_hd__nor2_1 U1458 ( .A(n1570), .B(n646), .Y(n601) );
  sky130_fd_sc_hd__a311oi_1 U1459 ( .A1(n763), .A2(n602), .A3(n491), .B1(n621), 
        .C1(n1471), .Y(n604) );
  sky130_fd_sc_hd__clkinv_1 U1460 ( .A(n755), .Y(n621) );
  sky130_fd_sc_hd__o2111ai_1 U1461 ( .A1(n419), .A2(n1341), .B1(n1623), .C1(
        n1624), .D1(n1625), .Y(n1602) );
  sky130_fd_sc_hd__nor4b_1 U1462 ( .D_N(n1626), .A(n434), .B(n1574), .C(n625), 
        .Y(n1625) );
  sky130_fd_sc_hd__a31oi_1 U1463 ( .A1(n602), .A2(n1627), .A3(n603), .B1(n1628), .Y(n1624) );
  sky130_fd_sc_hd__o21a_1 U1464 ( .A1(n606), .A2(n1629), .B1(n1570), .X(n1628)
         );
  sky130_fd_sc_hd__clkinv_1 U1465 ( .A(n1586), .Y(n1570) );
  sky130_fd_sc_hd__nor3_1 U1466 ( .A(n764), .B(mcycle[2]), .C(n1630), .Y(n1586) );
  sky130_fd_sc_hd__o21ai_0 U1467 ( .A1(n1631), .A2(n1300), .B1(n1572), .Y(n606) );
  sky130_fd_sc_hd__o21ai_0 U1468 ( .A1(n564), .A2(n1254), .B1(n1555), .Y(n1623) );
  sky130_fd_sc_hd__nand3b_1 U1469 ( .A_N(n1507), .B(n1632), .C(n107), .Y(n1520) );
  sky130_fd_sc_hd__clkinv_1 U1470 ( .A(n1505), .Y(n107) );
  sky130_fd_sc_hd__nand2_1 U1471 ( .A(n656), .B(n158), .Y(n1505) );
  sky130_fd_sc_hd__nand2_1 U1472 ( .A(n455), .B(n663), .Y(n158) );
  sky130_fd_sc_hd__nand3_1 U1473 ( .A(n1047), .B(n159), .C(n876), .Y(n663) );
  sky130_fd_sc_hd__clkinv_1 U1474 ( .A(n874), .Y(n1047) );
  sky130_fd_sc_hd__nor2_1 U1475 ( .A(n65), .B(n906), .Y(n455) );
  sky130_fd_sc_hd__nor2_1 U1476 ( .A(n654), .B(n805), .Y(n906) );
  sky130_fd_sc_hd__nand4_1 U1477 ( .A(n1633), .B(n1634), .C(n1635), .D(n874), 
        .Y(n805) );
  sky130_fd_sc_hd__xor2_1 U1478 ( .A(n554), .B(n1636), .X(n1635) );
  sky130_fd_sc_hd__a31oi_1 U1479 ( .A1(n1637), .A2(n1638), .A3(n436), .B1(n234), .Y(n1636) );
  sky130_fd_sc_hd__a21o_1 U1480 ( .A1(n743), .A2(n1639), .B1(n370), .X(n1638)
         );
  sky130_fd_sc_hd__nand2_1 U1481 ( .A(n1297), .B(n1298), .Y(n743) );
  sky130_fd_sc_hd__o21ai_0 U1482 ( .A1(n1296), .A2(n1295), .B1(n577), .Y(n1298) );
  sky130_fd_sc_hd__nand2_1 U1483 ( .A(n1153), .B(n581), .Y(n1297) );
  sky130_fd_sc_hd__o31ai_1 U1484 ( .A1(n1640), .A2(n599), .A3(n1343), .B1(n338), .Y(n1637) );
  sky130_fd_sc_hd__xor2_1 U1485 ( .A(n560), .B(n1641), .X(n1634) );
  sky130_fd_sc_hd__a31oi_1 U1486 ( .A1(n1642), .A2(n845), .A3(n436), .B1(n234), 
        .Y(n1641) );
  sky130_fd_sc_hd__nand2_1 U1487 ( .A(n1574), .B(n338), .Y(n845) );
  sky130_fd_sc_hd__nor2_1 U1488 ( .A(n653), .B(n543), .Y(n1574) );
  sky130_fd_sc_hd__mux2i_1 U1489 ( .A0(n234), .A1(n1643), .S(tstate[2]), .Y(
        n1633) );
  sky130_fd_sc_hd__nor2_1 U1490 ( .A(n234), .B(n436), .Y(n1643) );
  sky130_fd_sc_hd__clkinv_1 U1491 ( .A(n245), .Y(n234) );
  sky130_fd_sc_hd__nand2_1 U1492 ( .A(n1402), .B(n646), .Y(n245) );
  sky130_fd_sc_hd__nor2_1 U1493 ( .A(n505), .B(n643), .Y(n1402) );
  sky130_fd_sc_hd__clkinv_1 U1494 ( .A(reset_n), .Y(n65) );
  sky130_fd_sc_hd__clkinv_1 U1495 ( .A(n654), .Y(n656) );
  sky130_fd_sc_hd__nand2_1 U1496 ( .A(n159), .B(n874), .Y(n654) );
  sky130_fd_sc_hd__clkinv_1 U1497 ( .A(n490), .Y(n159) );
  sky130_fd_sc_hd__nand2_1 U1498 ( .A(reset_n), .B(busak_n), .Y(n490) );
  sky130_fd_sc_hd__a31oi_1 U1499 ( .A1(i_tv80_core_IntCycle), .A2(n763), .A3(
        n1644), .B1(n1506), .Y(n1632) );
  sky130_fd_sc_hd__nor4_1 U1500 ( .A(n1403), .B(n1405), .C(n1404), .D(n1300), 
        .Y(n1506) );
  sky130_fd_sc_hd__xor2_1 U1501 ( .A(n589), .B(n643), .X(n1404) );
  sky130_fd_sc_hd__clkinv_1 U1502 ( .A(i_tv80_core_mcycles[1]), .Y(n589) );
  sky130_fd_sc_hd__xor2_1 U1503 ( .A(n611), .B(n646), .X(n1405) );
  sky130_fd_sc_hd__clkinv_1 U1504 ( .A(i_tv80_core_mcycles[0]), .Y(n611) );
  sky130_fd_sc_hd__xor2_1 U1505 ( .A(n488), .B(n505), .X(n1403) );
  sky130_fd_sc_hd__clkinv_1 U1506 ( .A(i_tv80_core_mcycles[2]), .Y(n488) );
  sky130_fd_sc_hd__clkinv_1 U1507 ( .A(n1392), .Y(n1644) );
  sky130_fd_sc_hd__nand2_1 U1508 ( .A(i_tv80_core_IStatus[1]), .B(n569), .Y(
        n1392) );
  sky130_fd_sc_hd__clkinv_1 U1509 ( .A(i_tv80_core_IStatus[0]), .Y(n569) );
  sky130_fd_sc_hd__nand4_1 U1510 ( .A(n464), .B(n1376), .C(n1508), .D(n1517), 
        .Y(n1507) );
  sky130_fd_sc_hd__nand3_1 U1511 ( .A(n338), .B(n1374), .C(n1607), .Y(n1517)
         );
  sky130_fd_sc_hd__clkinv_1 U1512 ( .A(n248), .Y(n1508) );
  sky130_fd_sc_hd__nor3_1 U1513 ( .A(n653), .B(n1617), .C(n372), .Y(n248) );
  sky130_fd_sc_hd__nand2_1 U1514 ( .A(n442), .B(n1645), .Y(n1376) );
  sky130_fd_sc_hd__o311a_1 U1515 ( .A1(n1341), .A2(n372), .A3(n1274), .B1(n538), .C1(n1646), .X(n464) );
  sky130_fd_sc_hd__o21ai_0 U1516 ( .A1(n1343), .A2(n1647), .B1(n442), .Y(n1646) );
  sky130_fd_sc_hd__o32ai_1 U1517 ( .A1(n602), .A2(n1550), .A3(n1557), .B1(n544), .B2(n1620), .Y(n1647) );
  sky130_fd_sc_hd__clkinv_1 U1518 ( .A(n1571), .Y(n1343) );
  sky130_fd_sc_hd__nand2_1 U1519 ( .A(n610), .B(n439), .Y(n538) );
  sky130_fd_sc_hd__clkinv_1 U1520 ( .A(n1535), .Y(n610) );
  sky130_fd_sc_hd__nand3_1 U1521 ( .A(n1555), .B(n1300), .C(
        i_tv80_core_IntCycle), .Y(n1341) );
  sky130_fd_sc_hd__mux2i_1 U1522 ( .A0(n1648), .A1(n1649), .S(n1650), .Y(
        i_tv80_core_i_reg_n549) );
  sky130_fd_sc_hd__mux2i_1 U1523 ( .A0(n1651), .A1(n1652), .S(n1650), .Y(
        i_tv80_core_i_reg_n548) );
  sky130_fd_sc_hd__mux2i_1 U1524 ( .A0(n1653), .A1(n1654), .S(n1650), .Y(
        i_tv80_core_i_reg_n547) );
  sky130_fd_sc_hd__mux2i_1 U1525 ( .A0(n1655), .A1(n1656), .S(n1650), .Y(
        i_tv80_core_i_reg_n546) );
  sky130_fd_sc_hd__mux2i_1 U1526 ( .A0(n1657), .A1(n1658), .S(n1650), .Y(
        i_tv80_core_i_reg_n545) );
  sky130_fd_sc_hd__mux2i_1 U1527 ( .A0(n1659), .A1(n1660), .S(n1650), .Y(
        i_tv80_core_i_reg_n544) );
  sky130_fd_sc_hd__mux2i_1 U1528 ( .A0(n1661), .A1(n1662), .S(n1650), .Y(
        i_tv80_core_i_reg_n543) );
  sky130_fd_sc_hd__mux2i_1 U1529 ( .A0(n1663), .A1(n1664), .S(n1650), .Y(
        i_tv80_core_i_reg_n542) );
  sky130_fd_sc_hd__nor2b_1 U1530 ( .B_N(n1665), .A(n1666), .Y(n1650) );
  sky130_fd_sc_hd__mux2i_1 U1531 ( .A0(n1667), .A1(n1649), .S(n1668), .Y(
        i_tv80_core_i_reg_n541) );
  sky130_fd_sc_hd__mux2i_1 U1532 ( .A0(n1669), .A1(n1652), .S(n1668), .Y(
        i_tv80_core_i_reg_n540) );
  sky130_fd_sc_hd__mux2i_1 U1533 ( .A0(n1670), .A1(n1654), .S(n1668), .Y(
        i_tv80_core_i_reg_n539) );
  sky130_fd_sc_hd__mux2i_1 U1534 ( .A0(n1671), .A1(n1656), .S(n1668), .Y(
        i_tv80_core_i_reg_n538) );
  sky130_fd_sc_hd__mux2i_1 U1535 ( .A0(n1672), .A1(n1658), .S(n1668), .Y(
        i_tv80_core_i_reg_n537) );
  sky130_fd_sc_hd__mux2i_1 U1536 ( .A0(n1673), .A1(n1660), .S(n1668), .Y(
        i_tv80_core_i_reg_n536) );
  sky130_fd_sc_hd__mux2i_1 U1537 ( .A0(n1674), .A1(n1662), .S(n1668), .Y(
        i_tv80_core_i_reg_n535) );
  sky130_fd_sc_hd__mux2i_1 U1538 ( .A0(n1675), .A1(n1664), .S(n1668), .Y(
        i_tv80_core_i_reg_n534) );
  sky130_fd_sc_hd__nor2b_1 U1539 ( .B_N(n1665), .A(n1676), .Y(n1668) );
  sky130_fd_sc_hd__mux2i_1 U1540 ( .A0(n1677), .A1(n1649), .S(n1678), .Y(
        i_tv80_core_i_reg_n533) );
  sky130_fd_sc_hd__mux2i_1 U1541 ( .A0(n1679), .A1(n1652), .S(n1678), .Y(
        i_tv80_core_i_reg_n532) );
  sky130_fd_sc_hd__mux2i_1 U1542 ( .A0(n1680), .A1(n1654), .S(n1678), .Y(
        i_tv80_core_i_reg_n531) );
  sky130_fd_sc_hd__mux2i_1 U1543 ( .A0(n1681), .A1(n1656), .S(n1678), .Y(
        i_tv80_core_i_reg_n530) );
  sky130_fd_sc_hd__mux2i_1 U1544 ( .A0(n1682), .A1(n1658), .S(n1678), .Y(
        i_tv80_core_i_reg_n529) );
  sky130_fd_sc_hd__mux2i_1 U1545 ( .A0(n1683), .A1(n1660), .S(n1678), .Y(
        i_tv80_core_i_reg_n528) );
  sky130_fd_sc_hd__mux2i_1 U1546 ( .A0(n1684), .A1(n1662), .S(n1678), .Y(
        i_tv80_core_i_reg_n527) );
  sky130_fd_sc_hd__mux2i_1 U1547 ( .A0(n1685), .A1(n1664), .S(n1678), .Y(
        i_tv80_core_i_reg_n526) );
  sky130_fd_sc_hd__nor2b_1 U1548 ( .B_N(n1665), .A(n1686), .Y(n1678) );
  sky130_fd_sc_hd__mux2i_1 U1549 ( .A0(n1687), .A1(n1649), .S(n1688), .Y(
        i_tv80_core_i_reg_n525) );
  sky130_fd_sc_hd__mux2i_1 U1550 ( .A0(n1689), .A1(n1652), .S(n1688), .Y(
        i_tv80_core_i_reg_n524) );
  sky130_fd_sc_hd__mux2i_1 U1551 ( .A0(n1690), .A1(n1654), .S(n1688), .Y(
        i_tv80_core_i_reg_n523) );
  sky130_fd_sc_hd__mux2i_1 U1552 ( .A0(n1691), .A1(n1656), .S(n1688), .Y(
        i_tv80_core_i_reg_n522) );
  sky130_fd_sc_hd__mux2i_1 U1553 ( .A0(n1692), .A1(n1658), .S(n1688), .Y(
        i_tv80_core_i_reg_n521) );
  sky130_fd_sc_hd__mux2i_1 U1554 ( .A0(n1693), .A1(n1660), .S(n1688), .Y(
        i_tv80_core_i_reg_n520) );
  sky130_fd_sc_hd__mux2i_1 U1555 ( .A0(n1694), .A1(n1662), .S(n1688), .Y(
        i_tv80_core_i_reg_n519) );
  sky130_fd_sc_hd__mux2i_1 U1556 ( .A0(n1695), .A1(n1664), .S(n1688), .Y(
        i_tv80_core_i_reg_n518) );
  sky130_fd_sc_hd__nor2b_1 U1557 ( .B_N(n1665), .A(n1696), .Y(n1688) );
  sky130_fd_sc_hd__mux2i_1 U1558 ( .A0(n1697), .A1(n1649), .S(n1698), .Y(
        i_tv80_core_i_reg_n517) );
  sky130_fd_sc_hd__mux2i_1 U1559 ( .A0(n1699), .A1(n1652), .S(n1698), .Y(
        i_tv80_core_i_reg_n516) );
  sky130_fd_sc_hd__mux2i_1 U1560 ( .A0(n1700), .A1(n1654), .S(n1698), .Y(
        i_tv80_core_i_reg_n515) );
  sky130_fd_sc_hd__mux2i_1 U1561 ( .A0(n1701), .A1(n1656), .S(n1698), .Y(
        i_tv80_core_i_reg_n514) );
  sky130_fd_sc_hd__mux2i_1 U1562 ( .A0(n1702), .A1(n1658), .S(n1698), .Y(
        i_tv80_core_i_reg_n513) );
  sky130_fd_sc_hd__mux2i_1 U1563 ( .A0(n1703), .A1(n1660), .S(n1698), .Y(
        i_tv80_core_i_reg_n512) );
  sky130_fd_sc_hd__mux2i_1 U1564 ( .A0(n1704), .A1(n1662), .S(n1698), .Y(
        i_tv80_core_i_reg_n511) );
  sky130_fd_sc_hd__mux2i_1 U1565 ( .A0(n1705), .A1(n1664), .S(n1698), .Y(
        i_tv80_core_i_reg_n510) );
  sky130_fd_sc_hd__nor2b_1 U1566 ( .B_N(n1665), .A(n1706), .Y(n1698) );
  sky130_fd_sc_hd__mux2i_1 U1567 ( .A0(n1707), .A1(n1649), .S(n1708), .Y(
        i_tv80_core_i_reg_n509) );
  sky130_fd_sc_hd__mux2i_1 U1568 ( .A0(n1709), .A1(n1652), .S(n1708), .Y(
        i_tv80_core_i_reg_n508) );
  sky130_fd_sc_hd__mux2i_1 U1569 ( .A0(n1710), .A1(n1654), .S(n1708), .Y(
        i_tv80_core_i_reg_n507) );
  sky130_fd_sc_hd__mux2i_1 U1570 ( .A0(n1711), .A1(n1656), .S(n1708), .Y(
        i_tv80_core_i_reg_n506) );
  sky130_fd_sc_hd__mux2i_1 U1571 ( .A0(n1712), .A1(n1658), .S(n1708), .Y(
        i_tv80_core_i_reg_n505) );
  sky130_fd_sc_hd__mux2i_1 U1572 ( .A0(n1713), .A1(n1660), .S(n1708), .Y(
        i_tv80_core_i_reg_n504) );
  sky130_fd_sc_hd__mux2i_1 U1573 ( .A0(n1714), .A1(n1662), .S(n1708), .Y(
        i_tv80_core_i_reg_n503) );
  sky130_fd_sc_hd__mux2i_1 U1574 ( .A0(n1715), .A1(n1664), .S(n1708), .Y(
        i_tv80_core_i_reg_n502) );
  sky130_fd_sc_hd__nor2b_1 U1575 ( .B_N(n1665), .A(n1716), .Y(n1708) );
  sky130_fd_sc_hd__mux2i_1 U1576 ( .A0(n1717), .A1(n1649), .S(n1718), .Y(
        i_tv80_core_i_reg_n501) );
  sky130_fd_sc_hd__mux2i_1 U1577 ( .A0(n1719), .A1(n1652), .S(n1718), .Y(
        i_tv80_core_i_reg_n500) );
  sky130_fd_sc_hd__mux2i_1 U1578 ( .A0(n1720), .A1(n1654), .S(n1718), .Y(
        i_tv80_core_i_reg_n499) );
  sky130_fd_sc_hd__mux2i_1 U1579 ( .A0(n1721), .A1(n1656), .S(n1718), .Y(
        i_tv80_core_i_reg_n498) );
  sky130_fd_sc_hd__mux2i_1 U1580 ( .A0(n1722), .A1(n1658), .S(n1718), .Y(
        i_tv80_core_i_reg_n497) );
  sky130_fd_sc_hd__mux2i_1 U1581 ( .A0(n1723), .A1(n1660), .S(n1718), .Y(
        i_tv80_core_i_reg_n496) );
  sky130_fd_sc_hd__mux2i_1 U1582 ( .A0(n1724), .A1(n1662), .S(n1718), .Y(
        i_tv80_core_i_reg_n495) );
  sky130_fd_sc_hd__mux2i_1 U1583 ( .A0(n1725), .A1(n1664), .S(n1718), .Y(
        i_tv80_core_i_reg_n494) );
  sky130_fd_sc_hd__nor2b_1 U1584 ( .B_N(n1665), .A(n1726), .Y(n1718) );
  sky130_fd_sc_hd__mux2i_1 U1585 ( .A0(n1727), .A1(n1649), .S(n1728), .Y(
        i_tv80_core_i_reg_n493) );
  sky130_fd_sc_hd__a221oi_1 U1586 ( .A1(i_tv80_core_ID16[7]), .A2(n1729), .B1(
        n1730), .B2(i_tv80_core_RegBusA_r[7]), .C1(n1731), .Y(n1649) );
  sky130_fd_sc_hd__o22ai_1 U1587 ( .A1(n201), .A2(n1732), .B1(n220), .B2(n1733), .Y(n1731) );
  sky130_fd_sc_hd__nor4_1 U1588 ( .A(n1734), .B(n1735), .C(n1736), .D(n1737), 
        .Y(n220) );
  sky130_fd_sc_hd__o22ai_1 U1589 ( .A1(n1677), .A2(n1738), .B1(n1648), .B2(
        n1739), .Y(n1737) );
  sky130_fd_sc_hd__o22ai_1 U1590 ( .A1(n1717), .A2(n1740), .B1(n1697), .B2(
        n1741), .Y(n1736) );
  sky130_fd_sc_hd__o22ai_1 U1591 ( .A1(n1687), .A2(n1742), .B1(n1667), .B2(
        n1743), .Y(n1735) );
  sky130_fd_sc_hd__o22ai_1 U1592 ( .A1(n1727), .A2(n1744), .B1(n1707), .B2(
        n1745), .Y(n1734) );
  sky130_fd_sc_hd__mux2i_1 U1593 ( .A0(n1746), .A1(n1652), .S(n1728), .Y(
        i_tv80_core_i_reg_n492) );
  sky130_fd_sc_hd__a221oi_1 U1594 ( .A1(i_tv80_core_ID16[6]), .A2(n1729), .B1(
        n1730), .B2(i_tv80_core_RegBusA_r[6]), .C1(n1747), .Y(n1652) );
  sky130_fd_sc_hd__o22ai_1 U1595 ( .A1(n198), .A2(n1732), .B1(n272), .B2(n1733), .Y(n1747) );
  sky130_fd_sc_hd__nor4_1 U1596 ( .A(n1748), .B(n1749), .C(n1750), .D(n1751), 
        .Y(n272) );
  sky130_fd_sc_hd__o22ai_1 U1597 ( .A1(n1738), .A2(n1679), .B1(n1739), .B2(
        n1651), .Y(n1751) );
  sky130_fd_sc_hd__o22ai_1 U1598 ( .A1(n1740), .A2(n1719), .B1(n1741), .B2(
        n1699), .Y(n1750) );
  sky130_fd_sc_hd__o22ai_1 U1599 ( .A1(n1742), .A2(n1689), .B1(n1743), .B2(
        n1669), .Y(n1749) );
  sky130_fd_sc_hd__o22ai_1 U1600 ( .A1(n1744), .A2(n1746), .B1(n1745), .B2(
        n1709), .Y(n1748) );
  sky130_fd_sc_hd__mux2i_1 U1601 ( .A0(n1752), .A1(n1654), .S(n1728), .Y(
        i_tv80_core_i_reg_n491) );
  sky130_fd_sc_hd__a221oi_1 U1602 ( .A1(i_tv80_core_ID16[5]), .A2(n1729), .B1(
        n1730), .B2(i_tv80_core_RegBusA_r[5]), .C1(n1753), .Y(n1654) );
  sky130_fd_sc_hd__o22ai_1 U1603 ( .A1(n195), .A2(n1732), .B1(n280), .B2(n1733), .Y(n1753) );
  sky130_fd_sc_hd__nor4_1 U1604 ( .A(n1754), .B(n1755), .C(n1756), .D(n1757), 
        .Y(n280) );
  sky130_fd_sc_hd__o22ai_1 U1605 ( .A1(n1738), .A2(n1680), .B1(n1739), .B2(
        n1653), .Y(n1757) );
  sky130_fd_sc_hd__o22ai_1 U1606 ( .A1(n1740), .A2(n1720), .B1(n1741), .B2(
        n1700), .Y(n1756) );
  sky130_fd_sc_hd__o22ai_1 U1607 ( .A1(n1742), .A2(n1690), .B1(n1743), .B2(
        n1670), .Y(n1755) );
  sky130_fd_sc_hd__o22ai_1 U1608 ( .A1(n1744), .A2(n1752), .B1(n1745), .B2(
        n1710), .Y(n1754) );
  sky130_fd_sc_hd__mux2i_1 U1609 ( .A0(n1758), .A1(n1656), .S(n1728), .Y(
        i_tv80_core_i_reg_n490) );
  sky130_fd_sc_hd__a221oi_1 U1610 ( .A1(i_tv80_core_ID16[4]), .A2(n1729), .B1(
        n1730), .B2(i_tv80_core_RegBusA_r[4]), .C1(n1759), .Y(n1656) );
  sky130_fd_sc_hd__o22ai_1 U1611 ( .A1(n192), .A2(n1732), .B1(n329), .B2(n1733), .Y(n1759) );
  sky130_fd_sc_hd__nor4_1 U1612 ( .A(n1760), .B(n1761), .C(n1762), .D(n1763), 
        .Y(n329) );
  sky130_fd_sc_hd__o22ai_1 U1613 ( .A1(n1738), .A2(n1681), .B1(n1739), .B2(
        n1655), .Y(n1763) );
  sky130_fd_sc_hd__o22ai_1 U1614 ( .A1(n1740), .A2(n1721), .B1(n1741), .B2(
        n1701), .Y(n1762) );
  sky130_fd_sc_hd__o22ai_1 U1615 ( .A1(n1742), .A2(n1691), .B1(n1743), .B2(
        n1671), .Y(n1761) );
  sky130_fd_sc_hd__o22ai_1 U1616 ( .A1(n1744), .A2(n1758), .B1(n1745), .B2(
        n1711), .Y(n1760) );
  sky130_fd_sc_hd__mux2i_1 U1617 ( .A0(n1764), .A1(n1658), .S(n1728), .Y(
        i_tv80_core_i_reg_n489) );
  sky130_fd_sc_hd__a221oi_1 U1618 ( .A1(i_tv80_core_ID16[3]), .A2(n1729), .B1(
        n1730), .B2(i_tv80_core_RegBusA_r[3]), .C1(n1765), .Y(n1658) );
  sky130_fd_sc_hd__o22ai_1 U1619 ( .A1(n189), .A2(n1732), .B1(n320), .B2(n1733), .Y(n1765) );
  sky130_fd_sc_hd__nor4_1 U1620 ( .A(n1766), .B(n1767), .C(n1768), .D(n1769), 
        .Y(n320) );
  sky130_fd_sc_hd__o22ai_1 U1621 ( .A1(n1738), .A2(n1682), .B1(n1739), .B2(
        n1657), .Y(n1769) );
  sky130_fd_sc_hd__o22ai_1 U1622 ( .A1(n1740), .A2(n1722), .B1(n1741), .B2(
        n1702), .Y(n1768) );
  sky130_fd_sc_hd__o22ai_1 U1623 ( .A1(n1742), .A2(n1692), .B1(n1743), .B2(
        n1672), .Y(n1767) );
  sky130_fd_sc_hd__o22ai_1 U1624 ( .A1(n1744), .A2(n1764), .B1(n1745), .B2(
        n1712), .Y(n1766) );
  sky130_fd_sc_hd__mux2i_1 U1625 ( .A0(n1770), .A1(n1660), .S(n1728), .Y(
        i_tv80_core_i_reg_n488) );
  sky130_fd_sc_hd__a221oi_1 U1626 ( .A1(i_tv80_core_ID16[2]), .A2(n1729), .B1(
        n1730), .B2(i_tv80_core_RegBusA_r[2]), .C1(n1771), .Y(n1660) );
  sky130_fd_sc_hd__o22ai_1 U1627 ( .A1(n186), .A2(n1732), .B1(n312), .B2(n1733), .Y(n1771) );
  sky130_fd_sc_hd__nor4_1 U1628 ( .A(n1772), .B(n1773), .C(n1774), .D(n1775), 
        .Y(n312) );
  sky130_fd_sc_hd__o22ai_1 U1629 ( .A1(n1738), .A2(n1683), .B1(n1739), .B2(
        n1659), .Y(n1775) );
  sky130_fd_sc_hd__o22ai_1 U1630 ( .A1(n1740), .A2(n1723), .B1(n1741), .B2(
        n1703), .Y(n1774) );
  sky130_fd_sc_hd__o22ai_1 U1631 ( .A1(n1742), .A2(n1693), .B1(n1743), .B2(
        n1673), .Y(n1773) );
  sky130_fd_sc_hd__o22ai_1 U1632 ( .A1(n1744), .A2(n1770), .B1(n1745), .B2(
        n1713), .Y(n1772) );
  sky130_fd_sc_hd__mux2i_1 U1633 ( .A0(n1776), .A1(n1662), .S(n1728), .Y(
        i_tv80_core_i_reg_n487) );
  sky130_fd_sc_hd__a221oi_1 U1634 ( .A1(i_tv80_core_ID16[1]), .A2(n1729), .B1(
        n1730), .B2(i_tv80_core_RegBusA_r[1]), .C1(n1777), .Y(n1662) );
  sky130_fd_sc_hd__o22ai_1 U1635 ( .A1(n183), .A2(n1732), .B1(n304), .B2(n1733), .Y(n1777) );
  sky130_fd_sc_hd__nor4_1 U1636 ( .A(n1778), .B(n1779), .C(n1780), .D(n1781), 
        .Y(n304) );
  sky130_fd_sc_hd__o22ai_1 U1637 ( .A1(n1738), .A2(n1684), .B1(n1739), .B2(
        n1661), .Y(n1781) );
  sky130_fd_sc_hd__o22ai_1 U1638 ( .A1(n1740), .A2(n1724), .B1(n1741), .B2(
        n1704), .Y(n1780) );
  sky130_fd_sc_hd__o22ai_1 U1639 ( .A1(n1742), .A2(n1694), .B1(n1743), .B2(
        n1674), .Y(n1779) );
  sky130_fd_sc_hd__o22ai_1 U1640 ( .A1(n1744), .A2(n1776), .B1(n1745), .B2(
        n1714), .Y(n1778) );
  sky130_fd_sc_hd__mux2i_1 U1641 ( .A0(n1782), .A1(n1664), .S(n1728), .Y(
        i_tv80_core_i_reg_n486) );
  sky130_fd_sc_hd__nor2b_1 U1642 ( .B_N(n1665), .A(n1783), .Y(n1728) );
  sky130_fd_sc_hd__o21a_1 U1643 ( .A1(n1784), .A2(n1785), .B1(busak_n), .X(
        n1665) );
  sky130_fd_sc_hd__nor4_1 U1644 ( .A(i_tv80_core_Read_To_Reg_r[3]), .B(n1156), 
        .C(n210), .D(n776), .Y(n1784) );
  sky130_fd_sc_hd__clkinv_1 U1645 ( .A(i_tv80_core_Read_To_Reg_r[0]), .Y(n776)
         );
  sky130_fd_sc_hd__a221oi_1 U1646 ( .A1(n1729), .A2(n688), .B1(n1730), .B2(
        i_tv80_core_RegBusA_r[0]), .C1(n1786), .Y(n1664) );
  sky130_fd_sc_hd__o22ai_1 U1647 ( .A1(n175), .A2(n1732), .B1(n291), .B2(n1733), .Y(n1786) );
  sky130_fd_sc_hd__nor4_1 U1648 ( .A(n1787), .B(n1788), .C(n1789), .D(n1790), 
        .Y(n291) );
  sky130_fd_sc_hd__o22ai_1 U1649 ( .A1(n1738), .A2(n1685), .B1(n1739), .B2(
        n1663), .Y(n1790) );
  sky130_fd_sc_hd__o22ai_1 U1650 ( .A1(n1740), .A2(n1725), .B1(n1741), .B2(
        n1705), .Y(n1789) );
  sky130_fd_sc_hd__o22ai_1 U1651 ( .A1(n1742), .A2(n1695), .B1(n1743), .B2(
        n1675), .Y(n1788) );
  sky130_fd_sc_hd__o22ai_1 U1652 ( .A1(n1744), .A2(n1782), .B1(n1745), .B2(
        n1715), .Y(n1787) );
  sky130_fd_sc_hd__mux2i_1 U1653 ( .A0(n1791), .A1(n1792), .S(n1793), .Y(
        i_tv80_core_i_reg_n485) );
  sky130_fd_sc_hd__mux2i_1 U1654 ( .A0(n1794), .A1(n1795), .S(n1793), .Y(
        i_tv80_core_i_reg_n484) );
  sky130_fd_sc_hd__mux2i_1 U1655 ( .A0(n1796), .A1(n1797), .S(n1793), .Y(
        i_tv80_core_i_reg_n483) );
  sky130_fd_sc_hd__mux2i_1 U1656 ( .A0(n1798), .A1(n1799), .S(n1793), .Y(
        i_tv80_core_i_reg_n482) );
  sky130_fd_sc_hd__mux2i_1 U1657 ( .A0(n1800), .A1(n1801), .S(n1793), .Y(
        i_tv80_core_i_reg_n481) );
  sky130_fd_sc_hd__mux2i_1 U1658 ( .A0(n1802), .A1(n1803), .S(n1793), .Y(
        i_tv80_core_i_reg_n480) );
  sky130_fd_sc_hd__mux2i_1 U1659 ( .A0(n1804), .A1(n1805), .S(n1793), .Y(
        i_tv80_core_i_reg_n479) );
  sky130_fd_sc_hd__mux2i_1 U1660 ( .A0(n1806), .A1(n1807), .S(n1793), .Y(
        i_tv80_core_i_reg_n478) );
  sky130_fd_sc_hd__nor2b_1 U1661 ( .B_N(n1808), .A(n1666), .Y(n1793) );
  sky130_fd_sc_hd__mux2i_1 U1662 ( .A0(n1809), .A1(n1792), .S(n1810), .Y(
        i_tv80_core_i_reg_n477) );
  sky130_fd_sc_hd__mux2i_1 U1663 ( .A0(n1811), .A1(n1795), .S(n1810), .Y(
        i_tv80_core_i_reg_n476) );
  sky130_fd_sc_hd__mux2i_1 U1664 ( .A0(n1812), .A1(n1797), .S(n1810), .Y(
        i_tv80_core_i_reg_n475) );
  sky130_fd_sc_hd__mux2i_1 U1665 ( .A0(n1813), .A1(n1799), .S(n1810), .Y(
        i_tv80_core_i_reg_n474) );
  sky130_fd_sc_hd__mux2i_1 U1666 ( .A0(n1814), .A1(n1801), .S(n1810), .Y(
        i_tv80_core_i_reg_n473) );
  sky130_fd_sc_hd__mux2i_1 U1667 ( .A0(n1815), .A1(n1803), .S(n1810), .Y(
        i_tv80_core_i_reg_n472) );
  sky130_fd_sc_hd__mux2i_1 U1668 ( .A0(n1816), .A1(n1805), .S(n1810), .Y(
        i_tv80_core_i_reg_n471) );
  sky130_fd_sc_hd__mux2i_1 U1669 ( .A0(n1817), .A1(n1807), .S(n1810), .Y(
        i_tv80_core_i_reg_n470) );
  sky130_fd_sc_hd__nor2b_1 U1670 ( .B_N(n1808), .A(n1676), .Y(n1810) );
  sky130_fd_sc_hd__mux2i_1 U1671 ( .A0(n1818), .A1(n1792), .S(n1819), .Y(
        i_tv80_core_i_reg_n469) );
  sky130_fd_sc_hd__mux2i_1 U1672 ( .A0(n1820), .A1(n1795), .S(n1819), .Y(
        i_tv80_core_i_reg_n468) );
  sky130_fd_sc_hd__mux2i_1 U1673 ( .A0(n1821), .A1(n1797), .S(n1819), .Y(
        i_tv80_core_i_reg_n467) );
  sky130_fd_sc_hd__mux2i_1 U1674 ( .A0(n1822), .A1(n1799), .S(n1819), .Y(
        i_tv80_core_i_reg_n466) );
  sky130_fd_sc_hd__mux2i_1 U1675 ( .A0(n1823), .A1(n1801), .S(n1819), .Y(
        i_tv80_core_i_reg_n465) );
  sky130_fd_sc_hd__mux2i_1 U1676 ( .A0(n1824), .A1(n1803), .S(n1819), .Y(
        i_tv80_core_i_reg_n464) );
  sky130_fd_sc_hd__mux2i_1 U1677 ( .A0(n1825), .A1(n1805), .S(n1819), .Y(
        i_tv80_core_i_reg_n463) );
  sky130_fd_sc_hd__mux2i_1 U1678 ( .A0(n1826), .A1(n1807), .S(n1819), .Y(
        i_tv80_core_i_reg_n462) );
  sky130_fd_sc_hd__nor2b_1 U1679 ( .B_N(n1808), .A(n1686), .Y(n1819) );
  sky130_fd_sc_hd__mux2i_1 U1680 ( .A0(n1827), .A1(n1792), .S(n1828), .Y(
        i_tv80_core_i_reg_n461) );
  sky130_fd_sc_hd__mux2i_1 U1681 ( .A0(n1829), .A1(n1795), .S(n1828), .Y(
        i_tv80_core_i_reg_n460) );
  sky130_fd_sc_hd__mux2i_1 U1682 ( .A0(n1830), .A1(n1797), .S(n1828), .Y(
        i_tv80_core_i_reg_n459) );
  sky130_fd_sc_hd__mux2i_1 U1683 ( .A0(n1831), .A1(n1799), .S(n1828), .Y(
        i_tv80_core_i_reg_n458) );
  sky130_fd_sc_hd__mux2i_1 U1684 ( .A0(n1832), .A1(n1801), .S(n1828), .Y(
        i_tv80_core_i_reg_n457) );
  sky130_fd_sc_hd__mux2i_1 U1685 ( .A0(n1833), .A1(n1803), .S(n1828), .Y(
        i_tv80_core_i_reg_n456) );
  sky130_fd_sc_hd__mux2i_1 U1686 ( .A0(n1834), .A1(n1805), .S(n1828), .Y(
        i_tv80_core_i_reg_n455) );
  sky130_fd_sc_hd__mux2i_1 U1687 ( .A0(n1835), .A1(n1807), .S(n1828), .Y(
        i_tv80_core_i_reg_n454) );
  sky130_fd_sc_hd__nor2b_1 U1688 ( .B_N(n1808), .A(n1696), .Y(n1828) );
  sky130_fd_sc_hd__mux2i_1 U1689 ( .A0(n1836), .A1(n1792), .S(n1837), .Y(
        i_tv80_core_i_reg_n453) );
  sky130_fd_sc_hd__mux2i_1 U1690 ( .A0(n1838), .A1(n1795), .S(n1837), .Y(
        i_tv80_core_i_reg_n452) );
  sky130_fd_sc_hd__mux2i_1 U1691 ( .A0(n1839), .A1(n1797), .S(n1837), .Y(
        i_tv80_core_i_reg_n451) );
  sky130_fd_sc_hd__mux2i_1 U1692 ( .A0(n1840), .A1(n1799), .S(n1837), .Y(
        i_tv80_core_i_reg_n450) );
  sky130_fd_sc_hd__mux2i_1 U1693 ( .A0(n1841), .A1(n1801), .S(n1837), .Y(
        i_tv80_core_i_reg_n449) );
  sky130_fd_sc_hd__mux2i_1 U1694 ( .A0(n1842), .A1(n1803), .S(n1837), .Y(
        i_tv80_core_i_reg_n448) );
  sky130_fd_sc_hd__mux2i_1 U1695 ( .A0(n1843), .A1(n1805), .S(n1837), .Y(
        i_tv80_core_i_reg_n447) );
  sky130_fd_sc_hd__mux2i_1 U1696 ( .A0(n1844), .A1(n1807), .S(n1837), .Y(
        i_tv80_core_i_reg_n446) );
  sky130_fd_sc_hd__nor2b_1 U1697 ( .B_N(n1808), .A(n1706), .Y(n1837) );
  sky130_fd_sc_hd__mux2i_1 U1698 ( .A0(n1845), .A1(n1792), .S(n1846), .Y(
        i_tv80_core_i_reg_n445) );
  sky130_fd_sc_hd__mux2i_1 U1699 ( .A0(n1847), .A1(n1795), .S(n1846), .Y(
        i_tv80_core_i_reg_n444) );
  sky130_fd_sc_hd__mux2i_1 U1700 ( .A0(n1848), .A1(n1797), .S(n1846), .Y(
        i_tv80_core_i_reg_n443) );
  sky130_fd_sc_hd__mux2i_1 U1701 ( .A0(n1849), .A1(n1799), .S(n1846), .Y(
        i_tv80_core_i_reg_n442) );
  sky130_fd_sc_hd__mux2i_1 U1702 ( .A0(n1850), .A1(n1801), .S(n1846), .Y(
        i_tv80_core_i_reg_n441) );
  sky130_fd_sc_hd__mux2i_1 U1703 ( .A0(n1851), .A1(n1803), .S(n1846), .Y(
        i_tv80_core_i_reg_n440) );
  sky130_fd_sc_hd__mux2i_1 U1704 ( .A0(n1852), .A1(n1805), .S(n1846), .Y(
        i_tv80_core_i_reg_n439) );
  sky130_fd_sc_hd__mux2i_1 U1705 ( .A0(n1853), .A1(n1807), .S(n1846), .Y(
        i_tv80_core_i_reg_n438) );
  sky130_fd_sc_hd__nor2b_1 U1706 ( .B_N(n1808), .A(n1716), .Y(n1846) );
  sky130_fd_sc_hd__mux2i_1 U1707 ( .A0(n1854), .A1(n1792), .S(n1855), .Y(
        i_tv80_core_i_reg_n437) );
  sky130_fd_sc_hd__mux2i_1 U1708 ( .A0(n1856), .A1(n1795), .S(n1855), .Y(
        i_tv80_core_i_reg_n436) );
  sky130_fd_sc_hd__mux2i_1 U1709 ( .A0(n1857), .A1(n1797), .S(n1855), .Y(
        i_tv80_core_i_reg_n435) );
  sky130_fd_sc_hd__mux2i_1 U1710 ( .A0(n1858), .A1(n1799), .S(n1855), .Y(
        i_tv80_core_i_reg_n434) );
  sky130_fd_sc_hd__mux2i_1 U1711 ( .A0(n1859), .A1(n1801), .S(n1855), .Y(
        i_tv80_core_i_reg_n433) );
  sky130_fd_sc_hd__mux2i_1 U1712 ( .A0(n1860), .A1(n1803), .S(n1855), .Y(
        i_tv80_core_i_reg_n432) );
  sky130_fd_sc_hd__mux2i_1 U1713 ( .A0(n1861), .A1(n1805), .S(n1855), .Y(
        i_tv80_core_i_reg_n431) );
  sky130_fd_sc_hd__mux2i_1 U1714 ( .A0(n1862), .A1(n1807), .S(n1855), .Y(
        i_tv80_core_i_reg_n430) );
  sky130_fd_sc_hd__nor2b_1 U1715 ( .B_N(n1808), .A(n1726), .Y(n1855) );
  sky130_fd_sc_hd__mux2i_1 U1716 ( .A0(n1863), .A1(n1792), .S(n1864), .Y(
        i_tv80_core_i_reg_n429) );
  sky130_fd_sc_hd__a221oi_1 U1717 ( .A1(i_tv80_core_ID16[15]), .A2(n1729), 
        .B1(n1730), .B2(i_tv80_core_RegBusA_r[15]), .C1(n1865), .Y(n1792) );
  sky130_fd_sc_hd__o22ai_1 U1718 ( .A1(n227), .A2(n1733), .B1(n201), .B2(n1732), .Y(n1865) );
  sky130_fd_sc_hd__clkinv_1 U1719 ( .A(n474), .Y(n201) );
  sky130_fd_sc_hd__o221ai_1 U1720 ( .A1(n1866), .A2(n1102), .B1(n82), .B2(
        n1867), .C1(n1868), .Y(n474) );
  sky130_fd_sc_hd__a21oi_1 U1721 ( .A1(n1869), .A2(n1870), .B1(n1871), .Y(
        n1868) );
  sky130_fd_sc_hd__a21oi_1 U1722 ( .A1(n1102), .A2(n1101), .B1(n1872), .Y(
        n1871) );
  sky130_fd_sc_hd__o211ai_1 U1723 ( .A1(i_tv80_core_ALU_Op_r[3]), .A2(n1007), 
        .B1(n481), .C1(n1873), .Y(n1870) );
  sky130_fd_sc_hd__a32oi_1 U1724 ( .A1(n1874), .A2(n1101), .A3(
        i_tv80_core_BusB[7]), .B1(n1093), .B2(n487), .Y(n1873) );
  sky130_fd_sc_hd__o221ai_1 U1725 ( .A1(i_tv80_core_IR[3]), .A2(n1088), .B1(
        n1014), .B2(n1107), .C1(n1875), .Y(n487) );
  sky130_fd_sc_hd__a21oi_1 U1726 ( .A1(i_tv80_core_i_alu_N238), .A2(n1104), 
        .B1(n1876), .Y(n1875) );
  sky130_fd_sc_hd__o221a_1 U1727 ( .A1(n888), .A2(n970), .B1(n1014), .B2(n892), 
        .C1(n1877), .X(n481) );
  sky130_fd_sc_hd__nand3_1 U1728 ( .A(n1079), .B(n1878), .C(
        i_tv80_core_BusB[7]), .Y(n1877) );
  sky130_fd_sc_hd__mux2i_1 U1729 ( .A0(i_tv80_core_i_alu_N245), .A1(
        i_tv80_core_i_alu_N215), .S(n918), .Y(n970) );
  sky130_fd_sc_hd__clkinv_1 U1730 ( .A(n485), .Y(n1007) );
  sky130_fd_sc_hd__o21ai_0 U1731 ( .A1(n1879), .A2(n1102), .B1(n1880), .Y(n485) );
  sky130_fd_sc_hd__mux2i_1 U1732 ( .A0(n1881), .A1(n1882), .S(
        i_tv80_core_BusA[7]), .Y(n1880) );
  sky130_fd_sc_hd__o211ai_1 U1733 ( .A1(n1883), .A2(n1884), .B1(n1885), .C1(
        n1886), .Y(n1882) );
  sky130_fd_sc_hd__mux2i_1 U1734 ( .A0(n1887), .A1(n935), .S(
        i_tv80_core_BusB[7]), .Y(n1886) );
  sky130_fd_sc_hd__clkinv_1 U1735 ( .A(n1013), .Y(n1884) );
  sky130_fd_sc_hd__nor2_1 U1736 ( .A(n1883), .B(n1013), .Y(n1881) );
  sky130_fd_sc_hd__xnor2_1 U1737 ( .A(n1012), .B(n1011), .Y(n1013) );
  sky130_fd_sc_hd__o22ai_1 U1738 ( .A1(n1888), .A2(n1889), .B1(
        i_tv80_core_BusA[6]), .B2(n1890), .Y(n1011) );
  sky130_fd_sc_hd__nor2_1 U1739 ( .A(n1891), .B(n1892), .Y(n1890) );
  sky130_fd_sc_hd__xor2_1 U1740 ( .A(n1102), .B(i_tv80_core_ALU_Op_r[1]), .X(
        n1012) );
  sky130_fd_sc_hd__a21oi_1 U1741 ( .A1(n1887), .A2(n1014), .B1(n1893), .Y(
        n1879) );
  sky130_fd_sc_hd__clkinv_1 U1742 ( .A(i_tv80_core_BusB[7]), .Y(n1102) );
  sky130_fd_sc_hd__nor4_1 U1743 ( .A(n1894), .B(n1895), .C(n1896), .D(n1897), 
        .Y(n227) );
  sky130_fd_sc_hd__o22ai_1 U1744 ( .A1(n1818), .A2(n1738), .B1(n1791), .B2(
        n1739), .Y(n1897) );
  sky130_fd_sc_hd__o22ai_1 U1745 ( .A1(n1854), .A2(n1740), .B1(n1836), .B2(
        n1741), .Y(n1896) );
  sky130_fd_sc_hd__o22ai_1 U1746 ( .A1(n1827), .A2(n1742), .B1(n1809), .B2(
        n1743), .Y(n1895) );
  sky130_fd_sc_hd__o22ai_1 U1747 ( .A1(n1863), .A2(n1744), .B1(n1845), .B2(
        n1745), .Y(n1894) );
  sky130_fd_sc_hd__mux2i_1 U1748 ( .A0(n1898), .A1(n1795), .S(n1864), .Y(
        i_tv80_core_i_reg_n428) );
  sky130_fd_sc_hd__a221oi_1 U1749 ( .A1(i_tv80_core_ID16[14]), .A2(n1729), 
        .B1(n1730), .B2(i_tv80_core_RegBusA_r[14]), .C1(n1899), .Y(n1795) );
  sky130_fd_sc_hd__o22ai_1 U1750 ( .A1(n274), .A2(n1733), .B1(n198), .B2(n1732), .Y(n1899) );
  sky130_fd_sc_hd__clkinv_1 U1751 ( .A(n838), .Y(n198) );
  sky130_fd_sc_hd__o221ai_1 U1752 ( .A1(n1866), .A2(n1109), .B1(n80), .B2(
        n1867), .C1(n1900), .Y(n838) );
  sky130_fd_sc_hd__a21oi_1 U1753 ( .A1(n1869), .A2(n1901), .B1(n1902), .Y(
        n1900) );
  sky130_fd_sc_hd__a21oi_1 U1754 ( .A1(n1109), .A2(n1108), .B1(n1872), .Y(
        n1902) );
  sky130_fd_sc_hd__o221ai_1 U1755 ( .A1(i_tv80_core_ALU_Op_r[3]), .A2(n1002), 
        .B1(n1088), .B2(n892), .C1(n1903), .Y(n1901) );
  sky130_fd_sc_hd__a222oi_1 U1756 ( .A1(n920), .A2(n971), .B1(n1904), .B2(
        i_tv80_core_BusB[6]), .C1(n1093), .C2(n1020), .Y(n1903) );
  sky130_fd_sc_hd__mux2i_1 U1757 ( .A0(n1014), .A1(n989), .S(n697), .Y(n1020)
         );
  sky130_fd_sc_hd__mux2i_1 U1758 ( .A0(n1116), .A1(n893), .S(n375), .Y(n1904)
         );
  sky130_fd_sc_hd__mux2_1 U1759 ( .A0(i_tv80_core_i_alu_N244), .A1(
        i_tv80_core_i_alu_N214), .S(n918), .X(n971) );
  sky130_fd_sc_hd__clkinv_1 U1760 ( .A(n1111), .Y(n1002) );
  sky130_fd_sc_hd__o21ai_0 U1761 ( .A1(n1109), .A2(n1885), .B1(n1905), .Y(
        n1111) );
  sky130_fd_sc_hd__mux2i_1 U1762 ( .A0(n1906), .A1(n1907), .S(
        i_tv80_core_BusA[6]), .Y(n1905) );
  sky130_fd_sc_hd__o211ai_1 U1763 ( .A1(n1883), .A2(n1908), .B1(n1885), .C1(
        n1909), .Y(n1907) );
  sky130_fd_sc_hd__mux2i_1 U1764 ( .A0(n1887), .A1(n935), .S(
        i_tv80_core_BusB[6]), .Y(n1909) );
  sky130_fd_sc_hd__xor2_1 U1765 ( .A(n1889), .B(n1888), .X(n1908) );
  sky130_fd_sc_hd__o22ai_1 U1766 ( .A1(n1910), .A2(n1109), .B1(n1883), .B2(
        n1911), .Y(n1906) );
  sky130_fd_sc_hd__xor2_1 U1767 ( .A(n1889), .B(n1892), .X(n1911) );
  sky130_fd_sc_hd__clkinv_1 U1768 ( .A(n1888), .Y(n1892) );
  sky130_fd_sc_hd__xnor2_1 U1769 ( .A(n1109), .B(i_tv80_core_ALU_Op_r[1]), .Y(
        n1888) );
  sky130_fd_sc_hd__clkinv_1 U1770 ( .A(n1891), .Y(n1889) );
  sky130_fd_sc_hd__a2bb2oi_1 U1771 ( .B1(n1912), .B2(n1913), .A1_N(n1914), 
        .A2_N(n989), .Y(n1891) );
  sky130_fd_sc_hd__nor2_1 U1772 ( .A(n1913), .B(n1912), .Y(n1914) );
  sky130_fd_sc_hd__clkinv_1 U1773 ( .A(i_tv80_core_BusB[6]), .Y(n1109) );
  sky130_fd_sc_hd__nor4_1 U1774 ( .A(n1915), .B(n1916), .C(n1917), .D(n1918), 
        .Y(n274) );
  sky130_fd_sc_hd__o22ai_1 U1775 ( .A1(n1820), .A2(n1738), .B1(n1794), .B2(
        n1739), .Y(n1918) );
  sky130_fd_sc_hd__o22ai_1 U1776 ( .A1(n1856), .A2(n1740), .B1(n1838), .B2(
        n1741), .Y(n1917) );
  sky130_fd_sc_hd__o22ai_1 U1777 ( .A1(n1829), .A2(n1742), .B1(n1811), .B2(
        n1743), .Y(n1916) );
  sky130_fd_sc_hd__o22ai_1 U1778 ( .A1(n1898), .A2(n1744), .B1(n1847), .B2(
        n1745), .Y(n1915) );
  sky130_fd_sc_hd__mux2i_1 U1779 ( .A0(n1919), .A1(n1797), .S(n1864), .Y(
        i_tv80_core_i_reg_n427) );
  sky130_fd_sc_hd__a221oi_1 U1780 ( .A1(i_tv80_core_ID16[13]), .A2(n1729), 
        .B1(n1730), .B2(i_tv80_core_RegBusA_r[13]), .C1(n1920), .Y(n1797) );
  sky130_fd_sc_hd__o22ai_1 U1781 ( .A1(n282), .A2(n1733), .B1(n195), .B2(n1732), .Y(n1920) );
  sky130_fd_sc_hd__clkinv_1 U1782 ( .A(n834), .Y(n195) );
  sky130_fd_sc_hd__o221ai_1 U1783 ( .A1(n1866), .A2(n1063), .B1(n78), .B2(
        n1867), .C1(n1921), .Y(n834) );
  sky130_fd_sc_hd__a21oi_1 U1784 ( .A1(n1869), .A2(n1922), .B1(n1923), .Y(
        n1921) );
  sky130_fd_sc_hd__a21oi_1 U1785 ( .A1(n1063), .A2(n1107), .B1(n1872), .Y(
        n1923) );
  sky130_fd_sc_hd__o221ai_1 U1786 ( .A1(n1063), .A2(n1924), .B1(
        i_tv80_core_ALU_Op_r[3]), .B2(n1001), .C1(n1925), .Y(n1922) );
  sky130_fd_sc_hd__clkinv_1 U1787 ( .A(n1062), .Y(n1925) );
  sky130_fd_sc_hd__o221ai_1 U1788 ( .A1(n888), .A2(n972), .B1(n1019), .B2(n895), .C1(n1926), .Y(n1062) );
  sky130_fd_sc_hd__nand2_1 U1789 ( .A(n963), .B(i_tv80_core_BusA[5]), .Y(n1926) );
  sky130_fd_sc_hd__mux2i_1 U1790 ( .A0(i_tv80_core_BusA[4]), .A1(
        i_tv80_core_BusA[6]), .S(i_tv80_core_IR[3]), .Y(n1019) );
  sky130_fd_sc_hd__mux2i_1 U1791 ( .A0(i_tv80_core_i_alu_N243), .A1(
        i_tv80_core_i_alu_N213), .S(n918), .Y(n972) );
  sky130_fd_sc_hd__o21a_1 U1792 ( .A1(n1063), .A2(n1885), .B1(n1927), .X(n1001) );
  sky130_fd_sc_hd__mux2i_1 U1793 ( .A0(n1928), .A1(n1929), .S(
        i_tv80_core_BusA[5]), .Y(n1927) );
  sky130_fd_sc_hd__o211ai_1 U1794 ( .A1(n1883), .A2(n1930), .B1(n1885), .C1(
        n1931), .Y(n1929) );
  sky130_fd_sc_hd__mux2i_1 U1795 ( .A0(n1887), .A1(n935), .S(
        i_tv80_core_BusB[5]), .Y(n1931) );
  sky130_fd_sc_hd__xor2_1 U1796 ( .A(n1912), .B(n1913), .X(n1930) );
  sky130_fd_sc_hd__o22ai_1 U1797 ( .A1(n1910), .A2(n1063), .B1(n1883), .B2(
        n1932), .Y(n1928) );
  sky130_fd_sc_hd__xnor2_1 U1798 ( .A(n1912), .B(n1913), .Y(n1932) );
  sky130_fd_sc_hd__xor2_1 U1799 ( .A(n1063), .B(n706), .X(n1913) );
  sky130_fd_sc_hd__maj3_1 U1800 ( .A(n1933), .B(i_tv80_core_i_alu_HalfCarry_v), 
        .C(i_tv80_core_BusA[4]), .X(n1912) );
  sky130_fd_sc_hd__mux2i_1 U1801 ( .A0(n1079), .A1(n1874), .S(n1107), .Y(n1924) );
  sky130_fd_sc_hd__clkinv_1 U1802 ( .A(i_tv80_core_BusB[5]), .Y(n1063) );
  sky130_fd_sc_hd__nor4_1 U1803 ( .A(n1934), .B(n1935), .C(n1936), .D(n1937), 
        .Y(n282) );
  sky130_fd_sc_hd__o22ai_1 U1804 ( .A1(n1821), .A2(n1738), .B1(n1796), .B2(
        n1739), .Y(n1937) );
  sky130_fd_sc_hd__o22ai_1 U1805 ( .A1(n1857), .A2(n1740), .B1(n1839), .B2(
        n1741), .Y(n1936) );
  sky130_fd_sc_hd__o22ai_1 U1806 ( .A1(n1830), .A2(n1742), .B1(n1812), .B2(
        n1743), .Y(n1935) );
  sky130_fd_sc_hd__o22ai_1 U1807 ( .A1(n1919), .A2(n1744), .B1(n1848), .B2(
        n1745), .Y(n1934) );
  sky130_fd_sc_hd__mux2i_1 U1808 ( .A0(n1938), .A1(n1799), .S(n1864), .Y(
        i_tv80_core_i_reg_n426) );
  sky130_fd_sc_hd__a221oi_1 U1809 ( .A1(i_tv80_core_ID16[12]), .A2(n1729), 
        .B1(n1730), .B2(i_tv80_core_RegBusA_r[12]), .C1(n1939), .Y(n1799) );
  sky130_fd_sc_hd__o22ai_1 U1810 ( .A1(n334), .A2(n1733), .B1(n192), .B2(n1732), .Y(n1939) );
  sky130_fd_sc_hd__clkinv_1 U1811 ( .A(n830), .Y(n192) );
  sky130_fd_sc_hd__o221ai_1 U1812 ( .A1(n1940), .A2(n1866), .B1(n76), .B2(
        n1867), .C1(n1941), .Y(n830) );
  sky130_fd_sc_hd__a21oi_1 U1813 ( .A1(n1869), .A2(n1942), .B1(n1943), .Y(
        n1941) );
  sky130_fd_sc_hd__a21oi_1 U1814 ( .A1(n1940), .A2(n1944), .B1(n1872), .Y(
        n1943) );
  sky130_fd_sc_hd__o221ai_1 U1815 ( .A1(i_tv80_core_ALU_Op_r[3]), .A2(n1004), 
        .B1(n1945), .B2(n892), .C1(n1946), .Y(n1942) );
  sky130_fd_sc_hd__a222oi_1 U1816 ( .A1(n920), .A2(n976), .B1(n1947), .B2(
        i_tv80_core_BusB[4]), .C1(n1093), .C2(n1022), .Y(n1946) );
  sky130_fd_sc_hd__clkinv_1 U1817 ( .A(n1089), .Y(n1022) );
  sky130_fd_sc_hd__mux2i_1 U1818 ( .A0(i_tv80_core_BusA[3]), .A1(
        i_tv80_core_BusA[5]), .S(i_tv80_core_IR[3]), .Y(n1089) );
  sky130_fd_sc_hd__mux2i_1 U1819 ( .A0(n1116), .A1(n893), .S(n1096), .Y(n1947)
         );
  sky130_fd_sc_hd__clkinv_1 U1820 ( .A(n1944), .Y(n1096) );
  sky130_fd_sc_hd__a221o_1 U1821 ( .A1(i_tv80_core_i_alu_N189), .A2(n1948), 
        .B1(i_tv80_core_i_alu_N230), .B2(i_tv80_core_F[1]), .C1(n1949), .X(
        n976) );
  sky130_fd_sc_hd__nor2_1 U1822 ( .A(n1945), .B(n1950), .Y(n1949) );
  sky130_fd_sc_hd__clkinv_1 U1823 ( .A(n1951), .Y(n1948) );
  sky130_fd_sc_hd__o21a_1 U1824 ( .A1(n1952), .A2(n1940), .B1(n1953), .X(n1004) );
  sky130_fd_sc_hd__mux2i_1 U1825 ( .A0(n1954), .A1(n1955), .S(
        i_tv80_core_BusA[4]), .Y(n1953) );
  sky130_fd_sc_hd__o211ai_1 U1826 ( .A1(n1883), .A2(n1956), .B1(n1885), .C1(
        n1957), .Y(n1955) );
  sky130_fd_sc_hd__mux2i_1 U1827 ( .A0(n1887), .A1(n935), .S(
        i_tv80_core_BusB[4]), .Y(n1957) );
  sky130_fd_sc_hd__nor2b_1 U1828 ( .B_N(n1956), .A(n1883), .Y(n1954) );
  sky130_fd_sc_hd__clkinv_1 U1829 ( .A(n1958), .Y(n1883) );
  sky130_fd_sc_hd__xor2_1 U1830 ( .A(i_tv80_core_i_alu_HalfCarry_v), .B(n1933), 
        .X(n1956) );
  sky130_fd_sc_hd__xor2_1 U1831 ( .A(i_tv80_core_BusB[4]), .B(
        i_tv80_core_ALU_Op_r[1]), .X(n1933) );
  sky130_fd_sc_hd__a21oi_1 U1832 ( .A1(n1887), .A2(n1945), .B1(n1893), .Y(
        n1952) );
  sky130_fd_sc_hd__clkinv_1 U1833 ( .A(i_tv80_core_BusB[4]), .Y(n1940) );
  sky130_fd_sc_hd__nor4_1 U1834 ( .A(n1959), .B(n1960), .C(n1961), .D(n1962), 
        .Y(n334) );
  sky130_fd_sc_hd__o22ai_1 U1835 ( .A1(n1822), .A2(n1738), .B1(n1798), .B2(
        n1739), .Y(n1962) );
  sky130_fd_sc_hd__o22ai_1 U1836 ( .A1(n1858), .A2(n1740), .B1(n1840), .B2(
        n1741), .Y(n1961) );
  sky130_fd_sc_hd__o22ai_1 U1837 ( .A1(n1831), .A2(n1742), .B1(n1813), .B2(
        n1743), .Y(n1960) );
  sky130_fd_sc_hd__o22ai_1 U1838 ( .A1(n1938), .A2(n1744), .B1(n1849), .B2(
        n1745), .Y(n1959) );
  sky130_fd_sc_hd__mux2i_1 U1839 ( .A0(n1963), .A1(n1801), .S(n1864), .Y(
        i_tv80_core_i_reg_n425) );
  sky130_fd_sc_hd__a221oi_1 U1840 ( .A1(i_tv80_core_ID16[11]), .A2(n1729), 
        .B1(n1730), .B2(i_tv80_core_RegBusA_r[11]), .C1(n1964), .Y(n1801) );
  sky130_fd_sc_hd__o22ai_1 U1841 ( .A1(n322), .A2(n1733), .B1(n189), .B2(n1732), .Y(n1964) );
  sky130_fd_sc_hd__clkinv_1 U1842 ( .A(n826), .Y(n189) );
  sky130_fd_sc_hd__o221ai_1 U1843 ( .A1(n74), .A2(n1867), .B1(n1965), .B2(
        n1966), .C1(n1967), .Y(n826) );
  sky130_fd_sc_hd__nand2_1 U1844 ( .A(i_tv80_core_BusB[3]), .B(n1968), .Y(
        n1967) );
  sky130_fd_sc_hd__clkinv_1 U1845 ( .A(n1037), .Y(n1965) );
  sky130_fd_sc_hd__o211ai_1 U1846 ( .A1(i_tv80_core_ALU_Op_r[3]), .A2(n1003), 
        .B1(n1969), .C1(n1970), .Y(n1037) );
  sky130_fd_sc_hd__a21oi_1 U1847 ( .A1(n1971), .A2(n1105), .B1(n1041), .Y(
        n1970) );
  sky130_fd_sc_hd__o221ai_1 U1848 ( .A1(n888), .A2(n975), .B1(n895), .B2(n1021), .C1(n1972), .Y(n1041) );
  sky130_fd_sc_hd__or2_0 U1849 ( .A(n984), .B(n892), .X(n1972) );
  sky130_fd_sc_hd__mux2i_1 U1850 ( .A0(i_tv80_core_BusB[3]), .A1(
        i_tv80_core_BusB[7]), .S(i_tv80_core_ALU_Op_r[0]), .Y(n984) );
  sky130_fd_sc_hd__clkinv_1 U1851 ( .A(n1092), .Y(n1021) );
  sky130_fd_sc_hd__mux2i_1 U1852 ( .A0(n939), .A1(n1945), .S(i_tv80_core_IR[3]), .Y(n1092) );
  sky130_fd_sc_hd__clkinv_1 U1853 ( .A(i_tv80_core_BusA[4]), .Y(n1945) );
  sky130_fd_sc_hd__clkinv_1 U1854 ( .A(n1093), .Y(n895) );
  sky130_fd_sc_hd__o221ai_1 U1855 ( .A1(i_tv80_core_i_alu_N188), .A2(n1951), 
        .B1(i_tv80_core_i_alu_N229), .B2(n918), .C1(n1973), .Y(n975) );
  sky130_fd_sc_hd__nand2_1 U1856 ( .A(n1974), .B(n1975), .Y(n1973) );
  sky130_fd_sc_hd__o21ai_0 U1857 ( .A1(n1971), .A2(n1976), .B1(
        i_tv80_core_BusB[3]), .Y(n1969) );
  sky130_fd_sc_hd__mux2i_1 U1858 ( .A0(n1116), .A1(n893), .S(n1105), .Y(n1976)
         );
  sky130_fd_sc_hd__a221oi_1 U1859 ( .A1(i_tv80_core_BusA[3]), .A2(n1977), .B1(
        i_tv80_core_i_alu_Q_v[3]), .B2(n1958), .C1(n1978), .Y(n1003) );
  sky130_fd_sc_hd__a21oi_1 U1860 ( .A1(n1979), .A2(n1885), .B1(n1044), .Y(
        n1978) );
  sky130_fd_sc_hd__clkinv_1 U1861 ( .A(i_tv80_core_BusB[3]), .Y(n1044) );
  sky130_fd_sc_hd__mux2i_1 U1862 ( .A0(n1887), .A1(n935), .S(
        i_tv80_core_BusA[3]), .Y(n1979) );
  sky130_fd_sc_hd__o21ai_0 U1863 ( .A1(i_tv80_core_BusB[3]), .A2(n1910), .B1(
        n1885), .Y(n1977) );
  sky130_fd_sc_hd__nor4_1 U1864 ( .A(n1980), .B(n1981), .C(n1982), .D(n1983), 
        .Y(n322) );
  sky130_fd_sc_hd__o22ai_1 U1865 ( .A1(n1823), .A2(n1738), .B1(n1800), .B2(
        n1739), .Y(n1983) );
  sky130_fd_sc_hd__o22ai_1 U1866 ( .A1(n1859), .A2(n1740), .B1(n1841), .B2(
        n1741), .Y(n1982) );
  sky130_fd_sc_hd__o22ai_1 U1867 ( .A1(n1832), .A2(n1742), .B1(n1814), .B2(
        n1743), .Y(n1981) );
  sky130_fd_sc_hd__o22ai_1 U1868 ( .A1(n1963), .A2(n1744), .B1(n1850), .B2(
        n1745), .Y(n1980) );
  sky130_fd_sc_hd__mux2i_1 U1869 ( .A0(n1984), .A1(n1803), .S(n1864), .Y(
        i_tv80_core_i_reg_n424) );
  sky130_fd_sc_hd__a221oi_1 U1870 ( .A1(i_tv80_core_ID16[10]), .A2(n1729), 
        .B1(n1730), .B2(i_tv80_core_RegBusA_r[10]), .C1(n1985), .Y(n1803) );
  sky130_fd_sc_hd__o22ai_1 U1871 ( .A1(n314), .A2(n1733), .B1(n186), .B2(n1732), .Y(n1985) );
  sky130_fd_sc_hd__clkinv_1 U1872 ( .A(n822), .Y(n186) );
  sky130_fd_sc_hd__o221ai_1 U1873 ( .A1(n1866), .A2(n1986), .B1(n72), .B2(
        n1867), .C1(n1987), .Y(n822) );
  sky130_fd_sc_hd__a21oi_1 U1874 ( .A1(n1869), .A2(n1988), .B1(n1989), .Y(
        n1987) );
  sky130_fd_sc_hd__a21oi_1 U1875 ( .A1(n1986), .A2(n1990), .B1(n1872), .Y(
        n1989) );
  sky130_fd_sc_hd__o221ai_1 U1876 ( .A1(n983), .A2(n892), .B1(
        i_tv80_core_ALU_Op_r[3]), .B2(n1009), .C1(n1991), .Y(n1988) );
  sky130_fd_sc_hd__a222oi_1 U1877 ( .A1(n977), .A2(n920), .B1(n1992), .B2(
        i_tv80_core_BusB[2]), .C1(n1093), .C2(n1026), .Y(n1991) );
  sky130_fd_sc_hd__mux2i_1 U1878 ( .A0(n1975), .A1(n60), .S(n697), .Y(n1026)
         );
  sky130_fd_sc_hd__mux2i_1 U1879 ( .A0(n1116), .A1(n893), .S(n1106), .Y(n1992)
         );
  sky130_fd_sc_hd__o221a_1 U1880 ( .A1(i_tv80_core_i_alu_N187), .A2(n1951), 
        .B1(i_tv80_core_i_alu_N228), .B2(n918), .C1(n1993), .X(n977) );
  sky130_fd_sc_hd__nand2_1 U1881 ( .A(n1974), .B(n939), .Y(n1993) );
  sky130_fd_sc_hd__clkinv_1 U1882 ( .A(i_tv80_core_BusA[2]), .Y(n939) );
  sky130_fd_sc_hd__clkinv_1 U1883 ( .A(n1950), .Y(n1974) );
  sky130_fd_sc_hd__a221oi_1 U1884 ( .A1(i_tv80_core_BusA[2]), .A2(n1994), .B1(
        i_tv80_core_i_alu_Q_v[2]), .B2(n1958), .C1(n1995), .Y(n1009) );
  sky130_fd_sc_hd__a21oi_1 U1885 ( .A1(n1996), .A2(n1885), .B1(n1986), .Y(
        n1995) );
  sky130_fd_sc_hd__mux2i_1 U1886 ( .A0(n1887), .A1(n935), .S(
        i_tv80_core_BusA[2]), .Y(n1996) );
  sky130_fd_sc_hd__o21ai_0 U1887 ( .A1(i_tv80_core_BusB[2]), .A2(n1910), .B1(
        n1885), .Y(n1994) );
  sky130_fd_sc_hd__mux2i_1 U1888 ( .A0(i_tv80_core_BusB[2]), .A1(
        i_tv80_core_BusB[6]), .S(i_tv80_core_ALU_Op_r[0]), .Y(n983) );
  sky130_fd_sc_hd__clkinv_1 U1889 ( .A(i_tv80_core_BusB[2]), .Y(n1986) );
  sky130_fd_sc_hd__nor4_1 U1890 ( .A(n1997), .B(n1998), .C(n1999), .D(n2000), 
        .Y(n314) );
  sky130_fd_sc_hd__o22ai_1 U1891 ( .A1(n1824), .A2(n1738), .B1(n1802), .B2(
        n1739), .Y(n2000) );
  sky130_fd_sc_hd__o22ai_1 U1892 ( .A1(n1860), .A2(n1740), .B1(n1842), .B2(
        n1741), .Y(n1999) );
  sky130_fd_sc_hd__o22ai_1 U1893 ( .A1(n1833), .A2(n1742), .B1(n1815), .B2(
        n1743), .Y(n1998) );
  sky130_fd_sc_hd__o22ai_1 U1894 ( .A1(n1984), .A2(n1744), .B1(n1851), .B2(
        n1745), .Y(n1997) );
  sky130_fd_sc_hd__mux2i_1 U1895 ( .A0(n2001), .A1(n1805), .S(n1864), .Y(
        i_tv80_core_i_reg_n423) );
  sky130_fd_sc_hd__a221oi_1 U1896 ( .A1(i_tv80_core_ID16[9]), .A2(n1729), .B1(
        n1730), .B2(i_tv80_core_RegBusA_r[9]), .C1(n2002), .Y(n1805) );
  sky130_fd_sc_hd__o22ai_1 U1897 ( .A1(n306), .A2(n1733), .B1(n183), .B2(n1732), .Y(n2002) );
  sky130_fd_sc_hd__clkinv_1 U1898 ( .A(n818), .Y(n183) );
  sky130_fd_sc_hd__o221ai_1 U1899 ( .A1(n70), .A2(n1867), .B1(n2003), .B2(
        n1966), .C1(n2004), .Y(n818) );
  sky130_fd_sc_hd__nand2_1 U1900 ( .A(i_tv80_core_BusB[1]), .B(n1968), .Y(
        n2004) );
  sky130_fd_sc_hd__clkinv_1 U1901 ( .A(n1055), .Y(n2003) );
  sky130_fd_sc_hd__nand2_1 U1902 ( .A(n2005), .B(n2006), .Y(n1055) );
  sky130_fd_sc_hd__a222oi_1 U1903 ( .A1(n1971), .A2(n1104), .B1(
        i_tv80_core_BusB[1]), .B2(n2007), .C1(n1093), .C2(n1027), .Y(n2006) );
  sky130_fd_sc_hd__mux2_1 U1904 ( .A0(i_tv80_core_BusA[2]), .A1(
        i_tv80_core_i_alu_N238), .S(n697), .X(n1027) );
  sky130_fd_sc_hd__nand2_1 U1905 ( .A(n2008), .B(n1115), .Y(n2007) );
  sky130_fd_sc_hd__mux2i_1 U1906 ( .A0(n1874), .A1(n1079), .S(n1104), .Y(n2008) );
  sky130_fd_sc_hd__clkinv_1 U1907 ( .A(n1116), .Y(n1874) );
  sky130_fd_sc_hd__a222oi_1 U1908 ( .A1(n1010), .A2(n483), .B1(n920), .B2(n978), .C1(n963), .C2(n2009), .Y(n2005) );
  sky130_fd_sc_hd__clkinv_1 U1909 ( .A(n986), .Y(n2009) );
  sky130_fd_sc_hd__mux2i_1 U1910 ( .A0(i_tv80_core_BusB[1]), .A1(
        i_tv80_core_BusB[5]), .S(i_tv80_core_ALU_Op_r[0]), .Y(n986) );
  sky130_fd_sc_hd__clkinv_1 U1911 ( .A(n892), .Y(n963) );
  sky130_fd_sc_hd__a21o_1 U1912 ( .A1(i_tv80_core_i_alu_N227), .A2(
        i_tv80_core_F[1]), .B1(n2010), .X(n978) );
  sky130_fd_sc_hd__mux2i_1 U1913 ( .A0(n1951), .A1(n1950), .S(
        i_tv80_core_BusA[1]), .Y(n2010) );
  sky130_fd_sc_hd__nand2_1 U1914 ( .A(n2287), .B(n918), .Y(n1950) );
  sky130_fd_sc_hd__nand2_1 U1915 ( .A(n2011), .B(n918), .Y(n1951) );
  sky130_fd_sc_hd__clkinv_1 U1916 ( .A(i_tv80_core_F[1]), .Y(n918) );
  sky130_fd_sc_hd__clkinv_1 U1917 ( .A(n1113), .Y(n1010) );
  sky130_fd_sc_hd__a221oi_1 U1918 ( .A1(i_tv80_core_BusA[1]), .A2(n2012), .B1(
        i_tv80_core_i_alu_Q_v[1]), .B2(n1958), .C1(n2013), .Y(n1113) );
  sky130_fd_sc_hd__a21boi_0 U1919 ( .A1(n2014), .A2(n1885), .B1_N(
        i_tv80_core_BusB[1]), .Y(n2013) );
  sky130_fd_sc_hd__mux2i_1 U1920 ( .A0(n1887), .A1(n935), .S(
        i_tv80_core_BusA[1]), .Y(n2014) );
  sky130_fd_sc_hd__o21ai_0 U1921 ( .A1(i_tv80_core_BusB[1]), .A2(n1910), .B1(
        n1885), .Y(n2012) );
  sky130_fd_sc_hd__nor4_1 U1922 ( .A(n2015), .B(n2016), .C(n2017), .D(n2018), 
        .Y(n306) );
  sky130_fd_sc_hd__o22ai_1 U1923 ( .A1(n1825), .A2(n1738), .B1(n1804), .B2(
        n1739), .Y(n2018) );
  sky130_fd_sc_hd__o22ai_1 U1924 ( .A1(n1861), .A2(n1740), .B1(n1843), .B2(
        n1741), .Y(n2017) );
  sky130_fd_sc_hd__o22ai_1 U1925 ( .A1(n1834), .A2(n1742), .B1(n1816), .B2(
        n1743), .Y(n2016) );
  sky130_fd_sc_hd__o22ai_1 U1926 ( .A1(n2001), .A2(n1744), .B1(n1852), .B2(
        n1745), .Y(n2015) );
  sky130_fd_sc_hd__mux2i_1 U1927 ( .A0(n2019), .A1(n1807), .S(n1864), .Y(
        i_tv80_core_i_reg_n422) );
  sky130_fd_sc_hd__nor2b_1 U1928 ( .B_N(n1808), .A(n1783), .Y(n1864) );
  sky130_fd_sc_hd__o21a_1 U1929 ( .A1(n2020), .A2(n1785), .B1(busak_n), .X(
        n1808) );
  sky130_fd_sc_hd__clkinv_1 U1930 ( .A(i_tv80_core_BusAck), .Y(busak_n) );
  sky130_fd_sc_hd__nand2_1 U1931 ( .A(n2021), .B(n2022), .Y(n1785) );
  sky130_fd_sc_hd__o211ai_1 U1932 ( .A1(n681), .A2(n682), .B1(n2023), .C1(n683), .Y(n2022) );
  sky130_fd_sc_hd__a22o_1 U1933 ( .A1(n354), .A2(n876), .B1(tstate[0]), .B2(
        n649), .X(n2023) );
  sky130_fd_sc_hd__clkinv_1 U1934 ( .A(n84), .Y(n876) );
  sky130_fd_sc_hd__nand2_1 U1935 ( .A(wait_n), .B(n519), .Y(n84) );
  sky130_fd_sc_hd__clkinv_1 U1936 ( .A(n2024), .Y(n681) );
  sky130_fd_sc_hd__nor4_1 U1937 ( .A(i_tv80_core_Read_To_Reg_r[3]), .B(
        i_tv80_core_Read_To_Reg_r[0]), .C(n1156), .D(n210), .Y(n2020) );
  sky130_fd_sc_hd__nand2_1 U1938 ( .A(n2025), .B(i_tv80_core_Read_To_Reg_r[4]), 
        .Y(n210) );
  sky130_fd_sc_hd__mux2_1 U1939 ( .A0(n1065), .A1(n208), .S(n668), .X(n2025)
         );
  sky130_fd_sc_hd__nor2_1 U1940 ( .A(n1060), .B(i_tv80_core_Auto_Wait_t1), .Y(
        n208) );
  sky130_fd_sc_hd__nand2_1 U1941 ( .A(n1042), .B(n483), .Y(n1065) );
  sky130_fd_sc_hd__clkinv_1 U1942 ( .A(n1114), .Y(n1042) );
  sky130_fd_sc_hd__nand2_1 U1943 ( .A(i_tv80_core_ALU_Op_r[2]), .B(n996), .Y(
        n1114) );
  sky130_fd_sc_hd__nor2_1 U1944 ( .A(n779), .B(n778), .Y(n1156) );
  sky130_fd_sc_hd__clkinv_1 U1945 ( .A(i_tv80_core_Read_To_Reg_r[1]), .Y(n778)
         );
  sky130_fd_sc_hd__clkinv_1 U1946 ( .A(i_tv80_core_Read_To_Reg_r[2]), .Y(n779)
         );
  sky130_fd_sc_hd__a221oi_1 U1947 ( .A1(n2026), .A2(n2027), .B1(n1730), .B2(
        i_tv80_core_RegBusA_r[8]), .C1(n2028), .Y(n1807) );
  sky130_fd_sc_hd__o2bb2ai_1 U1948 ( .B1(n175), .B2(n1732), .A1_N(n1729), 
        .A2_N(i_tv80_core_ID16[8]), .Y(n2028) );
  sky130_fd_sc_hd__clkinv_1 U1949 ( .A(n2029), .Y(n1729) );
  sky130_fd_sc_hd__nand2_1 U1950 ( .A(n2021), .B(n2029), .Y(n1732) );
  sky130_fd_sc_hd__nand2_1 U1951 ( .A(n2030), .B(n683), .Y(n2029) );
  sky130_fd_sc_hd__mux2i_1 U1952 ( .A0(n540), .A1(n542), .S(n436), .Y(n2030)
         );
  sky130_fd_sc_hd__clkinv_1 U1953 ( .A(n2031), .Y(n2021) );
  sky130_fd_sc_hd__clkinv_1 U1954 ( .A(n814), .Y(n175) );
  sky130_fd_sc_hd__o221ai_1 U1955 ( .A1(n1100), .A2(n1866), .B1(n67), .B2(
        n1867), .C1(n2032), .Y(n814) );
  sky130_fd_sc_hd__a21oi_1 U1956 ( .A1(n1869), .A2(n2033), .B1(n2034), .Y(
        n2032) );
  sky130_fd_sc_hd__a21oi_1 U1957 ( .A1(n1100), .A2(n1099), .B1(n1872), .Y(
        n2034) );
  sky130_fd_sc_hd__nand2_1 U1958 ( .A(n1869), .B(n1971), .Y(n1872) );
  sky130_fd_sc_hd__clkinv_1 U1959 ( .A(n1115), .Y(n1971) );
  sky130_fd_sc_hd__nand4_1 U1960 ( .A(i_tv80_core_ALU_Op_r[3]), .B(
        i_tv80_core_ALU_Op_r[1]), .C(n689), .D(n732), .Y(n1115) );
  sky130_fd_sc_hd__o221ai_1 U1961 ( .A1(n985), .A2(n892), .B1(
        i_tv80_core_ALU_Op_r[3]), .B2(n1008), .C1(n2035), .Y(n2033) );
  sky130_fd_sc_hd__a222oi_1 U1962 ( .A1(n920), .A2(i_tv80_core_i_alu_N238), 
        .B1(n2036), .B2(i_tv80_core_BusB[0]), .C1(n1093), .C2(n1025), .Y(n2035) );
  sky130_fd_sc_hd__o211ai_1 U1963 ( .A1(n1014), .A2(n1099), .B1(n1108), .C1(
        n2037), .Y(n1025) );
  sky130_fd_sc_hd__mux2i_1 U1964 ( .A0(n2038), .A1(i_tv80_core_BusA[1]), .S(
        i_tv80_core_IR[3]), .Y(n2037) );
  sky130_fd_sc_hd__nor2_1 U1965 ( .A(n395), .B(n627), .Y(n2038) );
  sky130_fd_sc_hd__nor3_1 U1966 ( .A(n483), .B(i_tv80_core_ALU_Op_r[0]), .C(
        n898), .Y(n1093) );
  sky130_fd_sc_hd__mux2i_1 U1967 ( .A0(n1116), .A1(n893), .S(n2039), .Y(n2036)
         );
  sky130_fd_sc_hd__clkinv_1 U1968 ( .A(n1079), .Y(n893) );
  sky130_fd_sc_hd__nor3_1 U1969 ( .A(n483), .B(n689), .C(n898), .Y(n1079) );
  sky130_fd_sc_hd__clkinv_1 U1970 ( .A(i_tv80_core_ALU_Op_r[3]), .Y(n483) );
  sky130_fd_sc_hd__nand3_1 U1971 ( .A(n996), .B(n732), .C(
        i_tv80_core_ALU_Op_r[3]), .Y(n1116) );
  sky130_fd_sc_hd__nor2_1 U1972 ( .A(n706), .B(n689), .Y(n996) );
  sky130_fd_sc_hd__clkinv_1 U1973 ( .A(n888), .Y(n920) );
  sky130_fd_sc_hd__nand2_1 U1974 ( .A(n935), .B(i_tv80_core_ALU_Op_r[3]), .Y(
        n888) );
  sky130_fd_sc_hd__a221oi_1 U1975 ( .A1(i_tv80_core_BusB[0]), .A2(n2040), .B1(
        i_tv80_core_i_alu_Q_v[0]), .B2(n1958), .C1(n2041), .Y(n1008) );
  sky130_fd_sc_hd__a21boi_0 U1976 ( .A1(n2042), .A2(n1885), .B1_N(
        i_tv80_core_i_alu_N238), .Y(n2041) );
  sky130_fd_sc_hd__mux2i_1 U1977 ( .A0(n1887), .A1(n935), .S(
        i_tv80_core_BusB[0]), .Y(n2042) );
  sky130_fd_sc_hd__nor2_1 U1978 ( .A(n2043), .B(i_tv80_core_ALU_Op_r[1]), .Y(
        n935) );
  sky130_fd_sc_hd__nand2_1 U1979 ( .A(n898), .B(n897), .Y(n1958) );
  sky130_fd_sc_hd__nand2_1 U1980 ( .A(i_tv80_core_ALU_Op_r[1]), .B(n2043), .Y(
        n897) );
  sky130_fd_sc_hd__o21ai_0 U1981 ( .A1(i_tv80_core_i_alu_N238), .A2(n1910), 
        .B1(n1885), .Y(n2040) );
  sky130_fd_sc_hd__clkinv_1 U1982 ( .A(n1893), .Y(n1885) );
  sky130_fd_sc_hd__o21ai_0 U1983 ( .A1(n1893), .A2(n1887), .B1(
        i_tv80_core_ALU_Op_r[3]), .Y(n892) );
  sky130_fd_sc_hd__clkinv_1 U1984 ( .A(n1910), .Y(n1887) );
  sky130_fd_sc_hd__nand3_1 U1985 ( .A(i_tv80_core_ALU_Op_r[0]), .B(n706), .C(
        i_tv80_core_ALU_Op_r[2]), .Y(n1910) );
  sky130_fd_sc_hd__nor2_1 U1986 ( .A(n2043), .B(n706), .Y(n1893) );
  sky130_fd_sc_hd__nand2_1 U1987 ( .A(i_tv80_core_ALU_Op_r[2]), .B(n689), .Y(
        n2043) );
  sky130_fd_sc_hd__mux2i_1 U1988 ( .A0(i_tv80_core_BusB[0]), .A1(
        i_tv80_core_BusB[4]), .S(i_tv80_core_ALU_Op_r[0]), .Y(n985) );
  sky130_fd_sc_hd__clkinv_1 U1989 ( .A(n1966), .Y(n1869) );
  sky130_fd_sc_hd__nand2_1 U1990 ( .A(i_tv80_core_Save_ALU_r), .B(n1866), .Y(
        n1966) );
  sky130_fd_sc_hd__nand2_1 U1991 ( .A(n1866), .B(n668), .Y(n1867) );
  sky130_fd_sc_hd__clkinv_1 U1992 ( .A(i_tv80_core_Save_ALU_r), .Y(n668) );
  sky130_fd_sc_hd__clkinv_1 U1993 ( .A(n1968), .Y(n1866) );
  sky130_fd_sc_hd__nor2_1 U1994 ( .A(n372), .B(n432), .Y(n1968) );
  sky130_fd_sc_hd__and2_0 U1995 ( .A(n2044), .B(n2045), .X(n432) );
  sky130_fd_sc_hd__o21ai_0 U1996 ( .A1(n629), .A2(n2046), .B1(n1587), .Y(n2045) );
  sky130_fd_sc_hd__clkinv_1 U1997 ( .A(n1594), .Y(n1587) );
  sky130_fd_sc_hd__clkinv_1 U1998 ( .A(n1615), .Y(n629) );
  sky130_fd_sc_hd__a21bo_1 U1999 ( .A1(n577), .A2(n1608), .B1_N(n1618), .X(
        n2044) );
  sky130_fd_sc_hd__nand4b_1 U2000 ( .A_N(n2046), .B(n2047), .C(n2048), .D(
        n2049), .Y(n1618) );
  sky130_fd_sc_hd__nand4_1 U2001 ( .A(n1622), .B(n786), .C(n1619), .D(n2050), 
        .Y(n2046) );
  sky130_fd_sc_hd__nor3_1 U2002 ( .A(n1058), .B(n598), .C(n788), .Y(n2050) );
  sky130_fd_sc_hd__clkinv_1 U2003 ( .A(i_tv80_core_BusB[0]), .Y(n1100) );
  sky130_fd_sc_hd__clkinv_1 U2004 ( .A(n2051), .Y(n1730) );
  sky130_fd_sc_hd__clkinv_1 U2005 ( .A(n283), .Y(n2027) );
  sky130_fd_sc_hd__nor4_1 U2006 ( .A(n2052), .B(n2053), .C(n2054), .D(n2055), 
        .Y(n283) );
  sky130_fd_sc_hd__o22ai_1 U2007 ( .A1(n1826), .A2(n1738), .B1(n1806), .B2(
        n1739), .Y(n2055) );
  sky130_fd_sc_hd__nand3_1 U2008 ( .A(n2056), .B(n2057), .C(n2058), .Y(n1739)
         );
  sky130_fd_sc_hd__nand3_1 U2009 ( .A(n2059), .B(n2056), .C(n2058), .Y(n1738)
         );
  sky130_fd_sc_hd__o22ai_1 U2010 ( .A1(n1862), .A2(n1740), .B1(n1844), .B2(
        n1741), .Y(n2054) );
  sky130_fd_sc_hd__nand3_1 U2011 ( .A(n2060), .B(n2057), .C(n2056), .Y(n1741)
         );
  sky130_fd_sc_hd__nand3_1 U2012 ( .A(n2056), .B(n2060), .C(n2059), .Y(n1740)
         );
  sky130_fd_sc_hd__o22ai_1 U2013 ( .A1(n1835), .A2(n1742), .B1(n1817), .B2(
        n1743), .Y(n2053) );
  sky130_fd_sc_hd__nand3_1 U2014 ( .A(n2061), .B(n2057), .C(n2058), .Y(n1743)
         );
  sky130_fd_sc_hd__nand3_1 U2015 ( .A(n2059), .B(n2061), .C(n2058), .Y(n1742)
         );
  sky130_fd_sc_hd__o22ai_1 U2016 ( .A1(n2019), .A2(n1744), .B1(n1853), .B2(
        n1745), .Y(n2052) );
  sky130_fd_sc_hd__nand3_1 U2017 ( .A(n2061), .B(n2057), .C(n2060), .Y(n1745)
         );
  sky130_fd_sc_hd__nand3_1 U2018 ( .A(n2060), .B(n2061), .C(n2059), .Y(n1744)
         );
  sky130_fd_sc_hd__clkinv_1 U2019 ( .A(n2057), .Y(n2059) );
  sky130_fd_sc_hd__nand2_1 U2020 ( .A(i_tv80_core_RegAddrB_r[1]), .B(n1733), 
        .Y(n2057) );
  sky130_fd_sc_hd__clkinv_1 U2021 ( .A(n2056), .Y(n2061) );
  sky130_fd_sc_hd__nor2_1 U2022 ( .A(i_tv80_core_RegAddrB_r[0]), .B(n2026), 
        .Y(n2056) );
  sky130_fd_sc_hd__clkinv_1 U2023 ( .A(n2058), .Y(n2060) );
  sky130_fd_sc_hd__mux2i_1 U2024 ( .A0(i_tv80_core_RegAddrB_r[2]), .A1(
        i_tv80_core_Alternate), .S(n2026), .Y(n2058) );
  sky130_fd_sc_hd__clkinv_1 U2025 ( .A(n1733), .Y(n2026) );
  sky130_fd_sc_hd__xor2_1 U2026 ( .A(i_tv80_core_BusB[3]), .B(
        i_tv80_core_ALU_Op_r[1]), .X(i_tv80_core_i_alu_N49) );
  sky130_fd_sc_hd__xor2_1 U2027 ( .A(i_tv80_core_BusB[2]), .B(
        i_tv80_core_ALU_Op_r[1]), .X(i_tv80_core_i_alu_N48) );
  sky130_fd_sc_hd__xor2_1 U2028 ( .A(i_tv80_core_BusB[1]), .B(
        i_tv80_core_ALU_Op_r[1]), .X(i_tv80_core_i_alu_N47) );
  sky130_fd_sc_hd__xor2_1 U2029 ( .A(i_tv80_core_BusB[0]), .B(
        i_tv80_core_ALU_Op_r[1]), .X(i_tv80_core_i_alu_N46) );
  sky130_fd_sc_hd__o32ai_1 U2030 ( .A1(n898), .A2(n627), .A3(n689), .B1(n2062), 
        .B2(n706), .Y(i_tv80_core_i_alu_N41) );
  sky130_fd_sc_hd__nor3_1 U2031 ( .A(n689), .B(i_tv80_core_ALU_Op_r[2]), .C(
        n627), .Y(n2062) );
  sky130_fd_sc_hd__clkinv_1 U2032 ( .A(i_tv80_core_ALU_Op_r[0]), .Y(n689) );
  sky130_fd_sc_hd__nand2_1 U2033 ( .A(n732), .B(n706), .Y(n898) );
  sky130_fd_sc_hd__clkinv_1 U2034 ( .A(i_tv80_core_ALU_Op_r[1]), .Y(n706) );
  sky130_fd_sc_hd__clkinv_1 U2035 ( .A(i_tv80_core_ALU_Op_r[2]), .Y(n732) );
  sky130_fd_sc_hd__nand2_1 U2036 ( .A(n2063), .B(n627), .Y(
        i_tv80_core_i_alu_N235) );
  sky130_fd_sc_hd__mux2i_1 U2037 ( .A0(n2064), .A1(n2065), .S(i_tv80_core_F[1]), .Y(n2063) );
  sky130_fd_sc_hd__a31oi_1 U2038 ( .A1(n989), .A2(n1088), .A3(n2066), .B1(
        n1014), .Y(n2065) );
  sky130_fd_sc_hd__a211o_1 U2039 ( .A1(n60), .A2(n2067), .B1(n2068), .C1(n1975), .X(n2066) );
  sky130_fd_sc_hd__clkinv_1 U2040 ( .A(i_tv80_core_BusA[6]), .Y(n1088) );
  sky130_fd_sc_hd__o211ai_1 U2041 ( .A1(n2067), .A2(n2069), .B1(n2068), .C1(
        n2070), .Y(n2064) );
  sky130_fd_sc_hd__mux2i_1 U2042 ( .A0(n2071), .A1(n2072), .S(n2287), .Y(n2070) );
  sky130_fd_sc_hd__nor2_1 U2043 ( .A(n1014), .B(n989), .Y(n2072) );
  sky130_fd_sc_hd__clkinv_1 U2044 ( .A(i_tv80_core_BusA[5]), .Y(n989) );
  sky130_fd_sc_hd__clkinv_1 U2045 ( .A(i_tv80_core_BusA[7]), .Y(n1014) );
  sky130_fd_sc_hd__and2_0 U2046 ( .A(i_tv80_core_i_alu_N192), .B(
        i_tv80_core_i_alu_N190), .X(n2071) );
  sky130_fd_sc_hd__mux2i_1 U2047 ( .A0(n2289), .A1(i_tv80_core_BusA[4]), .S(
        i_tv80_core_F[1]), .Y(n2068) );
  sky130_fd_sc_hd__mux2i_1 U2048 ( .A0(i_tv80_core_i_alu_N201), .A1(
        i_tv80_core_BusA[2]), .S(i_tv80_core_F[1]), .Y(n2067) );
  sky130_fd_sc_hd__clkinv_1 U2049 ( .A(n2069), .Y(i_tv80_core_i_alu_N202) );
  sky130_fd_sc_hd__mux2i_1 U2050 ( .A0(i_tv80_core_i_alu_N192), .A1(
        i_tv80_core_BusA[7]), .S(n2287), .Y(n2069) );
  sky130_fd_sc_hd__clkinv_1 U2051 ( .A(n2011), .Y(n2287) );
  sky130_fd_sc_hd__mux2_1 U2052 ( .A0(i_tv80_core_BusA[6]), .A1(
        i_tv80_core_i_alu_N191), .S(n2011), .X(i_tv80_core_i_alu_N201) );
  sky130_fd_sc_hd__mux2_1 U2053 ( .A0(i_tv80_core_BusA[5]), .A1(
        i_tv80_core_i_alu_N190), .S(n2011), .X(i_tv80_core_i_alu_N200) );
  sky130_fd_sc_hd__o21ai_0 U2054 ( .A1(n940), .A2(n1975), .B1(n931), .Y(n2011)
         );
  sky130_fd_sc_hd__clkinv_1 U2055 ( .A(i_tv80_core_F[4]), .Y(n931) );
  sky130_fd_sc_hd__clkinv_1 U2056 ( .A(i_tv80_core_BusA[3]), .Y(n1975) );
  sky130_fd_sc_hd__nor2_1 U2057 ( .A(i_tv80_core_BusA[2]), .B(
        i_tv80_core_BusA[1]), .Y(n940) );
  sky130_fd_sc_hd__o21ai_0 U2058 ( .A1(n80), .A2(n542), .B1(n2073), .Y(
        i_tv80_core_SP16_B[6]) );
  sky130_fd_sc_hd__o21ai_0 U2059 ( .A1(n78), .A2(n542), .B1(n2073), .Y(
        i_tv80_core_SP16_B[5]) );
  sky130_fd_sc_hd__o21ai_0 U2060 ( .A1(n76), .A2(n542), .B1(n2073), .Y(
        i_tv80_core_SP16_B[4]) );
  sky130_fd_sc_hd__o21ai_0 U2061 ( .A1(n74), .A2(n542), .B1(n2073), .Y(
        i_tv80_core_SP16_B[3]) );
  sky130_fd_sc_hd__o21ai_0 U2062 ( .A1(n72), .A2(n542), .B1(n2073), .Y(
        i_tv80_core_SP16_B[2]) );
  sky130_fd_sc_hd__o21ai_0 U2063 ( .A1(n70), .A2(n542), .B1(n2073), .Y(
        i_tv80_core_SP16_B[1]) );
  sky130_fd_sc_hd__nand2_1 U2064 ( .A(i_tv80_core_IncDec_16_3_), .B(n542), .Y(
        n2073) );
  sky130_fd_sc_hd__nand2_1 U2065 ( .A(n1292), .B(n67), .Y(
        i_tv80_core_SP16_B[0]) );
  sky130_fd_sc_hd__mux2i_1 U2066 ( .A0(n855), .A1(n1436), .S(n1292), .Y(
        i_tv80_core_SP16_A[9]) );
  sky130_fd_sc_hd__nor4_1 U2067 ( .A(n2074), .B(n2075), .C(n2076), .D(n2077), 
        .Y(n1436) );
  sky130_fd_sc_hd__o22ai_1 U2068 ( .A1(n2078), .A2(n1825), .B1(n2079), .B2(
        n1804), .Y(n2077) );
  sky130_fd_sc_hd__o22ai_1 U2069 ( .A1(n2080), .A2(n1861), .B1(n2081), .B2(
        n1843), .Y(n2076) );
  sky130_fd_sc_hd__o22ai_1 U2070 ( .A1(n2082), .A2(n1834), .B1(n2083), .B2(
        n1816), .Y(n2075) );
  sky130_fd_sc_hd__o22ai_1 U2071 ( .A1(n2084), .A2(n2001), .B1(n2085), .B2(
        n1852), .Y(n2074) );
  sky130_fd_sc_hd__clkinv_1 U2072 ( .A(i_tv80_core_SP[9]), .Y(n855) );
  sky130_fd_sc_hd__mux2i_1 U2073 ( .A0(n289), .A1(n1441), .S(n1292), .Y(
        i_tv80_core_SP16_A[8]) );
  sky130_fd_sc_hd__nor4_1 U2074 ( .A(n2086), .B(n2087), .C(n2088), .D(n2089), 
        .Y(n1441) );
  sky130_fd_sc_hd__o22ai_1 U2075 ( .A1(n2078), .A2(n1826), .B1(n2079), .B2(
        n1806), .Y(n2089) );
  sky130_fd_sc_hd__o22ai_1 U2076 ( .A1(n2080), .A2(n1862), .B1(n2081), .B2(
        n1844), .Y(n2088) );
  sky130_fd_sc_hd__o22ai_1 U2077 ( .A1(n2082), .A2(n1835), .B1(n2083), .B2(
        n1817), .Y(n2087) );
  sky130_fd_sc_hd__o22ai_1 U2078 ( .A1(n2084), .A2(n2019), .B1(n2085), .B2(
        n1853), .Y(n2086) );
  sky130_fd_sc_hd__clkinv_1 U2079 ( .A(i_tv80_core_SP[8]), .Y(n289) );
  sky130_fd_sc_hd__mux2i_1 U2080 ( .A0(n839), .A1(n844), .S(n1292), .Y(
        i_tv80_core_SP16_A[7]) );
  sky130_fd_sc_hd__nor4_1 U2081 ( .A(n2090), .B(n2091), .C(n2092), .D(n2093), 
        .Y(n844) );
  sky130_fd_sc_hd__o22ai_1 U2082 ( .A1(n2078), .A2(n1677), .B1(n2079), .B2(
        n1648), .Y(n2093) );
  sky130_fd_sc_hd__o22ai_1 U2083 ( .A1(n2080), .A2(n1717), .B1(n2081), .B2(
        n1697), .Y(n2092) );
  sky130_fd_sc_hd__o22ai_1 U2084 ( .A1(n2082), .A2(n1687), .B1(n2083), .B2(
        n1667), .Y(n2091) );
  sky130_fd_sc_hd__o22ai_1 U2085 ( .A1(n2084), .A2(n1727), .B1(n2085), .B2(
        n1707), .Y(n2090) );
  sky130_fd_sc_hd__clkinv_1 U2086 ( .A(i_tv80_core_SP[7]), .Y(n839) );
  sky130_fd_sc_hd__mux2i_1 U2087 ( .A0(n835), .A1(n1444), .S(n1292), .Y(
        i_tv80_core_SP16_A[6]) );
  sky130_fd_sc_hd__nor4_1 U2088 ( .A(n2094), .B(n2095), .C(n2096), .D(n2097), 
        .Y(n1444) );
  sky130_fd_sc_hd__o22ai_1 U2089 ( .A1(n2078), .A2(n1679), .B1(n2079), .B2(
        n1651), .Y(n2097) );
  sky130_fd_sc_hd__o22ai_1 U2090 ( .A1(n2080), .A2(n1719), .B1(n2081), .B2(
        n1699), .Y(n2096) );
  sky130_fd_sc_hd__o22ai_1 U2091 ( .A1(n2082), .A2(n1689), .B1(n2083), .B2(
        n1669), .Y(n2095) );
  sky130_fd_sc_hd__o22ai_1 U2092 ( .A1(n2084), .A2(n1746), .B1(n2085), .B2(
        n1709), .Y(n2094) );
  sky130_fd_sc_hd__clkinv_1 U2093 ( .A(i_tv80_core_SP[6]), .Y(n835) );
  sky130_fd_sc_hd__mux2i_1 U2094 ( .A0(n831), .A1(n1447), .S(n1292), .Y(
        i_tv80_core_SP16_A[5]) );
  sky130_fd_sc_hd__nor4_1 U2095 ( .A(n2098), .B(n2099), .C(n2100), .D(n2101), 
        .Y(n1447) );
  sky130_fd_sc_hd__o22ai_1 U2096 ( .A1(n2078), .A2(n1680), .B1(n2079), .B2(
        n1653), .Y(n2101) );
  sky130_fd_sc_hd__o22ai_1 U2097 ( .A1(n2080), .A2(n1720), .B1(n2081), .B2(
        n1700), .Y(n2100) );
  sky130_fd_sc_hd__o22ai_1 U2098 ( .A1(n2082), .A2(n1690), .B1(n2083), .B2(
        n1670), .Y(n2099) );
  sky130_fd_sc_hd__o22ai_1 U2099 ( .A1(n2084), .A2(n1752), .B1(n2085), .B2(
        n1710), .Y(n2098) );
  sky130_fd_sc_hd__clkinv_1 U2100 ( .A(i_tv80_core_SP[5]), .Y(n831) );
  sky130_fd_sc_hd__mux2i_1 U2101 ( .A0(n827), .A1(n1448), .S(n1292), .Y(
        i_tv80_core_SP16_A[4]) );
  sky130_fd_sc_hd__nor4_1 U2102 ( .A(n2102), .B(n2103), .C(n2104), .D(n2105), 
        .Y(n1448) );
  sky130_fd_sc_hd__o22ai_1 U2103 ( .A1(n2078), .A2(n1681), .B1(n2079), .B2(
        n1655), .Y(n2105) );
  sky130_fd_sc_hd__o22ai_1 U2104 ( .A1(n2080), .A2(n1721), .B1(n2081), .B2(
        n1701), .Y(n2104) );
  sky130_fd_sc_hd__o22ai_1 U2105 ( .A1(n2082), .A2(n1691), .B1(n2083), .B2(
        n1671), .Y(n2103) );
  sky130_fd_sc_hd__o22ai_1 U2106 ( .A1(n2084), .A2(n1758), .B1(n2085), .B2(
        n1711), .Y(n2102) );
  sky130_fd_sc_hd__clkinv_1 U2107 ( .A(i_tv80_core_SP[4]), .Y(n827) );
  sky130_fd_sc_hd__mux2i_1 U2108 ( .A0(n823), .A1(n1450), .S(n1292), .Y(
        i_tv80_core_SP16_A[3]) );
  sky130_fd_sc_hd__nor4_1 U2109 ( .A(n2106), .B(n2107), .C(n2108), .D(n2109), 
        .Y(n1450) );
  sky130_fd_sc_hd__o22ai_1 U2110 ( .A1(n2078), .A2(n1682), .B1(n2079), .B2(
        n1657), .Y(n2109) );
  sky130_fd_sc_hd__o22ai_1 U2111 ( .A1(n2080), .A2(n1722), .B1(n2081), .B2(
        n1702), .Y(n2108) );
  sky130_fd_sc_hd__o22ai_1 U2112 ( .A1(n2082), .A2(n1692), .B1(n2083), .B2(
        n1672), .Y(n2107) );
  sky130_fd_sc_hd__o22ai_1 U2113 ( .A1(n2084), .A2(n1764), .B1(n2085), .B2(
        n1712), .Y(n2106) );
  sky130_fd_sc_hd__clkinv_1 U2114 ( .A(i_tv80_core_SP[3]), .Y(n823) );
  sky130_fd_sc_hd__mux2i_1 U2115 ( .A0(n819), .A1(n1453), .S(n1292), .Y(
        i_tv80_core_SP16_A[2]) );
  sky130_fd_sc_hd__nor4_1 U2116 ( .A(n2110), .B(n2111), .C(n2112), .D(n2113), 
        .Y(n1453) );
  sky130_fd_sc_hd__o22ai_1 U2117 ( .A1(n2078), .A2(n1683), .B1(n2079), .B2(
        n1659), .Y(n2113) );
  sky130_fd_sc_hd__o22ai_1 U2118 ( .A1(n2080), .A2(n1723), .B1(n2081), .B2(
        n1703), .Y(n2112) );
  sky130_fd_sc_hd__o22ai_1 U2119 ( .A1(n2082), .A2(n1693), .B1(n2083), .B2(
        n1673), .Y(n2111) );
  sky130_fd_sc_hd__o22ai_1 U2120 ( .A1(n2084), .A2(n1770), .B1(n2085), .B2(
        n1713), .Y(n2110) );
  sky130_fd_sc_hd__clkinv_1 U2121 ( .A(i_tv80_core_SP[2]), .Y(n819) );
  sky130_fd_sc_hd__mux2i_1 U2122 ( .A0(n815), .A1(n1455), .S(n1292), .Y(
        i_tv80_core_SP16_A[1]) );
  sky130_fd_sc_hd__nor4_1 U2123 ( .A(n2114), .B(n2115), .C(n2116), .D(n2117), 
        .Y(n1455) );
  sky130_fd_sc_hd__o22ai_1 U2124 ( .A1(n2078), .A2(n1684), .B1(n2079), .B2(
        n1661), .Y(n2117) );
  sky130_fd_sc_hd__o22ai_1 U2125 ( .A1(n2080), .A2(n1724), .B1(n2081), .B2(
        n1704), .Y(n2116) );
  sky130_fd_sc_hd__o22ai_1 U2126 ( .A1(n2082), .A2(n1694), .B1(n2083), .B2(
        n1674), .Y(n2115) );
  sky130_fd_sc_hd__o22ai_1 U2127 ( .A1(n2084), .A2(n1776), .B1(n2085), .B2(
        n1714), .Y(n2114) );
  sky130_fd_sc_hd__clkinv_1 U2128 ( .A(i_tv80_core_SP[1]), .Y(n815) );
  sky130_fd_sc_hd__mux2i_1 U2129 ( .A0(n867), .A1(n154), .S(n1292), .Y(
        i_tv80_core_SP16_A[15]) );
  sky130_fd_sc_hd__nor4_1 U2130 ( .A(n2118), .B(n2119), .C(n2120), .D(n2121), 
        .Y(n154) );
  sky130_fd_sc_hd__o22ai_1 U2131 ( .A1(n2078), .A2(n1818), .B1(n2079), .B2(
        n1791), .Y(n2121) );
  sky130_fd_sc_hd__o22ai_1 U2132 ( .A1(n2080), .A2(n1854), .B1(n2081), .B2(
        n1836), .Y(n2120) );
  sky130_fd_sc_hd__o22ai_1 U2133 ( .A1(n2082), .A2(n1827), .B1(n2083), .B2(
        n1809), .Y(n2119) );
  sky130_fd_sc_hd__o22ai_1 U2134 ( .A1(n2084), .A2(n1863), .B1(n2085), .B2(
        n1845), .Y(n2118) );
  sky130_fd_sc_hd__clkinv_1 U2135 ( .A(i_tv80_core_SP[15]), .Y(n867) );
  sky130_fd_sc_hd__mux2i_1 U2136 ( .A0(n865), .A1(n1416), .S(n1292), .Y(
        i_tv80_core_SP16_A[14]) );
  sky130_fd_sc_hd__nor4_1 U2137 ( .A(n2122), .B(n2123), .C(n2124), .D(n2125), 
        .Y(n1416) );
  sky130_fd_sc_hd__o22ai_1 U2138 ( .A1(n2078), .A2(n1820), .B1(n2079), .B2(
        n1794), .Y(n2125) );
  sky130_fd_sc_hd__o22ai_1 U2139 ( .A1(n2080), .A2(n1856), .B1(n2081), .B2(
        n1838), .Y(n2124) );
  sky130_fd_sc_hd__o22ai_1 U2140 ( .A1(n2082), .A2(n1829), .B1(n2083), .B2(
        n1811), .Y(n2123) );
  sky130_fd_sc_hd__o22ai_1 U2141 ( .A1(n2084), .A2(n1898), .B1(n2085), .B2(
        n1847), .Y(n2122) );
  sky130_fd_sc_hd__clkinv_1 U2142 ( .A(i_tv80_core_SP[14]), .Y(n865) );
  sky130_fd_sc_hd__mux2i_1 U2143 ( .A0(n863), .A1(n1420), .S(n1292), .Y(
        i_tv80_core_SP16_A[13]) );
  sky130_fd_sc_hd__nor4_1 U2144 ( .A(n2126), .B(n2127), .C(n2128), .D(n2129), 
        .Y(n1420) );
  sky130_fd_sc_hd__o22ai_1 U2145 ( .A1(n2078), .A2(n1821), .B1(n2079), .B2(
        n1796), .Y(n2129) );
  sky130_fd_sc_hd__o22ai_1 U2146 ( .A1(n2080), .A2(n1857), .B1(n2081), .B2(
        n1839), .Y(n2128) );
  sky130_fd_sc_hd__o22ai_1 U2147 ( .A1(n2082), .A2(n1830), .B1(n2083), .B2(
        n1812), .Y(n2127) );
  sky130_fd_sc_hd__o22ai_1 U2148 ( .A1(n2084), .A2(n1919), .B1(n2085), .B2(
        n1848), .Y(n2126) );
  sky130_fd_sc_hd__clkinv_1 U2149 ( .A(i_tv80_core_SP[13]), .Y(n863) );
  sky130_fd_sc_hd__mux2i_1 U2150 ( .A0(n861), .A1(n1424), .S(n1292), .Y(
        i_tv80_core_SP16_A[12]) );
  sky130_fd_sc_hd__nor4_1 U2151 ( .A(n2130), .B(n2131), .C(n2132), .D(n2133), 
        .Y(n1424) );
  sky130_fd_sc_hd__o22ai_1 U2152 ( .A1(n2078), .A2(n1822), .B1(n2079), .B2(
        n1798), .Y(n2133) );
  sky130_fd_sc_hd__o22ai_1 U2153 ( .A1(n2080), .A2(n1858), .B1(n2081), .B2(
        n1840), .Y(n2132) );
  sky130_fd_sc_hd__o22ai_1 U2154 ( .A1(n2082), .A2(n1831), .B1(n2083), .B2(
        n1813), .Y(n2131) );
  sky130_fd_sc_hd__o22ai_1 U2155 ( .A1(n2084), .A2(n1938), .B1(n2085), .B2(
        n1849), .Y(n2130) );
  sky130_fd_sc_hd__clkinv_1 U2156 ( .A(i_tv80_core_SP[12]), .Y(n861) );
  sky130_fd_sc_hd__mux2i_1 U2157 ( .A0(n859), .A1(n1428), .S(n1292), .Y(
        i_tv80_core_SP16_A[11]) );
  sky130_fd_sc_hd__nor4_1 U2158 ( .A(n2134), .B(n2135), .C(n2136), .D(n2137), 
        .Y(n1428) );
  sky130_fd_sc_hd__o22ai_1 U2159 ( .A1(n2078), .A2(n1823), .B1(n2079), .B2(
        n1800), .Y(n2137) );
  sky130_fd_sc_hd__o22ai_1 U2160 ( .A1(n2080), .A2(n1859), .B1(n2081), .B2(
        n1841), .Y(n2136) );
  sky130_fd_sc_hd__o22ai_1 U2161 ( .A1(n2082), .A2(n1832), .B1(n2083), .B2(
        n1814), .Y(n2135) );
  sky130_fd_sc_hd__o22ai_1 U2162 ( .A1(n2084), .A2(n1963), .B1(n2085), .B2(
        n1850), .Y(n2134) );
  sky130_fd_sc_hd__clkinv_1 U2163 ( .A(i_tv80_core_SP[11]), .Y(n859) );
  sky130_fd_sc_hd__mux2i_1 U2164 ( .A0(n857), .A1(n1432), .S(n1292), .Y(
        i_tv80_core_SP16_A[10]) );
  sky130_fd_sc_hd__nor4_1 U2165 ( .A(n2138), .B(n2139), .C(n2140), .D(n2141), 
        .Y(n1432) );
  sky130_fd_sc_hd__o22ai_1 U2166 ( .A1(n2078), .A2(n1824), .B1(n2079), .B2(
        n1802), .Y(n2141) );
  sky130_fd_sc_hd__o22ai_1 U2167 ( .A1(n2080), .A2(n1860), .B1(n2081), .B2(
        n1842), .Y(n2140) );
  sky130_fd_sc_hd__o22ai_1 U2168 ( .A1(n2082), .A2(n1833), .B1(n2083), .B2(
        n1815), .Y(n2139) );
  sky130_fd_sc_hd__o22ai_1 U2169 ( .A1(n2084), .A2(n1984), .B1(n2085), .B2(
        n1851), .Y(n2138) );
  sky130_fd_sc_hd__clkinv_1 U2170 ( .A(i_tv80_core_SP[10]), .Y(n857) );
  sky130_fd_sc_hd__mux2i_1 U2171 ( .A0(n297), .A1(n1409), .S(n1292), .Y(
        i_tv80_core_SP16_A[0]) );
  sky130_fd_sc_hd__nor4_1 U2172 ( .A(n2142), .B(n2143), .C(n2144), .D(n2145), 
        .Y(n1409) );
  sky130_fd_sc_hd__o22ai_1 U2173 ( .A1(n2078), .A2(n1685), .B1(n2079), .B2(
        n1663), .Y(n2145) );
  sky130_fd_sc_hd__nand3_1 U2174 ( .A(n240), .B(n2146), .C(n233), .Y(n2079) );
  sky130_fd_sc_hd__nand3_1 U2175 ( .A(n233), .B(n2146), .C(
        i_tv80_core_RegAddrC[1]), .Y(n2078) );
  sky130_fd_sc_hd__o22ai_1 U2176 ( .A1(n2080), .A2(n1725), .B1(n2081), .B2(
        n1705), .Y(n2144) );
  sky130_fd_sc_hd__nand3_1 U2177 ( .A(n233), .B(n240), .C(
        i_tv80_core_RegAddrC[2]), .Y(n2081) );
  sky130_fd_sc_hd__nand3_1 U2178 ( .A(i_tv80_core_RegAddrC[2]), .B(n233), .C(
        i_tv80_core_RegAddrC[1]), .Y(n2080) );
  sky130_fd_sc_hd__clkinv_1 U2179 ( .A(i_tv80_core_RegAddrC[0]), .Y(n233) );
  sky130_fd_sc_hd__o22ai_1 U2180 ( .A1(n2082), .A2(n1695), .B1(n2083), .B2(
        n1675), .Y(n2143) );
  sky130_fd_sc_hd__nand3_1 U2181 ( .A(n240), .B(n2146), .C(
        i_tv80_core_RegAddrC[0]), .Y(n2083) );
  sky130_fd_sc_hd__nand3_1 U2182 ( .A(i_tv80_core_RegAddrC[1]), .B(n2146), .C(
        i_tv80_core_RegAddrC[0]), .Y(n2082) );
  sky130_fd_sc_hd__clkinv_1 U2183 ( .A(i_tv80_core_RegAddrC[2]), .Y(n2146) );
  sky130_fd_sc_hd__o22ai_1 U2184 ( .A1(n2084), .A2(n1782), .B1(n2085), .B2(
        n1715), .Y(n2142) );
  sky130_fd_sc_hd__nand3_1 U2185 ( .A(i_tv80_core_RegAddrC[2]), .B(n240), .C(
        i_tv80_core_RegAddrC[0]), .Y(n2085) );
  sky130_fd_sc_hd__clkinv_1 U2186 ( .A(i_tv80_core_RegAddrC[1]), .Y(n240) );
  sky130_fd_sc_hd__nand3_1 U2187 ( .A(i_tv80_core_RegAddrC[1]), .B(
        i_tv80_core_RegAddrC[2]), .C(i_tv80_core_RegAddrC[0]), .Y(n2084) );
  sky130_fd_sc_hd__clkinv_1 U2188 ( .A(i_tv80_core_SP[0]), .Y(n297) );
  sky130_fd_sc_hd__clkinv_1 U2189 ( .A(n1207), .Y(i_tv80_core_RegBusA[9]) );
  sky130_fd_sc_hd__nor4_1 U2190 ( .A(n2147), .B(n2148), .C(n2149), .D(n2150), 
        .Y(n1207) );
  sky130_fd_sc_hd__o22ai_1 U2191 ( .A1(n1825), .A2(n1686), .B1(n1804), .B2(
        n1666), .Y(n2150) );
  sky130_fd_sc_hd__clkinv_1 U2192 ( .A(i_tv80_core_i_reg_RegsH[57]), .Y(n1804)
         );
  sky130_fd_sc_hd__clkinv_1 U2193 ( .A(i_tv80_core_i_reg_RegsH[41]), .Y(n1825)
         );
  sky130_fd_sc_hd__o22ai_1 U2194 ( .A1(n1861), .A2(n1726), .B1(n1843), .B2(
        n1706), .Y(n2149) );
  sky130_fd_sc_hd__clkinv_1 U2195 ( .A(i_tv80_core_i_reg_RegsH[25]), .Y(n1843)
         );
  sky130_fd_sc_hd__clkinv_1 U2196 ( .A(i_tv80_core_i_reg_RegsH[9]), .Y(n1861)
         );
  sky130_fd_sc_hd__o22ai_1 U2197 ( .A1(n1834), .A2(n1696), .B1(n1816), .B2(
        n1676), .Y(n2148) );
  sky130_fd_sc_hd__clkinv_1 U2198 ( .A(i_tv80_core_i_reg_RegsH[49]), .Y(n1816)
         );
  sky130_fd_sc_hd__clkinv_1 U2199 ( .A(i_tv80_core_i_reg_RegsH[33]), .Y(n1834)
         );
  sky130_fd_sc_hd__o22ai_1 U2200 ( .A1(n2001), .A2(n1783), .B1(n1852), .B2(
        n1716), .Y(n2147) );
  sky130_fd_sc_hd__clkinv_1 U2201 ( .A(i_tv80_core_i_reg_RegsH[17]), .Y(n1852)
         );
  sky130_fd_sc_hd__clkinv_1 U2202 ( .A(i_tv80_core_i_reg_RegsH[1]), .Y(n2001)
         );
  sky130_fd_sc_hd__clkinv_1 U2203 ( .A(n1196), .Y(i_tv80_core_RegBusA[8]) );
  sky130_fd_sc_hd__nor4_1 U2204 ( .A(n2151), .B(n2152), .C(n2153), .D(n2154), 
        .Y(n1196) );
  sky130_fd_sc_hd__o22ai_1 U2205 ( .A1(n1826), .A2(n1686), .B1(n1806), .B2(
        n1666), .Y(n2154) );
  sky130_fd_sc_hd__clkinv_1 U2206 ( .A(i_tv80_core_i_reg_RegsH[56]), .Y(n1806)
         );
  sky130_fd_sc_hd__clkinv_1 U2207 ( .A(i_tv80_core_i_reg_RegsH[40]), .Y(n1826)
         );
  sky130_fd_sc_hd__o22ai_1 U2208 ( .A1(n1862), .A2(n1726), .B1(n1844), .B2(
        n1706), .Y(n2153) );
  sky130_fd_sc_hd__clkinv_1 U2209 ( .A(i_tv80_core_i_reg_RegsH[24]), .Y(n1844)
         );
  sky130_fd_sc_hd__clkinv_1 U2210 ( .A(i_tv80_core_i_reg_RegsH[8]), .Y(n1862)
         );
  sky130_fd_sc_hd__o22ai_1 U2211 ( .A1(n1835), .A2(n1696), .B1(n1817), .B2(
        n1676), .Y(n2152) );
  sky130_fd_sc_hd__clkinv_1 U2212 ( .A(i_tv80_core_i_reg_RegsH[48]), .Y(n1817)
         );
  sky130_fd_sc_hd__clkinv_1 U2213 ( .A(i_tv80_core_i_reg_RegsH[32]), .Y(n1835)
         );
  sky130_fd_sc_hd__o22ai_1 U2214 ( .A1(n2019), .A2(n1783), .B1(n1853), .B2(
        n1716), .Y(n2151) );
  sky130_fd_sc_hd__clkinv_1 U2215 ( .A(i_tv80_core_i_reg_RegsH[16]), .Y(n1853)
         );
  sky130_fd_sc_hd__clkinv_1 U2216 ( .A(i_tv80_core_i_reg_RegsH[0]), .Y(n2019)
         );
  sky130_fd_sc_hd__clkinv_1 U2217 ( .A(n1238), .Y(i_tv80_core_RegBusA[7]) );
  sky130_fd_sc_hd__nor4_1 U2218 ( .A(n2155), .B(n2156), .C(n2157), .D(n2158), 
        .Y(n1238) );
  sky130_fd_sc_hd__o22ai_1 U2219 ( .A1(n1677), .A2(n1686), .B1(n1648), .B2(
        n1666), .Y(n2158) );
  sky130_fd_sc_hd__clkinv_1 U2220 ( .A(i_tv80_core_i_reg_RegsL[63]), .Y(n1648)
         );
  sky130_fd_sc_hd__clkinv_1 U2221 ( .A(i_tv80_core_i_reg_RegsL[47]), .Y(n1677)
         );
  sky130_fd_sc_hd__o22ai_1 U2222 ( .A1(n1717), .A2(n1726), .B1(n1697), .B2(
        n1706), .Y(n2157) );
  sky130_fd_sc_hd__clkinv_1 U2223 ( .A(i_tv80_core_i_reg_RegsL[31]), .Y(n1697)
         );
  sky130_fd_sc_hd__clkinv_1 U2224 ( .A(i_tv80_core_i_reg_RegsL[15]), .Y(n1717)
         );
  sky130_fd_sc_hd__o22ai_1 U2225 ( .A1(n1687), .A2(n1696), .B1(n1667), .B2(
        n1676), .Y(n2156) );
  sky130_fd_sc_hd__clkinv_1 U2226 ( .A(i_tv80_core_i_reg_RegsL[55]), .Y(n1667)
         );
  sky130_fd_sc_hd__clkinv_1 U2227 ( .A(i_tv80_core_i_reg_RegsL[39]), .Y(n1687)
         );
  sky130_fd_sc_hd__o22ai_1 U2228 ( .A1(n1727), .A2(n1783), .B1(n1707), .B2(
        n1716), .Y(n2155) );
  sky130_fd_sc_hd__clkinv_1 U2229 ( .A(i_tv80_core_i_reg_RegsL[23]), .Y(n1707)
         );
  sky130_fd_sc_hd__clkinv_1 U2230 ( .A(i_tv80_core_i_reg_RegsL[7]), .Y(n1727)
         );
  sky130_fd_sc_hd__clkinv_1 U2231 ( .A(n1233), .Y(i_tv80_core_RegBusA[6]) );
  sky130_fd_sc_hd__nor4_1 U2232 ( .A(n2159), .B(n2160), .C(n2161), .D(n2162), 
        .Y(n1233) );
  sky130_fd_sc_hd__o22ai_1 U2233 ( .A1(n1686), .A2(n1679), .B1(n1666), .B2(
        n1651), .Y(n2162) );
  sky130_fd_sc_hd__clkinv_1 U2234 ( .A(i_tv80_core_i_reg_RegsL[62]), .Y(n1651)
         );
  sky130_fd_sc_hd__clkinv_1 U2235 ( .A(i_tv80_core_i_reg_RegsL[46]), .Y(n1679)
         );
  sky130_fd_sc_hd__o22ai_1 U2236 ( .A1(n1726), .A2(n1719), .B1(n1706), .B2(
        n1699), .Y(n2161) );
  sky130_fd_sc_hd__clkinv_1 U2237 ( .A(i_tv80_core_i_reg_RegsL[30]), .Y(n1699)
         );
  sky130_fd_sc_hd__clkinv_1 U2238 ( .A(i_tv80_core_i_reg_RegsL[14]), .Y(n1719)
         );
  sky130_fd_sc_hd__o22ai_1 U2239 ( .A1(n1696), .A2(n1689), .B1(n1676), .B2(
        n1669), .Y(n2160) );
  sky130_fd_sc_hd__clkinv_1 U2240 ( .A(i_tv80_core_i_reg_RegsL[54]), .Y(n1669)
         );
  sky130_fd_sc_hd__clkinv_1 U2241 ( .A(i_tv80_core_i_reg_RegsL[38]), .Y(n1689)
         );
  sky130_fd_sc_hd__o22ai_1 U2242 ( .A1(n1783), .A2(n1746), .B1(n1716), .B2(
        n1709), .Y(n2159) );
  sky130_fd_sc_hd__clkinv_1 U2243 ( .A(i_tv80_core_i_reg_RegsL[22]), .Y(n1709)
         );
  sky130_fd_sc_hd__clkinv_1 U2244 ( .A(i_tv80_core_i_reg_RegsL[6]), .Y(n1746)
         );
  sky130_fd_sc_hd__clkinv_1 U2245 ( .A(n1228), .Y(i_tv80_core_RegBusA[5]) );
  sky130_fd_sc_hd__nor4_1 U2246 ( .A(n2163), .B(n2164), .C(n2165), .D(n2166), 
        .Y(n1228) );
  sky130_fd_sc_hd__o22ai_1 U2247 ( .A1(n1686), .A2(n1680), .B1(n1666), .B2(
        n1653), .Y(n2166) );
  sky130_fd_sc_hd__clkinv_1 U2248 ( .A(i_tv80_core_i_reg_RegsL[61]), .Y(n1653)
         );
  sky130_fd_sc_hd__clkinv_1 U2249 ( .A(i_tv80_core_i_reg_RegsL[45]), .Y(n1680)
         );
  sky130_fd_sc_hd__o22ai_1 U2250 ( .A1(n1726), .A2(n1720), .B1(n1706), .B2(
        n1700), .Y(n2165) );
  sky130_fd_sc_hd__clkinv_1 U2251 ( .A(i_tv80_core_i_reg_RegsL[29]), .Y(n1700)
         );
  sky130_fd_sc_hd__clkinv_1 U2252 ( .A(i_tv80_core_i_reg_RegsL[13]), .Y(n1720)
         );
  sky130_fd_sc_hd__o22ai_1 U2253 ( .A1(n1696), .A2(n1690), .B1(n1676), .B2(
        n1670), .Y(n2164) );
  sky130_fd_sc_hd__clkinv_1 U2254 ( .A(i_tv80_core_i_reg_RegsL[53]), .Y(n1670)
         );
  sky130_fd_sc_hd__clkinv_1 U2255 ( .A(i_tv80_core_i_reg_RegsL[37]), .Y(n1690)
         );
  sky130_fd_sc_hd__o22ai_1 U2256 ( .A1(n1783), .A2(n1752), .B1(n1716), .B2(
        n1710), .Y(n2163) );
  sky130_fd_sc_hd__clkinv_1 U2257 ( .A(i_tv80_core_i_reg_RegsL[21]), .Y(n1710)
         );
  sky130_fd_sc_hd__clkinv_1 U2258 ( .A(i_tv80_core_i_reg_RegsL[5]), .Y(n1752)
         );
  sky130_fd_sc_hd__clkinv_1 U2259 ( .A(n1223), .Y(i_tv80_core_RegBusA[4]) );
  sky130_fd_sc_hd__nor4_1 U2260 ( .A(n2167), .B(n2168), .C(n2169), .D(n2170), 
        .Y(n1223) );
  sky130_fd_sc_hd__o22ai_1 U2261 ( .A1(n1686), .A2(n1681), .B1(n1666), .B2(
        n1655), .Y(n2170) );
  sky130_fd_sc_hd__clkinv_1 U2262 ( .A(i_tv80_core_i_reg_RegsL[60]), .Y(n1655)
         );
  sky130_fd_sc_hd__clkinv_1 U2263 ( .A(i_tv80_core_i_reg_RegsL[44]), .Y(n1681)
         );
  sky130_fd_sc_hd__o22ai_1 U2264 ( .A1(n1726), .A2(n1721), .B1(n1706), .B2(
        n1701), .Y(n2169) );
  sky130_fd_sc_hd__clkinv_1 U2265 ( .A(i_tv80_core_i_reg_RegsL[28]), .Y(n1701)
         );
  sky130_fd_sc_hd__clkinv_1 U2266 ( .A(i_tv80_core_i_reg_RegsL[12]), .Y(n1721)
         );
  sky130_fd_sc_hd__o22ai_1 U2267 ( .A1(n1696), .A2(n1691), .B1(n1676), .B2(
        n1671), .Y(n2168) );
  sky130_fd_sc_hd__clkinv_1 U2268 ( .A(i_tv80_core_i_reg_RegsL[52]), .Y(n1671)
         );
  sky130_fd_sc_hd__clkinv_1 U2269 ( .A(i_tv80_core_i_reg_RegsL[36]), .Y(n1691)
         );
  sky130_fd_sc_hd__o22ai_1 U2270 ( .A1(n1783), .A2(n1758), .B1(n1716), .B2(
        n1711), .Y(n2167) );
  sky130_fd_sc_hd__clkinv_1 U2271 ( .A(i_tv80_core_i_reg_RegsL[20]), .Y(n1711)
         );
  sky130_fd_sc_hd__clkinv_1 U2272 ( .A(i_tv80_core_i_reg_RegsL[4]), .Y(n1758)
         );
  sky130_fd_sc_hd__clkinv_1 U2273 ( .A(n1218), .Y(i_tv80_core_RegBusA[3]) );
  sky130_fd_sc_hd__nor4_1 U2274 ( .A(n2171), .B(n2172), .C(n2173), .D(n2174), 
        .Y(n1218) );
  sky130_fd_sc_hd__o22ai_1 U2275 ( .A1(n1686), .A2(n1682), .B1(n1666), .B2(
        n1657), .Y(n2174) );
  sky130_fd_sc_hd__clkinv_1 U2276 ( .A(i_tv80_core_i_reg_RegsL[59]), .Y(n1657)
         );
  sky130_fd_sc_hd__clkinv_1 U2277 ( .A(i_tv80_core_i_reg_RegsL[43]), .Y(n1682)
         );
  sky130_fd_sc_hd__o22ai_1 U2278 ( .A1(n1726), .A2(n1722), .B1(n1706), .B2(
        n1702), .Y(n2173) );
  sky130_fd_sc_hd__clkinv_1 U2279 ( .A(i_tv80_core_i_reg_RegsL[27]), .Y(n1702)
         );
  sky130_fd_sc_hd__clkinv_1 U2280 ( .A(i_tv80_core_i_reg_RegsL[11]), .Y(n1722)
         );
  sky130_fd_sc_hd__o22ai_1 U2281 ( .A1(n1696), .A2(n1692), .B1(n1676), .B2(
        n1672), .Y(n2172) );
  sky130_fd_sc_hd__clkinv_1 U2282 ( .A(i_tv80_core_i_reg_RegsL[51]), .Y(n1672)
         );
  sky130_fd_sc_hd__clkinv_1 U2283 ( .A(i_tv80_core_i_reg_RegsL[35]), .Y(n1692)
         );
  sky130_fd_sc_hd__o22ai_1 U2284 ( .A1(n1783), .A2(n1764), .B1(n1716), .B2(
        n1712), .Y(n2171) );
  sky130_fd_sc_hd__clkinv_1 U2285 ( .A(i_tv80_core_i_reg_RegsL[19]), .Y(n1712)
         );
  sky130_fd_sc_hd__clkinv_1 U2286 ( .A(i_tv80_core_i_reg_RegsL[3]), .Y(n1764)
         );
  sky130_fd_sc_hd__clkinv_1 U2287 ( .A(n1213), .Y(i_tv80_core_RegBusA[2]) );
  sky130_fd_sc_hd__nor4_1 U2288 ( .A(n2175), .B(n2176), .C(n2177), .D(n2178), 
        .Y(n1213) );
  sky130_fd_sc_hd__o22ai_1 U2289 ( .A1(n1686), .A2(n1683), .B1(n1666), .B2(
        n1659), .Y(n2178) );
  sky130_fd_sc_hd__clkinv_1 U2290 ( .A(i_tv80_core_i_reg_RegsL[58]), .Y(n1659)
         );
  sky130_fd_sc_hd__clkinv_1 U2291 ( .A(i_tv80_core_i_reg_RegsL[42]), .Y(n1683)
         );
  sky130_fd_sc_hd__o22ai_1 U2292 ( .A1(n1726), .A2(n1723), .B1(n1706), .B2(
        n1703), .Y(n2177) );
  sky130_fd_sc_hd__clkinv_1 U2293 ( .A(i_tv80_core_i_reg_RegsL[26]), .Y(n1703)
         );
  sky130_fd_sc_hd__clkinv_1 U2294 ( .A(i_tv80_core_i_reg_RegsL[10]), .Y(n1723)
         );
  sky130_fd_sc_hd__o22ai_1 U2295 ( .A1(n1696), .A2(n1693), .B1(n1676), .B2(
        n1673), .Y(n2176) );
  sky130_fd_sc_hd__clkinv_1 U2296 ( .A(i_tv80_core_i_reg_RegsL[50]), .Y(n1673)
         );
  sky130_fd_sc_hd__clkinv_1 U2297 ( .A(i_tv80_core_i_reg_RegsL[34]), .Y(n1693)
         );
  sky130_fd_sc_hd__o22ai_1 U2298 ( .A1(n1783), .A2(n1770), .B1(n1716), .B2(
        n1713), .Y(n2175) );
  sky130_fd_sc_hd__clkinv_1 U2299 ( .A(i_tv80_core_i_reg_RegsL[18]), .Y(n1713)
         );
  sky130_fd_sc_hd__clkinv_1 U2300 ( .A(i_tv80_core_i_reg_RegsL[2]), .Y(n1770)
         );
  sky130_fd_sc_hd__clkinv_1 U2301 ( .A(n1208), .Y(i_tv80_core_RegBusA[1]) );
  sky130_fd_sc_hd__nor4_1 U2302 ( .A(n2179), .B(n2180), .C(n2181), .D(n2182), 
        .Y(n1208) );
  sky130_fd_sc_hd__o22ai_1 U2303 ( .A1(n1686), .A2(n1684), .B1(n1666), .B2(
        n1661), .Y(n2182) );
  sky130_fd_sc_hd__clkinv_1 U2304 ( .A(i_tv80_core_i_reg_RegsL[57]), .Y(n1661)
         );
  sky130_fd_sc_hd__clkinv_1 U2305 ( .A(i_tv80_core_i_reg_RegsL[41]), .Y(n1684)
         );
  sky130_fd_sc_hd__o22ai_1 U2306 ( .A1(n1726), .A2(n1724), .B1(n1706), .B2(
        n1704), .Y(n2181) );
  sky130_fd_sc_hd__clkinv_1 U2307 ( .A(i_tv80_core_i_reg_RegsL[25]), .Y(n1704)
         );
  sky130_fd_sc_hd__clkinv_1 U2308 ( .A(i_tv80_core_i_reg_RegsL[9]), .Y(n1724)
         );
  sky130_fd_sc_hd__o22ai_1 U2309 ( .A1(n1696), .A2(n1694), .B1(n1676), .B2(
        n1674), .Y(n2180) );
  sky130_fd_sc_hd__clkinv_1 U2310 ( .A(i_tv80_core_i_reg_RegsL[49]), .Y(n1674)
         );
  sky130_fd_sc_hd__clkinv_1 U2311 ( .A(i_tv80_core_i_reg_RegsL[33]), .Y(n1694)
         );
  sky130_fd_sc_hd__o22ai_1 U2312 ( .A1(n1783), .A2(n1776), .B1(n1716), .B2(
        n1714), .Y(n2179) );
  sky130_fd_sc_hd__clkinv_1 U2313 ( .A(i_tv80_core_i_reg_RegsL[17]), .Y(n1714)
         );
  sky130_fd_sc_hd__clkinv_1 U2314 ( .A(i_tv80_core_i_reg_RegsL[1]), .Y(n1776)
         );
  sky130_fd_sc_hd__clkinv_1 U2315 ( .A(n1237), .Y(i_tv80_core_RegBusA[15]) );
  sky130_fd_sc_hd__nor4_1 U2316 ( .A(n2183), .B(n2184), .C(n2185), .D(n2186), 
        .Y(n1237) );
  sky130_fd_sc_hd__o22ai_1 U2317 ( .A1(n1818), .A2(n1686), .B1(n1791), .B2(
        n1666), .Y(n2186) );
  sky130_fd_sc_hd__clkinv_1 U2318 ( .A(i_tv80_core_i_reg_RegsH[63]), .Y(n1791)
         );
  sky130_fd_sc_hd__clkinv_1 U2319 ( .A(i_tv80_core_i_reg_RegsH[47]), .Y(n1818)
         );
  sky130_fd_sc_hd__o22ai_1 U2320 ( .A1(n1854), .A2(n1726), .B1(n1836), .B2(
        n1706), .Y(n2185) );
  sky130_fd_sc_hd__clkinv_1 U2321 ( .A(i_tv80_core_i_reg_RegsH[31]), .Y(n1836)
         );
  sky130_fd_sc_hd__clkinv_1 U2322 ( .A(i_tv80_core_i_reg_RegsH[15]), .Y(n1854)
         );
  sky130_fd_sc_hd__o22ai_1 U2323 ( .A1(n1827), .A2(n1696), .B1(n1809), .B2(
        n1676), .Y(n2184) );
  sky130_fd_sc_hd__clkinv_1 U2324 ( .A(i_tv80_core_i_reg_RegsH[55]), .Y(n1809)
         );
  sky130_fd_sc_hd__clkinv_1 U2325 ( .A(i_tv80_core_i_reg_RegsH[39]), .Y(n1827)
         );
  sky130_fd_sc_hd__o22ai_1 U2326 ( .A1(n1863), .A2(n1783), .B1(n1845), .B2(
        n1716), .Y(n2183) );
  sky130_fd_sc_hd__clkinv_1 U2327 ( .A(i_tv80_core_i_reg_RegsH[23]), .Y(n1845)
         );
  sky130_fd_sc_hd__clkinv_1 U2328 ( .A(i_tv80_core_i_reg_RegsH[7]), .Y(n1863)
         );
  sky130_fd_sc_hd__clkinv_1 U2329 ( .A(n1232), .Y(i_tv80_core_RegBusA[14]) );
  sky130_fd_sc_hd__nor4_1 U2330 ( .A(n2187), .B(n2188), .C(n2189), .D(n2190), 
        .Y(n1232) );
  sky130_fd_sc_hd__o22ai_1 U2331 ( .A1(n1820), .A2(n1686), .B1(n1794), .B2(
        n1666), .Y(n2190) );
  sky130_fd_sc_hd__clkinv_1 U2332 ( .A(i_tv80_core_i_reg_RegsH[62]), .Y(n1794)
         );
  sky130_fd_sc_hd__clkinv_1 U2333 ( .A(i_tv80_core_i_reg_RegsH[46]), .Y(n1820)
         );
  sky130_fd_sc_hd__o22ai_1 U2334 ( .A1(n1856), .A2(n1726), .B1(n1838), .B2(
        n1706), .Y(n2189) );
  sky130_fd_sc_hd__clkinv_1 U2335 ( .A(i_tv80_core_i_reg_RegsH[30]), .Y(n1838)
         );
  sky130_fd_sc_hd__clkinv_1 U2336 ( .A(i_tv80_core_i_reg_RegsH[14]), .Y(n1856)
         );
  sky130_fd_sc_hd__o22ai_1 U2337 ( .A1(n1829), .A2(n1696), .B1(n1811), .B2(
        n1676), .Y(n2188) );
  sky130_fd_sc_hd__clkinv_1 U2338 ( .A(i_tv80_core_i_reg_RegsH[54]), .Y(n1811)
         );
  sky130_fd_sc_hd__clkinv_1 U2339 ( .A(i_tv80_core_i_reg_RegsH[38]), .Y(n1829)
         );
  sky130_fd_sc_hd__o22ai_1 U2340 ( .A1(n1898), .A2(n1783), .B1(n1847), .B2(
        n1716), .Y(n2187) );
  sky130_fd_sc_hd__clkinv_1 U2341 ( .A(i_tv80_core_i_reg_RegsH[22]), .Y(n1847)
         );
  sky130_fd_sc_hd__clkinv_1 U2342 ( .A(i_tv80_core_i_reg_RegsH[6]), .Y(n1898)
         );
  sky130_fd_sc_hd__clkinv_1 U2343 ( .A(n1227), .Y(i_tv80_core_RegBusA[13]) );
  sky130_fd_sc_hd__nor4_1 U2344 ( .A(n2191), .B(n2192), .C(n2193), .D(n2194), 
        .Y(n1227) );
  sky130_fd_sc_hd__o22ai_1 U2345 ( .A1(n1821), .A2(n1686), .B1(n1796), .B2(
        n1666), .Y(n2194) );
  sky130_fd_sc_hd__clkinv_1 U2346 ( .A(i_tv80_core_i_reg_RegsH[61]), .Y(n1796)
         );
  sky130_fd_sc_hd__clkinv_1 U2347 ( .A(i_tv80_core_i_reg_RegsH[45]), .Y(n1821)
         );
  sky130_fd_sc_hd__o22ai_1 U2348 ( .A1(n1857), .A2(n1726), .B1(n1839), .B2(
        n1706), .Y(n2193) );
  sky130_fd_sc_hd__clkinv_1 U2349 ( .A(i_tv80_core_i_reg_RegsH[29]), .Y(n1839)
         );
  sky130_fd_sc_hd__clkinv_1 U2350 ( .A(i_tv80_core_i_reg_RegsH[13]), .Y(n1857)
         );
  sky130_fd_sc_hd__o22ai_1 U2351 ( .A1(n1830), .A2(n1696), .B1(n1812), .B2(
        n1676), .Y(n2192) );
  sky130_fd_sc_hd__clkinv_1 U2352 ( .A(i_tv80_core_i_reg_RegsH[53]), .Y(n1812)
         );
  sky130_fd_sc_hd__clkinv_1 U2353 ( .A(i_tv80_core_i_reg_RegsH[37]), .Y(n1830)
         );
  sky130_fd_sc_hd__o22ai_1 U2354 ( .A1(n1919), .A2(n1783), .B1(n1848), .B2(
        n1716), .Y(n2191) );
  sky130_fd_sc_hd__clkinv_1 U2355 ( .A(i_tv80_core_i_reg_RegsH[21]), .Y(n1848)
         );
  sky130_fd_sc_hd__clkinv_1 U2356 ( .A(i_tv80_core_i_reg_RegsH[5]), .Y(n1919)
         );
  sky130_fd_sc_hd__clkinv_1 U2357 ( .A(n1222), .Y(i_tv80_core_RegBusA[12]) );
  sky130_fd_sc_hd__nor4_1 U2358 ( .A(n2195), .B(n2196), .C(n2197), .D(n2198), 
        .Y(n1222) );
  sky130_fd_sc_hd__o22ai_1 U2359 ( .A1(n1822), .A2(n1686), .B1(n1798), .B2(
        n1666), .Y(n2198) );
  sky130_fd_sc_hd__clkinv_1 U2360 ( .A(i_tv80_core_i_reg_RegsH[60]), .Y(n1798)
         );
  sky130_fd_sc_hd__clkinv_1 U2361 ( .A(i_tv80_core_i_reg_RegsH[44]), .Y(n1822)
         );
  sky130_fd_sc_hd__o22ai_1 U2362 ( .A1(n1858), .A2(n1726), .B1(n1840), .B2(
        n1706), .Y(n2197) );
  sky130_fd_sc_hd__clkinv_1 U2363 ( .A(i_tv80_core_i_reg_RegsH[28]), .Y(n1840)
         );
  sky130_fd_sc_hd__clkinv_1 U2364 ( .A(i_tv80_core_i_reg_RegsH[12]), .Y(n1858)
         );
  sky130_fd_sc_hd__o22ai_1 U2365 ( .A1(n1831), .A2(n1696), .B1(n1813), .B2(
        n1676), .Y(n2196) );
  sky130_fd_sc_hd__clkinv_1 U2366 ( .A(i_tv80_core_i_reg_RegsH[52]), .Y(n1813)
         );
  sky130_fd_sc_hd__clkinv_1 U2367 ( .A(i_tv80_core_i_reg_RegsH[36]), .Y(n1831)
         );
  sky130_fd_sc_hd__o22ai_1 U2368 ( .A1(n1938), .A2(n1783), .B1(n1849), .B2(
        n1716), .Y(n2195) );
  sky130_fd_sc_hd__clkinv_1 U2369 ( .A(i_tv80_core_i_reg_RegsH[20]), .Y(n1849)
         );
  sky130_fd_sc_hd__clkinv_1 U2370 ( .A(i_tv80_core_i_reg_RegsH[4]), .Y(n1938)
         );
  sky130_fd_sc_hd__clkinv_1 U2371 ( .A(n1217), .Y(i_tv80_core_RegBusA[11]) );
  sky130_fd_sc_hd__nor4_1 U2372 ( .A(n2199), .B(n2200), .C(n2201), .D(n2202), 
        .Y(n1217) );
  sky130_fd_sc_hd__o22ai_1 U2373 ( .A1(n1823), .A2(n1686), .B1(n1800), .B2(
        n1666), .Y(n2202) );
  sky130_fd_sc_hd__clkinv_1 U2374 ( .A(i_tv80_core_i_reg_RegsH[59]), .Y(n1800)
         );
  sky130_fd_sc_hd__clkinv_1 U2375 ( .A(i_tv80_core_i_reg_RegsH[43]), .Y(n1823)
         );
  sky130_fd_sc_hd__o22ai_1 U2376 ( .A1(n1859), .A2(n1726), .B1(n1841), .B2(
        n1706), .Y(n2201) );
  sky130_fd_sc_hd__clkinv_1 U2377 ( .A(i_tv80_core_i_reg_RegsH[27]), .Y(n1841)
         );
  sky130_fd_sc_hd__clkinv_1 U2378 ( .A(i_tv80_core_i_reg_RegsH[11]), .Y(n1859)
         );
  sky130_fd_sc_hd__o22ai_1 U2379 ( .A1(n1832), .A2(n1696), .B1(n1814), .B2(
        n1676), .Y(n2200) );
  sky130_fd_sc_hd__clkinv_1 U2380 ( .A(i_tv80_core_i_reg_RegsH[51]), .Y(n1814)
         );
  sky130_fd_sc_hd__clkinv_1 U2381 ( .A(i_tv80_core_i_reg_RegsH[35]), .Y(n1832)
         );
  sky130_fd_sc_hd__o22ai_1 U2382 ( .A1(n1963), .A2(n1783), .B1(n1850), .B2(
        n1716), .Y(n2199) );
  sky130_fd_sc_hd__clkinv_1 U2383 ( .A(i_tv80_core_i_reg_RegsH[19]), .Y(n1850)
         );
  sky130_fd_sc_hd__clkinv_1 U2384 ( .A(i_tv80_core_i_reg_RegsH[3]), .Y(n1963)
         );
  sky130_fd_sc_hd__clkinv_1 U2385 ( .A(n1212), .Y(i_tv80_core_RegBusA[10]) );
  sky130_fd_sc_hd__nor4_1 U2386 ( .A(n2203), .B(n2204), .C(n2205), .D(n2206), 
        .Y(n1212) );
  sky130_fd_sc_hd__o22ai_1 U2387 ( .A1(n1824), .A2(n1686), .B1(n1802), .B2(
        n1666), .Y(n2206) );
  sky130_fd_sc_hd__clkinv_1 U2388 ( .A(i_tv80_core_i_reg_RegsH[58]), .Y(n1802)
         );
  sky130_fd_sc_hd__clkinv_1 U2389 ( .A(i_tv80_core_i_reg_RegsH[42]), .Y(n1824)
         );
  sky130_fd_sc_hd__o22ai_1 U2390 ( .A1(n1860), .A2(n1726), .B1(n1842), .B2(
        n1706), .Y(n2205) );
  sky130_fd_sc_hd__clkinv_1 U2391 ( .A(i_tv80_core_i_reg_RegsH[26]), .Y(n1842)
         );
  sky130_fd_sc_hd__clkinv_1 U2392 ( .A(i_tv80_core_i_reg_RegsH[10]), .Y(n1860)
         );
  sky130_fd_sc_hd__o22ai_1 U2393 ( .A1(n1833), .A2(n1696), .B1(n1815), .B2(
        n1676), .Y(n2204) );
  sky130_fd_sc_hd__clkinv_1 U2394 ( .A(i_tv80_core_i_reg_RegsH[50]), .Y(n1815)
         );
  sky130_fd_sc_hd__clkinv_1 U2395 ( .A(i_tv80_core_i_reg_RegsH[34]), .Y(n1833)
         );
  sky130_fd_sc_hd__o22ai_1 U2396 ( .A1(n1984), .A2(n1783), .B1(n1851), .B2(
        n1716), .Y(n2203) );
  sky130_fd_sc_hd__clkinv_1 U2397 ( .A(i_tv80_core_i_reg_RegsH[18]), .Y(n1851)
         );
  sky130_fd_sc_hd__clkinv_1 U2398 ( .A(i_tv80_core_i_reg_RegsH[2]), .Y(n1984)
         );
  sky130_fd_sc_hd__clkinv_1 U2399 ( .A(n688), .Y(i_tv80_core_RegBusA[0]) );
  sky130_fd_sc_hd__nor4_1 U2400 ( .A(n2207), .B(n2208), .C(n2209), .D(n2210), 
        .Y(n688) );
  sky130_fd_sc_hd__o22ai_1 U2401 ( .A1(n1686), .A2(n1685), .B1(n1666), .B2(
        n1663), .Y(n2210) );
  sky130_fd_sc_hd__clkinv_1 U2402 ( .A(i_tv80_core_i_reg_RegsL[56]), .Y(n1663)
         );
  sky130_fd_sc_hd__or3_1 U2403 ( .A(n2211), .B(n2212), .C(n2213), .X(n1666) );
  sky130_fd_sc_hd__clkinv_1 U2404 ( .A(i_tv80_core_i_reg_RegsL[40]), .Y(n1685)
         );
  sky130_fd_sc_hd__or3_1 U2405 ( .A(n2212), .B(n2214), .C(n2213), .X(n1686) );
  sky130_fd_sc_hd__o22ai_1 U2406 ( .A1(n1726), .A2(n1725), .B1(n1706), .B2(
        n1705), .Y(n2209) );
  sky130_fd_sc_hd__clkinv_1 U2407 ( .A(i_tv80_core_i_reg_RegsL[24]), .Y(n1705)
         );
  sky130_fd_sc_hd__or3_1 U2408 ( .A(n2211), .B(n2215), .C(n2212), .X(n1706) );
  sky130_fd_sc_hd__clkinv_1 U2409 ( .A(i_tv80_core_i_reg_RegsL[8]), .Y(n1725)
         );
  sky130_fd_sc_hd__or3_1 U2410 ( .A(n2214), .B(n2215), .C(n2212), .X(n1726) );
  sky130_fd_sc_hd__o22ai_1 U2411 ( .A1(n1696), .A2(n1695), .B1(n1676), .B2(
        n1675), .Y(n2208) );
  sky130_fd_sc_hd__clkinv_1 U2412 ( .A(i_tv80_core_i_reg_RegsL[48]), .Y(n1675)
         );
  sky130_fd_sc_hd__nand3_1 U2413 ( .A(n2214), .B(n2212), .C(n2215), .Y(n1676)
         );
  sky130_fd_sc_hd__clkinv_1 U2414 ( .A(i_tv80_core_i_reg_RegsL[32]), .Y(n1695)
         );
  sky130_fd_sc_hd__nand3_1 U2415 ( .A(n2211), .B(n2212), .C(n2215), .Y(n1696)
         );
  sky130_fd_sc_hd__clkinv_1 U2416 ( .A(n2213), .Y(n2215) );
  sky130_fd_sc_hd__o22ai_1 U2417 ( .A1(n1783), .A2(n1782), .B1(n1716), .B2(
        n1715), .Y(n2207) );
  sky130_fd_sc_hd__clkinv_1 U2418 ( .A(i_tv80_core_i_reg_RegsL[16]), .Y(n1715)
         );
  sky130_fd_sc_hd__nand3_1 U2419 ( .A(n2212), .B(n2213), .C(n2214), .Y(n1716)
         );
  sky130_fd_sc_hd__clkinv_1 U2420 ( .A(i_tv80_core_i_reg_RegsL[0]), .Y(n1782)
         );
  sky130_fd_sc_hd__nand3_1 U2421 ( .A(n2212), .B(n2213), .C(n2211), .Y(n1783)
         );
  sky130_fd_sc_hd__clkinv_1 U2422 ( .A(n2214), .Y(n2211) );
  sky130_fd_sc_hd__mux2i_1 U2423 ( .A0(n2216), .A1(n2024), .S(n2217), .Y(n2214) );
  sky130_fd_sc_hd__o211ai_1 U2424 ( .A1(n230), .A2(n2031), .B1(n2218), .C1(
        n1733), .Y(n2216) );
  sky130_fd_sc_hd__clkinv_1 U2425 ( .A(i_tv80_core_RegAddrA_r[1]), .Y(n230) );
  sky130_fd_sc_hd__o22ai_1 U2426 ( .A1(n2219), .A2(n2220), .B1(n2217), .B2(
        n2221), .Y(n2213) );
  sky130_fd_sc_hd__mux2i_1 U2427 ( .A0(i_tv80_core_XY_State[1]), .A1(n2222), 
        .S(n2218), .Y(n2221) );
  sky130_fd_sc_hd__nor2_1 U2428 ( .A(n2031), .B(n262), .Y(n2222) );
  sky130_fd_sc_hd__clkinv_1 U2429 ( .A(i_tv80_core_RegAddrA_r[2]), .Y(n262) );
  sky130_fd_sc_hd__clkinv_1 U2430 ( .A(i_tv80_core_Alternate), .Y(n2220) );
  sky130_fd_sc_hd__nor2_1 U2431 ( .A(n2217), .B(n2031), .Y(n2219) );
  sky130_fd_sc_hd__nand2_1 U2432 ( .A(n2223), .B(n2051), .Y(n2212) );
  sky130_fd_sc_hd__mux2i_1 U2433 ( .A0(n2224), .A1(n2225), .S(n2217), .Y(n2223) );
  sky130_fd_sc_hd__o21a_1 U2434 ( .A1(n519), .A2(n2226), .B1(n236), .X(n2217)
         );
  sky130_fd_sc_hd__clkinv_1 U2435 ( .A(n1524), .Y(n236) );
  sky130_fd_sc_hd__nand2_1 U2436 ( .A(n246), .B(n247), .Y(n1524) );
  sky130_fd_sc_hd__clkinv_1 U2437 ( .A(i_tv80_core_XY_State[0]), .Y(n247) );
  sky130_fd_sc_hd__clkinv_1 U2438 ( .A(i_tv80_core_XY_State[1]), .Y(n246) );
  sky130_fd_sc_hd__o21ai_0 U2439 ( .A1(n2031), .A2(n2227), .B1(n2218), .Y(
        n2224) );
  sky130_fd_sc_hd__o211ai_1 U2440 ( .A1(n519), .A2(n2226), .B1(n2024), .C1(
        n682), .Y(n2218) );
  sky130_fd_sc_hd__clkinv_1 U2441 ( .A(n2225), .Y(n682) );
  sky130_fd_sc_hd__o221ai_1 U2442 ( .A1(n395), .A2(n1642), .B1(n1059), .B2(
        n451), .C1(n2228), .Y(n2225) );
  sky130_fd_sc_hd__o2111ai_1 U2443 ( .A1(n343), .A2(n1642), .B1(n1246), .C1(
        n452), .D1(n2228), .Y(n2024) );
  sky130_fd_sc_hd__nand2_1 U2444 ( .A(n361), .B(n586), .Y(n1246) );
  sky130_fd_sc_hd__and2_0 U2445 ( .A(n683), .B(n649), .X(n2226) );
  sky130_fd_sc_hd__nor2_1 U2446 ( .A(n874), .B(n560), .Y(n649) );
  sky130_fd_sc_hd__nand2_1 U2447 ( .A(n436), .B(n559), .Y(n874) );
  sky130_fd_sc_hd__o2111ai_1 U2448 ( .A1(n370), .A2(n742), .B1(n2228), .C1(
        n2229), .D1(n1642), .Y(n683) );
  sky130_fd_sc_hd__nand2_1 U2449 ( .A(n625), .B(n338), .Y(n1642) );
  sky130_fd_sc_hd__nor2_1 U2450 ( .A(n1591), .B(n1556), .Y(n625) );
  sky130_fd_sc_hd__clkinv_1 U2451 ( .A(n2230), .Y(n2229) );
  sky130_fd_sc_hd__o22a_1 U2452 ( .A1(n2231), .A2(n372), .B1(n1535), .B2(n1463), .X(n2228) );
  sky130_fd_sc_hd__nand2_1 U2453 ( .A(n731), .B(n726), .Y(n1535) );
  sky130_fd_sc_hd__nand2_1 U2454 ( .A(n1619), .B(n2232), .Y(n726) );
  sky130_fd_sc_hd__a221oi_1 U2455 ( .A1(n1629), .A2(n393), .B1(n763), .B2(n359), .C1(n2233), .Y(n2231) );
  sky130_fd_sc_hd__nand2_1 U2456 ( .A(n1571), .B(n1262), .Y(n1629) );
  sky130_fd_sc_hd__clkinv_1 U2457 ( .A(n622), .Y(n1262) );
  sky130_fd_sc_hd__nor2_1 U2458 ( .A(n2049), .B(n1550), .Y(n622) );
  sky130_fd_sc_hd__a21oi_1 U2459 ( .A1(n598), .A2(n597), .B1(n603), .Y(n1571)
         );
  sky130_fd_sc_hd__nor2_1 U2460 ( .A(n2047), .B(n1550), .Y(n603) );
  sky130_fd_sc_hd__clkinv_1 U2461 ( .A(n1620), .Y(n597) );
  sky130_fd_sc_hd__clkinv_1 U2462 ( .A(n540), .Y(n519) );
  sky130_fd_sc_hd__clkinv_1 U2463 ( .A(i_tv80_core_RegAddrA_r[0]), .Y(n2227)
         );
  sky130_fd_sc_hd__nand2_1 U2464 ( .A(n2051), .B(n1733), .Y(n2031) );
  sky130_fd_sc_hd__nand2_1 U2465 ( .A(n1292), .B(n2234), .Y(n1733) );
  sky130_fd_sc_hd__nand4_1 U2466 ( .A(n2234), .B(tstate[2]), .C(n554), .D(n560), .Y(n2051) );
  sky130_fd_sc_hd__nor3_1 U2467 ( .A(n1617), .B(n548), .C(n372), .Y(n2234) );
  sky130_fd_sc_hd__clkinv_1 U2468 ( .A(di_reg[7]), .Y(n82) );
  sky130_fd_sc_hd__o21ai_0 U2469 ( .A1(n80), .A2(n2235), .B1(n2236), .Y(
        i_tv80_core_PC16_B[6]) );
  sky130_fd_sc_hd__clkinv_1 U2470 ( .A(di_reg[6]), .Y(n80) );
  sky130_fd_sc_hd__o21ai_0 U2471 ( .A1(n78), .A2(n2235), .B1(n2236), .Y(
        i_tv80_core_PC16_B[5]) );
  sky130_fd_sc_hd__clkinv_1 U2472 ( .A(di_reg[5]), .Y(n78) );
  sky130_fd_sc_hd__o21ai_0 U2473 ( .A1(n76), .A2(n2235), .B1(n2236), .Y(
        i_tv80_core_PC16_B[4]) );
  sky130_fd_sc_hd__clkinv_1 U2474 ( .A(di_reg[4]), .Y(n76) );
  sky130_fd_sc_hd__o21ai_0 U2475 ( .A1(n74), .A2(n2235), .B1(n2236), .Y(
        i_tv80_core_PC16_B[3]) );
  sky130_fd_sc_hd__clkinv_1 U2476 ( .A(di_reg[3]), .Y(n74) );
  sky130_fd_sc_hd__o21ai_0 U2477 ( .A1(n72), .A2(n2235), .B1(n2236), .Y(
        i_tv80_core_PC16_B[2]) );
  sky130_fd_sc_hd__clkinv_1 U2478 ( .A(di_reg[2]), .Y(n72) );
  sky130_fd_sc_hd__o21ai_0 U2479 ( .A1(n70), .A2(n2235), .B1(n2236), .Y(
        i_tv80_core_PC16_B[1]) );
  sky130_fd_sc_hd__nand2_1 U2480 ( .A(i_tv80_core_BTR_r), .B(n2235), .Y(n2236)
         );
  sky130_fd_sc_hd__clkinv_1 U2481 ( .A(di_reg[1]), .Y(n70) );
  sky130_fd_sc_hd__mux2i_1 U2482 ( .A0(i_tv80_core_BTR_r), .A1(n67), .S(n1467), 
        .Y(i_tv80_core_PC16_B[0]) );
  sky130_fd_sc_hd__clkinv_1 U2483 ( .A(di_reg[0]), .Y(n67) );
  sky130_fd_sc_hd__o21ai_0 U2484 ( .A1(n2239), .A2(n2230), .B1(
        i_tv80_core_IR[3]), .Y(n2238) );
  sky130_fd_sc_hd__o21ai_0 U2485 ( .A1(n1059), .A2(n1463), .B1(n691), .Y(n2230) );
  sky130_fd_sc_hd__nand3_1 U2486 ( .A(i_tv80_core_ISet[1]), .B(n2240), .C(n424), .Y(n691) );
  sky130_fd_sc_hd__nand2_1 U2487 ( .A(i_tv80_core_ISet[1]), .B(n393), .Y(n1463) );
  sky130_fd_sc_hd__nand2_1 U2488 ( .A(n436), .B(n586), .Y(n742) );
  sky130_fd_sc_hd__nand2_1 U2489 ( .A(n1059), .B(n450), .Y(n586) );
  sky130_fd_sc_hd__clkinv_1 U2490 ( .A(n2240), .Y(n450) );
  sky130_fd_sc_hd__a21oi_1 U2491 ( .A1(n788), .A2(n725), .B1(n2233), .Y(n2237)
         );
  sky130_fd_sc_hd__o211ai_1 U2492 ( .A1(n392), .A2(n355), .B1(n1626), .C1(
        n2241), .Y(n2233) );
  sky130_fd_sc_hd__clkinv_1 U2493 ( .A(n360), .Y(n2241) );
  sky130_fd_sc_hd__o221ai_1 U2494 ( .A1(n392), .A2(n417), .B1(n501), .B2(n499), 
        .C1(n2242), .Y(n360) );
  sky130_fd_sc_hd__a21oi_1 U2495 ( .A1(n420), .A2(n351), .B1(n416), .Y(n2242)
         );
  sky130_fd_sc_hd__nor3_1 U2496 ( .A(n501), .B(n602), .C(n419), .Y(n416) );
  sky130_fd_sc_hd__clkinv_1 U2497 ( .A(n492), .Y(n602) );
  sky130_fd_sc_hd__nand4_1 U2498 ( .A(n2243), .B(n2244), .C(n2245), .D(n2246), 
        .Y(n492) );
  sky130_fd_sc_hd__mux2i_1 U2499 ( .A0(n375), .A1(n1878), .S(i_tv80_core_F[7]), 
        .Y(n2246) );
  sky130_fd_sc_hd__clkinv_1 U2500 ( .A(n1101), .Y(n1878) );
  sky130_fd_sc_hd__nand2_1 U2501 ( .A(n397), .B(i_tv80_core_IR[3]), .Y(n1101)
         );
  sky130_fd_sc_hd__a21oi_1 U2502 ( .A1(n1106), .A2(n627), .B1(n1876), .Y(n2245) );
  sky130_fd_sc_hd__nor2b_1 U2503 ( .B_N(n1105), .A(n627), .Y(n1876) );
  sky130_fd_sc_hd__nor2_1 U2504 ( .A(n697), .B(n409), .Y(n1105) );
  sky130_fd_sc_hd__clkinv_1 U2505 ( .A(i_tv80_core_F[0]), .Y(n627) );
  sky130_fd_sc_hd__clkinv_1 U2506 ( .A(n1990), .Y(n1106) );
  sky130_fd_sc_hd__nand2_1 U2507 ( .A(n2247), .B(n697), .Y(n1990) );
  sky130_fd_sc_hd__mux2_1 U2508 ( .A0(n1107), .A1(n1944), .S(n447), .X(n2244)
         );
  sky130_fd_sc_hd__clkinv_1 U2509 ( .A(i_tv80_core_F[2]), .Y(n447) );
  sky130_fd_sc_hd__nand2_1 U2510 ( .A(n428), .B(n697), .Y(n1944) );
  sky130_fd_sc_hd__nand2_1 U2511 ( .A(n428), .B(i_tv80_core_IR[3]), .Y(n1107)
         );
  sky130_fd_sc_hd__mux2i_1 U2512 ( .A0(n2039), .A1(n1104), .S(i_tv80_core_F[6]), .Y(n2243) );
  sky130_fd_sc_hd__nor2_1 U2513 ( .A(n697), .B(n1295), .Y(n1104) );
  sky130_fd_sc_hd__clkinv_1 U2514 ( .A(n1099), .Y(n2039) );
  sky130_fd_sc_hd__nand2_1 U2515 ( .A(n2248), .B(n697), .Y(n1099) );
  sky130_fd_sc_hd__a21oi_1 U2516 ( .A1(n806), .A2(n1555), .B1(n1645), .Y(n417)
         );
  sky130_fd_sc_hd__clkinv_1 U2517 ( .A(n412), .Y(n355) );
  sky130_fd_sc_hd__clkinv_1 U2518 ( .A(n1406), .Y(n392) );
  sky130_fd_sc_hd__nand2_1 U2519 ( .A(n354), .B(n421), .Y(n1406) );
  sky130_fd_sc_hd__o311ai_0 U2520 ( .A1(n354), .A2(n2249), .A3(n1292), .B1(
        n565), .C1(n2250), .Y(N36) );
  sky130_fd_sc_hd__clkinv_1 U2521 ( .A(n542), .Y(n1292) );
  sky130_fd_sc_hd__nand3_1 U2522 ( .A(tstate[1]), .B(n559), .C(tstate[0]), .Y(
        n542) );
  sky130_fd_sc_hd__nand2_1 U2523 ( .A(n2251), .B(n2250), .Y(N35) );
  sky130_fd_sc_hd__o31a_1 U2524 ( .A1(n2252), .A2(n2253), .A3(n436), .B1(
        reset_n), .X(n2250) );
  sky130_fd_sc_hd__mux2i_1 U2525 ( .A0(n565), .A1(n2254), .S(n436), .Y(n2251)
         );
  sky130_fd_sc_hd__clkinv_1 U2526 ( .A(n354), .Y(n436) );
  sky130_fd_sc_hd__or2_0 U2527 ( .A(n2255), .B(n546), .X(n2254) );
  sky130_fd_sc_hd__clkinv_1 U2528 ( .A(n807), .Y(n565) );
  sky130_fd_sc_hd__o221ai_1 U2529 ( .A1(n1542), .A2(n1272), .B1(n451), .B2(
        n1639), .C1(n2256), .Y(n807) );
  sky130_fd_sc_hd__o21ai_0 U2530 ( .A1(n2257), .A2(n609), .B1(n361), .Y(n2256)
         );
  sky130_fd_sc_hd__clkinv_1 U2531 ( .A(n1338), .Y(n361) );
  sky130_fd_sc_hd__o21ai_0 U2532 ( .A1(n2047), .A2(n1599), .B1(n444), .Y(n609)
         );
  sky130_fd_sc_hd__clkinv_1 U2533 ( .A(n731), .Y(n1599) );
  sky130_fd_sc_hd__or2_0 U2534 ( .A(n1556), .B(n652), .X(n1542) );
  sky130_fd_sc_hd__nand2_1 U2535 ( .A(n2252), .B(reset_n), .Y(N34) );
  sky130_fd_sc_hd__nor2_1 U2536 ( .A(n540), .B(n2258), .Y(n2252) );
  sky130_fd_sc_hd__o211ai_1 U2537 ( .A1(n2249), .A2(n354), .B1(reset_n), .C1(
        n2253), .Y(N33) );
  sky130_fd_sc_hd__o2111a_1 U2538 ( .A1(n1338), .A2(n1596), .B1(n378), .C1(
        n2258), .D1(n2259), .X(n2253) );
  sky130_fd_sc_hd__nor3_1 U2539 ( .A(n2260), .B(n2255), .C(n1467), .Y(n2259)
         );
  sky130_fd_sc_hd__clkinv_1 U2540 ( .A(n2235), .Y(n1467) );
  sky130_fd_sc_hd__clkinv_1 U2541 ( .A(n1272), .Y(n442) );
  sky130_fd_sc_hd__nand2_1 U2542 ( .A(n763), .B(n338), .Y(n1272) );
  sky130_fd_sc_hd__nand2_1 U2543 ( .A(n1552), .B(n633), .Y(n1471) );
  sky130_fd_sc_hd__o21ai_0 U2544 ( .A1(n626), .A2(n350), .B1(n1076), .Y(n633)
         );
  sky130_fd_sc_hd__or2_0 U2545 ( .A(n635), .B(n1615), .X(n1552) );
  sky130_fd_sc_hd__nor2_1 U2546 ( .A(n624), .B(n635), .Y(n599) );
  sky130_fd_sc_hd__o22ai_1 U2547 ( .A1(n1473), .A2(n1528), .B1(n2261), .B2(
        n370), .Y(n2260) );
  sky130_fd_sc_hd__a21oi_1 U2548 ( .A1(n2240), .A2(n351), .B1(n2262), .Y(n2261) );
  sky130_fd_sc_hd__a21oi_1 U2549 ( .A1(n396), .A2(n1059), .B1(n499), .Y(n2262)
         );
  sky130_fd_sc_hd__clkinv_1 U2550 ( .A(n362), .Y(n396) );
  sky130_fd_sc_hd__nand2_1 U2551 ( .A(n419), .B(n499), .Y(n351) );
  sky130_fd_sc_hd__a21oi_1 U2552 ( .A1(n653), .A2(n2049), .B1(n1590), .Y(n2240) );
  sky130_fd_sc_hd__nand2_1 U2553 ( .A(n403), .B(n402), .Y(n1528) );
  sky130_fd_sc_hd__and2_0 U2554 ( .A(n1630), .B(mcycle[2]), .X(n403) );
  sky130_fd_sc_hd__nor2_1 U2555 ( .A(n643), .B(n646), .Y(n1630) );
  sky130_fd_sc_hd__clkinv_1 U2556 ( .A(n1525), .Y(n1473) );
  sky130_fd_sc_hd__nand4_1 U2557 ( .A(n375), .B(n2263), .C(n1066), .D(
        i_tv80_core_IR[2]), .Y(n1525) );
  sky130_fd_sc_hd__clkinv_1 U2558 ( .A(n1108), .Y(n375) );
  sky130_fd_sc_hd__nand2_1 U2559 ( .A(n397), .B(n697), .Y(n1108) );
  sky130_fd_sc_hd__o2111a_1 U2560 ( .A1(n1338), .A2(n444), .B1(n2264), .C1(
        n180), .D1(n2265), .X(n2258) );
  sky130_fd_sc_hd__a311oi_1 U2561 ( .A1(i_tv80_core_ISet[1]), .A2(n1254), .A3(
        n440), .B1(n2266), .C1(n2239), .Y(n2265) );
  sky130_fd_sc_hd__clkinv_1 U2562 ( .A(n452), .Y(n2239) );
  sky130_fd_sc_hd__nand2_1 U2563 ( .A(n439), .B(n362), .Y(n452) );
  sky130_fd_sc_hd__nand2_1 U2564 ( .A(n1581), .B(n1639), .Y(n362) );
  sky130_fd_sc_hd__clkinv_1 U2565 ( .A(n1601), .Y(n1639) );
  sky130_fd_sc_hd__nor2_1 U2566 ( .A(n1590), .B(n1556), .Y(n1601) );
  sky130_fd_sc_hd__nor2_1 U2567 ( .A(n423), .B(n788), .Y(n1556) );
  sky130_fd_sc_hd__clkinv_1 U2568 ( .A(n548), .Y(n788) );
  sky130_fd_sc_hd__nand2_1 U2569 ( .A(n2267), .B(n2268), .Y(n548) );
  sky130_fd_sc_hd__clkinv_1 U2570 ( .A(n2257), .Y(n1581) );
  sky130_fd_sc_hd__nor2_1 U2571 ( .A(n1590), .B(n1557), .Y(n2257) );
  sky130_fd_sc_hd__clkinv_1 U2572 ( .A(n1576), .Y(n1557) );
  sky130_fd_sc_hd__clkinv_1 U2573 ( .A(n451), .Y(n439) );
  sky130_fd_sc_hd__o22ai_1 U2574 ( .A1(n1059), .A2(n451), .B1(n419), .B2(n736), 
        .Y(n2266) );
  sky130_fd_sc_hd__clkinv_1 U2575 ( .A(n594), .Y(n736) );
  sky130_fd_sc_hd__nor2_1 U2576 ( .A(n402), .B(n796), .Y(n594) );
  sky130_fd_sc_hd__o21a_1 U2577 ( .A1(n1591), .A2(n719), .B1(n728), .X(n796)
         );
  sky130_fd_sc_hd__a21oi_1 U2578 ( .A1(n1561), .A2(n2269), .B1(n1277), .Y(n728) );
  sky130_fd_sc_hd__clkinv_1 U2579 ( .A(n695), .Y(n1277) );
  sky130_fd_sc_hd__nand2_1 U2580 ( .A(n1561), .B(n1549), .Y(n695) );
  sky130_fd_sc_hd__nand2_1 U2581 ( .A(n1590), .B(n1592), .Y(n1549) );
  sky130_fd_sc_hd__nand3_1 U2582 ( .A(n429), .B(n1386), .C(i_tv80_core_IR[7]), 
        .Y(n1592) );
  sky130_fd_sc_hd__nand2_1 U2583 ( .A(n1295), .B(n409), .Y(n429) );
  sky130_fd_sc_hd__clkinv_1 U2584 ( .A(n1561), .Y(n719) );
  sky130_fd_sc_hd__nand2_1 U2585 ( .A(n576), .B(n580), .Y(n1561) );
  sky130_fd_sc_hd__nand2_1 U2586 ( .A(n1066), .B(n2270), .Y(n580) );
  sky130_fd_sc_hd__clkinv_1 U2587 ( .A(n725), .Y(n1591) );
  sky130_fd_sc_hd__nand2_1 U2588 ( .A(i_tv80_core_ISet[0]), .B(n370), .Y(n402)
         );
  sky130_fd_sc_hd__nand2_1 U2589 ( .A(n763), .B(i_tv80_core_ISet[1]), .Y(n451)
         );
  sky130_fd_sc_hd__clkinv_1 U2590 ( .A(n1600), .Y(n1059) );
  sky130_fd_sc_hd__nor2_1 U2591 ( .A(n1590), .B(n2047), .Y(n1600) );
  sky130_fd_sc_hd__clkinv_1 U2592 ( .A(n1076), .Y(n2047) );
  sky130_fd_sc_hd__nand2_1 U2593 ( .A(n624), .B(n1615), .Y(n1076) );
  sky130_fd_sc_hd__nand2_1 U2594 ( .A(n2267), .B(n2271), .Y(n1615) );
  sky130_fd_sc_hd__o211ai_1 U2595 ( .A1(n428), .A2(n397), .B1(n1386), .C1(
        i_tv80_core_IR[7]), .Y(n1590) );
  sky130_fd_sc_hd__clkinv_1 U2596 ( .A(n380), .Y(n440) );
  sky130_fd_sc_hd__nand2_1 U2597 ( .A(n423), .B(n731), .Y(n380) );
  sky130_fd_sc_hd__nor2_1 U2598 ( .A(n181), .B(n179), .Y(n180) );
  sky130_fd_sc_hd__nor2_1 U2599 ( .A(n711), .B(n443), .Y(n179) );
  sky130_fd_sc_hd__nand3_1 U2600 ( .A(n428), .B(n2272), .C(n1551), .Y(n711) );
  sky130_fd_sc_hd__nor2_1 U2601 ( .A(n1596), .B(n443), .Y(n181) );
  sky130_fd_sc_hd__nand2_1 U2602 ( .A(n358), .B(i_tv80_core_ISet[1]), .Y(n443)
         );
  sky130_fd_sc_hd__nand2_1 U2603 ( .A(n338), .B(n2273), .Y(n2264) );
  sky130_fd_sc_hd__o2111ai_1 U2604 ( .A1(n2274), .A2(n2275), .B1(n1626), .C1(
        n2276), .D1(n2277), .Y(n2273) );
  sky130_fd_sc_hd__a222oi_1 U2605 ( .A1(n1374), .A2(n1254), .B1(n763), .B2(
        n2278), .C1(n435), .C2(n424), .Y(n2277) );
  sky130_fd_sc_hd__a31oi_1 U2606 ( .A1(n2048), .A2(n624), .A3(n2049), .B1(
        n1594), .Y(n435) );
  sky130_fd_sc_hd__nor4_1 U2607 ( .A(n2279), .B(n352), .C(n1551), .D(n423), 
        .Y(n2048) );
  sky130_fd_sc_hd__clkinv_1 U2608 ( .A(n544), .Y(n423) );
  sky130_fd_sc_hd__clkinv_1 U2609 ( .A(n581), .Y(n1551) );
  sky130_fd_sc_hd__clkinv_1 U2610 ( .A(n2275), .Y(n352) );
  sky130_fd_sc_hd__o2111ai_1 U2611 ( .A1(n544), .A2(n652), .B1(n1541), .C1(
        n410), .D1(n755), .Y(n2278) );
  sky130_fd_sc_hd__nand2_1 U2612 ( .A(n626), .B(n2279), .Y(n755) );
  sky130_fd_sc_hd__nand2_1 U2613 ( .A(n2280), .B(n2232), .Y(n2279) );
  sky130_fd_sc_hd__clkinv_1 U2614 ( .A(n359), .Y(n410) );
  sky130_fd_sc_hd__clkinv_1 U2615 ( .A(n434), .Y(n1541) );
  sky130_fd_sc_hd__nor2_1 U2616 ( .A(n426), .B(n576), .Y(n434) );
  sky130_fd_sc_hd__nand2_1 U2617 ( .A(n1066), .B(n2281), .Y(n576) );
  sky130_fd_sc_hd__clkinv_1 U2618 ( .A(n419), .Y(n763) );
  sky130_fd_sc_hd__clkinv_1 U2619 ( .A(n1472), .Y(n1374) );
  sky130_fd_sc_hd__nor2_1 U2620 ( .A(n491), .B(n420), .Y(n1472) );
  sky130_fd_sc_hd__nor2_1 U2621 ( .A(n1619), .B(n1620), .Y(n420) );
  sky130_fd_sc_hd__nand2_1 U2622 ( .A(n2282), .B(n2270), .Y(n1619) );
  sky130_fd_sc_hd__clkinv_1 U2623 ( .A(n501), .Y(n491) );
  sky130_fd_sc_hd__nand2b_1 U2624 ( .A_N(n1550), .B(n1595), .Y(n501) );
  sky130_fd_sc_hd__nand2_1 U2625 ( .A(n2280), .B(n1622), .Y(n1595) );
  sky130_fd_sc_hd__nand2_1 U2626 ( .A(n2271), .B(n2270), .Y(n1622) );
  sky130_fd_sc_hd__nand2_1 U2627 ( .A(n2271), .B(n2281), .Y(n2280) );
  sky130_fd_sc_hd__nand2_1 U2628 ( .A(n1640), .B(n393), .Y(n2276) );
  sky130_fd_sc_hd__nand2_1 U2629 ( .A(n421), .B(n419), .Y(n393) );
  sky130_fd_sc_hd__nand2_1 U2630 ( .A(n730), .B(mcycle[0]), .Y(n419) );
  sky130_fd_sc_hd__o21ai_0 U2631 ( .A1(n564), .A2(n1631), .B1(n1572), .Y(n1640) );
  sky130_fd_sc_hd__nor2_1 U2632 ( .A(n1645), .B(n412), .Y(n1572) );
  sky130_fd_sc_hd__nor2_1 U2633 ( .A(n2232), .B(n1550), .Y(n412) );
  sky130_fd_sc_hd__nand2_1 U2634 ( .A(n2282), .B(n2281), .Y(n2232) );
  sky130_fd_sc_hd__o221ai_1 U2635 ( .A1(n1153), .A2(n543), .B1(n1550), .B2(
        n581), .C1(n2283), .Y(n1645) );
  sky130_fd_sc_hd__nand2_1 U2636 ( .A(n1058), .B(n2284), .Y(n2283) );
  sky130_fd_sc_hd__nand2_1 U2637 ( .A(n2268), .B(n2281), .Y(n581) );
  sky130_fd_sc_hd__nor2_1 U2638 ( .A(n346), .B(i_tv80_core_IR[3]), .Y(n2281)
         );
  sky130_fd_sc_hd__nor2b_1 U2639 ( .B_N(n543), .A(n2284), .Y(n1550) );
  sky130_fd_sc_hd__nand3_1 U2640 ( .A(n652), .B(n1620), .C(n1617), .Y(n2284)
         );
  sky130_fd_sc_hd__nand2_1 U2641 ( .A(n2269), .B(n2248), .Y(n1620) );
  sky130_fd_sc_hd__nand2_1 U2642 ( .A(n2269), .B(n2247), .Y(n652) );
  sky130_fd_sc_hd__nand2_1 U2643 ( .A(n2269), .B(n397), .Y(n543) );
  sky130_fd_sc_hd__clkinv_1 U2644 ( .A(n1555), .Y(n1631) );
  sky130_fd_sc_hd__nor2_1 U2645 ( .A(n1606), .B(n624), .Y(n1555) );
  sky130_fd_sc_hd__nand2_1 U2646 ( .A(n2285), .B(n2271), .Y(n624) );
  sky130_fd_sc_hd__nor2_1 U2647 ( .A(i_tv80_core_IR[1]), .B(i_tv80_core_IR[0]), 
        .Y(n2271) );
  sky130_fd_sc_hd__clkinv_1 U2648 ( .A(n806), .Y(n564) );
  sky130_fd_sc_hd__nand2_1 U2649 ( .A(n1300), .B(n546), .Y(n806) );
  sky130_fd_sc_hd__clkinv_1 U2650 ( .A(i_tv80_core_IntCycle), .Y(n546) );
  sky130_fd_sc_hd__clkinv_1 U2651 ( .A(i_tv80_core_NMICycle), .Y(n1300) );
  sky130_fd_sc_hd__nand2_1 U2652 ( .A(n1607), .B(n359), .Y(n1626) );
  sky130_fd_sc_hd__nor2_1 U2653 ( .A(n1617), .B(n544), .Y(n359) );
  sky130_fd_sc_hd__nand2_1 U2654 ( .A(n2285), .B(n2268), .Y(n544) );
  sky130_fd_sc_hd__nand2_1 U2655 ( .A(n2269), .B(n428), .Y(n1617) );
  sky130_fd_sc_hd__nor2_1 U2656 ( .A(n1387), .B(n1386), .Y(n2269) );
  sky130_fd_sc_hd__clkinv_1 U2657 ( .A(i_tv80_core_IR[6]), .Y(n1386) );
  sky130_fd_sc_hd__clkinv_1 U2658 ( .A(n1274), .Y(n1607) );
  sky130_fd_sc_hd__a222oi_1 U2659 ( .A1(n350), .A2(n1254), .B1(n424), .B2(n789), .C1(n358), .C2(n626), .Y(n2274) );
  sky130_fd_sc_hd__clkinv_1 U2660 ( .A(n426), .Y(n626) );
  sky130_fd_sc_hd__clkinv_1 U2661 ( .A(n499), .Y(n358) );
  sky130_fd_sc_hd__nand2_1 U2662 ( .A(n1274), .B(n499), .Y(n1254) );
  sky130_fd_sc_hd__nand2_1 U2663 ( .A(n764), .B(mcycle[2]), .Y(n499) );
  sky130_fd_sc_hd__nor2_1 U2664 ( .A(mcycle[0]), .B(mcycle[1]), .Y(n764) );
  sky130_fd_sc_hd__nand2_1 U2665 ( .A(n1627), .B(mcycle[2]), .Y(n1274) );
  sky130_fd_sc_hd__o21ai_0 U2666 ( .A1(n598), .A2(n1560), .B1(n731), .Y(n444)
         );
  sky130_fd_sc_hd__clkinv_1 U2667 ( .A(n2049), .Y(n1560) );
  sky130_fd_sc_hd__nand2_1 U2668 ( .A(n2282), .B(n2285), .Y(n2049) );
  sky130_fd_sc_hd__and2_0 U2669 ( .A(n690), .B(n588), .X(n378) );
  sky130_fd_sc_hd__nand3_1 U2670 ( .A(n338), .B(n730), .C(n430), .Y(n588) );
  sky130_fd_sc_hd__clkinv_1 U2671 ( .A(n1273), .Y(n430) );
  sky130_fd_sc_hd__nand2_1 U2672 ( .A(n598), .B(n725), .Y(n1273) );
  sky130_fd_sc_hd__nand2_1 U2673 ( .A(n1609), .B(n426), .Y(n725) );
  sky130_fd_sc_hd__nand2_1 U2674 ( .A(n2263), .B(n397), .Y(n426) );
  sky130_fd_sc_hd__nor2_1 U2675 ( .A(n789), .B(n350), .Y(n1609) );
  sky130_fd_sc_hd__clkinv_1 U2676 ( .A(n634), .Y(n350) );
  sky130_fd_sc_hd__nand2_1 U2677 ( .A(n428), .B(n2263), .Y(n634) );
  sky130_fd_sc_hd__nand2_1 U2678 ( .A(n1606), .B(n635), .Y(n789) );
  sky130_fd_sc_hd__nand2_1 U2679 ( .A(n2263), .B(n2247), .Y(n635) );
  sky130_fd_sc_hd__nand2_1 U2680 ( .A(n2263), .B(n2248), .Y(n1606) );
  sky130_fd_sc_hd__nor2_1 U2681 ( .A(i_tv80_core_IR[6]), .B(i_tv80_core_IR[7]), 
        .Y(n2263) );
  sky130_fd_sc_hd__clkinv_1 U2682 ( .A(n653), .Y(n598) );
  sky130_fd_sc_hd__nand2_1 U2683 ( .A(n2282), .B(n2267), .Y(n653) );
  sky130_fd_sc_hd__nor2_1 U2684 ( .A(n401), .B(i_tv80_core_IR[1]), .Y(n2282)
         );
  sky130_fd_sc_hd__clkinv_1 U2685 ( .A(n372), .Y(n338) );
  sky130_fd_sc_hd__nand2_1 U2686 ( .A(n658), .B(n370), .Y(n372) );
  sky130_fd_sc_hd__clkinv_1 U2687 ( .A(i_tv80_core_ISet[1]), .Y(n370) );
  sky130_fd_sc_hd__clkinv_1 U2688 ( .A(i_tv80_core_ISet[0]), .Y(n658) );
  sky130_fd_sc_hd__nand2_1 U2689 ( .A(n399), .B(i_tv80_core_ISet[1]), .Y(n690)
         );
  sky130_fd_sc_hd__nor2_1 U2690 ( .A(n765), .B(n716), .Y(n399) );
  sky130_fd_sc_hd__nand2_1 U2691 ( .A(n731), .B(n1576), .Y(n765) );
  sky130_fd_sc_hd__nand2_1 U2692 ( .A(n2275), .B(n786), .Y(n1576) );
  sky130_fd_sc_hd__nand2_1 U2693 ( .A(n1066), .B(n2267), .Y(n786) );
  sky130_fd_sc_hd__nor2_1 U2694 ( .A(n697), .B(i_tv80_core_IR[2]), .Y(n2267)
         );
  sky130_fd_sc_hd__nand2_1 U2695 ( .A(n2285), .B(n1066), .Y(n2275) );
  sky130_fd_sc_hd__nor2_1 U2696 ( .A(n384), .B(i_tv80_core_IR[0]), .Y(n1066)
         );
  sky130_fd_sc_hd__nor2_1 U2697 ( .A(i_tv80_core_IR[3]), .B(i_tv80_core_IR[2]), 
        .Y(n2285) );
  sky130_fd_sc_hd__nand3_1 U2698 ( .A(n1594), .B(n577), .C(n1608), .Y(n731) );
  sky130_fd_sc_hd__o21ai_0 U2699 ( .A1(n2248), .A2(n428), .B1(n2272), .Y(n1608) );
  sky130_fd_sc_hd__clkinv_1 U2700 ( .A(n1295), .Y(n2248) );
  sky130_fd_sc_hd__nand2_1 U2701 ( .A(n395), .B(n343), .Y(n1295) );
  sky130_fd_sc_hd__clkinv_1 U2702 ( .A(i_tv80_core_IR[4]), .Y(n395) );
  sky130_fd_sc_hd__nand2_1 U2703 ( .A(n2247), .B(n2272), .Y(n577) );
  sky130_fd_sc_hd__clkinv_1 U2704 ( .A(n409), .Y(n2247) );
  sky130_fd_sc_hd__nand2_1 U2705 ( .A(i_tv80_core_IR[4]), .B(n343), .Y(n409)
         );
  sky130_fd_sc_hd__nand2_1 U2706 ( .A(n397), .B(n2272), .Y(n1594) );
  sky130_fd_sc_hd__clkinv_1 U2707 ( .A(n379), .Y(n397) );
  sky130_fd_sc_hd__nand2_1 U2708 ( .A(i_tv80_core_IR[5]), .B(i_tv80_core_IR[4]), .Y(n379) );
  sky130_fd_sc_hd__nand3_1 U2709 ( .A(n428), .B(n2272), .C(n1058), .Y(n1596)
         );
  sky130_fd_sc_hd__clkinv_1 U2710 ( .A(n1153), .Y(n1058) );
  sky130_fd_sc_hd__nand2_1 U2711 ( .A(n2270), .B(n2268), .Y(n1153) );
  sky130_fd_sc_hd__nor2_1 U2712 ( .A(n384), .B(n401), .Y(n2268) );
  sky130_fd_sc_hd__clkinv_1 U2713 ( .A(i_tv80_core_IR[0]), .Y(n401) );
  sky130_fd_sc_hd__clkinv_1 U2714 ( .A(i_tv80_core_IR[1]), .Y(n384) );
  sky130_fd_sc_hd__nor2_1 U2715 ( .A(n697), .B(n346), .Y(n2270) );
  sky130_fd_sc_hd__clkinv_1 U2716 ( .A(i_tv80_core_IR[2]), .Y(n346) );
  sky130_fd_sc_hd__clkinv_1 U2717 ( .A(i_tv80_core_IR[3]), .Y(n697) );
  sky130_fd_sc_hd__clkinv_1 U2718 ( .A(n1296), .Y(n2272) );
  sky130_fd_sc_hd__nand2_1 U2719 ( .A(i_tv80_core_IR[6]), .B(n1387), .Y(n1296)
         );
  sky130_fd_sc_hd__clkinv_1 U2720 ( .A(i_tv80_core_IR[7]), .Y(n1387) );
  sky130_fd_sc_hd__nor2_1 U2721 ( .A(n343), .B(i_tv80_core_IR[4]), .Y(n428) );
  sky130_fd_sc_hd__clkinv_1 U2722 ( .A(i_tv80_core_IR[5]), .Y(n343) );
  sky130_fd_sc_hd__nand2_1 U2723 ( .A(n424), .B(i_tv80_core_ISet[1]), .Y(n1338) );
  sky130_fd_sc_hd__clkinv_1 U2724 ( .A(n421), .Y(n424) );
  sky130_fd_sc_hd__nand2_1 U2725 ( .A(n730), .B(n646), .Y(n421) );
  sky130_fd_sc_hd__clkinv_1 U2726 ( .A(mcycle[0]), .Y(n646) );
  sky130_fd_sc_hd__clkinv_1 U2727 ( .A(n716), .Y(n730) );
  sky130_fd_sc_hd__nand2_1 U2728 ( .A(mcycle[1]), .B(n505), .Y(n716) );
  sky130_fd_sc_hd__nand2_1 U2729 ( .A(n1627), .B(n505), .Y(n354) );
  sky130_fd_sc_hd__clkinv_1 U2730 ( .A(mcycle[2]), .Y(n505) );
  sky130_fd_sc_hd__clkinv_1 U2731 ( .A(n756), .Y(n1627) );
  sky130_fd_sc_hd__nand2_1 U2732 ( .A(mcycle[0]), .B(n643), .Y(n756) );
  sky130_fd_sc_hd__clkinv_1 U2733 ( .A(mcycle[1]), .Y(n643) );
  sky130_fd_sc_hd__nor2_1 U2734 ( .A(n2255), .B(i_tv80_core_IntCycle), .Y(
        n2249) );
  sky130_fd_sc_hd__nor2b_1 U2735 ( .B_N(n1060), .A(n562), .Y(n2255) );
  sky130_fd_sc_hd__nor2_1 U2736 ( .A(n540), .B(wait_n), .Y(n562) );
  sky130_fd_sc_hd__nand3_1 U2737 ( .A(n554), .B(n559), .C(tstate[1]), .Y(n540)
         );
  sky130_fd_sc_hd__clkinv_1 U2738 ( .A(tstate[0]), .Y(n554) );
  sky130_fd_sc_hd__nand3_1 U2739 ( .A(n560), .B(n559), .C(tstate[0]), .Y(n1060) );
  sky130_fd_sc_hd__clkinv_1 U2740 ( .A(tstate[2]), .Y(n559) );
  sky130_fd_sc_hd__clkinv_1 U2741 ( .A(tstate[1]), .Y(n560) );
endmodule

