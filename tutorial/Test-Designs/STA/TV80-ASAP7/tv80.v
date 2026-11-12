/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Fri Jan 30 15:47:43 2026
/////////////////////////////////////////////////////////////


module tv80 ( m1_n, mreq_n, iorq_n, rd_n, wr_n, rfsh_n, halt_n, busak_n, 
        reset_n, clk, wait_n, int_n, nmi_n, busrq_n, A, di, do );
  output [15:0] A;
  input [7:0] di;
  output [7:0] do;
  input reset_n, clk, wait_n, int_n, nmi_n, busrq_n;
  output m1_n, mreq_n, iorq_n, rd_n, wr_n, rfsh_n, halt_n, busak_n;
  wire   U2537_net_Y, U1569_net_Y, i_tv80_core_i_reg_RegsL_reg_5__5__net_Q,
         U530_net_Y, i_tv80_core_ALU_Op_r_reg_2__net_Q, U939_net_Y,
         i_tv80_core_ACC_reg_6__net_Q, di_reg_reg_6__net_Q, U2520_net_Y,
         i_tv80_core_BusA_reg_6__net_Q, U935_net_Y,
         i_tv80_core_ACC_reg_5__net_Q, di_reg_reg_5__net_Q,
         i_tv80_core_BusA_reg_5__net_Q, U931_net_Y,
         i_tv80_core_ACC_reg_4__net_Q, di_reg_reg_4__net_Q, U1568_net_Y,
         i_tv80_core_i_reg_RegsL_reg_5__6__net_Q, U549_net_Y,
         i_tv80_core_ALU_Op_r_reg_3__net_Q, U1549_net_Y,
         i_tv80_core_i_reg_RegsL_reg_3__7__net_Q, U289_net_Y,
         i_tv80_core_BusB_reg_2__net_Q,
         i_tv80_core_i_reg_RegsL_reg_5__3__net_Q,
         i_tv80_core_i_reg_RegsL_reg_7__3__net_Q,
         i_tv80_core_i_reg_RegsL_reg_6__3__net_Q,
         i_tv80_core_i_reg_RegsL_reg_3__3__net_Q,
         i_tv80_core_i_reg_RegsL_reg_1__3__net_Q, U1552_net_Y,
         i_tv80_core_i_reg_RegsL_reg_3__4__net_Q, U266_net_Y,
         i_tv80_core_BusB_reg_5__net_Q, U1072_net_Y,
         i_tv80_core_TmpAddr_reg_9__net_Q,
         i_tv80_core_i_reg_RegsL_reg_5__2__net_Q,
         i_tv80_core_i_reg_RegsL_reg_6__2__net_Q,
         i_tv80_core_i_reg_RegsL_reg_1__2__net_Q,
         i_tv80_core_i_reg_RegsL_reg_3__2__net_Q,
         i_tv80_core_i_reg_RegsL_reg_0__2__net_Q,
         i_tv80_core_i_reg_RegsL_reg_2__2__net_Q,
         i_tv80_core_i_reg_RegsL_reg_4__2__net_Q, U1570_net_Y,
         i_tv80_core_i_reg_RegsL_reg_5__4__net_Q, U1532_net_Y, U1533_net_Y,
         U1531_net_Y, U1536_net_Y, U1537_net_Y, U1534_net_Y, U1535_net_Y,
         U1068_net_Y, i_tv80_core_TmpAddr_reg_8__net_Q, U1538_net_Y,
         U273_net_Y, i_tv80_core_BusB_reg_0__net_Q, U1573_net_Y,
         i_tv80_core_i_reg_RegsL_reg_5__1__net_Q, di_reg_reg_1__net_Q,
         i_tv80_core_R_reg_1__net_Q, i_tv80_core_PC_reg_1__net_Q,
         i_tv80_core_SP_reg_1__net_Q, i_tv80_core_TmpAddr_reg_2__net_Q,
         U1274_net_Y, di_reg_reg_2__net_Q, i_tv80_core_R_reg_2__net_Q,
         i_tv80_core_PC_reg_2__net_Q, U828_net_Y, i_tv80_core_SP_reg_2__net_Q,
         i_tv80_core_mcycles_reg_1__net_Q, i_tv80_core_SP_reg_0__net_Q,
         U1058_net_Y, i_tv80_core_TmpAddr_reg_7__net_Q,
         i_tv80_core_mcycles_reg_0__net_Q, i_tv80_core_RegAddrC_reg_1__net_Q,
         i_tv80_core_mcycles_reg_2__net_Q, i_tv80_core_RegAddrC_reg_2__net_Q,
         i_tv80_core_RegAddrC_reg_0__net_Q, i_tv80_core_IStatus_reg_0__net_Q,
         i_tv80_core_IStatus_reg_1__net_Q, U296_net_Y,
         i_tv80_core_BusB_reg_3__net_Q, U1572_net_Y, U1262_net_Y,
         di_reg_reg_0__net_Q, i_tv80_core_R_reg_0__net_Q,
         i_tv80_core_TmpAddr_reg_0__net_Q, i_tv80_core_PC_reg_0__net_Q,
         U832_net_Y, i_tv80_core_ACC_reg_7__net_Q, U1268_net_Y,
         i_tv80_core_TmpAddr_reg_1__net_Q, U1554_net_Y, U1555_net_Y,
         U1556_net_Y, U1055_net_Y, i_tv80_core_TmpAddr_reg_6__net_Q,
         U1550_net_Y, U1551_net_Y, U259_net_Y, i_tv80_core_BusB_reg_6__net_Q,
         U484_net_Y, U1553_net_Y, U1558_net_Y, U1559_net_Y, U1567_net_Y,
         i_tv80_core_i_reg_RegsL_reg_5__7__net_Q, i_tv80_core_BTR_r_reg_net_Q,
         U1523_net_Y, U1522_net_Y, i_tv80_core_IntCycle_reg_net_Q, U168_net_Y,
         i_tv80_core_Fp_reg_1__net_Q, U1527_net_Y, U1526_net_Y, U1525_net_Y,
         U1051_net_Y, i_tv80_core_TmpAddr_reg_5__net_Q, U1524_net_Y,
         U1529_net_Y, U1528_net_Y, U454_net_Y, i_tv80_core_Arith16_r_reg_net_Q,
         U1574_net_Y, i_tv80_core_i_reg_RegsL_reg_5__0__net_Q,
         i_tv80_core_Halt_FF_reg_net_Q, U1576_net_Y, U1577_net_Y,
         i_tv80_core_i_reg_RegsH_reg_3__1__net_Q,
         i_tv80_core_i_reg_RegsH_reg_1__1__net_Q, U1049_net_Y,
         i_tv80_core_TmpAddr_reg_4__net_Q, U1571_net_Y,
         i_tv80_core_i_reg_RegsH_reg_6__1__net_Q, U303_net_Y,
         i_tv80_core_BusB_reg_4__net_Q,
         i_tv80_core_i_reg_RegsH_reg_4__1__net_Q,
         i_tv80_core_mcycle_reg_2__net_Q,
         i_tv80_core_i_reg_RegsH_reg_2__1__net_Q,
         i_tv80_core_i_reg_RegsH_reg_0__1__net_Q, U1578_net_Y, U1579_net_Y,
         U377_net_Y, i_tv80_core_BusReq_s_reg_net_Q, U1018_net_Y,
         i_tv80_core_NMICycle_reg_net_Q, U1234_net_X, U1231_net_X, U812_net_Y,
         i_tv80_core_ACC_reg_2__net_Q, i_tv80_core_TmpAddr_reg_3__net_Q,
         U1545_net_Y, U1047_net_Y, U1544_net_Y, U1547_net_Y, U1546_net_Y,
         U1541_net_Y, U1540_net_Y, U1543_net_Y, U211_net_Y,
         i_tv80_core_BusB_reg_7__net_Q, U1542_net_Y,
         i_tv80_core_XY_Ind_reg_net_Q, U1225_net_Y,
         i_tv80_core_PC_reg_4__net_Q, U816_net_Y, i_tv80_core_ACC_reg_3__net_Q,
         i_tv80_core_PC_reg_5__net_Q, U1222_net_X, U170_net_Y,
         i_tv80_core_Fp_reg_2__net_Q, U1044_net_Y, U1228_net_Y,
         i_tv80_core_PC_reg_3__net_Q, i_tv80_core_tstate_reg_2__net_Q,
         U1593_net_Y, i_tv80_core_RegBusA_r_reg_6__net_Q,
         i_tv80_core_ISet_reg_1__net_Q, i_tv80_core_PC_reg_7__net_Q,
         U1216_net_Y, U820_net_Y, i_tv80_core_I_reg_0__net_Q, U176_net_Y,
         i_tv80_core_Fp_reg_5__net_Q, U1565_net_Y, U1041_net_Y, U1564_net_Y,
         i_tv80_core_PC_reg_6__net_Q, U1219_net_X, U1563_net_Y, U1562_net_Y,
         U1561_net_Y, U1560_net_Y, i_tv80_core_R_reg_6__net_Q, U1207_net_Y,
         i_tv80_core_I_reg_1__net_Q, U824_net_Y, U1200_net_Y,
         i_tv80_core_PC_reg_9__net_Q, U166_net_Y, i_tv80_core_Fp_reg_0__net_Q,
         U1038_net_Y, i_tv80_core_PC_reg_11__net_Q, U1895_net_Y, U141_net_Y,
         i_tv80_core_I_reg_4__net_Q, i_tv80_core_TmpAddr_reg_12__net_Q,
         i_tv80_core_PC_reg_8__net_Q, i_tv80_core_RegBusA_r_reg_9__net_Q,
         i_tv80_core_SP_reg_12__net_Q, i_tv80_core_PC_reg_12__net_Q,
         U146_net_Y, i_tv80_core_I_reg_5__net_Q,
         i_tv80_core_TmpAddr_reg_13__net_Q, i_tv80_core_SP_reg_13__net_Q,
         U631_net_Y, i_tv80_core_F_reg_0__net_Q, i_tv80_core_SP_reg_6__net_Q,
         i_tv80_core_BusA_reg_7__net_Q, i_tv80_core_BusA_reg_0__net_Q,
         i_tv80_core_IR_reg_3__net_Q, i_tv80_core_Save_ALU_r_reg_net_Q,
         U172_net_Y, i_tv80_core_Fp_reg_3__net_Q,
         i_tv80_core_BusA_reg_2__net_Q, U1581_net_Y, U1580_net_Y, U1583_net_Y,
         U490_net_Y, i_tv80_core_ISet_reg_0__net_Q, U1582_net_Y, U1585_net_Y,
         U602_net_Y, i_tv80_core_ALU_Op_r_reg_0__net_Q,
         i_tv80_core_RegBusA_r_reg_7__net_Q, U606_net_Y, U604_net_Y,
         U608_net_Y, U178_net_Y, i_tv80_core_Fp_reg_6__net_Q,
         i_tv80_core_TmpAddr_reg_15__net_Q, i_tv80_core_SP_reg_15__net_Q,
         i_tv80_core_PC_reg_15__net_Q, U491_net_Y, U612_net_Y,
         i_tv80_core_F_reg_1__net_Q, U610_net_Y, U616_net_Y, U1302_net_Y,
         U614_net_Y, i_tv80_core_SP_reg_5__net_Q, U899_net_Y,
         i_tv80_core_Ap_reg_4__net_Q, U808_net_Y, i_tv80_core_ACC_reg_0__net_Q,
         U151_net_Y, i_tv80_core_PC_reg_13__net_Q, i_tv80_core_I_reg_6__net_Q,
         i_tv80_core_TmpAddr_reg_14__net_Q, i_tv80_core_SP_reg_14__net_Q,
         U157_net_X, i_tv80_core_PC_reg_14__net_Q, di_reg_reg_7__net_Q,
         i_tv80_core_I_reg_7__net_Q, i_tv80_core_BusA_reg_3__net_Q, U576_net_Y,
         i_tv80_core_Auto_Wait_t1_reg_net_Q, U901_net_Y,
         i_tv80_core_Ap_reg_5__net_Q, U804_net_Y, i_tv80_core_ACC_reg_1__net_Q,
         i_tv80_core_ALU_Op_r_reg_1__net_Q, U174_net_Y,
         i_tv80_core_Fp_reg_4__net_Q, U105_net_Y, U106_net_Y, U107_net_Y,
         U1112_net_Y, i_tv80_core_XY_State_reg_1__net_Q,
         i_tv80_core_IncDecZ_reg_net_Q, i_tv80_core_BusA_reg_4__net_Q,
         U108_net_Y, U109_net_Y, i_tv80_core_F_reg_2__net_Q, U670_net_X,
         U903_net_Y, i_tv80_core_Ap_reg_6__net_Q, U180_net_Y,
         i_tv80_core_Fp_reg_7__net_Q, i_tv80_core_F_reg_3__net_Q,
         i_tv80_core_F_reg_5__net_Q, i_tv80_core_F_reg_4__net_Q,
         i_tv80_core_RegBusA_r_reg_11__net_Q, i_tv80_core_F_reg_6__net_Q,
         U647_net_Y, i_tv80_core_PreserveC_r_reg_net_Q, U905_net_Y,
         i_tv80_core_Ap_reg_7__net_Q, U126_net_Y, i_tv80_core_SP_reg_8__net_Q,
         U121_net_Y, i_tv80_core_RegBusA_r_reg_10__net_Q, U891_net_Y,
         i_tv80_core_Ap_reg_0__net_Q, i_tv80_core_SP_reg_9__net_Q, U653_net_Y,
         i_tv80_core_R_reg_5__net_Q, U1296_net_Y, U115_net_Y,
         i_tv80_core_SP_reg_4__net_Q, i_tv80_core_R_reg_4__net_Q, U1869_net_Y,
         U111_net_Y, U110_net_Y, U112_net_Y, U1110_net_Y,
         i_tv80_core_XY_State_reg_0__net_Q, i_tv80_core_SP_reg_7__net_Q,
         U893_net_Y, i_tv80_core_Ap_reg_1__net_Q, U1288_net_Y,
         i_tv80_core_SP_reg_3__net_Q, i_tv80_core_R_reg_3__net_Q, U1280_net_Y,
         i_tv80_core_Read_To_Reg_r_reg_1__net_Q,
         i_tv80_core_RegBusA_r_reg_8__net_Q,
         i_tv80_core_Read_To_Reg_r_reg_2__net_Q, U895_net_Y,
         i_tv80_core_Ap_reg_2__net_Q, i_tv80_core_BusA_reg_1__net_Q,
         i_tv80_core_BusB_reg_1__net_Q, i_tv80_core_I_reg_3__net_Q,
         di_reg_reg_3__net_Q, i_tv80_core_TmpAddr_reg_11__net_Q, U136_net_Y,
         i_tv80_core_PC_reg_10__net_Q, i_tv80_core_SP_reg_10__net_Q,
         U1808_net_Y, i_tv80_core_I_reg_2__net_Q,
         i_tv80_core_TmpAddr_reg_10__net_Q,
         i_tv80_core_RegBusA_r_reg_12__net_Q, U131_net_Y,
         i_tv80_core_SP_reg_11__net_Q, U897_net_Y, i_tv80_core_Ap_reg_3__net_Q,
         i_tv80_core_i_reg_RegsL_reg_7__0__net_Q,
         i_tv80_core_RegAddrA_r_reg_1__net_Q, i_tv80_core_IntE_FF2_reg_net_Q,
         i_tv80_core_RegAddrA_r_reg_2__net_Q, U1839_net_Y,
         i_tv80_core_i_reg_RegsH_reg_5__6__net_Q,
         i_tv80_core_i_reg_RegsH_reg_7__6__net_Q,
         i_tv80_core_i_reg_RegsH_reg_0__5__net_Q,
         i_tv80_core_i_reg_RegsH_reg_2__5__net_Q,
         i_tv80_core_i_reg_RegsH_reg_4__5__net_Q,
         i_tv80_core_Alternate_reg_net_Q, U1653_net_Y,
         i_tv80_core_i_reg_RegsH_reg_0__7__net_Q,
         i_tv80_core_i_reg_RegsL_reg_1__1__net_Q,
         i_tv80_core_Read_To_Reg_r_reg_4__net_Q,
         i_tv80_core_Read_To_Reg_r_reg_3__net_Q,
         i_tv80_core_Read_To_Reg_r_reg_0__net_Q,
         i_tv80_core_tstate_reg_0__net_Q, i_tv80_core_BusAck_reg_net_Q,
         i_tv80_core_i_reg_RegsL_reg_0__0__net_Q, U1654_net_Y,
         i_tv80_core_i_reg_RegsH_reg_0__6__net_Q,
         i_tv80_core_i_reg_RegsL_reg_4__0__net_Q,
         i_tv80_core_i_reg_RegsL_reg_2__0__net_Q,
         i_tv80_core_i_reg_RegsL_reg_6__0__net_Q, U188_net_Y,
         i_tv80_core_i_reg_RegsH_reg_4__4__net_Q,
         i_tv80_core_i_reg_RegsH_reg_0__4__net_Q, U185_net_Y,
         i_tv80_core_i_reg_RegsH_reg_2__4__net_Q,
         i_tv80_core_i_reg_RegsH_reg_1__4__net_Q,
         i_tv80_core_i_reg_RegsH_reg_3__4__net_Q,
         i_tv80_core_i_reg_RegsH_reg_6__4__net_Q, i_tv80_core_F_reg_7__net_Q,
         U182_net_Y, i_tv80_core_i_reg_RegsL_reg_1__0__net_Q,
         i_tv80_core_i_reg_RegsH_reg_5__4__net_Q,
         i_tv80_core_i_reg_RegsL_reg_3__0__net_Q, U1655_net_Y,
         i_tv80_core_i_reg_RegsH_reg_6__5__net_Q,
         i_tv80_core_i_reg_RegsH_reg_3__5__net_Q,
         i_tv80_core_i_reg_RegsH_reg_1__5__net_Q,
         i_tv80_core_i_reg_RegsH_reg_5__5__net_Q,
         i_tv80_core_i_reg_RegsH_reg_7__5__net_Q, U485_net_Y, U1656_net_Y,
         i_tv80_core_RegAddrA_r_reg_0__net_Q, U1927_net_Y,
         i_tv80_core_i_reg_RegsL_reg_0__1__net_Q,
         i_tv80_core_i_reg_RegsL_reg_2__1__net_Q,
         i_tv80_core_i_reg_RegsL_reg_4__1__net_Q,
         i_tv80_core_i_reg_RegsL_reg_7__2__net_Q, U498_net_Y, U1657_net_Y,
         i_tv80_core_i_reg_RegsH_reg_0__3__net_Q,
         i_tv80_core_i_reg_RegsL_reg_6__1__net_Q,
         i_tv80_core_i_reg_RegsL_reg_1__5__net_Q, U1671_net_Y,
         i_tv80_core_i_reg_RegsH_reg_2__7__net_Q, U194_net_Y,
         i_tv80_core_i_reg_RegsH_reg_7__4__net_Q, U197_net_Y,
         i_tv80_core_i_reg_RegsH_reg_4__3__net_Q, U191_net_Y,
         i_tv80_core_i_reg_RegsH_reg_2__3__net_Q, U1658_net_Y,
         i_tv80_core_i_reg_RegsH_reg_0__2__net_Q,
         i_tv80_core_i_reg_RegsH_reg_6__3__net_Q,
         i_tv80_core_i_reg_RegsL_reg_1__6__net_Q, U1672_net_Y,
         i_tv80_core_i_reg_RegsH_reg_2__6__net_Q,
         i_tv80_core_i_reg_RegsH_reg_5__7__net_Q,
         i_tv80_core_i_reg_RegsH_reg_1__7__net_Q,
         i_tv80_core_i_reg_RegsH_reg_3__7__net_Q,
         i_tv80_core_i_reg_RegsH_reg_6__7__net_Q,
         i_tv80_core_i_reg_RegsH_reg_4__7__net_Q, U1659_net_Y,
         i_tv80_core_i_reg_RegsH_reg_7__7__net_Q,
         i_tv80_core_i_reg_RegsL_reg_7__1__net_Q,
         i_tv80_core_i_reg_RegsL_reg_3__1__net_Q, U1660_net_Y,
         i_tv80_core_i_reg_RegsH_reg_0__0__net_Q,
         i_tv80_core_i_reg_RegsL_reg_1__4__net_Q, U472_net_Y, U1675_net_Y,
         U410_net_Y, i_tv80_core_i_reg_RegsH_reg_6__6__net_Q,
         i_tv80_core_i_reg_RegsH_reg_4__6__net_Q,
         i_tv80_core_i_reg_RegsH_reg_3__6__net_Q,
         i_tv80_core_i_reg_RegsH_reg_1__6__net_Q, U1676_net_Y,
         i_tv80_core_i_reg_RegsH_reg_2__2__net_Q, U1681_net_Y,
         i_tv80_core_i_reg_RegsL_reg_1__7__net_Q, U488_net_Y, U1673_net_Y,
         U1674_net_Y, U386_net_Y, i_tv80_core_i_reg_RegsH_reg_7__3__net_Q,
         i_tv80_core_i_reg_RegsH_reg_1__3__net_Q,
         i_tv80_core_i_reg_RegsH_reg_3__3__net_Q,
         i_tv80_core_i_reg_RegsH_reg_5__3__net_Q, U1165_net_Y, U1682_net_Y,
         U1172_net_Y, U1685_net_Y, i_tv80_core_i_reg_RegsH_reg_3__2__net_Q,
         i_tv80_core_No_BTR_reg_net_Q, i_tv80_core_mcycle_reg_0__net_Q,
         U1157_net_Y, i_tv80_core_Oldnmi_n_reg_net_Q, U1677_net_Y, U240_net_Y,
         U1179_net_Y, i_tv80_core_i_reg_RegsH_reg_7__2__net_Q,
         i_tv80_core_i_reg_RegsH_reg_1__2__net_Q, U1680_net_Y,
         i_tv80_core_i_reg_RegsH_reg_5__2__net_Q,
         i_tv80_core_i_reg_RegsH_reg_4__2__net_Q,
         i_tv80_core_i_reg_RegsH_reg_6__2__net_Q, U1678_net_Y,
         i_tv80_core_i_reg_RegsH_reg_2__0__net_Q, U1076_net_Y, U1186_net_Y,
         U1683_net_Y, U727_net_Y, U1193_net_Y, U1686_net_Y, U1141_net_Y,
         i_tv80_core_Pre_XY_F_M_reg_1__net_Q, U1133_net_Y,
         i_tv80_core_Pre_XY_F_M_reg_0__net_Q, i_tv80_core_IR_reg_5__net_Q,
         U234_net_X, i_tv80_core_RegBusA_r_reg_14__net_Q, U494_net_Y,
         i_tv80_core_Z16_r_reg_net_Q, U1005_net_Y, U1007_net_Y, U1001_net_Y,
         U1003_net_Y, U1684_net_Y, U1162_net_Y, i_tv80_core_NMI_s_reg_net_Q,
         U235_net_X, i_tv80_core_RegBusA_r_reg_15__net_Q, U1036_net_Y,
         U1034_net_Y, U239_net_Y, U442_net_Y, U1032_net_Y, U1030_net_Y,
         U1687_net_Y, i_tv80_core_i_reg_RegsH_reg_3__0__net_Q,
         i_tv80_core_Pre_XY_F_M_reg_2__net_Q, U1137_net_Y, U1135_net_Y,
         U405_net_Y, U391_net_Y, U1026_net_Y, U236_net_Y, U1022_net_Y,
         U1028_net_Y, U433_net_Y, U417_net_Y, U431_net_Y,
         i_tv80_core_tstate_reg_1__net_Q, i_tv80_core_IntE_FF1_reg_net_Q,
         U230_net_X, U1693_net_Y, U425_net_Y, U247_net_Y,
         i_tv80_core_RegAddrB_r_reg_2__net_Q, U736_net_Y,
         i_tv80_core_INT_s_reg_net_Q, U231_net_X, U1694_net_Y, U1123_net_Y,
         U1121_net_Y, U444_net_Y, U446_net_Y,
         i_tv80_core_Auto_Wait_t2_reg_net_Q, U232_net_X, U1695_net_Y,
         U762_net_Y, U455_net_Y, U233_net_X,
         i_tv80_core_RegBusA_r_reg_13__net_Q, U1696_net_Y,
         i_tv80_core_i_reg_RegsH_reg_4__0__net_Q,
         i_tv80_core_RegAddrB_r_reg_0__net_Q, U1096_net_Y, U1092_net_Y,
         U1689_net_Y, U463_net_Y, U253_net_Y, U1088_net_Y, U382_net_Y,
         U1084_net_Y, U1711_net_Y, U1080_net_Y, U1690_net_Y, U477_net_Y,
         U474_net_Y, U219_net_X, i_tv80_core_RegAddrB_r_reg_1__net_Q,
         i_tv80_core_RegBusA_r_reg_5__net_Q, U225_net_X,
         i_tv80_core_RegBusA_r_reg_4__net_Q, U224_net_X, U227_net_X,
         U226_net_X, i_tv80_core_RegBusA_r_reg_1__net_Q, U221_net_X,
         i_tv80_core_RegBusA_r_reg_0__net_Q, U220_net_X, U1712_net_Y,
         i_tv80_core_RegBusA_r_reg_3__net_Q, U223_net_X,
         i_tv80_core_RegBusA_r_reg_2__net_Q, U222_net_X, U229_net_X,
         U228_net_X, U1691_net_Y, i_tv80_core_mcycle_reg_1__net_Q, U1692_net_Y,
         U496_net_Y, U203_net_Y, U200_net_Y, U1707_net_Y, U885_net_Y,
         U218_net_Y, U2523_net_Y, i_tv80_core_R_reg_7__net_Q, U1708_net_Y,
         U923_net_Y, U1713_net_Y, U911_net_Y, U1714_net_Y,
         i_tv80_core_i_reg_RegsH_reg_6__0__net_Q, U2535_net_Y,
         i_tv80_core_IR_reg_1__net_Q, i_tv80_core_IR_reg_0__net_Q,
         i_tv80_core_i_reg_RegsH_reg_7__1__net_Q, U919_net_Y,
         i_tv80_core_IR_reg_6__net_Q, U1748_net_Y, U871_net_Y,
         i_tv80_core_i_reg_RegsL_reg_4__7__net_Q, U1709_net_Y, U869_net_Y,
         U927_net_Y, i_tv80_core_i_reg_RegsL_reg_4__6__net_Q, U863_net_Y,
         U861_net_Y, U866_net_Y, U555_net_Y, U1710_net_Y, U282_net_Y,
         i_tv80_core_i_reg_RegsH_reg_7__0__net_Q, U915_net_Y, U873_net_Y,
         i_tv80_core_i_reg_RegsL_reg_4__5__net_Q, U877_net_Y, U554_net_Y,
         i_tv80_core_IR_reg_7__net_Q, U1779_net_Y,
         i_tv80_core_i_reg_RegsL_reg_4__4__net_Q, U1664_net_Y, U558_net_Y,
         i_tv80_core_IR_reg_2__net_Q, i_tv80_core_i_reg_RegsL_reg_4__3__net_Q,
         U1663_net_Y, U556_net_Y, i_tv80_core_i_reg_RegsL_reg_6__7__net_Q,
         U1716_net_Y, i_tv80_core_i_reg_RegsL_reg_6__6__net_Q, U559_net_Y,
         U1665_net_Y, U1668_net_Y, U997_net_Y, U1667_net_Y, U1633_net_Y,
         U1662_net_Y, U1625_net_Y, i_tv80_core_i_reg_RegsL_reg_7__6__net_Q,
         U1669_net_Y, i_tv80_core_i_reg_RegsH_reg_1__0__net_Q,
         i_tv80_core_i_reg_RegsL_reg_6__5__net_Q, U1617_net_Y, U995_net_Y,
         i_tv80_core_i_reg_RegsL_reg_6__4__net_Q, U1601_net_Y, U1609_net_Y,
         i_tv80_core_i_reg_RegsL_reg_7__5__net_Q, U999_net_Y, U1666_net_Y,
         U590_net_Y, U993_net_Y, U1703_net_Y, U1702_net_Y, U1701_net_Y,
         U1700_net_Y, U1705_net_Y, U592_net_Y, U1704_net_Y,
         i_tv80_core_i_reg_RegsL_reg_7__7__net_Q,
         i_tv80_core_i_reg_RegsL_reg_7__4__net_Q, U1641_net_Y, U508_net_Y,
         U588_net_Y, U582_net_Y, U584_net_Y, U1699_net_Y, U1698_net_Y,
         U516_net_Y, U594_net_Y, U580_net_Y, U378_net_Y,
         i_tv80_core_IR_reg_4__net_Q, i_tv80_core_i_reg_RegsL_reg_0__3__net_Q,
         U379_net_Y, U586_net_Y, U579_net_Y,
         i_tv80_core_i_reg_RegsH_reg_5__1__net_Q,
         i_tv80_core_i_reg_RegsL_reg_0__7__net_Q,
         i_tv80_core_i_reg_RegsL_reg_2__3__net_Q,
         i_tv80_core_i_reg_RegsL_reg_0__6__net_Q,
         i_tv80_core_i_reg_RegsL_reg_0__5__net_Q,
         i_tv80_core_i_reg_RegsH_reg_5__0__net_Q,
         i_tv80_core_i_reg_RegsL_reg_3__6__net_Q,
         i_tv80_core_i_reg_RegsL_reg_0__4__net_Q,
         i_tv80_core_i_reg_RegsL_reg_2__5__net_Q,
         i_tv80_core_i_reg_RegsL_reg_3__5__net_Q,
         i_tv80_core_i_reg_RegsL_reg_2__7__net_Q,
         i_tv80_core_i_reg_RegsL_reg_2__4__net_Q,
         i_tv80_core_i_reg_RegsL_reg_2__6__net_Q, U399_net_Y, n4, n25, n207,
         n231, n2363, n2364, n2365, n2366, n2367, n2368, n2369, n2370, n2371,
         n2372, n2373, n2374, n2375, n2376, n2377, n2378, n2379, n2380, n2381,
         n2382, n2383, n2384, n2385, n2386, n2387, n2388, n2389, n2390, n2391,
         n2392, n2393, n2394, n2395, n2396, n2397, n2398, n2399, n2400, n2401,
         n2402, n2403, n2404, n2405, n2406, n2407, n2408, n2409, n2410, n2411,
         n2412, n2413, n2414, n2415, n2416, n2417, n2418, n2419, n2420, n2421,
         n2422, n2423, n2424, n2425, n2426, n2427, n2428, n2429, n2430, n2431,
         n2432, n2433, n2434, n2435, n2436, n2437, n2438, n2439, n2440, n2441,
         n2442, n2443, n2444, n2445, n2446, n2447, n2448, n2449, n2450, n2451,
         n2452, n2453, n2454, n2455, n2456, n2457, n2458, n2459, n2460, n2461,
         n2462, n2463, n2464, n2465, n2466, n2467, n2468, n2469, n2470, n2471,
         n2472, n2473, n2474, n2475, n2476, n2477, n2478, n2479, n2480, n2481,
         n2482, n2483, n2484, n2485, n2486, n2487, n2488, n2489, n2490, n2491,
         n2492, n2493, n2494, n2495, n2496, n2497, n2498, n2499, n2500, n2501,
         n2502, n2503, n2504, n2505, n2506, n2507, n2508, n2509, n2510, n2511,
         n2512, n2513, n2514, n2515, n2516, n2517, n2518, n2519, n2520, n2521,
         n2522, n2523, n2524, n2525, n2526, n2527, n2528, n2529, n2530, n2531,
         n2532, n2533, n2534, n2535, n2536, n2537, n2538, n2539, n2540, n2541,
         n2542, n2543, n2544, n2545, n2546, n2547, n2548, n2549, n2550, n2551,
         n2552, n2553, n2554, n2555, n2556, n2557, n2558, n2559, n2560, n2561,
         n2562, n2563, n2564, n2565, n2566, n2567, n2568, n2569, n2570, n2571,
         n2572, n2573, n2574, n2575, n2576, n2577, n2578, n2579, n2580, n2581,
         n2582, n2583, n2584, n2585, n2586, n2587, n2588, n2589, n2590, n2591,
         n2592, n2593, n2594, n2595, n2596, n2597, n2598, n2599, n2600, n2601,
         n2602, n2603, n2604, n2605, n2606, n2607, n2608, n2609, n2610, n2611,
         n2612, n2613, n2614, n2615, n2616, n2617, n2618, n2619, n2620, n2621,
         n2622, n2623, n2624, n2625, n2626, n2627, n2628, n2629, n2630, n2631,
         n2632, n2633, n2634, n2635, n2636, n2637, n2638, n2639, n2640, n2641,
         n2642, n2643, n2644, n2645, n2646, n2647, n2648, n2649, n2650, n2651,
         n2652, n2653, n2654, n2655, n2656, n2657, n2658, n2659, n2660, n2661,
         n2662, n2663, n2664, n2665, n2666, n2667, n2668, n2669, n2670, n2671,
         n2672, n2673, n2674, n2675, n2676, n2677, n2678, n2679, n2680, n2681,
         n2682, n2683, n2684, n2685, n2686, n2687, n2688, n2689, n2690, n2691,
         n2692, n2693, n2694, n2695, n2696, n2697, n2698, n2699, n2700, n2701,
         n2702, n2703, n2704, n2705, n2706, n2707, n2708, n2709, n2710, n2711,
         n2712, n2713, n2714, n2715, n2716, n2717, n2718, n2719, n2720, n2721,
         n2722, n2723, n2724, n2725, n2726, n2727, n2728, n2729, n2730, n2731,
         n2732, n2733, n2734, n2735, n2736, n2737, n2738, n2739, n2740, n2741,
         n2742, n2743, n2744, n2745, n2746, n2747, n2748, n2749, n2750, n2751,
         n2752, n2753, n2754, n2755, n2756, n2757, n2758, n2759, n2760, n2761,
         n2762, n2763, n2764, n2765, n2766, n2767, n2768, n2769, n2770, n2771,
         n2772, n2773, n2774, n2775, n2776, n2777, n2778, n2779, n2780, n2781,
         n2782, n2783, n2784, n2785, n2786, n2787, n2788, n2789, n2790, n2791,
         n2792, n2793, n2794, n2795, n2796, n2797, n2798, n2799, n2800, n2801,
         n2802, n2803, n2804, n2805, n2806, n2807, n2808, n2809, n2810, n2811,
         n2812, n2813, n2814, n2815, n2816, n2817, n2818, n2819, n2820, n2821,
         n2822, n2823, n2824, n2825, n2826, n2827, n2828, n2829, n2830, n2831,
         n2832, n2833, n2834, n2835, n2836, n2837, n2838, n2839, n2840, n2841,
         n2842, n2843, n2844, n2845, n2846, n2847, n2848, n2849, n2850, n2851,
         n2852, n2853, n2854, n2855, n2856, n2857, n2858, n2859, n2860, n2861,
         n2862, n2863, n2864, n2865, n2866, n2867, n2868, n2869, n2870, n2871,
         n2872, n2873, n2874, n2875, n2876, n2877, n2878, n2879, n2880, n2881,
         n2882, n2883, n2884, n2885, n2886, n2887, n2888, n2889, n2890, n2891,
         n2892, n2893, n2894, n2895, n2896, n2897, n2898, n2899, n2900, n2901,
         n2902, n2903, n2904, n2905, n2906, n2907, n2908, n2909, n2910, n2911,
         n2912, n2913, n2914, n2915, n2916, n2917, n2918, n2919, n2920, n2921,
         n2922, n2923, n2924, n2925, n2926, n2927, n2928, n2929, n2930, n2931,
         n2932, n2933, n2934, n2935, n2936, n2937, n2938, n2939, n2940, n2941,
         n2942, n2943, n2944, n2945, n2946, n2947, n2948, n2949, n2950, n2951,
         n2952, n2953, n2954, n2955, n2956, n2957, n2958, n2959, n2960, n2961,
         n2962, n2963, n2964, n2965, n2966, n2967, n2968, n2969, n2970, n2971,
         n2972, n2973, n2974, n2975, n2976, n2977, n2978, n2979, n2980, n2981,
         n2982, n2983, n2984, n2985, n2986, n2987, n2988, n2989, n2990, n2991,
         n2992, n2993, n2994, n2995, n2996, n2997, n2998, n2999, n3000, n3001,
         n3002, n3003, n3004, n3005, n3006, n3007, n3008, n3009, n3010, n3011,
         n3012, n3013, n3014, n3015, n3016, n3017, n3018, n3019, n3020, n3021,
         n3022, n3023, n3024, n3025, n3026, n3027, n3028, n3029, n3030, n3031,
         n3032, n3033, n3034, n3035, n3036, n3037, n3038, n3039, n3040, n3041,
         n3042, n3043, n3044, n3045, n3046, n3047, n3048, n3049, n3050, n3051,
         n3052, n3053, n3054, n3055, n3056, n3057, n3058, n3059, n3060, n3061,
         n3062, n3063, n3064, n3065, n3066, n3067, n3068, n3069, n3070, n3071,
         n3072, n3073, n3074, n3075, n3076, n3077, n3078, n3079, n3080, n3081,
         n3082, n3083, n3084, n3085, n3086, n3087, n3088, n3089, n3090, n3091,
         n3092, n3093, n3094, n3095, n3096, n3097, n3098, n3099, n3100, n3101,
         n3102, n3103, n3104, n3105, n3106, n3107, n3108, n3109, n3110, n3111,
         n3112, n3113, n3114, n3115, n3116, n3117, n3118, n3119, n3120, n3121,
         n3122, n3123, n3124, n3125, n3126, n3127, n3128, n3129, n3130, n3131,
         n3132, n3133, n3134, n3135, n3136, n3137, n3138, n3139, n3140, n3141,
         n3142, n3143, n3144, n3145, n3146, n3147, n3148, n3149, n3150, n3151,
         n3152, n3153, n3154, n3155, n3156, n3157, n3158, n3159, n3160, n3161,
         n3162, n3163, n3164, n3165, n3166, n3167, n3168, n3169, n3170, n3171,
         n3172, n3173, n3174, n3175, n3176, n3177, n3178, n3179, n3180, n3181,
         n3182, n3183, n3184, n3185, n3186, n3187, n3188, n3189, n3190, n3191,
         n3192, n3193, n3194, n3195, n3196, n3197, n3198, n3199, n3200, n3201,
         n3202, n3203, n3204, n3205, n3206, n3207, n3208, n3209, n3210, n3211,
         n3212, n3213, n3214, n3215, n3216, n3217, n3218, n3219, n3220, n3221,
         n3222, n3223, n3224, n3225, n3226, n3227, n3228, n3229, n3230, n3231,
         n3232, n3233, n3234, n3235, n3236, n3237, n3238, n3239, n3240, n3241,
         n3242, n3243, n3244, n3245, n3246, n3247, n3248, n3249, n3250, n3251,
         n3252, n3253, n3254, n3255, n3256, n3257, n3258, n3259, n3260, n3261,
         n3262, n3263, n3264, n3265, n3266, n3267, n3268, n3269, n3270, n3271,
         n3272, n3273, n3274, n3275, n3276, n3277, n3278, n3279, n3280, n3281,
         n3282, n3283, n3284, n3285, n3286, n3287, n3288, n3289, n3290, n3291,
         n3292, n3293, n3294, n3295, n3296, n3297, n3298, n3299, n3300, n3301,
         n3302, n3303, n3304, n3305, n3306, n3307, n3308, n3309, n3310, n3311,
         n3312, n3313, n3314, n3315, n3316, n3317, n3318, n3319, n3320, n3321,
         n3322, n3323, n3324, n3325, n3326, n3327, n3328, n3329, n3330, n3331,
         n3332, n3333, n3334, n3335, n3336, n3337, n3338, n3339, n3340, n3341,
         n3342, n3343, n3344, n3345, n3346, n3347, n3348, n3349, n3350, n3351,
         n3352, n3353, n3354, n3355, n3356, n3357, n3358, n3359, n3360, n3361,
         n3362, n3363, n3364, n3365, n3366, n3367, n3368, n3369, n3370, n3371,
         n3372, n3373, n3374, n3375, n3376, n3377, n3378, n3379, n3380, n3381,
         n3382, n3383, n3384, n3385, n3386, n3387, n3388, n3389, n3390, n3391,
         n3392, n3393, n3394, n3395, n3396, n3397, n3398, n3399, n3400, n3401,
         n3402, n3403, n3404, n3405, n3406, n3407, n3408, n3409, n3410, n3411,
         n3412, n3413, n3414, n3415, n3416, n3417, n3418, n3419, n3420, n3421,
         n3422, n3423, n3424, n3425, n3426, n3427, n3428, n3429, n3430, n3431,
         n3432, n3433, n3434, n3435, n3436, n3437, n3438, n3439, n3440, n3441,
         n3442, n3443, n3444, n3445, n3446, n3447, n3448, n3449, n3450, n3451,
         n3452, n3453, n3454, n3455, n3456, n3457, n3458, n3459, n3460, n3461,
         n3462, n3463, n3464, n3465, n3466, n3467, n3468, n3469, n3470, n3471,
         n3472, n3473, n3474, n3475, n3476, n3477, n3478, n3479, n3480, n3481,
         n3482, n3483, n3484, n3485, n3486, n3487, n3488, n3489, n3490, n3491,
         n3492, n3493, n3494, n3495, n3496, n3497, n3498, n3499, n3500, n3501,
         n3502, n3503, n3504, n3505, n3506, n3507, n3508, n3509, n3510, n3511,
         n3512, n3513, n3514, n3515, n3516, n3517, n3518, n3519, n3520, n3521,
         n3522, n3523, n3524, n3525, n3526, n3527, n3528, n3529, n3530, n3531,
         n3532, n3533, n3534, n3535, n3536, n3537, n3538, n3539, n3540, n3541,
         n3542, n3543, n3544, n3545, n3546, n3547, n3548, n3549, n3550, n3551,
         n3552, n3553, n3554, n3555, n3556, n3557, n3558, n3559, n3560, n3561,
         n3562, n3563, n3564, n3565, n3566, n3567, n3568, n3569, n3570, n3571,
         n3572, n3573, n3574, n3575, n3576, n3577, n3578, n3579, n3580, n3581,
         n3582, n3583, n3584, n3585, n3586, n3587, n3588, n3589, n3590, n3591,
         n3592, n3593, n3594, n3595, n3596, n3597, n3598, n3599, n3600, n3601,
         n3602, n3603, n3604, n3605, n3606, n3607, n3608, n3609, n3610, n3611,
         n3612, n3613, n3614, n3615, n3616, n3617, n3618, n3619, n3620, n3621,
         n3622, n3623, n3624, n3625, n3626, n3627, n3628, n3629, n3630, n3631,
         n3632, n3633, n3634, n3635, n3636, n3637, n3638, n3639, n3640, n3641,
         n3642, n3643, n3644, n3645, n3646, n3647, n3648, n3649, n3650, n3651,
         n3652, n3653, n3654, n3655, n3656, n3657, n3658, n3659, n3660, n3661,
         n3662, n3663, n3664, n3665, n3666, n3667, n3668, n3669, n3670, n3671,
         n3672, n3673, n3674, n3675, n3676, n3677, n3678, n3679, n3680, n3681,
         n3682, n3683, n3684, n3685, n3686, n3687, n3688, n3689, n3690, n3691,
         n3692, n3693, n3694, n3695, n3696, n3697, n3698, n3699, n3700, n3701,
         n3702, n3703, n3704, n3705, n3706, n3707, n3708, n3709, n3710, n3711,
         n3712, n3713, n3714, n3715, n3716, n3717, n3718, n3719, n3720, n3721,
         n3722, n3723, n3724, n3725, n3726, n3727, n3728, n3729, n3730, n3731,
         n3732, n3733, n3734, n3735, n3736, n3737, n3738, n3739, n3740, n3741,
         n3742, n3743, n3744, n3745, n3746, n3747, n3748, n3749, n3750, n3751,
         n3752, n3753, n3754, n3755, n3756, n3757, n3758, n3759, n3760, n3761,
         n3762, n3763, n3764, n3765, n3766, n3767, n3768, n3769, n3770, n3771,
         n3772, n3773, n3774, n3775, n3776, n3777, n3778, n3779, n3780, n3781,
         n3782, n3783, n3784, n3785, n3786, n3787, n3788, n3789, n3790, n3791,
         n3792, n3793, n3794, n3795, n3796, n3797, n3798, n3799, n3800, n3801,
         n3802, n3803, n3804, n3805, n3806, n3807, n3808, n3809, n3810, n3811,
         n3812, n3813, n3814, n3815, n3816, n3817, n3818, n3819, n3820, n3821,
         n3822, n3823, n3824, n3825, n3826, n3827, n3828, n3829, n3830, n3831,
         n3832, n3833, n3834, n3835, n3836, n3837, n3838, n3839, n3840, n3841,
         n3842, n3843, n3844, n3845, n3846, n3847, n3848, n3849, n3850, n3851,
         n3852, n3853, n3854, n3855, n3856, n3857, n3858, n3859, n3860, n3861,
         n3862, n3863, n3864, n3865, n3866, n3867, n3868, n3869, n3870, n3871,
         n3872, n3873, n3874, n3875, n3876, n3877, n3878, n3879, n3880, n3881,
         n3882, n3883, n3884, n3885, n3886, n3887, n3888, n3889, n3890, n3891,
         n3892, n3893, n3894, n3895, n3896, n3897, n3898, n3899, n3900, n3901,
         n3902, n3903, n3904, n3905, n3906, n3907, n3908, n3909, n3910, n3911,
         n3912, n3913, n3914, n3915, n3916, n3917, n3918, n3919, n3920, n3921,
         n3922, n3923, n3924, n3925, n3926, n3927, n3928, n3929, n3930, n3931,
         n3932, n3933, n3934, n3935, n3936, n3937, n3938, n3939, n3940, n3941,
         n3942, n3943, n3944, n3945, n3946, n3947, n3948, n3949, n3950, n3951,
         n3952, n3953, n3954, n3955, n3956, n3957, n3958, n3959, n3960, n3961,
         n3962, n3963, n3964, n3965, n3966, n3967, n3968, n3969, n3970, n3971,
         n3972, n3973, n3974, n3975, n3976, n3977, n3978, n3979, n3980, n3981,
         n3982, n3983, n3984, n3985, n3986, n3987, n3988, n3989, n3990, n3991,
         n3992, n3993, n3994, n3995, n3996, n3997, n3998, n3999, n4000, n4001,
         n4002, n4003, n4004, n4005, n4006, n4007, n4008, n4009, n4010, n4011,
         n4012, n4013, n4014, n4015, n4016, n4017, n4018, n4019, n4020, n4021,
         n4022, n4023, n4024, n4025, n4026, n4027, n4028, n4029, n4030, n4031,
         n4032, n4033, n4034, n4035, n4036, n4037, n4038, n4039, n4040, n4041,
         n4042, n4043, n4044, n4045, n4046, n4047, n4048, n4049, n4050, n4051,
         n4052, n4053, n4054, n4055, n4056, n4057, n4058, n4059, n4060, n4061,
         n4062, n4063, n4064, n4065, n4066, n4067, n4068, n4069, n4070, n4071,
         n4072, n4073, n4074, n4075, n4076, n4077, n4078, n4079, n4080, n4081,
         n4082, n4083, n4084, n4085, n4086, n4087, n4088, n4089, n4090, n4091,
         n4092, n4093, n4094, n4095, n4096, n4097, n4098, n4099, n4100, n4101,
         n4102, n4103, n4104, n4105, n4106, n4107, n4108, n4109, n4110, n4111,
         n4112, n4113, n4114, n4115, n4116, n4117, n4118, n4119, n4120, n4121,
         n4122, n4123, n4124, n4125, n4126, n4127, n4128, n4129, n4130, n4131,
         n4132, n4133, n4134, n4135, n4136, n4137, n4138, n4139, n4140, n4141,
         n4142, n4143, n4144, n4145, n4146, n4147, n4148, n4149, n4150, n4151,
         n4152, n4153, n4154, n4155, n4156, n4157, n4158, n4159, n4160, n4161,
         n4162, n4163, n4164, n4165, n4166, n4167, n4168, n4169, n4170, n4171,
         n4172, n4173, n4174, n4175, n4176, n4177, n4178, n4179, n4180, n4181,
         n4182, n4183, n4184, n4185, n4186, n4187, n4188, n4189, n4190, n4191,
         n4192, n4193, n4194, n4195, n4196, n4197, n4198, n4199, n4200, n4201,
         n4202, n4203, n4204, n4205, n4206, n4207, n4208, n4209, n4210, n4211,
         n4212, n4213, n4214, n4215, n4216, n4217, n4218, n4219, n4220, n4221,
         n4222, n4223, n4224, n4225, n4226, n4227, n4228, n4229, n4230, n4231,
         n4232, n4233, n4234, n4235, n4236, n4237, n4238, n4239, n4240, n4241,
         n4242, n4243, n4244, n4245, n4246, n4247, n4248, n4249, n4250, n4251,
         n4252, n4253, n4254, n4255, n4256, n4257, n4258, n4259, n4260, n4261,
         n4262, n4263, n4264, n4265, n4266, n4267, n4268, n4269, n4270, n4271,
         n4272, n4273, n4274, n4275, n4276, n4277, n4278, n4279, n4280, n4281,
         n4282, n4283, n4284, n4285, n4286, n4287, n4288, n4289, n4290, n4291,
         n4292, n4293, n4294, n4295, n4296, n4297, n4298, n4299, n4300, n4301,
         n4302, n4303, n4304, n4305, n4306, n4307, n4308, n4309, n4310, n4311,
         n4312, n4313, n4314, n4315, n4316, n4317, n4318, n4319, n4320, n4321,
         n4322, n4323, n4324, n4325, n4326, n4327, n4328, n4329, n4330, n4331,
         n4332, n4333, n4334, n4335, n4336, n4337, n4338, n4339, n4340, n4341,
         n4342, n4343, n4344, n4345, n4346, n4347, n4348, n4349, n4350, n4351,
         n4352, n4353, n4354, n4355, n4356, n4357, n4358, n4359, n4360, n4361,
         n4362, n4363, n4364, n4365, n4366, n4367, n4368, n4369, n4370, n4371,
         n4372, n4373, n4374, n4375, n4376, n4377, n4378, n4379, n4380, n4381,
         n4382, n4383, n4384, n4385, n4386, n4387, n4388, n4389, n4390, n4391,
         n4392, n4393, n4394, n4395, n4396, n4397, n4398, n4399, n4400, n4401,
         n4402, n4403, n4404, n4405, n4406, n4407, n4408, n4409, n4410, n4411,
         n4412, n4413, n4414, n4415, n4416, n4417, n4418, n4419, n4420, n4421,
         n4422, n4423, n4424, n4425, n4426, n4427, n4428, n4429, n4430, n4431,
         n4432, n4433, n4434, n4435, n4436, n4437, n4438, n4439, n4440, n4441,
         n4442, n4443, n4444, n4445, n4446, n4447, n4448, n4449, n4450, n4451,
         n4452, n4453, n4454, n4455, n4456, n4457, n4458, n4459, n4460, n4461,
         n4462, n4463, n4464, n4465, n4466, n4467, n4468, n4469, n4470, n4471,
         n4472, n4473, n4474, n4475, n4476, n4477, n4478, n4479, n4480, n4481,
         n4482, n4483, n4484, n4485, n4486, n4487, n4488, n4489, n4490, n4491,
         n4492, n4493, n4494, n4495, n4496, n4497, n4498, n4499, n4500, n4501,
         n4502, n4503, n4504, n4505, n4506, n4507, n4508, n4509, n4510, n4511,
         n4512, n4513, n4514, n4515, n4516, n4517, n4518, n4519, n4520, n4521,
         n4522, n4523, n4524, n4525, n4526, n4527, n4528, n4529, n4530, n4531,
         n4532, n4533, n4534, n4535, n4536, n4537, n4538, n4539, n4540, n4541,
         n4542, n4543, n4544, n4545, n4546, n4547, n4548, n4549, n4550, n4551,
         n4552, n4553, n4554, n4555, n4556, n4557, n4558, n4559, n4560, n4561,
         n4562, n4563, n4564, n4565, n4566, n4567, n4568, n4569, n4570, n4571,
         n4572, n4573, n4574, n4575, n4576, n4577, n4578, n4579, n4580, n4581,
         n4582, n4583, n4584, n4585, n4586, n4587, n4588, n4589, n4590, n4591,
         n4592, n4593, n4594, n4595, n4596, n4597, n4598, n4599, n4600, n4601,
         n4602, n4603, n4604, n4605, n4606, n4607, n4608, n4609, n4610, n4611,
         n4612, n4613, n4614, n4615, n4616, n4617, n4618, n4619, n4620, n4621,
         n4622, n4623, n4624, n4625, n4626, n4627, n4628, n4629, n4630, n4631,
         n4632, n4633, n4634, n4635, n4636, n4637, n4638, n4639, n4640, n4641,
         n4642, n4643, n4644, n4645, n4646, n4647, n4648, n4649, n4650, n4651,
         n4652, n4653, n4654, n4655, n4656, n4657, n4658, n4659, n4660, n4661,
         n4662, n4663, n4664, n4665, n4666, n4667, n4668, n4669, n4670, n4671,
         n4672, n4673, n4674, n4675, n4676, n4677, n4678, n4679, n4680, n4681,
         n4682, n4683, n4684, n4685, n4686, n4687, n4688, n4689, n4690, n4691,
         n4692, n4693, n4694, n4695, n4696, n4697, n4698, n4699, n4700, n4701,
         n4702, n4703, n4704, n4705, n4706, n4707, n4708, n4709, n4710, n4711,
         n4712, n4713, n4714, n4715, n4716, n4717, n4718, n4719, n4720, n4721,
         n4722, n4723, n4724, n4725, n4726, n4727, n4728, n4729, n4730, n4731,
         n4732, n4733, n4734, n4735, n4736, n4737, n4738, n4739, n4740, n4741,
         n4742, n4743, n4744, n4745, n4746, n4747, n4748, n4749, n4750, n4751,
         n4752, n4753, n4754, n4755, n4756, n4757, n4758, n4759, n4760, n4761,
         n4762, n4763, n4764, n4765, n4766, n4767, n4768, n4769, n4770, n4771,
         n4772, n4773, n4774, n4775, n4776, n4777, n4778, n4779, n4780, n4781,
         n4782, n4783, n4784, n4785, n4786, n4787, n4788, n4789, n4790, n4791,
         n4792, n4793, n4794, n4795, n4796, n4797, n4798, n4799, n4800, n4801,
         n4802, n4803, n4804, n4805, n4806, n4807, n4808, n4809, n4810, n4811,
         n4812, n4813, n4814, n4815, n4816, n4817, n4818, n4819, n4820, n4821,
         n4822, n4823, n4824, n4825, n4826, n4827, n4828, n4829, n4830, n4831,
         n4832, n4833, n4834, n4835, n4836, n4837, n4838, n4839, n4840, n4841,
         n4842, n4843, n4844, n4845, n4846, n4847, n4848, n4849, n4850, n4851,
         n4852, n4853;

  DFFHQx4_ASAP7_75t_SL rd_n_reg ( .D(U2537_net_Y), .CLK(clk), .Q(rd_n) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_5__5_ ( .D(U1569_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_5__5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_ALU_Op_r_reg_2_ ( .D(U530_net_Y), .CLK(clk), 
        .Q(i_tv80_core_ALU_Op_r_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL mreq_n_reg ( .D(U2520_net_Y), .CLK(clk), .Q(mreq_n) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_5__6_ ( .D(U1568_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_5__6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_ALU_Op_r_reg_3_ ( .D(U549_net_Y), .CLK(clk), 
        .Q(i_tv80_core_ALU_Op_r_reg_3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_3__7_ ( .D(U1549_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_3__7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusB_reg_2_ ( .D(U289_net_Y), .CLK(clk), 
        .Q(i_tv80_core_BusB_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_3__4_ ( .D(U1552_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_3__4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusB_reg_5_ ( .D(U266_net_Y), .CLK(clk), 
        .Q(i_tv80_core_BusB_reg_5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_TmpAddr_reg_9_ ( .D(U1072_net_Y), .CLK(clk), 
        .Q(i_tv80_core_TmpAddr_reg_9__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_5__4_ ( .D(U1570_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_5__4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_TmpAddr_reg_8_ ( .D(U1068_net_Y), .CLK(clk), 
        .Q(i_tv80_core_TmpAddr_reg_8__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusB_reg_0_ ( .D(U273_net_Y), .CLK(clk), 
        .Q(i_tv80_core_BusB_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_5__1_ ( .D(U1573_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_5__1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_ACC_reg_6_ ( .D(U828_net_Y), .CLK(clk), .Q(
        i_tv80_core_ACC_reg_6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_TmpAddr_reg_7_ ( .D(U1058_net_Y), .CLK(clk), 
        .Q(i_tv80_core_TmpAddr_reg_7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusB_reg_3_ ( .D(U296_net_Y), .CLK(clk), 
        .Q(i_tv80_core_BusB_reg_3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_5__2_ ( .D(U1572_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_5__2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_ACC_reg_7_ ( .D(U832_net_Y), .CLK(clk), .Q(
        i_tv80_core_ACC_reg_7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_TmpAddr_reg_6_ ( .D(U1055_net_Y), .CLK(clk), 
        .Q(i_tv80_core_TmpAddr_reg_6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusB_reg_6_ ( .D(U259_net_Y), .CLK(clk), 
        .Q(i_tv80_core_BusB_reg_6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_rfsh_n_reg ( .D(U484_net_Y), .CLK(clk), .Q(
        rfsh_n) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_5__7_ ( .D(U1567_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_5__7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Fp_reg_1_ ( .D(U168_net_Y), .CLK(clk), .Q(
        i_tv80_core_Fp_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_TmpAddr_reg_5_ ( .D(U1051_net_Y), .CLK(clk), 
        .Q(i_tv80_core_TmpAddr_reg_5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Arith16_r_reg ( .D(U454_net_Y), .CLK(clk), 
        .Q(i_tv80_core_Arith16_r_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_5__0_ ( .D(U1574_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_5__0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_TmpAddr_reg_4_ ( .D(U1049_net_Y), .CLK(clk), 
        .Q(i_tv80_core_TmpAddr_reg_4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusB_reg_4_ ( .D(U303_net_Y), .CLK(clk), 
        .Q(i_tv80_core_BusB_reg_4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusReq_s_reg ( .D(U377_net_Y), .CLK(clk), 
        .Q(i_tv80_core_BusReq_s_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_NMICycle_reg ( .D(U1018_net_Y), .CLK(clk), 
        .Q(i_tv80_core_NMICycle_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_ACC_reg_2_ ( .D(U812_net_Y), .CLK(clk), .Q(
        i_tv80_core_ACC_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_TmpAddr_reg_3_ ( .D(U1047_net_Y), .CLK(clk), 
        .Q(i_tv80_core_TmpAddr_reg_3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusB_reg_7_ ( .D(U211_net_Y), .CLK(clk), 
        .Q(i_tv80_core_BusB_reg_7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_ACC_reg_3_ ( .D(U816_net_Y), .CLK(clk), .Q(
        i_tv80_core_ACC_reg_3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Fp_reg_2_ ( .D(U170_net_Y), .CLK(clk), .Q(
        i_tv80_core_Fp_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_TmpAddr_reg_2_ ( .D(U1044_net_Y), .CLK(clk), 
        .Q(i_tv80_core_TmpAddr_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_5__3_ ( .D(U1571_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_5__3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_ACC_reg_4_ ( .D(U820_net_Y), .CLK(clk), .Q(
        i_tv80_core_ACC_reg_4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Fp_reg_5_ ( .D(U176_net_Y), .CLK(clk), .Q(
        i_tv80_core_Fp_reg_5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_TmpAddr_reg_1_ ( .D(U1041_net_Y), .CLK(clk), 
        .Q(i_tv80_core_TmpAddr_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_ACC_reg_5_ ( .D(U824_net_Y), .CLK(clk), .Q(
        i_tv80_core_ACC_reg_5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Fp_reg_0_ ( .D(U166_net_Y), .CLK(clk), .Q(
        i_tv80_core_Fp_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_TmpAddr_reg_0_ ( .D(U1038_net_Y), .CLK(clk), 
        .Q(i_tv80_core_TmpAddr_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Fp_reg_3_ ( .D(U172_net_Y), .CLK(clk), .Q(
        i_tv80_core_Fp_reg_3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_ISet_reg_0_ ( .D(U490_net_Y), .CLK(clk), 
        .Q(i_tv80_core_ISet_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Fp_reg_6_ ( .D(U178_net_Y), .CLK(clk), .Q(
        i_tv80_core_Fp_reg_6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_ISet_reg_1_ ( .D(U491_net_Y), .CLK(clk), 
        .Q(i_tv80_core_ISet_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Ap_reg_4_ ( .D(U899_net_Y), .CLK(clk), .Q(
        i_tv80_core_Ap_reg_4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_ACC_reg_0_ ( .D(U808_net_Y), .CLK(clk), .Q(
        i_tv80_core_ACC_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Auto_Wait_t1_reg ( .D(U576_net_Y), .CLK(clk), .Q(i_tv80_core_Auto_Wait_t1_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Ap_reg_5_ ( .D(U901_net_Y), .CLK(clk), .Q(
        i_tv80_core_Ap_reg_5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_ACC_reg_1_ ( .D(U804_net_Y), .CLK(clk), .Q(
        i_tv80_core_ACC_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Fp_reg_4_ ( .D(U174_net_Y), .CLK(clk), .Q(
        i_tv80_core_Fp_reg_4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_XY_State_reg_1_ ( .D(U1112_net_Y), .CLK(clk), .Q(i_tv80_core_XY_State_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Ap_reg_6_ ( .D(U903_net_Y), .CLK(clk), .Q(
        i_tv80_core_Ap_reg_6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Fp_reg_7_ ( .D(U180_net_Y), .CLK(clk), .Q(
        i_tv80_core_Fp_reg_7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Ap_reg_7_ ( .D(U905_net_Y), .CLK(clk), .Q(
        i_tv80_core_Ap_reg_7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Ap_reg_0_ ( .D(U891_net_Y), .CLK(clk), .Q(
        i_tv80_core_Ap_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_XY_State_reg_0_ ( .D(U1110_net_Y), .CLK(clk), .Q(i_tv80_core_XY_State_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Ap_reg_1_ ( .D(U893_net_Y), .CLK(clk), .Q(
        i_tv80_core_Ap_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Ap_reg_2_ ( .D(U895_net_Y), .CLK(clk), .Q(
        i_tv80_core_Ap_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Ap_reg_3_ ( .D(U897_net_Y), .CLK(clk), .Q(
        i_tv80_core_Ap_reg_3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_0__7_ ( .D(U1653_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_0__7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_1__1_ ( .D(U1537_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_1__1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_0__6_ ( .D(U1654_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_0__6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_1__2_ ( .D(U1536_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_1__2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_0__5_ ( .D(U1655_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_0__5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Alternate_reg ( .D(U485_net_Y), .CLK(clk), 
        .Q(i_tv80_core_Alternate_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_0__4_ ( .D(U1656_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_0__4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_1__0_ ( .D(U1538_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_1__0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_IncDecZ_reg ( .D(U498_net_Y), .CLK(clk), 
        .Q(i_tv80_core_IncDecZ_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_0__3_ ( .D(U1657_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_0__3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_1__5_ ( .D(U1533_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_1__5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_2__7_ ( .D(U1671_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_2__7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_0__2_ ( .D(U1658_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_0__2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_1__6_ ( .D(U1532_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_1__6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_2__6_ ( .D(U1672_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_2__6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_0__1_ ( .D(U1659_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_0__1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_1__3_ ( .D(U1535_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_1__3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_0__0_ ( .D(U1660_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_0__0__net_Q) );
  DFFHQx4_ASAP7_75t_SL di_reg_reg_0_ ( .D(U105_net_Y), .CLK(clk), .Q(
        di_reg_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_1__4_ ( .D(U1534_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_1__4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_PreserveC_r_reg ( .D(U472_net_Y), .CLK(clk), 
        .Q(i_tv80_core_PreserveC_r_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL di_reg_reg_1_ ( .D(U106_net_Y), .CLK(clk), .Q(
        di_reg_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_2__3_ ( .D(U1675_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_2__3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_IntE_FF2_reg ( .D(U410_net_Y), .CLK(clk), 
        .Q(i_tv80_core_IntE_FF2_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL di_reg_reg_2_ ( .D(U107_net_Y), .CLK(clk), .Q(
        di_reg_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_2__2_ ( .D(U1676_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_2__2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_3__6_ ( .D(U1681_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_3__6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_1__7_ ( .D(U1531_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_1__7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_XY_Ind_reg ( .D(U488_net_Y), .CLK(clk), .Q(
        i_tv80_core_XY_Ind_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL di_reg_reg_3_ ( .D(U108_net_Y), .CLK(clk), .Q(
        di_reg_reg_3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_2__5_ ( .D(U1673_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_2__5__net_Q) );
  DFFHQx4_ASAP7_75t_SL di_reg_reg_4_ ( .D(U109_net_Y), .CLK(clk), .Q(
        di_reg_reg_4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_2__4_ ( .D(U1674_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_2__4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_PC_reg_15_ ( .D(U386_net_Y), .CLK(clk), .Q(
        i_tv80_core_PC_reg_15__net_Q) );
  DFFHQx4_ASAP7_75t_SL di_reg_reg_5_ ( .D(U110_net_Y), .CLK(clk), .Q(
        di_reg_reg_5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_PC_reg_14_ ( .D(U1165_net_Y), .CLK(clk), 
        .Q(i_tv80_core_PC_reg_14__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_3__5_ ( .D(U1682_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_3__5__net_Q) );
  DFFHQx4_ASAP7_75t_SL di_reg_reg_6_ ( .D(U111_net_Y), .CLK(clk), .Q(
        di_reg_reg_6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_PC_reg_13_ ( .D(U1172_net_Y), .CLK(clk), 
        .Q(i_tv80_core_PC_reg_13__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_3__2_ ( .D(U1685_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_3__2__net_Q) );
  DFFHQx4_ASAP7_75t_SL di_reg_reg_7_ ( .D(U112_net_Y), .CLK(clk), .Q(
        di_reg_reg_7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_2__1_ ( .D(U1677_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_2__1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegAddrC_reg_2_ ( .D(U240_net_Y), .CLK(clk), 
        .Q(i_tv80_core_RegAddrC_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_PC_reg_12_ ( .D(U1179_net_Y), .CLK(clk), 
        .Q(i_tv80_core_PC_reg_12__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_3__7_ ( .D(U1680_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_3__7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_2__0_ ( .D(U1678_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_2__0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_F_reg_0_ ( .D(U631_net_Y), .CLK(clk), .Q(
        i_tv80_core_F_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_PC_reg_11_ ( .D(U1186_net_Y), .CLK(clk), 
        .Q(i_tv80_core_PC_reg_11__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_3__4_ ( .D(U1683_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_3__4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_F_reg_3_ ( .D(U727_net_Y), .CLK(clk), .Q(
        i_tv80_core_F_reg_3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_PC_reg_10_ ( .D(U1193_net_Y), .CLK(clk), 
        .Q(i_tv80_core_PC_reg_10__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_3__1_ ( .D(U1686_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_3__1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Pre_XY_F_M_reg_0_ ( .D(U1133_net_Y), .CLK(
        clk), .Q(i_tv80_core_Pre_XY_F_M_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegBusA_r_reg_14_ ( .D(U234_net_X), .CLK(
        clk), .Q(i_tv80_core_RegBusA_r_reg_14__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Z16_r_reg ( .D(U494_net_Y), .CLK(clk), .Q(
        i_tv80_core_Z16_r_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_F_reg_1_ ( .D(U647_net_Y), .CLK(clk), .Q(
        i_tv80_core_F_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_3__3_ ( .D(U1684_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_3__3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegBusA_r_reg_15_ ( .D(U235_net_X), .CLK(
        clk), .Q(i_tv80_core_RegBusA_r_reg_15__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_F_reg_4_ ( .D(U653_net_Y), .CLK(clk), .Q(
        i_tv80_core_F_reg_4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegAddrC_reg_1_ ( .D(U239_net_Y), .CLK(clk), 
        .Q(i_tv80_core_RegAddrC_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusAck_reg ( .D(U442_net_Y), .CLK(clk), .Q(
        i_tv80_core_BusAck_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_3__0_ ( .D(U1687_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_3__0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_F_reg_7_ ( .D(U391_net_Y), .CLK(clk), .Q(
        i_tv80_core_F_reg_7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Pre_XY_F_M_reg_1_ ( .D(U1137_net_Y), .CLK(
        clk), .Q(i_tv80_core_Pre_XY_F_M_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegAddrC_reg_0_ ( .D(U236_net_Y), .CLK(clk), 
        .Q(i_tv80_core_RegAddrC_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_tstate_reg_0_ ( .D(U433_net_Y), .CLK(clk), 
        .Q(i_tv80_core_tstate_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_F_reg_2_ ( .D(U670_net_X), .CLK(clk), .Q(
        i_tv80_core_F_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_tstate_reg_1_ ( .D(U431_net_Y), .CLK(clk), 
        .Q(i_tv80_core_tstate_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegBusA_r_reg_10_ ( .D(U230_net_X), .CLK(
        clk), .Q(i_tv80_core_RegBusA_r_reg_10__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_4__3_ ( .D(U1693_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_4__3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_PC_reg_6_ ( .D(U1219_net_X), .CLK(clk), .Q(
        i_tv80_core_PC_reg_6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegAddrB_r_reg_2_ ( .D(U247_net_Y), .CLK(
        clk), .Q(i_tv80_core_RegAddrB_r_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_F_reg_5_ ( .D(U736_net_Y), .CLK(clk), .Q(
        i_tv80_core_F_reg_5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegBusA_r_reg_11_ ( .D(U231_net_X), .CLK(
        clk), .Q(i_tv80_core_RegBusA_r_reg_11__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_4__2_ ( .D(U1694_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_4__2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_PC_reg_7_ ( .D(U1216_net_Y), .CLK(clk), .Q(
        i_tv80_core_PC_reg_7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Pre_XY_F_M_reg_2_ ( .D(U1135_net_Y), .CLK(
        clk), .Q(i_tv80_core_Pre_XY_F_M_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegBusA_r_reg_12_ ( .D(U232_net_X), .CLK(
        clk), .Q(i_tv80_core_RegBusA_r_reg_12__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_4__1_ ( .D(U1695_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_4__1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_PC_reg_4_ ( .D(U1225_net_Y), .CLK(clk), .Q(
        i_tv80_core_PC_reg_4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegBusA_r_reg_13_ ( .D(U233_net_X), .CLK(
        clk), .Q(i_tv80_core_RegBusA_r_reg_13__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_4__0_ ( .D(U1696_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_4__0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_PC_reg_5_ ( .D(U1222_net_X), .CLK(clk), .Q(
        i_tv80_core_PC_reg_5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_F_reg_6_ ( .D(U762_net_Y), .CLK(clk), .Q(
        i_tv80_core_F_reg_6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_IntCycle_reg ( .D(U425_net_Y), .CLK(clk), 
        .Q(i_tv80_core_IntCycle_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_4__7_ ( .D(U1689_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_4__7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_PC_reg_2_ ( .D(U1231_net_X), .CLK(clk), .Q(
        i_tv80_core_PC_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BTR_r_reg ( .D(U382_net_Y), .CLK(clk), .Q(
        i_tv80_core_BTR_r_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_6__3_ ( .D(U1711_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_6__3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_tstate_reg_2_ ( .D(n4), .CLK(clk), .Q(
        i_tv80_core_tstate_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_4__6_ ( .D(U1690_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_4__6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_PC_reg_3_ ( .D(U1228_net_Y), .CLK(clk), .Q(
        i_tv80_core_PC_reg_3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegAddrB_r_reg_1_ ( .D(U219_net_X), .CLK(
        clk), .Q(i_tv80_core_RegAddrB_r_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_6__2_ ( .D(U1712_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_6__2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_4__5_ ( .D(U1691_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_4__5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_PC_reg_0_ ( .D(U1162_net_Y), .CLK(clk), .Q(
        i_tv80_core_PC_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegAddrB_r_reg_0_ ( .D(n207), .CLK(clk), 
        .Q(i_tv80_core_RegAddrB_r_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_4__4_ ( .D(U1692_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_4__4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_PC_reg_1_ ( .D(U1234_net_X), .CLK(clk), .Q(
        i_tv80_core_PC_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_6__7_ ( .D(U1707_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_6__7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_6__6_ ( .D(U1708_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_6__6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_7__2_ ( .D(U1869_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_7__2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusA_reg_3_ ( .D(U923_net_Y), .CLK(clk), 
        .Q(i_tv80_core_BusA_reg_3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_6__1_ ( .D(U1713_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_6__1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusA_reg_0_ ( .D(U911_net_Y), .CLK(clk), 
        .Q(i_tv80_core_BusA_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_6__0_ ( .D(U1714_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_6__0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_TmpAddr_reg_15_ ( .D(U1096_net_Y), .CLK(clk), .Q(i_tv80_core_TmpAddr_reg_15__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_7__1_ ( .D(U1895_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_7__1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusA_reg_2_ ( .D(U919_net_Y), .CLK(clk), 
        .Q(i_tv80_core_BusA_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_IStatus_reg_0_ ( .D(U444_net_Y), .CLK(clk), 
        .Q(i_tv80_core_IStatus_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_PC_reg_8_ ( .D(U1207_net_Y), .CLK(clk), .Q(
        i_tv80_core_PC_reg_8__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_7__6_ ( .D(U1748_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_7__6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusA_reg_7_ ( .D(U939_net_Y), .CLK(clk), 
        .Q(i_tv80_core_BusA_reg_7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_R_reg_4_ ( .D(U871_net_Y), .CLK(clk), .Q(
        i_tv80_core_R_reg_4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_4__7_ ( .D(U1558_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_4__7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_SP_reg_15_ ( .D(U616_net_Y), .CLK(clk), .Q(
        i_tv80_core_SP_reg_15__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_6__5_ ( .D(U1709_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_6__5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_TmpAddr_reg_14_ ( .D(U1092_net_Y), .CLK(clk), .Q(i_tv80_core_TmpAddr_reg_14__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_PC_reg_9_ ( .D(U1200_net_Y), .CLK(clk), .Q(
        i_tv80_core_PC_reg_9__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusA_reg_4_ ( .D(U927_net_Y), .CLK(clk), 
        .Q(i_tv80_core_BusA_reg_4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_R_reg_7_ ( .D(U885_net_Y), .CLK(clk), .Q(
        i_tv80_core_R_reg_7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_7__3_ ( .D(U1839_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_7__3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_4__6_ ( .D(U1559_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_4__6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Read_To_Reg_r_reg_1_ ( .D(U555_net_Y), 
        .CLK(clk), .Q(i_tv80_core_Read_To_Reg_r_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_6__4_ ( .D(U1710_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_6__4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_TmpAddr_reg_11_ ( .D(U1080_net_Y), .CLK(clk), .Q(i_tv80_core_TmpAddr_reg_11__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_7__0_ ( .D(U1927_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_7__0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusA_reg_1_ ( .D(U915_net_Y), .CLK(clk), 
        .Q(i_tv80_core_BusA_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_4__5_ ( .D(U1560_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_4__5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Read_To_Reg_r_reg_0_ ( .D(U554_net_Y), 
        .CLK(clk), .Q(i_tv80_core_Read_To_Reg_r_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_TmpAddr_reg_12_ ( .D(U1084_net_Y), .CLK(clk), .Q(i_tv80_core_TmpAddr_reg_12__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_7__5_ ( .D(U1779_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_7__5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusA_reg_6_ ( .D(U935_net_Y), .CLK(clk), 
        .Q(i_tv80_core_BusA_reg_6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_R_reg_5_ ( .D(U873_net_Y), .CLK(clk), .Q(
        i_tv80_core_R_reg_5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_4__4_ ( .D(U1561_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_4__4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_1__5_ ( .D(U1664_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_1__5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Read_To_Reg_r_reg_3_ ( .D(U558_net_Y), 
        .CLK(clk), .Q(i_tv80_core_Read_To_Reg_r_reg_3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Halt_FF_reg ( .D(U1022_net_Y), .CLK(clk), 
        .Q(i_tv80_core_Halt_FF_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_R_reg_0_ ( .D(U861_net_Y), .CLK(clk), .Q(
        i_tv80_core_R_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_4__3_ ( .D(U1562_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_4__3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_SP_reg_11_ ( .D(U608_net_Y), .CLK(clk), .Q(
        i_tv80_core_SP_reg_11__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_do_reg_4_ ( .D(U194_net_Y), .CLK(clk), .Q(
        do[4]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_I_reg_6_ ( .D(U1005_net_Y), .CLK(clk), .Q(
        i_tv80_core_I_reg_6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_IStatus_reg_1_ ( .D(U446_net_Y), .CLK(clk), 
        .Q(i_tv80_core_IStatus_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_1__6_ ( .D(U1663_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_1__6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Read_To_Reg_r_reg_2_ ( .D(U556_net_Y), 
        .CLK(clk), .Q(i_tv80_core_Read_To_Reg_r_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_6__7_ ( .D(U1576_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_6__7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_TmpAddr_reg_10_ ( .D(U1076_net_Y), .CLK(clk), .Q(i_tv80_core_TmpAddr_reg_10__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_R_reg_3_ ( .D(U869_net_Y), .CLK(clk), .Q(
        i_tv80_core_R_reg_3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_7__7_ ( .D(U1716_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_7__7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_4__2_ ( .D(U1563_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_4__2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_do_reg_5_ ( .D(U197_net_Y), .CLK(clk), .Q(
        do[5]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_SP_reg_14_ ( .D(U614_net_Y), .CLK(clk), .Q(
        i_tv80_core_SP_reg_14__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_6__6_ ( .D(U1577_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_6__6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_7__4_ ( .D(U1808_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_7__4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusA_reg_5_ ( .D(U931_net_Y), .CLK(clk), 
        .Q(i_tv80_core_BusA_reg_5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_R_reg_6_ ( .D(U877_net_Y), .CLK(clk), .Q(
        i_tv80_core_R_reg_6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_4__1_ ( .D(U1564_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_4__1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Read_To_Reg_r_reg_4_ ( .D(U559_net_Y), 
        .CLK(clk), .Q(i_tv80_core_Read_To_Reg_r_reg_4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_1__4_ ( .D(U1665_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_1__4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_SP_reg_12_ ( .D(U610_net_Y), .CLK(clk), .Q(
        i_tv80_core_SP_reg_12__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_R_reg_1_ ( .D(U863_net_Y), .CLK(clk), .Q(
        i_tv80_core_R_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_4__0_ ( .D(U1565_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_4__0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_I_reg_5_ ( .D(U1003_net_Y), .CLK(clk), .Q(
        i_tv80_core_I_reg_5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Save_ALU_r_reg ( .D(U496_net_Y), .CLK(clk), 
        .Q(i_tv80_core_Save_ALU_r_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_1__1_ ( .D(U1668_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_1__1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_TmpAddr_reg_13_ ( .D(U1088_net_Y), .CLK(clk), .Q(i_tv80_core_TmpAddr_reg_13__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_do_reg_0_ ( .D(U182_net_Y), .CLK(clk), .Q(
        do[0]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_A_reg_6_ ( .D(U1302_net_Y), .CLK(clk), .Q(
        A[6]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_I_reg_2_ ( .D(U997_net_Y), .CLK(clk), .Q(
        i_tv80_core_I_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_1__2_ ( .D(U1667_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_1__2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_6__3_ ( .D(U1580_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_6__3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_do_reg_1_ ( .D(U185_net_Y), .CLK(clk), .Q(
        do[1]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_SP_reg_10_ ( .D(U606_net_Y), .CLK(clk), .Q(
        i_tv80_core_SP_reg_10__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_I_reg_7_ ( .D(U1007_net_Y), .CLK(clk), .Q(
        i_tv80_core_I_reg_7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_1__7_ ( .D(U1662_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_1__7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_6__2_ ( .D(U1581_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_6__2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_R_reg_2_ ( .D(U866_net_Y), .CLK(clk), .Q(
        i_tv80_core_R_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_SP_reg_13_ ( .D(U612_net_Y), .CLK(clk), .Q(
        i_tv80_core_SP_reg_13__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_7__6_ ( .D(U1593_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_7__6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_do_reg_6_ ( .D(U200_net_Y), .CLK(clk), .Q(
        do[6]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_I_reg_4_ ( .D(U1001_net_Y), .CLK(clk), .Q(
        i_tv80_core_I_reg_4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_1__0_ ( .D(U1669_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_1__0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_6__5_ ( .D(U1578_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_6__5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_A_reg_5_ ( .D(U1296_net_Y), .CLK(clk), .Q(
        A[5]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_I_reg_1_ ( .D(U995_net_Y), .CLK(clk), .Q(
        i_tv80_core_I_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_do_reg_7_ ( .D(U203_net_Y), .CLK(clk), .Q(
        do[7]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegBusA_r_reg_8_ ( .D(U228_net_X), .CLK(clk), .Q(i_tv80_core_RegBusA_r_reg_8__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_6__4_ ( .D(U1579_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_6__4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_A_reg_2_ ( .D(U1274_net_Y), .CLK(clk), .Q(
        A[2]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegBusA_r_reg_7_ ( .D(U227_net_X), .CLK(clk), .Q(i_tv80_core_RegBusA_r_reg_7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_7__5_ ( .D(U1601_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_7__5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_A_reg_7_ ( .D(U115_net_Y), .CLK(clk), .Q(
        A[7]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_I_reg_3_ ( .D(U999_net_Y), .CLK(clk), .Q(
        i_tv80_core_I_reg_3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_1__3_ ( .D(U1666_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_1__3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_SP_reg_5_ ( .D(U590_net_Y), .CLK(clk), .Q(
        i_tv80_core_SP_reg_5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_7__2_ ( .D(U1625_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_7__2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_A_reg_4_ ( .D(U1288_net_Y), .CLK(clk), .Q(
        A[4]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_do_reg_2_ ( .D(U188_net_Y), .CLK(clk), .Q(
        do[2]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_I_reg_0_ ( .D(U993_net_Y), .CLK(clk), .Q(
        i_tv80_core_I_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegBusA_r_reg_9_ ( .D(U229_net_X), .CLK(clk), .Q(i_tv80_core_RegBusA_r_reg_9__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_6__1_ ( .D(U1582_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_6__1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_SP_reg_6_ ( .D(U592_net_Y), .CLK(clk), .Q(
        i_tv80_core_SP_reg_6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_A_reg_1_ ( .D(U1268_net_Y), .CLK(clk), .Q(
        A[1]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_do_reg_3_ ( .D(U191_net_Y), .CLK(clk), .Q(
        do[3]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_7__7_ ( .D(U1585_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_7__7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegBusA_r_reg_4_ ( .D(U224_net_X), .CLK(clk), .Q(i_tv80_core_RegBusA_r_reg_4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_6__0_ ( .D(U1583_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_6__0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegAddrA_r_reg_2_ ( .D(U253_net_Y), .CLK(
        clk), .Q(i_tv80_core_RegAddrA_r_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_7__4_ ( .D(U1609_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_7__4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegBusA_r_reg_3_ ( .D(U223_net_X), .CLK(clk), .Q(i_tv80_core_RegBusA_r_reg_3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_SP_reg_4_ ( .D(U588_net_Y), .CLK(clk), .Q(
        i_tv80_core_SP_reg_4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_7__1_ ( .D(U1633_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_7__1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_A_reg_3_ ( .D(U1280_net_Y), .CLK(clk), .Q(
        A[3]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegBusA_r_reg_6_ ( .D(U226_net_X), .CLK(clk), .Q(i_tv80_core_RegBusA_r_reg_6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegAddrA_r_reg_0_ ( .D(n231), .CLK(clk), 
        .Q(i_tv80_core_RegAddrA_r_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_SP_reg_1_ ( .D(U582_net_Y), .CLK(clk), .Q(
        i_tv80_core_SP_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_A_reg_0_ ( .D(U1262_net_Y), .CLK(clk), .Q(
        A[0]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegBusA_r_reg_5_ ( .D(U225_net_X), .CLK(clk), .Q(i_tv80_core_RegBusA_r_reg_5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegAddrA_r_reg_1_ ( .D(U218_net_Y), .CLK(
        clk), .Q(i_tv80_core_RegAddrA_r_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_SP_reg_2_ ( .D(U584_net_Y), .CLK(clk), .Q(
        i_tv80_core_SP_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_7__3_ ( .D(U1617_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_7__3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegBusA_r_reg_0_ ( .D(U220_net_X), .CLK(clk), .Q(i_tv80_core_RegBusA_r_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_SP_reg_7_ ( .D(U594_net_Y), .CLK(clk), .Q(
        i_tv80_core_SP_reg_7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_7__0_ ( .D(U1641_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_7__0__net_Q) );
  DFFHQx4_ASAP7_75t_SL iorq_n_reg ( .D(U2523_net_Y), .CLK(clk), .Q(iorq_n) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_SP_reg_0_ ( .D(U580_net_Y), .CLK(clk), .Q(
        i_tv80_core_SP_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_IntE_FF1_reg ( .D(U417_net_Y), .CLK(clk), 
        .Q(i_tv80_core_IntE_FF1_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegBusA_r_reg_2_ ( .D(U222_net_X), .CLK(clk), .Q(i_tv80_core_RegBusA_r_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_INT_s_reg ( .D(U378_net_Y), .CLK(clk), .Q(
        i_tv80_core_INT_s_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL wr_n_reg ( .D(U2535_net_Y), .CLK(clk), .Q(wr_n) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_RegBusA_r_reg_1_ ( .D(U221_net_X), .CLK(clk), .Q(i_tv80_core_RegBusA_r_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_0__3_ ( .D(U1526_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_0__3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_A_reg_9_ ( .D(U126_net_Y), .CLK(clk), .Q(
        A[9]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_NMI_s_reg ( .D(U1157_net_Y), .CLK(clk), .Q(
        i_tv80_core_NMI_s_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_0__2_ ( .D(U1527_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_0__2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_SP_reg_3_ ( .D(U586_net_Y), .CLK(clk), .Q(
        i_tv80_core_SP_reg_3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_IR_reg_4_ ( .D(U1034_net_Y), .CLK(clk), .Q(
        i_tv80_core_IR_reg_4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_0__1_ ( .D(U1528_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_0__1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_A_reg_14_ ( .D(U151_net_Y), .CLK(clk), .Q(
        A[14]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_0__0_ ( .D(U1529_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_0__0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_SP_reg_9_ ( .D(U604_net_Y), .CLK(clk), .Q(
        i_tv80_core_SP_reg_9__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_A_reg_13_ ( .D(U146_net_Y), .CLK(clk), .Q(
        A[13]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_A_reg_8_ ( .D(U121_net_Y), .CLK(clk), .Q(
        A[8]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_5__1_ ( .D(U1704_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_5__1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_0__7_ ( .D(U1522_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_0__7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_5__2_ ( .D(U1703_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_5__2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_2__3_ ( .D(U1544_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_2__3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_IR_reg_7_ ( .D(U1123_net_Y), .CLK(clk), .Q(
        i_tv80_core_IR_reg_7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_0__6_ ( .D(U1523_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_0__6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_A_reg_15_ ( .D(U157_net_X), .CLK(clk), .Q(
        A[15]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_2__2_ ( .D(U1545_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_2__2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_IR_reg_0_ ( .D(U1026_net_Y), .CLK(clk), .Q(
        i_tv80_core_IR_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_0__5_ ( .D(U1524_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_0__5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_SP_reg_8_ ( .D(U602_net_Y), .CLK(clk), .Q(
        i_tv80_core_SP_reg_8__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_A_reg_10_ ( .D(U131_net_Y), .CLK(clk), .Q(
        A[10]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_5__0_ ( .D(U1705_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_5__0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_IR_reg_5_ ( .D(U1036_net_Y), .CLK(clk), .Q(
        i_tv80_core_IR_reg_5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_m1_n_reg ( .D(U1141_net_Y), .CLK(clk), .Q(
        m1_n) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_0__4_ ( .D(U1525_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_0__4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_5__5_ ( .D(U1700_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_5__5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_IR_reg_6_ ( .D(U1121_net_Y), .CLK(clk), .Q(
        i_tv80_core_IR_reg_6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_5__6_ ( .D(U1699_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_5__6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_A_reg_12_ ( .D(U141_net_Y), .CLK(clk), .Q(
        A[12]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_2__7_ ( .D(U1540_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_2__7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_mcycles_reg_0_ ( .D(U463_net_Y), .CLK(clk), 
        .Q(i_tv80_core_mcycles_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_IR_reg_3_ ( .D(U1032_net_Y), .CLK(clk), .Q(
        i_tv80_core_IR_reg_3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Auto_Wait_t2_reg ( .D(U579_net_Y), .CLK(clk), .Q(i_tv80_core_Auto_Wait_t2_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_A_reg_11_ ( .D(U136_net_Y), .CLK(clk), .Q(
        A[11]) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_5__3_ ( .D(U1702_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_5__3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_2__6_ ( .D(U1541_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_2__6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_3__2_ ( .D(U1554_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_3__2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_5__4_ ( .D(U1701_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_5__4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_2__1_ ( .D(U1546_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_2__1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_IR_reg_1_ ( .D(U1028_net_Y), .CLK(clk), .Q(
        i_tv80_core_IR_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_2__0_ ( .D(U1547_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_2__0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_No_BTR_reg ( .D(U379_net_Y), .CLK(clk), .Q(
        i_tv80_core_No_BTR_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_mcycles_reg_1_ ( .D(U455_net_Y), .CLK(clk), 
        .Q(i_tv80_core_mcycles_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_IR_reg_2_ ( .D(U1030_net_Y), .CLK(clk), .Q(
        i_tv80_core_IR_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_3__1_ ( .D(U1555_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_3__1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsH_reg_5__7_ ( .D(U1698_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsH_reg_5__7__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_mcycle_reg_0_ ( .D(U474_net_Y), .CLK(clk), 
        .Q(i_tv80_core_mcycle_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_3__6_ ( .D(U1550_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_3__6__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_2__5_ ( .D(U1542_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_2__5__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_Oldnmi_n_reg ( .D(n25), .CLK(clk), .Q(
        i_tv80_core_Oldnmi_n_reg_net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_mcycles_reg_2_ ( .D(U399_net_Y), .CLK(clk), 
        .Q(i_tv80_core_mcycles_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_mcycle_reg_1_ ( .D(U477_net_Y), .CLK(clk), 
        .Q(i_tv80_core_mcycle_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_3__3_ ( .D(U1553_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_3__3__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_2__4_ ( .D(U1543_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_2__4__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_mcycle_reg_2_ ( .D(U405_net_Y), .CLK(clk), 
        .Q(i_tv80_core_mcycle_reg_2__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_ALU_Op_r_reg_0_ ( .D(U508_net_Y), .CLK(clk), 
        .Q(i_tv80_core_ALU_Op_r_reg_0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_3__0_ ( .D(U1556_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_3__0__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_BusB_reg_1_ ( .D(U282_net_Y), .CLK(clk), 
        .Q(i_tv80_core_BusB_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_ALU_Op_r_reg_1_ ( .D(U516_net_Y), .CLK(clk), 
        .Q(i_tv80_core_ALU_Op_r_reg_1__net_Q) );
  DFFHQx4_ASAP7_75t_SL i_tv80_core_i_reg_RegsL_reg_3__5_ ( .D(U1551_net_Y), 
        .CLK(clk), .Q(i_tv80_core_i_reg_RegsL_reg_3__5__net_Q) );
  MAJIxp5_ASAP7_75t_SRAM U2718 ( .A(n4538), .B(n4613), .C(n4614), .Y(n4605) );
  INVxp33_ASAP7_75t_SRAM U2719 ( .A(n4538), .Y(n4555) );
  MAJx2_ASAP7_75t_SRAM U2720 ( .A(n4571), .B(n4572), .C(n4538), .Y(n4556) );
  MAJx2_ASAP7_75t_SRAM U2721 ( .A(n4579), .B(n4580), .C(n4538), .Y(n4571) );
  MAJx2_ASAP7_75t_SRAM U2722 ( .A(n4587), .B(n4588), .C(n4538), .Y(n4579) );
  MAJx2_ASAP7_75t_SRAM U2723 ( .A(n4596), .B(n4597), .C(n4538), .Y(n4587) );
  MAJIxp5_ASAP7_75t_SRAM U2724 ( .A(n4556), .B(n4557), .C(n4538), .Y(n4553) );
  MAJx2_ASAP7_75t_SRAM U2725 ( .A(n4556), .B(n4538), .C(n4557), .Y(n4559) );
  FAx1_ASAP7_75t_SRAM U2726 ( .A(n4537), .B(n4538), .CI(n4539), .SN(n2775) );
  FAx1_ASAP7_75t_SRAM U2727 ( .A(n4554), .B(n4538), .CI(n4559), .SN(n2780) );
  FAx1_ASAP7_75t_SRAM U2728 ( .A(n4556), .B(n4538), .CI(n4566), .SN(n2784) );
  FAx1_ASAP7_75t_SRAM U2729 ( .A(n4571), .B(n4538), .CI(n4574), .SN(n2788) );
  FAx1_ASAP7_75t_SRAM U2730 ( .A(n4579), .B(n4538), .CI(n4582), .SN(n2792) );
  FAx1_ASAP7_75t_SRAM U2731 ( .A(n4587), .B(n4538), .CI(n4591), .SN(n2796) );
  FAx1_ASAP7_75t_SRAM U2732 ( .A(n4596), .B(n4538), .CI(n4599), .SN(n2800) );
  FAx1_ASAP7_75t_SRAM U2733 ( .A(n4605), .B(n4538), .CI(n4608), .SN(n2804) );
  FAx1_ASAP7_75t_SRAM U2734 ( .A(n4614), .B(n4538), .CI(n4613), .SN(n2823) );
  AOI21xp5_ASAP7_75t_SL U2735 ( .A1(n4625), .A2(n2403), .B(n4626), .Y(n4538)
         );
  NOR2xp33_ASAP7_75t_SRAM U2736 ( .A(n4677), .B(n2364), .Y(n4626) );
  INVx1_ASAP7_75t_L U2737 ( .A(n2363), .Y(n4) );
  AOI31xp33_ASAP7_75t_L U2738 ( .A1(n2364), .A2(n2365), .A3(n2366), .B(n2367), 
        .Y(n2363) );
  O2A1O1Ixp33_ASAP7_75t_L U2739 ( .A1(n2368), .A2(
        i_tv80_core_tstate_reg_1__net_Q), .B(n2369), .C(n2370), .Y(n2367) );
  INVx1_ASAP7_75t_L U2740 ( .A(n2371), .Y(n25) );
  OAI322xp33_ASAP7_75t_L U2741 ( .A1(n2372), .A2(n2373), .A3(n2374), .B1(
        i_tv80_core_BusAck_reg_net_Q), .B2(n2375), .C1(busak_n), .C2(n2376), 
        .Y(n231) );
  INVx1_ASAP7_75t_L U2742 ( .A(n2377), .Y(n207) );
  AOI322xp5_ASAP7_75t_L U2743 ( .A1(n2378), .A2(n2379), .A3(n2380), .B1(
        busak_n), .B2(n2381), .C1(i_tv80_core_BusAck_reg_net_Q), .C2(
        i_tv80_core_RegAddrB_r_reg_0__net_Q), .Y(n2377) );
  OAI22xp33_ASAP7_75t_L U2744 ( .A1(n2382), .A2(n2383), .B1(n2384), .B2(n2385), 
        .Y(U999_net_Y) );
  OAI22xp33_ASAP7_75t_L U2745 ( .A1(n2382), .A2(n2386), .B1(n2384), .B2(n2387), 
        .Y(U997_net_Y) );
  OAI22xp33_ASAP7_75t_L U2746 ( .A1(n2382), .A2(n2388), .B1(n2384), .B2(n2389), 
        .Y(U995_net_Y) );
  OAI22xp33_ASAP7_75t_L U2747 ( .A1(n2382), .A2(n2390), .B1(n2384), .B2(n2391), 
        .Y(U993_net_Y) );
  OAI221xp5_ASAP7_75t_L U2748 ( .A1(n2392), .A2(n2393), .B1(n2394), .B2(n2395), 
        .C(n2396), .Y(U939_net_Y) );
  AOI22xp33_ASAP7_75t_L U2749 ( .A1(i_tv80_core_BusA_reg_7__net_Q), .A2(n2397), 
        .B1(n2398), .B2(n2399), .Y(n2396) );
  OAI221xp5_ASAP7_75t_L U2750 ( .A1(n2400), .A2(n2401), .B1(n2402), .B2(n2403), 
        .C(n2404), .Y(n2399) );
  AOI22xp33_ASAP7_75t_L U2751 ( .A1(i_tv80_core_SP_reg_7__net_Q), .A2(n2405), 
        .B1(i_tv80_core_SP_reg_15__net_Q), .B2(n2406), .Y(n2404) );
  OAI221xp5_ASAP7_75t_L U2752 ( .A1(n2407), .A2(n2393), .B1(n2408), .B2(n2395), 
        .C(n2409), .Y(U935_net_Y) );
  AOI22xp33_ASAP7_75t_L U2753 ( .A1(i_tv80_core_BusA_reg_6__net_Q), .A2(n2397), 
        .B1(n2398), .B2(n2410), .Y(n2409) );
  OAI221xp5_ASAP7_75t_L U2754 ( .A1(n2400), .A2(n2411), .B1(n2402), .B2(n2412), 
        .C(n2413), .Y(n2410) );
  AOI22xp33_ASAP7_75t_L U2755 ( .A1(i_tv80_core_SP_reg_6__net_Q), .A2(n2405), 
        .B1(i_tv80_core_SP_reg_14__net_Q), .B2(n2406), .Y(n2413) );
  OAI221xp5_ASAP7_75t_L U2756 ( .A1(n2414), .A2(n2393), .B1(n2415), .B2(n2395), 
        .C(n2416), .Y(U931_net_Y) );
  AOI22xp33_ASAP7_75t_L U2757 ( .A1(i_tv80_core_BusA_reg_5__net_Q), .A2(n2397), 
        .B1(n2398), .B2(n2417), .Y(n2416) );
  OAI221xp5_ASAP7_75t_L U2758 ( .A1(n2400), .A2(n2418), .B1(n2402), .B2(n2419), 
        .C(n2420), .Y(n2417) );
  AOI22xp33_ASAP7_75t_L U2759 ( .A1(i_tv80_core_SP_reg_5__net_Q), .A2(n2405), 
        .B1(i_tv80_core_SP_reg_13__net_Q), .B2(n2406), .Y(n2420) );
  OAI221xp5_ASAP7_75t_L U2760 ( .A1(n2421), .A2(n2393), .B1(n2422), .B2(n2395), 
        .C(n2423), .Y(U927_net_Y) );
  AOI22xp33_ASAP7_75t_L U2761 ( .A1(i_tv80_core_BusA_reg_4__net_Q), .A2(n2397), 
        .B1(n2398), .B2(n2424), .Y(n2423) );
  OAI221xp5_ASAP7_75t_L U2762 ( .A1(n2400), .A2(n2425), .B1(n2402), .B2(n2426), 
        .C(n2427), .Y(n2424) );
  AOI22xp33_ASAP7_75t_L U2763 ( .A1(i_tv80_core_SP_reg_4__net_Q), .A2(n2405), 
        .B1(i_tv80_core_SP_reg_12__net_Q), .B2(n2406), .Y(n2427) );
  OAI221xp5_ASAP7_75t_L U2764 ( .A1(n2428), .A2(n2393), .B1(n2429), .B2(n2395), 
        .C(n2430), .Y(U923_net_Y) );
  AOI22xp33_ASAP7_75t_L U2765 ( .A1(i_tv80_core_BusA_reg_3__net_Q), .A2(n2397), 
        .B1(n2398), .B2(n2431), .Y(n2430) );
  OAI221xp5_ASAP7_75t_L U2766 ( .A1(n2385), .A2(n2400), .B1(n2402), .B2(n2432), 
        .C(n2433), .Y(n2431) );
  AOI22xp33_ASAP7_75t_L U2767 ( .A1(i_tv80_core_SP_reg_3__net_Q), .A2(n2405), 
        .B1(i_tv80_core_SP_reg_11__net_Q), .B2(n2406), .Y(n2433) );
  OAI221xp5_ASAP7_75t_L U2768 ( .A1(n2434), .A2(n2393), .B1(n2435), .B2(n2395), 
        .C(n2436), .Y(U919_net_Y) );
  AOI22xp33_ASAP7_75t_L U2769 ( .A1(i_tv80_core_BusA_reg_2__net_Q), .A2(n2397), 
        .B1(n2398), .B2(n2437), .Y(n2436) );
  OAI221xp5_ASAP7_75t_L U2770 ( .A1(n2387), .A2(n2400), .B1(n2402), .B2(n2438), 
        .C(n2439), .Y(n2437) );
  AOI22xp33_ASAP7_75t_L U2771 ( .A1(i_tv80_core_SP_reg_2__net_Q), .A2(n2405), 
        .B1(i_tv80_core_SP_reg_10__net_Q), .B2(n2406), .Y(n2439) );
  OAI221xp5_ASAP7_75t_L U2772 ( .A1(n2440), .A2(n2393), .B1(n2441), .B2(n2395), 
        .C(n2442), .Y(U915_net_Y) );
  AOI22xp33_ASAP7_75t_L U2773 ( .A1(i_tv80_core_BusA_reg_1__net_Q), .A2(n2397), 
        .B1(n2398), .B2(n2443), .Y(n2442) );
  OAI221xp5_ASAP7_75t_L U2774 ( .A1(n2389), .A2(n2400), .B1(n2402), .B2(n2444), 
        .C(n2445), .Y(n2443) );
  AOI22xp33_ASAP7_75t_L U2775 ( .A1(i_tv80_core_SP_reg_1__net_Q), .A2(n2405), 
        .B1(i_tv80_core_SP_reg_9__net_Q), .B2(n2406), .Y(n2445) );
  OAI221xp5_ASAP7_75t_L U2776 ( .A1(n2446), .A2(n2393), .B1(n2447), .B2(n2395), 
        .C(n2448), .Y(U911_net_Y) );
  AOI22xp33_ASAP7_75t_L U2777 ( .A1(i_tv80_core_BusA_reg_0__net_Q), .A2(n2397), 
        .B1(n2398), .B2(n2449), .Y(n2448) );
  OAI221xp5_ASAP7_75t_L U2778 ( .A1(n2391), .A2(n2400), .B1(n2402), .B2(n2450), 
        .C(n2451), .Y(n2449) );
  AOI22xp33_ASAP7_75t_L U2779 ( .A1(i_tv80_core_SP_reg_0__net_Q), .A2(n2405), 
        .B1(i_tv80_core_SP_reg_8__net_Q), .B2(n2406), .Y(n2451) );
  NOR3xp33_ASAP7_75t_L U2780 ( .A(n2452), .B(n2453), .C(n2454), .Y(n2405) );
  NAND3xp33_ASAP7_75t_L U2781 ( .A(n2454), .B(n2455), .C(n2456), .Y(n2402) );
  NAND3xp33_ASAP7_75t_L U2782 ( .A(n2454), .B(n2455), .C(n2452), .Y(n2400) );
  NAND2xp33_ASAP7_75t_L U2783 ( .A(n2457), .B(n2452), .Y(n2395) );
  NAND2xp33_ASAP7_75t_L U2784 ( .A(n2456), .B(n2457), .Y(n2393) );
  AOI211xp5_ASAP7_75t_L U2785 ( .A1(n2455), .A2(n2454), .B(n2458), .C(n2397), 
        .Y(n2457) );
  INVx1_ASAP7_75t_L U2786 ( .A(n2398), .Y(n2397) );
  AOI21xp33_ASAP7_75t_L U2787 ( .A1(n2454), .A2(n2406), .B(
        i_tv80_core_BusAck_reg_net_Q), .Y(n2398) );
  NOR2xp33_ASAP7_75t_L U2788 ( .A(n2453), .B(n2456), .Y(n2406) );
  INVx1_ASAP7_75t_L U2789 ( .A(n2458), .Y(n2453) );
  AO221x1_ASAP7_75t_L U2790 ( .A1(n2459), .A2(i_tv80_core_Ap_reg_7__net_Q), 
        .B1(i_tv80_core_ACC_reg_7__net_Q), .B2(n2460), .C(n2461), .Y(
        U905_net_Y) );
  AO221x1_ASAP7_75t_L U2791 ( .A1(n2459), .A2(i_tv80_core_Ap_reg_6__net_Q), 
        .B1(i_tv80_core_ACC_reg_6__net_Q), .B2(n2460), .C(n2461), .Y(
        U903_net_Y) );
  AO221x1_ASAP7_75t_L U2792 ( .A1(n2459), .A2(i_tv80_core_Ap_reg_5__net_Q), 
        .B1(i_tv80_core_ACC_reg_5__net_Q), .B2(n2460), .C(n2461), .Y(
        U901_net_Y) );
  AO221x1_ASAP7_75t_L U2793 ( .A1(n2459), .A2(i_tv80_core_Ap_reg_4__net_Q), 
        .B1(i_tv80_core_ACC_reg_4__net_Q), .B2(n2460), .C(n2461), .Y(
        U899_net_Y) );
  AO221x1_ASAP7_75t_L U2794 ( .A1(n2459), .A2(i_tv80_core_Ap_reg_3__net_Q), 
        .B1(i_tv80_core_ACC_reg_3__net_Q), .B2(n2460), .C(n2461), .Y(
        U897_net_Y) );
  AO221x1_ASAP7_75t_L U2795 ( .A1(n2459), .A2(i_tv80_core_Ap_reg_2__net_Q), 
        .B1(i_tv80_core_ACC_reg_2__net_Q), .B2(n2460), .C(n2461), .Y(
        U895_net_Y) );
  AO221x1_ASAP7_75t_L U2796 ( .A1(n2459), .A2(i_tv80_core_Ap_reg_1__net_Q), 
        .B1(i_tv80_core_ACC_reg_1__net_Q), .B2(n2460), .C(n2461), .Y(
        U893_net_Y) );
  AO221x1_ASAP7_75t_L U2797 ( .A1(n2459), .A2(i_tv80_core_Ap_reg_0__net_Q), 
        .B1(i_tv80_core_ACC_reg_0__net_Q), .B2(n2460), .C(n2461), .Y(
        U891_net_Y) );
  OAI32xp33_ASAP7_75t_L U2798 ( .A1(n2462), .A2(n2463), .A3(n2401), .B1(n2464), 
        .B2(n2465), .Y(U885_net_Y) );
  INVx1_ASAP7_75t_L U2799 ( .A(n2462), .Y(n2464) );
  OAI321xp33_ASAP7_75t_L U2800 ( .A1(i_tv80_core_R_reg_6__net_Q), .A2(n2466), 
        .A3(n2467), .B1(n2411), .B2(n2468), .C(n2469), .Y(U877_net_Y) );
  A2O1A1Ixp33_ASAP7_75t_L U2801 ( .A1(n2470), .A2(n2466), .B(n2471), .C(
        i_tv80_core_R_reg_6__net_Q), .Y(n2469) );
  NAND2xp33_ASAP7_75t_L U2802 ( .A(n2470), .B(n2472), .Y(n2467) );
  INVx1_ASAP7_75t_L U2803 ( .A(n2473), .Y(U873_net_Y) );
  AOI322xp5_ASAP7_75t_L U2804 ( .A1(n2466), .A2(n2472), .A3(n2470), .B1(n2471), 
        .B2(i_tv80_core_R_reg_5__net_Q), .C1(i_tv80_core_ACC_reg_5__net_Q), 
        .C2(n2474), .Y(n2473) );
  OAI21xp33_ASAP7_75t_L U2805 ( .A1(n2472), .A2(n2475), .B(n2476), .Y(n2471)
         );
  NOR3xp33_ASAP7_75t_L U2806 ( .A(n2477), .B(n2478), .C(n2479), .Y(n2472) );
  INVx1_ASAP7_75t_L U2807 ( .A(n2480), .Y(n2478) );
  OAI221xp5_ASAP7_75t_L U2808 ( .A1(i_tv80_core_R_reg_4__net_Q), .A2(n2481), 
        .B1(n2425), .B2(n2468), .C(n2482), .Y(U871_net_Y) );
  A2O1A1Ixp33_ASAP7_75t_L U2809 ( .A1(n2470), .A2(n2477), .B(n2483), .C(
        i_tv80_core_R_reg_4__net_Q), .Y(n2482) );
  NAND3xp33_ASAP7_75t_L U2810 ( .A(i_tv80_core_R_reg_3__net_Q), .B(n2480), .C(
        n2470), .Y(n2481) );
  INVx1_ASAP7_75t_L U2811 ( .A(n2484), .Y(U869_net_Y) );
  AOI322xp5_ASAP7_75t_L U2812 ( .A1(n2477), .A2(n2480), .A3(n2470), .B1(n2483), 
        .B2(i_tv80_core_R_reg_3__net_Q), .C1(i_tv80_core_ACC_reg_3__net_Q), 
        .C2(n2474), .Y(n2484) );
  OAI21xp33_ASAP7_75t_L U2813 ( .A1(n2480), .A2(n2475), .B(n2476), .Y(n2483)
         );
  NOR3xp33_ASAP7_75t_L U2814 ( .A(n2485), .B(n2486), .C(n2487), .Y(n2480) );
  OAI221xp5_ASAP7_75t_L U2815 ( .A1(i_tv80_core_R_reg_2__net_Q), .A2(n2488), 
        .B1(n2387), .B2(n2468), .C(n2489), .Y(U866_net_Y) );
  A2O1A1Ixp33_ASAP7_75t_L U2816 ( .A1(n2470), .A2(n2485), .B(n2490), .C(
        i_tv80_core_R_reg_2__net_Q), .Y(n2489) );
  NAND3xp33_ASAP7_75t_L U2817 ( .A(i_tv80_core_R_reg_1__net_Q), .B(
        i_tv80_core_R_reg_0__net_Q), .C(n2470), .Y(n2488) );
  INVx1_ASAP7_75t_L U2818 ( .A(n2491), .Y(U863_net_Y) );
  AOI322xp5_ASAP7_75t_L U2819 ( .A1(n2485), .A2(i_tv80_core_R_reg_0__net_Q), 
        .A3(n2470), .B1(n2490), .B2(i_tv80_core_R_reg_1__net_Q), .C1(
        i_tv80_core_ACC_reg_1__net_Q), .C2(n2474), .Y(n2491) );
  INVx1_ASAP7_75t_L U2820 ( .A(n2468), .Y(n2474) );
  OAI21xp33_ASAP7_75t_L U2821 ( .A1(i_tv80_core_R_reg_0__net_Q), .A2(n2475), 
        .B(n2476), .Y(n2490) );
  INVx1_ASAP7_75t_L U2822 ( .A(n2475), .Y(n2470) );
  OAI222xp33_ASAP7_75t_L U2823 ( .A1(n2486), .A2(n2476), .B1(
        i_tv80_core_R_reg_0__net_Q), .B2(n2475), .C1(n2391), .C2(n2468), .Y(
        U861_net_Y) );
  NAND3xp33_ASAP7_75t_L U2824 ( .A(n2492), .B(n2476), .C(n2493), .Y(n2468) );
  NAND3xp33_ASAP7_75t_L U2825 ( .A(n2476), .B(n2494), .C(n2493), .Y(n2475) );
  NAND2xp33_ASAP7_75t_L U2826 ( .A(n2495), .B(n2462), .Y(n2476) );
  OAI21xp33_ASAP7_75t_L U2827 ( .A1(n2496), .A2(n2461), .B(n2497), .Y(n2462)
         );
  NOR3xp33_ASAP7_75t_L U2828 ( .A(n2498), .B(n2494), .C(n2499), .Y(n2496) );
  INVx1_ASAP7_75t_L U2829 ( .A(n2492), .Y(n2494) );
  OAI211xp5_ASAP7_75t_L U2830 ( .A1(n2465), .A2(n2500), .B(n2501), .C(n2502), 
        .Y(U832_net_Y) );
  AOI221xp5_ASAP7_75t_L U2831 ( .A1(n2503), .A2(n2401), .B1(n2504), .B2(
        i_tv80_core_ACC_reg_7__net_Q), .C(n2505), .Y(n2502) );
  OAI21xp33_ASAP7_75t_L U2832 ( .A1(n2506), .A2(n2507), .B(reset_n), .Y(n2505)
         );
  AOI22xp33_ASAP7_75t_L U2833 ( .A1(n2508), .A2(i_tv80_core_Ap_reg_7__net_Q), 
        .B1(n2509), .B2(n2510), .Y(n2501) );
  INVx1_ASAP7_75t_L U2834 ( .A(i_tv80_core_R_reg_7__net_Q), .Y(n2465) );
  OAI211xp5_ASAP7_75t_L U2835 ( .A1(n2511), .A2(n2500), .B(n2512), .C(n2513), 
        .Y(U828_net_Y) );
  AOI221xp5_ASAP7_75t_L U2836 ( .A1(n2503), .A2(n2411), .B1(n2504), .B2(
        i_tv80_core_ACC_reg_6__net_Q), .C(n2514), .Y(n2513) );
  OAI21xp33_ASAP7_75t_L U2837 ( .A1(n2506), .A2(n2515), .B(reset_n), .Y(n2514)
         );
  AOI22xp33_ASAP7_75t_L U2838 ( .A1(n2508), .A2(i_tv80_core_Ap_reg_6__net_Q), 
        .B1(n2509), .B2(n2516), .Y(n2512) );
  INVx1_ASAP7_75t_L U2839 ( .A(i_tv80_core_R_reg_6__net_Q), .Y(n2511) );
  OAI211xp5_ASAP7_75t_L U2840 ( .A1(n2466), .A2(n2500), .B(n2517), .C(n2518), 
        .Y(U824_net_Y) );
  AOI221xp5_ASAP7_75t_L U2841 ( .A1(n2503), .A2(n2418), .B1(n2504), .B2(
        i_tv80_core_ACC_reg_5__net_Q), .C(n2519), .Y(n2518) );
  OAI21xp33_ASAP7_75t_L U2842 ( .A1(n2506), .A2(n2520), .B(reset_n), .Y(n2519)
         );
  AOI22xp33_ASAP7_75t_L U2843 ( .A1(n2508), .A2(i_tv80_core_Ap_reg_5__net_Q), 
        .B1(n2509), .B2(n2521), .Y(n2517) );
  INVx1_ASAP7_75t_L U2844 ( .A(i_tv80_core_R_reg_5__net_Q), .Y(n2466) );
  OAI211xp5_ASAP7_75t_L U2845 ( .A1(n2479), .A2(n2500), .B(n2522), .C(n2523), 
        .Y(U820_net_Y) );
  AOI221xp5_ASAP7_75t_L U2846 ( .A1(n2503), .A2(n2425), .B1(n2504), .B2(
        i_tv80_core_ACC_reg_4__net_Q), .C(n2524), .Y(n2523) );
  OAI21xp33_ASAP7_75t_L U2847 ( .A1(n2506), .A2(n2525), .B(reset_n), .Y(n2524)
         );
  AOI22xp33_ASAP7_75t_L U2848 ( .A1(n2508), .A2(i_tv80_core_Ap_reg_4__net_Q), 
        .B1(n2509), .B2(n2526), .Y(n2522) );
  INVx1_ASAP7_75t_L U2849 ( .A(i_tv80_core_R_reg_4__net_Q), .Y(n2479) );
  OAI211xp5_ASAP7_75t_L U2850 ( .A1(n2477), .A2(n2500), .B(n2527), .C(n2528), 
        .Y(U816_net_Y) );
  AOI221xp5_ASAP7_75t_L U2851 ( .A1(n2503), .A2(n2385), .B1(n2504), .B2(
        i_tv80_core_ACC_reg_3__net_Q), .C(n2529), .Y(n2528) );
  OAI21xp33_ASAP7_75t_L U2852 ( .A1(n2383), .A2(n2506), .B(reset_n), .Y(n2529)
         );
  INVx1_ASAP7_75t_L U2853 ( .A(i_tv80_core_I_reg_3__net_Q), .Y(n2383) );
  AOI22xp33_ASAP7_75t_L U2854 ( .A1(n2508), .A2(i_tv80_core_Ap_reg_3__net_Q), 
        .B1(n2509), .B2(n2530), .Y(n2527) );
  INVx1_ASAP7_75t_L U2855 ( .A(i_tv80_core_R_reg_3__net_Q), .Y(n2477) );
  OAI211xp5_ASAP7_75t_L U2856 ( .A1(n2487), .A2(n2500), .B(n2531), .C(n2532), 
        .Y(U812_net_Y) );
  AOI221xp5_ASAP7_75t_L U2857 ( .A1(n2503), .A2(n2387), .B1(n2504), .B2(
        i_tv80_core_ACC_reg_2__net_Q), .C(n2533), .Y(n2532) );
  OAI21xp33_ASAP7_75t_L U2858 ( .A1(n2386), .A2(n2506), .B(reset_n), .Y(n2533)
         );
  INVx1_ASAP7_75t_L U2859 ( .A(i_tv80_core_I_reg_2__net_Q), .Y(n2386) );
  INVx1_ASAP7_75t_L U2860 ( .A(i_tv80_core_ACC_reg_2__net_Q), .Y(n2387) );
  AOI22xp33_ASAP7_75t_L U2861 ( .A1(n2508), .A2(i_tv80_core_Ap_reg_2__net_Q), 
        .B1(n2509), .B2(n2534), .Y(n2531) );
  INVx1_ASAP7_75t_L U2862 ( .A(i_tv80_core_R_reg_2__net_Q), .Y(n2487) );
  OAI211xp5_ASAP7_75t_L U2863 ( .A1(n2486), .A2(n2500), .B(n2535), .C(n2536), 
        .Y(U808_net_Y) );
  AOI221xp5_ASAP7_75t_L U2864 ( .A1(n2503), .A2(n2391), .B1(n2504), .B2(
        i_tv80_core_ACC_reg_0__net_Q), .C(n2537), .Y(n2536) );
  OAI21xp33_ASAP7_75t_L U2865 ( .A1(n2390), .A2(n2506), .B(reset_n), .Y(n2537)
         );
  INVx1_ASAP7_75t_L U2866 ( .A(i_tv80_core_I_reg_0__net_Q), .Y(n2390) );
  INVx1_ASAP7_75t_L U2867 ( .A(i_tv80_core_ACC_reg_0__net_Q), .Y(n2391) );
  AOI22xp33_ASAP7_75t_L U2868 ( .A1(n2508), .A2(i_tv80_core_Ap_reg_0__net_Q), 
        .B1(n2509), .B2(n2538), .Y(n2535) );
  INVx1_ASAP7_75t_L U2869 ( .A(i_tv80_core_R_reg_0__net_Q), .Y(n2486) );
  OAI211xp5_ASAP7_75t_L U2870 ( .A1(n2485), .A2(n2500), .B(n2539), .C(n2540), 
        .Y(U804_net_Y) );
  AOI221xp5_ASAP7_75t_L U2871 ( .A1(n2503), .A2(n2389), .B1(n2504), .B2(
        i_tv80_core_ACC_reg_1__net_Q), .C(n2541), .Y(n2540) );
  OAI21xp33_ASAP7_75t_L U2872 ( .A1(n2388), .A2(n2506), .B(reset_n), .Y(n2541)
         );
  NAND3xp33_ASAP7_75t_L U2873 ( .A(n2542), .B(n2498), .C(n2543), .Y(n2506) );
  INVx1_ASAP7_75t_L U2874 ( .A(i_tv80_core_I_reg_1__net_Q), .Y(n2388) );
  INVx1_ASAP7_75t_L U2875 ( .A(i_tv80_core_ACC_reg_1__net_Q), .Y(n2389) );
  AND3x1_ASAP7_75t_L U2876 ( .A(n2544), .B(n2545), .C(n2542), .Y(n2503) );
  AOI22xp33_ASAP7_75t_L U2877 ( .A1(n2508), .A2(i_tv80_core_Ap_reg_1__net_Q), 
        .B1(n2509), .B2(n2546), .Y(n2539) );
  NOR3xp33_ASAP7_75t_L U2878 ( .A(n2547), .B(n2504), .C(n2548), .Y(n2509) );
  AND2x2_ASAP7_75t_L U2879 ( .A(n2542), .B(n2549), .Y(n2508) );
  NAND2xp33_ASAP7_75t_L U2880 ( .A(n2542), .B(n2550), .Y(n2500) );
  INVx1_ASAP7_75t_L U2881 ( .A(n2498), .Y(n2550) );
  AOI21xp33_ASAP7_75t_L U2882 ( .A1(n2551), .A2(n2552), .B(n2504), .Y(n2542)
         );
  AOI211xp5_ASAP7_75t_L U2883 ( .A1(n2553), .A2(n2554), .B(n2555), .C(n2460), 
        .Y(n2504) );
  O2A1O1Ixp33_ASAP7_75t_L U2884 ( .A1(n2548), .A2(n2547), .B(n2545), .C(n2463), 
        .Y(n2555) );
  INVx1_ASAP7_75t_L U2885 ( .A(n2556), .Y(n2554) );
  INVx1_ASAP7_75t_L U2886 ( .A(i_tv80_core_R_reg_1__net_Q), .Y(n2485) );
  OAI22xp33_ASAP7_75t_L U2887 ( .A1(n2557), .A2(n2558), .B1(n2559), .B2(n2560), 
        .Y(U762_net_Y) );
  AOI211xp5_ASAP7_75t_L U2888 ( .A1(n2561), .A2(n2516), .B(n2461), .C(n2562), 
        .Y(n2558) );
  AOI221xp5_ASAP7_75t_L U2889 ( .A1(n2563), .A2(n2564), .B1(n2565), .B2(n2566), 
        .C(n2567), .Y(n2562) );
  OAI22xp33_ASAP7_75t_L U2890 ( .A1(n2568), .A2(n2569), .B1(
        i_tv80_core_Fp_reg_6__net_Q), .B2(n2570), .Y(n2565) );
  NAND5xp2_ASAP7_75t_L U2891 ( .A(n2450), .B(n2444), .C(n2438), .D(n2432), .E(
        n2571), .Y(n2564) );
  NOR4xp25_ASAP7_75t_L U2892 ( .A(di_reg_reg_7__net_Q), .B(di_reg_reg_6__net_Q), .C(di_reg_reg_5__net_Q), .D(di_reg_reg_4__net_Q), .Y(n2571) );
  OAI22xp33_ASAP7_75t_L U2893 ( .A1(n2572), .A2(n2573), .B1(n2574), .B2(n2575), 
        .Y(U736_net_Y) );
  INVx1_ASAP7_75t_L U2894 ( .A(i_tv80_core_F_reg_5__net_Q), .Y(n2574) );
  AOI221xp5_ASAP7_75t_L U2895 ( .A1(n2576), .A2(n2577), .B1(n2561), .B2(n2521), 
        .C(n2461), .Y(n2573) );
  OAI221xp5_ASAP7_75t_L U2896 ( .A1(n2578), .A2(n2579), .B1(n2580), .B2(n2581), 
        .C(n2582), .Y(n2576) );
  AOI322xp5_ASAP7_75t_L U2897 ( .A1(n2583), .A2(n2584), .A3(
        i_tv80_core_ACC_reg_5__net_Q), .B1(i_tv80_core_Fp_reg_5__net_Q), .B2(
        n2585), .C1(n2586), .C2(n2418), .Y(n2582) );
  INVx1_ASAP7_75t_L U2898 ( .A(n2587), .Y(n2580) );
  AOI321xp33_ASAP7_75t_L U2899 ( .A1(n2588), .A2(n2589), .A3(n2590), .B1(
        i_tv80_core_BusB_reg_5__net_Q), .B2(n2591), .C(n2592), .Y(n2578) );
  AO21x1_ASAP7_75t_L U2900 ( .A1(n2593), .A2(i_tv80_core_F_reg_5__net_Q), .B(
        n2594), .Y(n2592) );
  OAI22xp33_ASAP7_75t_L U2901 ( .A1(n2572), .A2(n2595), .B1(n2596), .B2(n2575), 
        .Y(U727_net_Y) );
  INVx1_ASAP7_75t_L U2902 ( .A(n2572), .Y(n2575) );
  AOI221xp5_ASAP7_75t_L U2903 ( .A1(n2597), .A2(n2577), .B1(n2561), .B2(n2530), 
        .C(n2461), .Y(n2595) );
  OAI221xp5_ASAP7_75t_L U2904 ( .A1(n2598), .A2(n2581), .B1(n2599), .B2(n2600), 
        .C(n2601), .Y(n2597) );
  AOI322xp5_ASAP7_75t_L U2905 ( .A1(n2583), .A2(n2584), .A3(
        i_tv80_core_ACC_reg_3__net_Q), .B1(n2602), .B2(n2603), .C1(n2586), 
        .C2(n2385), .Y(n2601) );
  INVx1_ASAP7_75t_L U2906 ( .A(i_tv80_core_ACC_reg_3__net_Q), .Y(n2385) );
  INVx1_ASAP7_75t_L U2907 ( .A(n2604), .Y(n2603) );
  AOI321xp33_ASAP7_75t_L U2908 ( .A1(n2605), .A2(n2589), .A3(n2588), .B1(n2591), .B2(i_tv80_core_BusB_reg_3__net_Q), .C(n2606), .Y(n2604) );
  OAI21xp33_ASAP7_75t_L U2909 ( .A1(n2596), .A2(n2607), .B(n2608), .Y(n2606)
         );
  OAI22xp33_ASAP7_75t_L U2910 ( .A1(i_tv80_core_ALU_Op_r_reg_3__net_Q), .A2(
        n2588), .B1(n2609), .B2(n2610), .Y(n2591) );
  INVx1_ASAP7_75t_L U2911 ( .A(n2611), .Y(n2598) );
  AOI21xp33_ASAP7_75t_L U2912 ( .A1(n2612), .A2(n2493), .B(n2613), .Y(n2572)
         );
  INVx1_ASAP7_75t_L U2913 ( .A(n2614), .Y(n2613) );
  OAI22xp33_ASAP7_75t_L U2914 ( .A1(n2615), .A2(n2616), .B1(n2617), .B2(n2618), 
        .Y(U670_net_X) );
  INVx1_ASAP7_75t_L U2915 ( .A(n2615), .Y(n2618) );
  AOI211xp5_ASAP7_75t_L U2916 ( .A1(n2561), .A2(n2534), .B(n2461), .C(n2619), 
        .Y(n2616) );
  AOI221xp5_ASAP7_75t_L U2917 ( .A1(n2620), .A2(n2621), .B1(n2622), .B2(n2623), 
        .C(n2567), .Y(n2619) );
  OAI22xp33_ASAP7_75t_L U2918 ( .A1(n2566), .A2(n2624), .B1(n2563), .B2(n2625), 
        .Y(n2622) );
  AOI32xp33_ASAP7_75t_L U2919 ( .A1(n2626), .A2(n2627), .A3(n2570), .B1(n2628), 
        .B2(n2568), .Y(n2625) );
  OAI22xp33_ASAP7_75t_L U2920 ( .A1(i_tv80_core_Fp_reg_2__net_Q), .A2(n2543), 
        .B1(i_tv80_core_IntE_FF2_reg_net_Q), .B2(n2545), .Y(n2628) );
  AOI321xp33_ASAP7_75t_L U2921 ( .A1(n2589), .A2(n2629), .A3(n2630), .B1(n2631), .B2(n2632), .C(n2633), .Y(n2627) );
  INVx1_ASAP7_75t_L U2922 ( .A(n2634), .Y(n2633) );
  XNOR2xp5_ASAP7_75t_L U2923 ( .A(n2635), .B(n2636), .Y(n2631) );
  FAx1_ASAP7_75t_L U2924 ( .A(n2637), .B(n2638), .CI(n2639), .SN(n2636) );
  XNOR2xp5_ASAP7_75t_L U2925 ( .A(n2640), .B(n2641), .Y(n2639) );
  FAx1_ASAP7_75t_L U2926 ( .A(n2642), .B(n2643), .CI(n2644), .SN(n2635) );
  XNOR2xp5_ASAP7_75t_L U2927 ( .A(n2645), .B(n2646), .Y(n2644) );
  AOI22xp33_ASAP7_75t_L U2928 ( .A1(n2647), .A2(n2648), .B1(n2649), .B2(n2650), 
        .Y(n2630) );
  XOR2xp5_ASAP7_75t_L U2929 ( .A(n2651), .B(n2652), .Y(n2649) );
  FAx1_ASAP7_75t_L U2930 ( .A(n2653), .B(n2654), .CI(n2605), .SN(n2652) );
  XNOR2xp5_ASAP7_75t_L U2931 ( .A(n2655), .B(n2656), .Y(n2654) );
  FAx1_ASAP7_75t_L U2932 ( .A(n2657), .B(n2658), .CI(n2659), .SN(n2651) );
  XNOR2xp5_ASAP7_75t_L U2933 ( .A(n2590), .B(n2660), .Y(n2659) );
  INVx1_ASAP7_75t_L U2934 ( .A(n2650), .Y(n2648) );
  NOR2xp33_ASAP7_75t_L U2935 ( .A(n2661), .B(n2662), .Y(n2650) );
  XNOR2xp5_ASAP7_75t_L U2936 ( .A(n2663), .B(n2664), .Y(n2647) );
  AOI222xp33_ASAP7_75t_L U2937 ( .A1(i_tv80_core_F_reg_2__net_Q), .A2(n2665), 
        .B1(n2666), .B2(n2667), .C1(n2668), .C2(n2669), .Y(n2626) );
  FAx1_ASAP7_75t_L U2938 ( .A(n2670), .B(i_tv80_core_BusA_reg_0__net_Q), .CI(
        n2671), .SN(n2668) );
  FAx1_ASAP7_75t_L U2939 ( .A(n2672), .B(n2673), .CI(n2674), .SN(n2671) );
  XNOR2xp5_ASAP7_75t_L U2940 ( .A(n2675), .B(n2676), .Y(n2674) );
  FAx1_ASAP7_75t_L U2941 ( .A(n2677), .B(n2678), .CI(n2679), .SN(n2670) );
  XOR2xp5_ASAP7_75t_L U2942 ( .A(n2680), .B(n2681), .Y(n2679) );
  XOR2xp5_ASAP7_75t_L U2943 ( .A(n2682), .B(n2683), .Y(n2666) );
  FAx1_ASAP7_75t_L U2944 ( .A(n2684), .B(n2685), .CI(n2686), .SN(n2683) );
  XNOR2xp5_ASAP7_75t_L U2945 ( .A(n2687), .B(n2688), .Y(n2686) );
  FAx1_ASAP7_75t_L U2946 ( .A(n2689), .B(n2690), .CI(n2691), .SN(n2682) );
  XNOR2xp5_ASAP7_75t_L U2947 ( .A(n2692), .B(i_tv80_core_BusA_reg_6__net_Q), 
        .Y(n2691) );
  XOR2xp5_ASAP7_75t_L U2948 ( .A(n2693), .B(n2694), .Y(n2624) );
  FAx1_ASAP7_75t_L U2949 ( .A(n2419), .B(n2695), .CI(di_reg_reg_4__net_Q), 
        .SN(n2694) );
  XNOR2xp5_ASAP7_75t_L U2950 ( .A(n2403), .B(di_reg_reg_6__net_Q), .Y(n2695)
         );
  FAx1_ASAP7_75t_L U2951 ( .A(n2444), .B(n2450), .CI(n2696), .SN(n2693) );
  XNOR2xp5_ASAP7_75t_L U2952 ( .A(n2432), .B(di_reg_reg_2__net_Q), .Y(n2696)
         );
  O2A1O1Ixp33_ASAP7_75t_L U2953 ( .A1(n2543), .A2(n2620), .B(n2493), .C(n2560), 
        .Y(n2615) );
  INVx1_ASAP7_75t_L U2954 ( .A(n2545), .Y(n2543) );
  NAND2xp33_ASAP7_75t_L U2955 ( .A(n2492), .B(n2499), .Y(n2545) );
  OAI211xp5_ASAP7_75t_L U2956 ( .A1(n2697), .A2(n2698), .B(reset_n), .C(n2699), 
        .Y(U653_net_Y) );
  AOI32xp33_ASAP7_75t_L U2957 ( .A1(n2561), .A2(n2526), .A3(n2700), .B1(
        i_tv80_core_F_reg_4__net_Q), .B2(n2701), .Y(n2699) );
  AOI311xp33_ASAP7_75t_L U2958 ( .A1(i_tv80_core_F_reg_0__net_Q), .A2(n2702), 
        .A3(n2583), .B(n2703), .C(n2586), .Y(n2697) );
  OAI22xp33_ASAP7_75t_L U2959 ( .A1(n2704), .A2(n2579), .B1(n2599), .B2(n2705), 
        .Y(n2703) );
  INVx1_ASAP7_75t_L U2960 ( .A(i_tv80_core_Fp_reg_4__net_Q), .Y(n2705) );
  INVx1_ASAP7_75t_L U2961 ( .A(n2585), .Y(n2599) );
  AOI221xp5_ASAP7_75t_L U2962 ( .A1(i_tv80_core_F_reg_4__net_Q), .A2(n2706), 
        .B1(n2707), .B2(n2589), .C(n2708), .Y(n2704) );
  OAI31xp33_ASAP7_75t_L U2963 ( .A1(n2709), .A2(i_tv80_core_F_reg_1__net_Q), 
        .A3(n2710), .B(n2610), .Y(n2708) );
  OAI221xp5_ASAP7_75t_L U2964 ( .A1(n2711), .A2(n2712), .B1(n2713), .B2(n2714), 
        .C(n2715), .Y(n2707) );
  INVx1_ASAP7_75t_L U2965 ( .A(n2716), .Y(n2706) );
  AOI31xp33_ASAP7_75t_L U2966 ( .A1(n2710), .A2(i_tv80_core_F_reg_1__net_Q), 
        .A3(n2669), .B(n2593), .Y(n2716) );
  AOI211xp5_ASAP7_75t_L U2967 ( .A1(i_tv80_core_F_reg_1__net_Q), .A2(n2717), 
        .B(n2718), .C(n2719), .Y(n2710) );
  INVx1_ASAP7_75t_L U2968 ( .A(n2720), .Y(n2702) );
  OAI211xp5_ASAP7_75t_L U2969 ( .A1(n2721), .A2(n2698), .B(reset_n), .C(n2722), 
        .Y(U647_net_Y) );
  AOI32xp33_ASAP7_75t_L U2970 ( .A1(n2561), .A2(n2546), .A3(n2700), .B1(
        i_tv80_core_F_reg_1__net_Q), .B2(n2701), .Y(n2722) );
  NAND3xp33_ASAP7_75t_L U2971 ( .A(n2577), .B(n2566), .C(n2700), .Y(n2698) );
  INVx1_ASAP7_75t_L U2972 ( .A(n2701), .Y(n2700) );
  OAI31xp33_ASAP7_75t_L U2973 ( .A1(n2612), .A2(n2563), .A3(n2561), .B(n2497), 
        .Y(n2701) );
  NAND3xp33_ASAP7_75t_L U2974 ( .A(n2581), .B(n2556), .C(n2723), .Y(n2612) );
  OA21x2_ASAP7_75t_L U2975 ( .A1(n2724), .A2(n2725), .B(n2726), .Y(n2723) );
  NAND3xp33_ASAP7_75t_L U2976 ( .A(n2727), .B(n2728), .C(n2729), .Y(n2556) );
  AOI221xp5_ASAP7_75t_L U2977 ( .A1(i_tv80_core_Fp_reg_1__net_Q), .A2(n2585), 
        .B1(n2602), .B2(n2730), .C(n2586), .Y(n2721) );
  AND2x2_ASAP7_75t_L U2978 ( .A(n2725), .B(n2583), .Y(n2586) );
  AND3x1_ASAP7_75t_L U2979 ( .A(n2581), .B(n2544), .C(n2568), .Y(n2583) );
  OAI22xp33_ASAP7_75t_L U2980 ( .A1(i_tv80_core_ALU_Op_r_reg_3__net_Q), .A2(
        n2714), .B1(n2731), .B2(n2732), .Y(n2730) );
  INVx1_ASAP7_75t_L U2981 ( .A(n2733), .Y(n2714) );
  INVx1_ASAP7_75t_L U2982 ( .A(n2579), .Y(n2602) );
  NAND2xp33_ASAP7_75t_L U2983 ( .A(n2570), .B(n2581), .Y(n2579) );
  NAND2xp33_ASAP7_75t_L U2984 ( .A(n2734), .B(n2735), .Y(n2581) );
  NOR2xp33_ASAP7_75t_L U2985 ( .A(n2570), .B(n2544), .Y(n2585) );
  OAI22xp33_ASAP7_75t_L U2986 ( .A1(n2736), .A2(n2737), .B1(n2738), .B2(n2739), 
        .Y(U631_net_Y) );
  AOI221xp5_ASAP7_75t_L U2987 ( .A1(n2740), .A2(n2577), .B1(n2561), .B2(n2538), 
        .C(n2461), .Y(n2737) );
  AOI32xp33_ASAP7_75t_L U2988 ( .A1(n2741), .A2(n2742), .A3(n2743), .B1(n2744), 
        .B2(n2745), .Y(n2740) );
  INVx1_ASAP7_75t_L U2989 ( .A(n2743), .Y(n2745) );
  OAI32xp33_ASAP7_75t_L U2990 ( .A1(n2549), .A2(n2720), .A3(n2738), .B1(
        i_tv80_core_Fp_reg_0__net_Q), .B2(n2544), .Y(n2744) );
  OAI221xp5_ASAP7_75t_L U2991 ( .A1(n2733), .A2(n2746), .B1(n2747), .B2(n2664), 
        .C(n2589), .Y(n2742) );
  INVx1_ASAP7_75t_L U2992 ( .A(n2746), .Y(n2664) );
  OAI22xp33_ASAP7_75t_L U2993 ( .A1(n2748), .A2(n2663), .B1(n2749), .B2(n2692), 
        .Y(n2746) );
  A2O1A1O1Ixp25_ASAP7_75t_L U2994 ( .A1(n2681), .A2(n2669), .B(
        i_tv80_core_F_reg_0__net_Q), .C(n2750), .D(n2751), .Y(n2741) );
  AOI221xp5_ASAP7_75t_L U2995 ( .A1(n2692), .A2(n2752), .B1(
        i_tv80_core_IR_reg_3__net_Q), .B2(n2753), .C(n2754), .Y(n2751) );
  NAND3xp33_ASAP7_75t_L U2996 ( .A(n2755), .B(n2610), .C(n2731), .Y(n2750) );
  NOR2xp33_ASAP7_75t_L U2997 ( .A(n2593), .B(n2669), .Y(n2731) );
  OA211x2_ASAP7_75t_L U2998 ( .A1(n2756), .A2(n2757), .B(n2758), .C(n2759), 
        .Y(n2681) );
  OAI211xp5_ASAP7_75t_L U2999 ( .A1(n2760), .A2(n2761), .B(n2762), .C(n2732), 
        .Y(n2758) );
  INVx1_ASAP7_75t_L U3000 ( .A(n2739), .Y(n2736) );
  NAND3xp33_ASAP7_75t_L U3001 ( .A(n2614), .B(n2459), .C(n2763), .Y(n2739) );
  AOI32xp33_ASAP7_75t_L U3002 ( .A1(n2728), .A2(n2584), .A3(n2553), .B1(n2743), 
        .B2(n2493), .Y(n2763) );
  NOR2xp33_ASAP7_75t_L U3003 ( .A(n2568), .B(i_tv80_core_PreserveC_r_reg_net_Q), .Y(n2743) );
  INVx1_ASAP7_75t_L U3004 ( .A(n2725), .Y(n2584) );
  AOI21xp33_ASAP7_75t_L U3005 ( .A1(n2764), .A2(n2729), .B(n2720), .Y(n2725)
         );
  NOR3xp33_ASAP7_75t_L U3006 ( .A(n2765), .B(n2766), .C(n2767), .Y(n2720) );
  NOR2xp33_ASAP7_75t_L U3007 ( .A(n2768), .B(n2766), .Y(n2729) );
  OAI211xp5_ASAP7_75t_L U3008 ( .A1(n2769), .A2(n2770), .B(reset_n), .C(n2771), 
        .Y(U616_net_Y) );
  AOI222xp33_ASAP7_75t_L U3009 ( .A1(n2772), .A2(n2773), .B1(n2774), .B2(n2775), .C1(n2776), .C2(n2510), .Y(n2771) );
  OAI211xp5_ASAP7_75t_L U3010 ( .A1(n2769), .A2(n2777), .B(reset_n), .C(n2778), 
        .Y(U614_net_Y) );
  AOI222xp33_ASAP7_75t_L U3011 ( .A1(n2772), .A2(n2779), .B1(n2780), .B2(n2774), .C1(n2776), .C2(n2516), .Y(n2778) );
  OAI211xp5_ASAP7_75t_L U3012 ( .A1(n2769), .A2(n2781), .B(reset_n), .C(n2782), 
        .Y(U612_net_Y) );
  AOI222xp33_ASAP7_75t_L U3013 ( .A1(n2772), .A2(n2783), .B1(n2784), .B2(n2774), .C1(n2776), .C2(n2521), .Y(n2782) );
  OAI211xp5_ASAP7_75t_L U3014 ( .A1(n2769), .A2(n2785), .B(reset_n), .C(n2786), 
        .Y(U610_net_Y) );
  AOI222xp33_ASAP7_75t_L U3015 ( .A1(n2772), .A2(n2787), .B1(n2788), .B2(n2774), .C1(n2776), .C2(n2526), .Y(n2786) );
  OAI211xp5_ASAP7_75t_L U3016 ( .A1(n2769), .A2(n2789), .B(reset_n), .C(n2790), 
        .Y(U608_net_Y) );
  AOI222xp33_ASAP7_75t_L U3017 ( .A1(n2772), .A2(n2791), .B1(n2792), .B2(n2774), .C1(n2776), .C2(n2530), .Y(n2790) );
  OAI211xp5_ASAP7_75t_L U3018 ( .A1(n2769), .A2(n2793), .B(reset_n), .C(n2794), 
        .Y(U606_net_Y) );
  AOI222xp33_ASAP7_75t_L U3019 ( .A1(n2772), .A2(n2795), .B1(n2796), .B2(n2774), .C1(n2776), .C2(n2534), .Y(n2794) );
  OAI211xp5_ASAP7_75t_L U3020 ( .A1(n2769), .A2(n2797), .B(reset_n), .C(n2798), 
        .Y(U604_net_Y) );
  AOI222xp33_ASAP7_75t_L U3021 ( .A1(n2772), .A2(n2799), .B1(n2800), .B2(n2774), .C1(n2776), .C2(n2546), .Y(n2798) );
  OAI211xp5_ASAP7_75t_L U3022 ( .A1(n2769), .A2(n2801), .B(reset_n), .C(n2802), 
        .Y(U602_net_Y) );
  AOI222xp33_ASAP7_75t_L U3023 ( .A1(n2772), .A2(n2803), .B1(n2804), .B2(n2774), .C1(n2776), .C2(n2538), .Y(n2802) );
  AND3x1_ASAP7_75t_L U3024 ( .A(n2769), .B(n2805), .C(n2806), .Y(n2776) );
  AND3x1_ASAP7_75t_L U3025 ( .A(n2807), .B(n2808), .C(n2769), .Y(n2774) );
  AND3x1_ASAP7_75t_L U3026 ( .A(n2809), .B(n2807), .C(n2769), .Y(n2772) );
  NAND2xp33_ASAP7_75t_L U3027 ( .A(n2810), .B(n2811), .Y(n2807) );
  OA21x2_ASAP7_75t_L U3028 ( .A1(n2812), .A2(n2806), .B(n2813), .Y(n2769) );
  INVx1_ASAP7_75t_L U3029 ( .A(n2814), .Y(n2806) );
  OAI211xp5_ASAP7_75t_L U3030 ( .A1(n2815), .A2(n2816), .B(reset_n), .C(n2817), 
        .Y(U594_net_Y) );
  AOI222xp33_ASAP7_75t_L U3031 ( .A1(n2818), .A2(n2819), .B1(n2820), .B2(n2821), .C1(n2822), .C2(n2510), .Y(n2817) );
  INVx1_ASAP7_75t_L U3032 ( .A(n2823), .Y(n2821) );
  OAI211xp5_ASAP7_75t_L U3033 ( .A1(n2815), .A2(n2824), .B(reset_n), .C(n2825), 
        .Y(U592_net_Y) );
  AOI222xp33_ASAP7_75t_L U3034 ( .A1(n2818), .A2(n2826), .B1(n2827), .B2(n2820), .C1(n2822), .C2(n2516), .Y(n2825) );
  INVx1_ASAP7_75t_L U3035 ( .A(n2828), .Y(n2827) );
  OAI211xp5_ASAP7_75t_L U3036 ( .A1(n2815), .A2(n2829), .B(reset_n), .C(n2830), 
        .Y(U590_net_Y) );
  AOI222xp33_ASAP7_75t_L U3037 ( .A1(n2818), .A2(n2831), .B1(n2832), .B2(n2820), .C1(n2822), .C2(n2521), .Y(n2830) );
  INVx1_ASAP7_75t_L U3038 ( .A(n2833), .Y(n2832) );
  OAI211xp5_ASAP7_75t_L U3039 ( .A1(n2815), .A2(n2834), .B(reset_n), .C(n2835), 
        .Y(U588_net_Y) );
  AOI222xp33_ASAP7_75t_L U3040 ( .A1(n2818), .A2(n2836), .B1(n2837), .B2(n2820), .C1(n2822), .C2(n2526), .Y(n2835) );
  INVx1_ASAP7_75t_L U3041 ( .A(n2838), .Y(n2837) );
  OAI211xp5_ASAP7_75t_L U3042 ( .A1(n2815), .A2(n2839), .B(reset_n), .C(n2840), 
        .Y(U586_net_Y) );
  AOI222xp33_ASAP7_75t_L U3043 ( .A1(n2818), .A2(n2841), .B1(n2842), .B2(n2820), .C1(n2822), .C2(n2530), .Y(n2840) );
  INVx1_ASAP7_75t_L U3044 ( .A(n2843), .Y(n2842) );
  OAI211xp5_ASAP7_75t_L U3045 ( .A1(n2815), .A2(n2844), .B(reset_n), .C(n2845), 
        .Y(U584_net_Y) );
  AOI222xp33_ASAP7_75t_L U3046 ( .A1(n2818), .A2(n2846), .B1(n2847), .B2(n2820), .C1(n2822), .C2(n2534), .Y(n2845) );
  INVx1_ASAP7_75t_L U3047 ( .A(n2848), .Y(n2847) );
  OAI211xp5_ASAP7_75t_L U3048 ( .A1(n2815), .A2(n2849), .B(reset_n), .C(n2850), 
        .Y(U582_net_Y) );
  AOI222xp33_ASAP7_75t_L U3049 ( .A1(n2818), .A2(n2851), .B1(n2852), .B2(n2820), .C1(n2822), .C2(n2546), .Y(n2850) );
  INVx1_ASAP7_75t_L U3050 ( .A(n2853), .Y(n2852) );
  OAI211xp5_ASAP7_75t_L U3051 ( .A1(n2815), .A2(n2854), .B(reset_n), .C(n2855), 
        .Y(U580_net_Y) );
  AOI222xp33_ASAP7_75t_L U3052 ( .A1(n2818), .A2(n2856), .B1(n2820), .B2(n2857), .C1(n2822), .C2(n2538), .Y(n2855) );
  AND3x1_ASAP7_75t_L U3053 ( .A(n2815), .B(n2805), .C(n2858), .Y(n2822) );
  INVx1_ASAP7_75t_L U3054 ( .A(n2859), .Y(n2857) );
  AND3x1_ASAP7_75t_L U3055 ( .A(n2860), .B(n2808), .C(n2815), .Y(n2820) );
  AND3x1_ASAP7_75t_L U3056 ( .A(n2809), .B(n2860), .C(n2815), .Y(n2818) );
  NAND2xp33_ASAP7_75t_L U3057 ( .A(n2810), .B(n2814), .Y(n2860) );
  AND4x1_ASAP7_75t_L U3058 ( .A(n2861), .B(n2862), .C(n2551), .D(n2547), .Y(
        n2810) );
  OA21x2_ASAP7_75t_L U3059 ( .A1(n2812), .A2(n2858), .B(n2813), .Y(n2815) );
  AOI21xp33_ASAP7_75t_L U3060 ( .A1(n2863), .A2(n2548), .B(n2463), .Y(n2813)
         );
  INVx1_ASAP7_75t_L U3061 ( .A(n2811), .Y(n2858) );
  INVx1_ASAP7_75t_L U3062 ( .A(n2863), .Y(n2812) );
  A2O1A1Ixp33_ASAP7_75t_L U3063 ( .A1(n2864), .A2(n2865), .B(n2809), .C(n2866), 
        .Y(n2863) );
  OAI31xp33_ASAP7_75t_L U3064 ( .A1(n2867), .A2(
        i_tv80_core_tstate_reg_1__net_Q), .A3(i_tv80_core_tstate_reg_0__net_Q), 
        .B(n2868), .Y(n2865) );
  O2A1O1Ixp33_ASAP7_75t_L U3065 ( .A1(n2869), .A2(n2867), .B(n2870), .C(n2368), 
        .Y(U576_net_Y) );
  INVx1_ASAP7_75t_L U3066 ( .A(n2871), .Y(U559_net_Y) );
  AOI211xp5_ASAP7_75t_L U3067 ( .A1(i_tv80_core_Read_To_Reg_r_reg_4__net_Q), 
        .A2(n2872), .B(n2873), .C(n2874), .Y(n2871) );
  AOI31xp33_ASAP7_75t_L U3068 ( .A1(n2875), .A2(n2876), .A3(n2877), .B(n2878), 
        .Y(n2873) );
  INVx1_ASAP7_75t_L U3069 ( .A(n2879), .Y(n2876) );
  AOI211xp5_ASAP7_75t_L U3070 ( .A1(n2880), .A2(n2881), .B(n2882), .C(n2883), 
        .Y(n2875) );
  INVx1_ASAP7_75t_L U3071 ( .A(n2884), .Y(n2883) );
  AO32x1_ASAP7_75t_L U3072 ( .A1(n2885), .A2(n2458), .A3(n2886), .B1(
        i_tv80_core_Read_To_Reg_r_reg_3__net_Q), .B2(n2872), .Y(U558_net_Y) );
  OAI21xp33_ASAP7_75t_L U3073 ( .A1(n2887), .A2(n2888), .B(n2889), .Y(n2458)
         );
  INVx1_ASAP7_75t_L U3074 ( .A(n2890), .Y(n2889) );
  OAI221xp5_ASAP7_75t_L U3075 ( .A1(n2374), .A2(n2878), .B1(n2891), .B2(n2497), 
        .C(n2892), .Y(U556_net_Y) );
  OAI221xp5_ASAP7_75t_L U3076 ( .A1(n2375), .A2(n2878), .B1(n2893), .B2(n2497), 
        .C(n2892), .Y(U555_net_Y) );
  OAI221xp5_ASAP7_75t_L U3077 ( .A1(n2456), .A2(n2878), .B1(n2894), .B2(n2497), 
        .C(n2892), .Y(U554_net_Y) );
  INVx1_ASAP7_75t_L U3078 ( .A(n2874), .Y(n2892) );
  NOR2xp33_ASAP7_75t_L U3079 ( .A(n2878), .B(n2885), .Y(n2874) );
  AOI321xp33_ASAP7_75t_L U3080 ( .A1(n2895), .A2(n2896), .A3(n2897), .B1(n2898), .B2(n2899), .C(n2890), .Y(n2885) );
  INVx1_ASAP7_75t_L U3081 ( .A(n2452), .Y(n2456) );
  NAND3xp33_ASAP7_75t_L U3082 ( .A(n2900), .B(n2901), .C(n2902), .Y(n2452) );
  AOI221xp5_ASAP7_75t_L U3083 ( .A1(i_tv80_core_IR_reg_3__net_Q), .A2(n2903), 
        .B1(n2904), .B2(n2905), .C(n2906), .Y(n2902) );
  OAI32xp33_ASAP7_75t_L U3084 ( .A1(n2907), .A2(n2908), .A3(n2909), .B1(n2910), 
        .B2(n2911), .Y(n2906) );
  NOR3xp33_ASAP7_75t_L U3085 ( .A(n2912), .B(n2913), .C(n2914), .Y(n2910) );
  OAI21xp33_ASAP7_75t_L U3086 ( .A1(n2915), .A2(n2916), .B(n2917), .Y(n2912)
         );
  AOI32xp33_ASAP7_75t_L U3087 ( .A1(n2918), .A2(n2919), .A3(n2888), .B1(n2915), 
        .B2(n2920), .Y(n2901) );
  A2O1A1Ixp33_ASAP7_75t_L U3088 ( .A1(n2916), .A2(n2921), .B(n2922), .C(n2923), 
        .Y(n2920) );
  NAND2xp33_ASAP7_75t_L U3089 ( .A(n2924), .B(n2919), .Y(n2923) );
  AOI21xp33_ASAP7_75t_L U3090 ( .A1(n2925), .A2(i_tv80_core_IR_reg_0__net_Q), 
        .B(n2926), .Y(n2900) );
  OAI22xp33_ASAP7_75t_L U3091 ( .A1(n2589), .A2(n2497), .B1(n2927), .B2(n2878), 
        .Y(U549_net_Y) );
  AOI221xp5_ASAP7_75t_L U3092 ( .A1(n2925), .A2(n2928), .B1(n2881), .B2(n2929), 
        .C(n2930), .Y(n2927) );
  AO22x1_ASAP7_75t_L U3093 ( .A1(i_tv80_core_ALU_Op_r_reg_2__net_Q), .A2(n2872), .B1(n2931), .B2(n2886), .Y(U530_net_Y) );
  A2O1A1Ixp33_ASAP7_75t_L U3094 ( .A1(n2932), .A2(n2933), .B(n2878), .C(n2934), 
        .Y(U516_net_Y) );
  NAND2xp33_ASAP7_75t_L U3095 ( .A(n2872), .B(
        i_tv80_core_ALU_Op_r_reg_1__net_Q), .Y(n2934) );
  AOI322xp5_ASAP7_75t_L U3096 ( .A1(n2935), .A2(n2936), .A3(n2881), .B1(
        i_tv80_core_ISet_reg_1__net_Q), .B2(n2937), .C1(
        i_tv80_core_IR_reg_4__net_Q), .C2(n2938), .Y(n2933) );
  NAND2xp33_ASAP7_75t_L U3097 ( .A(n2939), .B(n2940), .Y(n2938) );
  OAI31xp33_ASAP7_75t_L U3098 ( .A1(n2941), .A2(n2942), .A3(n2943), .B(n2925), 
        .Y(n2940) );
  INVx1_ASAP7_75t_L U3099 ( .A(n2944), .Y(n2942) );
  OAI22xp33_ASAP7_75t_L U3100 ( .A1(n2945), .A2(n2946), .B1(n2947), .B2(n2948), 
        .Y(n2941) );
  OAI321xp33_ASAP7_75t_L U3101 ( .A1(n2949), .A2(n2950), .A3(n2951), .B1(n2867), .B2(n2952), .C(n2953), .Y(n2937) );
  OAI21xp33_ASAP7_75t_L U3102 ( .A1(n2954), .A2(n2951), .B(
        i_tv80_core_IR_reg_4__net_Q), .Y(n2953) );
  AOI221xp5_ASAP7_75t_L U3103 ( .A1(n2925), .A2(n2955), .B1(n2956), .B2(n2957), 
        .C(n2958), .Y(n2932) );
  INVx1_ASAP7_75t_L U3104 ( .A(n2959), .Y(n2958) );
  AO22x1_ASAP7_75t_L U3105 ( .A1(i_tv80_core_ALU_Op_r_reg_0__net_Q), .A2(n2872), .B1(n2960), .B2(n2886), .Y(U508_net_Y) );
  OAI22xp33_ASAP7_75t_L U3106 ( .A1(n2961), .A2(n2962), .B1(n2963), .B2(n2621), 
        .Y(U498_net_Y) );
  INVx1_ASAP7_75t_L U3107 ( .A(n2962), .Y(n2963) );
  A2O1A1Ixp33_ASAP7_75t_L U3108 ( .A1(n2964), .A2(
        i_tv80_core_Save_ALU_r_reg_net_Q), .B(n2965), .C(busak_n), .Y(n2962)
         );
  O2A1O1Ixp33_ASAP7_75t_L U3109 ( .A1(n2966), .A2(n2967), .B(n2965), .C(n2968), 
        .Y(n2961) );
  NOR2xp33_ASAP7_75t_L U3110 ( .A(n2965), .B(n2969), .Y(n2968) );
  INVx1_ASAP7_75t_L U3111 ( .A(n2569), .Y(n2969) );
  NAND4xp25_ASAP7_75t_L U3112 ( .A(n2634), .B(n2970), .C(n2971), .D(n2972), 
        .Y(n2569) );
  AOI221xp5_ASAP7_75t_L U3113 ( .A1(i_tv80_core_F_reg_6__net_Q), .A2(n2665), 
        .B1(n2973), .B2(n2974), .C(n2975), .Y(n2972) );
  NOR5xp2_ASAP7_75t_L U3114 ( .A(n2976), .B(i_tv80_core_BusA_reg_5__net_Q), 
        .C(i_tv80_core_BusA_reg_4__net_Q), .D(n2977), .E(n2755), .Y(n2975) );
  NAND4xp25_ASAP7_75t_L U3115 ( .A(n2687), .B(n2688), .C(n2685), .D(n2684), 
        .Y(n2976) );
  AND5x1_ASAP7_75t_L U3116 ( .A(n2680), .B(n2678), .C(n2675), .D(n2753), .E(
        n2673), .Y(n2974) );
  AND4x1_ASAP7_75t_L U3117 ( .A(n2669), .B(n2978), .C(n2676), .D(n2979), .Y(
        n2973) );
  NAND5xp2_ASAP7_75t_L U3118 ( .A(n2632), .B(n2643), .C(n2640), .D(n2980), .E(
        n2981), .Y(n2971) );
  NOR5xp2_ASAP7_75t_L U3119 ( .A(n2637), .B(n2638), .C(n2641), .D(n2646), .E(
        n2645), .Y(n2981) );
  INVx1_ASAP7_75t_L U3120 ( .A(n2982), .Y(n2645) );
  INVx1_ASAP7_75t_L U3121 ( .A(n2642), .Y(n2980) );
  NAND5xp2_ASAP7_75t_L U3122 ( .A(n2653), .B(n2983), .C(n2984), .D(n2656), .E(
        n2985), .Y(n2970) );
  NOR5xp2_ASAP7_75t_L U3123 ( .A(n2658), .B(n2657), .C(n2590), .D(n2605), .E(
        n2660), .Y(n2985) );
  O2A1O1Ixp33_ASAP7_75t_L U3124 ( .A1(i_tv80_core_Arith16_r_reg_net_Q), .A2(
        i_tv80_core_Z16_r_reg_net_Q), .B(n2559), .C(
        i_tv80_core_ALU_Op_r_reg_3__net_Q), .Y(n2984) );
  INVx1_ASAP7_75t_L U3125 ( .A(n2655), .Y(n2983) );
  NAND3xp33_ASAP7_75t_L U3126 ( .A(n2986), .B(n2987), .C(n2988), .Y(n2634) );
  AOI221xp5_ASAP7_75t_L U3127 ( .A1(i_tv80_core_BusB_reg_7__net_Q), .A2(n2989), 
        .B1(i_tv80_core_BusB_reg_4__net_Q), .B2(n2990), .C(n2991), .Y(n2988)
         );
  OAI21xp33_ASAP7_75t_L U3128 ( .A1(n2992), .A2(n2993), .B(n2994), .Y(n2991)
         );
  AOI222xp33_ASAP7_75t_L U3129 ( .A1(i_tv80_core_BusB_reg_6__net_Q), .A2(n2995), .B1(i_tv80_core_BusB_reg_5__net_Q), .B2(n2996), .C1(
        i_tv80_core_BusB_reg_1__net_Q), .C2(n2997), .Y(n2987) );
  AOI22xp33_ASAP7_75t_L U3130 ( .A1(i_tv80_core_BusB_reg_0__net_Q), .A2(n2998), 
        .B1(i_tv80_core_BusB_reg_3__net_Q), .B2(n2999), .Y(n2986) );
  AND4x1_ASAP7_75t_L U3131 ( .A(n3000), .B(n3001), .C(n3002), .D(n3003), .Y(
        n2965) );
  NAND5xp2_ASAP7_75t_L U3132 ( .A(n3004), .B(n3005), .C(n3006), .D(n3007), .E(
        n3008), .Y(n2967) );
  AND4x1_ASAP7_75t_L U3133 ( .A(n3009), .B(n3010), .C(n3011), .D(n3012), .Y(
        n3008) );
  NAND5xp2_ASAP7_75t_L U3134 ( .A(n3013), .B(n3014), .C(n3015), .D(n3016), .E(
        n3017), .Y(n2966) );
  AND4x1_ASAP7_75t_L U3135 ( .A(n3018), .B(n3019), .C(n3020), .D(n3021), .Y(
        n3017) );
  A2O1A1Ixp33_ASAP7_75t_L U3136 ( .A1(n2959), .A2(n2877), .B(n2878), .C(n3022), 
        .Y(U496_net_Y) );
  NAND2xp33_ASAP7_75t_L U3137 ( .A(n2872), .B(i_tv80_core_Save_ALU_r_reg_net_Q), .Y(n3022) );
  INVx1_ASAP7_75t_L U3138 ( .A(n2886), .Y(n2878) );
  NOR2xp33_ASAP7_75t_L U3139 ( .A(n2463), .B(n2724), .Y(n2886) );
  NOR4xp25_ASAP7_75t_L U3140 ( .A(n3023), .B(n2930), .C(n3024), .D(n3025), .Y(
        n2877) );
  INVx1_ASAP7_75t_L U3141 ( .A(n3026), .Y(n3025) );
  OAI22xp33_ASAP7_75t_L U3142 ( .A1(n3027), .A2(n3028), .B1(n3029), .B2(n3030), 
        .Y(n2930) );
  AOI321xp33_ASAP7_75t_L U3143 ( .A1(n3031), .A2(n2936), .A3(n3032), .B1(n2945), .B2(n3033), .C(n2955), .Y(n3029) );
  A2O1A1Ixp33_ASAP7_75t_L U3144 ( .A1(n2944), .A2(n3034), .B(n2867), .C(n3035), 
        .Y(n2955) );
  NAND2xp33_ASAP7_75t_L U3145 ( .A(n3032), .B(n3036), .Y(n3035) );
  NOR2xp33_ASAP7_75t_L U3146 ( .A(n3037), .B(n2890), .Y(n2959) );
  OAI32xp33_ASAP7_75t_L U3147 ( .A1(n3038), .A2(n2463), .A3(n2931), .B1(n2497), 
        .B2(n3039), .Y(U494_net_Y) );
  INVx1_ASAP7_75t_L U3148 ( .A(i_tv80_core_Z16_r_reg_net_Q), .Y(n3039) );
  OAI321xp33_ASAP7_75t_L U3149 ( .A1(n2908), .A2(n2766), .A3(n2765), .B1(n3040), .B2(n3041), .C(n3042), .Y(n2931) );
  AOI221xp5_ASAP7_75t_L U3150 ( .A1(n2925), .A2(n3043), .B1(n3044), .B2(n2951), 
        .C(n3045), .Y(n3040) );
  OAI22xp33_ASAP7_75t_L U3151 ( .A1(n2945), .A2(n3046), .B1(n3047), .B2(n3048), 
        .Y(n3043) );
  NAND3xp33_ASAP7_75t_L U3152 ( .A(n2960), .B(n3049), .C(n2957), .Y(n3038) );
  OAI221xp5_ASAP7_75t_L U3153 ( .A1(n3050), .A2(n2752), .B1(n2922), .B2(n3051), 
        .C(n3052), .Y(n2960) );
  AOI221xp5_ASAP7_75t_L U3154 ( .A1(n3044), .A2(n3053), .B1(n2925), .B2(n3054), 
        .C(n3037), .Y(n3052) );
  OAI221xp5_ASAP7_75t_L U3155 ( .A1(n2867), .A2(n3034), .B1(n3055), .B2(n3056), 
        .C(n3057), .Y(n3054) );
  INVx1_ASAP7_75t_L U3156 ( .A(n2928), .Y(n3057) );
  OAI22xp33_ASAP7_75t_L U3157 ( .A1(n3055), .A2(n3048), .B1(n2867), .B2(n2946), 
        .Y(n2928) );
  AOI211xp5_ASAP7_75t_L U3158 ( .A1(n2925), .A2(n3058), .B(n3045), .C(n3044), 
        .Y(n3050) );
  OAI211xp5_ASAP7_75t_L U3159 ( .A1(n2947), .A2(n3059), .B(n3060), .C(n2939), 
        .Y(n3045) );
  INVx1_ASAP7_75t_L U3160 ( .A(n3061), .Y(n2939) );
  OAI221xp5_ASAP7_75t_L U3161 ( .A1(n3062), .A2(n3063), .B1(n3064), .B2(n2766), 
        .C(n3065), .Y(n3061) );
  AND4x1_ASAP7_75t_L U3162 ( .A(n3066), .B(n3067), .C(n3068), .D(n3069), .Y(
        n3064) );
  INVx1_ASAP7_75t_L U3163 ( .A(n3070), .Y(n3069) );
  AOI221xp5_ASAP7_75t_L U3164 ( .A1(n3071), .A2(n3072), .B1(n2951), .B2(n2913), 
        .C(n3073), .Y(n3066) );
  AOI211xp5_ASAP7_75t_L U3165 ( .A1(n3074), .A2(n3075), .B(n3076), .C(n3077), 
        .Y(n3062) );
  INVx1_ASAP7_75t_L U3166 ( .A(n3078), .Y(n3077) );
  NAND2xp33_ASAP7_75t_L U3167 ( .A(n3079), .B(n3080), .Y(n3076) );
  A2O1A1Ixp33_ASAP7_75t_L U3168 ( .A1(n2954), .A2(n3081), .B(n3082), .C(
        i_tv80_core_ISet_reg_1__net_Q), .Y(n3060) );
  NOR4xp25_ASAP7_75t_L U3169 ( .A(n3083), .B(n2945), .C(n3084), .D(
        i_tv80_core_mcycle_reg_2__net_Q), .Y(n2947) );
  OAI211xp5_ASAP7_75t_L U3170 ( .A1(n2945), .A2(n2944), .B(n2946), .C(n3085), 
        .Y(n3058) );
  INVx1_ASAP7_75t_L U3171 ( .A(n2943), .Y(n3085) );
  OAI221xp5_ASAP7_75t_L U3172 ( .A1(n3047), .A2(n3048), .B1(n2945), .B2(n3086), 
        .C(n3034), .Y(n2943) );
  NOR2xp33_ASAP7_75t_L U3173 ( .A(n2945), .B(n3087), .Y(n3047) );
  OAI22xp33_ASAP7_75t_L U3174 ( .A1(n3063), .A2(n3088), .B1(n3089), .B2(n3090), 
        .Y(U491_net_Y) );
  OAI22xp33_ASAP7_75t_L U3175 ( .A1(n3049), .A2(n3088), .B1(n3091), .B2(n3090), 
        .Y(U490_net_Y) );
  OAI211xp5_ASAP7_75t_L U3176 ( .A1(n3091), .A2(n3089), .B(n3088), .C(n2493), 
        .Y(n3090) );
  OAI211xp5_ASAP7_75t_L U3177 ( .A1(n3092), .A2(n3091), .B(n2495), .C(reset_n), 
        .Y(n3088) );
  OAI32xp33_ASAP7_75t_L U3178 ( .A1(n3093), .A2(n3094), .A3(n2461), .B1(n3092), 
        .B2(n3095), .Y(U488_net_Y) );
  OAI32xp33_ASAP7_75t_L U3179 ( .A1(i_tv80_core_Alternate_reg_net_Q), .A2(
        n3096), .A3(n2463), .B1(n3097), .B2(n3098), .Y(U485_net_Y) );
  INVx1_ASAP7_75t_L U3180 ( .A(n3096), .Y(n3098) );
  AOI31xp33_ASAP7_75t_L U3181 ( .A1(n2553), .A2(n3099), .A3(n2896), .B(n2461), 
        .Y(n3096) );
  OAI211xp5_ASAP7_75t_L U3182 ( .A1(wait_n), .A2(
        i_tv80_core_tstate_reg_0__net_Q), .B(reset_n), .C(n3100), .Y(
        U484_net_Y) );
  OAI321xp33_ASAP7_75t_L U3183 ( .A1(n3101), .A2(n3102), .A3(n3103), .B1(n3104), .B2(n3105), .C(n3106), .Y(U477_net_Y) );
  AOI21xp33_ASAP7_75t_L U3184 ( .A1(i_tv80_core_mcycle_reg_1__net_Q), .A2(
        n3107), .B(n3108), .Y(n3103) );
  OAI211xp5_ASAP7_75t_L U3185 ( .A1(n3108), .A2(n3101), .B(reset_n), .C(n3109), 
        .Y(U474_net_Y) );
  AOI32xp33_ASAP7_75t_L U3186 ( .A1(n3110), .A2(n3111), .A3(n3105), .B1(n3112), 
        .B2(i_tv80_core_mcycle_reg_0__net_Q), .Y(n3109) );
  INVx1_ASAP7_75t_L U3187 ( .A(n3113), .Y(n3110) );
  OAI21xp33_ASAP7_75t_L U3188 ( .A1(n2497), .A2(n3114), .B(n3115), .Y(
        U472_net_Y) );
  AO21x1_ASAP7_75t_L U3189 ( .A1(n3042), .A2(n3116), .B(n2463), .Y(n3115) );
  INVx1_ASAP7_75t_L U3190 ( .A(n3037), .Y(n3042) );
  INVx1_ASAP7_75t_L U3191 ( .A(i_tv80_core_PreserveC_r_reg_net_Q), .Y(n3114)
         );
  OAI22xp33_ASAP7_75t_L U3192 ( .A1(n2497), .A2(n3117), .B1(n3118), .B2(n2463), 
        .Y(U463_net_Y) );
  AOI222xp33_ASAP7_75t_L U3193 ( .A1(n2925), .A2(n3048), .B1(n2881), .B2(n3119), .C1(i_tv80_core_ISet_reg_1__net_Q), .C2(n3120), .Y(n3118) );
  NAND4xp25_ASAP7_75t_L U3194 ( .A(n3121), .B(n3122), .C(n3123), .D(n3124), 
        .Y(n3119) );
  NOR4xp25_ASAP7_75t_L U3195 ( .A(n3125), .B(n2914), .C(n3126), .D(n3127), .Y(
        n3124) );
  OAI21xp33_ASAP7_75t_L U3196 ( .A1(n3128), .A2(n3129), .B(n3130), .Y(n3125)
         );
  AOI22xp33_ASAP7_75t_L U3197 ( .A1(n2764), .A2(n2738), .B1(n2727), .B2(n2559), 
        .Y(n3128) );
  AOI221xp5_ASAP7_75t_L U3198 ( .A1(n3131), .A2(n3132), .B1(n3133), .B2(n3055), 
        .C(n3134), .Y(n3123) );
  OAI221xp5_ASAP7_75t_L U3199 ( .A1(n2767), .A2(n2738), .B1(n2908), .B2(n2559), 
        .C(n3135), .Y(n3132) );
  INVx1_ASAP7_75t_L U3200 ( .A(i_tv80_core_mcycles_reg_0__net_Q), .Y(n3117) );
  OAI22xp33_ASAP7_75t_L U3201 ( .A1(n2497), .A2(n3136), .B1(n3137), .B2(n2463), 
        .Y(U455_net_Y) );
  NOR4xp25_ASAP7_75t_L U3202 ( .A(n3138), .B(n3139), .C(n3140), .D(n3044), .Y(
        n3137) );
  OAI221xp5_ASAP7_75t_L U3203 ( .A1(n3141), .A2(n2766), .B1(n3030), .B2(n3048), 
        .C(n3142), .Y(n3138) );
  OAI21xp33_ASAP7_75t_L U3204 ( .A1(n3143), .A2(n3144), .B(
        i_tv80_core_ISet_reg_1__net_Q), .Y(n3142) );
  NOR5xp2_ASAP7_75t_L U3205 ( .A(n3145), .B(n3146), .C(n3147), .D(n3073), .E(
        n3148), .Y(n3141) );
  NAND4xp25_ASAP7_75t_L U3206 ( .A(n2921), .B(n3149), .C(n3150), .D(n3151), 
        .Y(n3073) );
  NOR3xp33_ASAP7_75t_L U3207 ( .A(n3152), .B(n3153), .C(n3154), .Y(n3151) );
  AOI21xp33_ASAP7_75t_L U3208 ( .A1(n3155), .A2(n3156), .B(n3157), .Y(n3150)
         );
  NAND3xp33_ASAP7_75t_L U3209 ( .A(n3158), .B(n3051), .C(n3159), .Y(n3145) );
  O2A1O1Ixp33_ASAP7_75t_L U3210 ( .A1(n3160), .A2(n3161), .B(n3162), .C(n3072), 
        .Y(n3159) );
  INVx1_ASAP7_75t_L U3211 ( .A(i_tv80_core_mcycles_reg_1__net_Q), .Y(n3136) );
  OAI32xp33_ASAP7_75t_L U3212 ( .A1(n2463), .A2(n3163), .A3(n3051), .B1(n2629), 
        .B2(n2497), .Y(U454_net_Y) );
  INVx1_ASAP7_75t_L U3213 ( .A(n2913), .Y(n3051) );
  OAI32xp33_ASAP7_75t_L U3214 ( .A1(n3164), .A2(n3165), .A3(n2463), .B1(n3166), 
        .B2(n3167), .Y(U446_net_Y) );
  OAI32xp33_ASAP7_75t_L U3215 ( .A1(n3164), .A2(n3168), .A3(n2463), .B1(n3166), 
        .B2(n3169), .Y(U444_net_Y) );
  INVx1_ASAP7_75t_L U3216 ( .A(n3164), .Y(n3166) );
  OAI31xp33_ASAP7_75t_L U3217 ( .A1(n2461), .A2(n3168), .A3(n3165), .B(n2497), 
        .Y(n3164) );
  AOI211xp5_ASAP7_75t_L U3218 ( .A1(n3170), .A2(n3171), .B(n3172), .C(n3173), 
        .Y(n3165) );
  AOI211xp5_ASAP7_75t_L U3219 ( .A1(n3174), .A2(n3171), .B(n3175), .C(n3173), 
        .Y(n3168) );
  NAND5xp2_ASAP7_75t_L U3220 ( .A(n3176), .B(n3079), .C(n3177), .D(n3178), .E(
        n3179), .Y(n3173) );
  NOR4xp25_ASAP7_75t_L U3221 ( .A(n2881), .B(n2925), .C(n2904), .D(n3180), .Y(
        n3179) );
  O2A1O1Ixp33_ASAP7_75t_L U3222 ( .A1(n2724), .A2(n3181), .B(n3182), .C(n2461), 
        .Y(U442_net_Y) );
  OAI21xp33_ASAP7_75t_L U3223 ( .A1(n3183), .A2(n2365), .B(n3184), .Y(
        U433_net_Y) );
  OAI211xp5_ASAP7_75t_L U3224 ( .A1(n2728), .A2(n3183), .B(reset_n), .C(n2365), 
        .Y(n3184) );
  OAI22xp33_ASAP7_75t_L U3225 ( .A1(i_tv80_core_tstate_reg_1__net_Q), .A2(
        n3185), .B1(n2369), .B2(n3186), .Y(U431_net_Y) );
  OA21x2_ASAP7_75t_L U3226 ( .A1(i_tv80_core_tstate_reg_0__net_Q), .A2(n2368), 
        .B(n2365), .Y(n2369) );
  INVx1_ASAP7_75t_L U3227 ( .A(n2366), .Y(n2368) );
  NAND3xp33_ASAP7_75t_L U3228 ( .A(i_tv80_core_tstate_reg_0__net_Q), .B(n2365), 
        .C(n2366), .Y(n3185) );
  OAI31xp33_ASAP7_75t_L U3229 ( .A1(n3187), .A2(n3188), .A3(n3189), .B(n3112), 
        .Y(n2365) );
  NOR2xp33_ASAP7_75t_L U3230 ( .A(n2870), .B(
        i_tv80_core_Auto_Wait_t1_reg_net_Q), .Y(n3189) );
  OAI311xp33_ASAP7_75t_L U3231 ( .A1(n2867), .A2(
        i_tv80_core_Auto_Wait_t2_reg_net_Q), .A3(n2869), .B1(n3182), .C1(n2724), .Y(n3187) );
  OAI32xp33_ASAP7_75t_L U3232 ( .A1(n3190), .A2(n2461), .A3(n3191), .B1(n3192), 
        .B2(n3193), .Y(U425_net_Y) );
  OAI22xp33_ASAP7_75t_L U3233 ( .A1(n3194), .A2(n3195), .B1(n3196), .B2(n3197), 
        .Y(U417_net_Y) );
  OAI211xp5_ASAP7_75t_L U3234 ( .A1(i_tv80_core_IntE_FF2_reg_net_Q), .A2(n3028), .B(n3198), .C(n3112), .Y(n3197) );
  INVx1_ASAP7_75t_L U3235 ( .A(n3105), .Y(n3112) );
  INVx1_ASAP7_75t_L U3236 ( .A(n3195), .Y(n3196) );
  OAI311xp33_ASAP7_75t_L U3237 ( .A1(n3199), .A2(n3200), .A3(n3201), .B1(n3202), .C1(n3203), .Y(n3195) );
  AOI31xp33_ASAP7_75t_L U3238 ( .A1(n2957), .A2(n3204), .A3(n3143), .B(n3205), 
        .Y(n3203) );
  OAI21xp33_ASAP7_75t_L U3239 ( .A1(i_tv80_core_NMI_s_reg_net_Q), .A2(n3206), 
        .B(n3207), .Y(n3199) );
  INVx1_ASAP7_75t_L U3240 ( .A(i_tv80_core_IntE_FF1_reg_net_Q), .Y(n3194) );
  OAI32xp33_ASAP7_75t_L U3241 ( .A1(n3208), .A2(n3205), .A3(n3209), .B1(n3210), 
        .B2(n3211), .Y(U410_net_Y) );
  INVx1_ASAP7_75t_L U3242 ( .A(i_tv80_core_IntE_FF2_reg_net_Q), .Y(n3210) );
  AOI22xp33_ASAP7_75t_L U3243 ( .A1(n3191), .A2(n3182), .B1(
        i_tv80_core_BusReq_s_reg_net_Q), .B2(reset_n), .Y(n3209) );
  INVx1_ASAP7_75t_L U3244 ( .A(n3212), .Y(n3182) );
  INVx1_ASAP7_75t_L U3245 ( .A(n3198), .Y(n3205) );
  INVx1_ASAP7_75t_L U3246 ( .A(n3211), .Y(n3208) );
  OAI211xp5_ASAP7_75t_L U3247 ( .A1(n3191), .A2(n3213), .B(n3198), .C(n3202), 
        .Y(n3211) );
  OA21x2_ASAP7_75t_L U3248 ( .A1(n3214), .A2(n3215), .B(reset_n), .Y(n3202) );
  NAND4xp25_ASAP7_75t_L U3249 ( .A(n3216), .B(n2364), .C(n3217), .D(n2881), 
        .Y(n3198) );
  INVx1_ASAP7_75t_L U3250 ( .A(n3207), .Y(n3213) );
  NAND5xp2_ASAP7_75t_L U3251 ( .A(n3091), .B(n3218), .C(n3089), .D(
        i_tv80_core_IntE_FF1_reg_net_Q), .E(n3206), .Y(n3191) );
  AND2x2_ASAP7_75t_L U3252 ( .A(i_tv80_core_INT_s_reg_net_Q), .B(n3215), .Y(
        n3206) );
  NAND2xp33_ASAP7_75t_L U3253 ( .A(n3219), .B(n3217), .Y(n3215) );
  OAI221xp5_ASAP7_75t_L U3254 ( .A1(n3220), .A2(n3101), .B1(n3221), .B2(n3105), 
        .C(n3106), .Y(U405_net_Y) );
  NAND3xp33_ASAP7_75t_L U3255 ( .A(reset_n), .B(n3105), .C(n3222), .Y(n3106)
         );
  NAND4xp25_ASAP7_75t_L U3256 ( .A(reset_n), .B(n3111), .C(n3113), .D(n3105), 
        .Y(n3101) );
  NAND2xp33_ASAP7_75t_L U3257 ( .A(reset_n), .B(n3223), .Y(n3105) );
  AOI321xp33_ASAP7_75t_L U3258 ( .A1(i_tv80_core_Pre_XY_F_M_reg_2__net_Q), 
        .A2(n3224), .A3(n3225), .B1(n3102), .B2(n3226), .C(n3227), .Y(n3220)
         );
  AOI21xp33_ASAP7_75t_L U3259 ( .A1(n3221), .A2(n3224), .B(n3225), .Y(n3227)
         );
  INVx1_ASAP7_75t_L U3260 ( .A(n3224), .Y(n3102) );
  NAND3xp33_ASAP7_75t_L U3261 ( .A(n3108), .B(n3107), .C(
        i_tv80_core_mcycle_reg_1__net_Q), .Y(n3224) );
  NAND2xp33_ASAP7_75t_L U3262 ( .A(n3228), .B(n3225), .Y(n3107) );
  OAI22xp33_ASAP7_75t_L U3263 ( .A1(n3229), .A2(n3225), .B1(n3230), .B2(n3231), 
        .Y(n3108) );
  INVx1_ASAP7_75t_L U3264 ( .A(n3230), .Y(n3225) );
  OAI22xp33_ASAP7_75t_L U3265 ( .A1(n2497), .A2(n3232), .B1(n3233), .B2(n2463), 
        .Y(U399_net_Y) );
  AOI221xp5_ASAP7_75t_L U3266 ( .A1(i_tv80_core_ISet_reg_1__net_Q), .A2(n3234), 
        .B1(n2881), .B2(n3235), .C(n3236), .Y(n3233) );
  OR4x1_ASAP7_75t_L U3267 ( .A(n3237), .B(n3238), .C(n3239), .D(n3240), .Y(
        n3235) );
  A2O1A1Ixp33_ASAP7_75t_L U3268 ( .A1(n3241), .A2(n3242), .B(n3243), .C(n3067), 
        .Y(n3240) );
  INVx1_ASAP7_75t_L U3269 ( .A(n3244), .Y(n3242) );
  INVx1_ASAP7_75t_L U3270 ( .A(n3176), .Y(n3234) );
  NOR4xp25_ASAP7_75t_L U3271 ( .A(n3075), .B(n3082), .C(n3245), .D(n2954), .Y(
        n3176) );
  INVx1_ASAP7_75t_L U3272 ( .A(i_tv80_core_mcycles_reg_2__net_Q), .Y(n3232) );
  OAI22xp33_ASAP7_75t_L U3273 ( .A1(n2557), .A2(n3246), .B1(n3247), .B2(n2560), 
        .Y(U391_net_Y) );
  AOI211xp5_ASAP7_75t_L U3274 ( .A1(n2561), .A2(n2510), .B(n2461), .C(n3248), 
        .Y(n3246) );
  AOI221xp5_ASAP7_75t_L U3275 ( .A1(n2563), .A2(n2403), .B1(n3249), .B2(n2566), 
        .C(n2567), .Y(n3248) );
  INVx1_ASAP7_75t_L U3276 ( .A(n2577), .Y(n2567) );
  NAND2xp33_ASAP7_75t_L U3277 ( .A(n2552), .B(n2547), .Y(n2577) );
  AND4x1_ASAP7_75t_L U3278 ( .A(n2861), .B(n2811), .C(n2862), .D(n2814), .Y(
        n2552) );
  OAI32xp33_ASAP7_75t_L U3279 ( .A1(n2568), .A2(n3250), .A3(n3251), .B1(
        i_tv80_core_Fp_reg_7__net_Q), .B2(n2570), .Y(n3249) );
  AO21x1_ASAP7_75t_L U3280 ( .A1(n2665), .A2(i_tv80_core_F_reg_7__net_Q), .B(
        n3252), .Y(n3251) );
  OAI221xp5_ASAP7_75t_L U3281 ( .A1(n2766), .A2(n2754), .B1(
        i_tv80_core_ALU_Op_r_reg_3__net_Q), .B2(n2629), .C(n2607), .Y(n2665)
         );
  INVx1_ASAP7_75t_L U3282 ( .A(n2593), .Y(n2607) );
  OAI211xp5_ASAP7_75t_L U3283 ( .A1(n2588), .A2(n2589), .B(n3253), .C(n3254), 
        .Y(n2593) );
  AO32x1_ASAP7_75t_L U3284 ( .A1(n2657), .A2(n2629), .A3(n2589), .B1(n3255), 
        .B2(n2632), .Y(n3250) );
  NOR2xp33_ASAP7_75t_L U3285 ( .A(n2754), .B(n2881), .Y(n2632) );
  INVx1_ASAP7_75t_L U3286 ( .A(i_tv80_core_Arith16_r_reg_net_Q), .Y(n2629) );
  INVx1_ASAP7_75t_L U3287 ( .A(n2570), .Y(n2568) );
  INVx1_ASAP7_75t_L U3288 ( .A(n2566), .Y(n2563) );
  INVx1_ASAP7_75t_L U3289 ( .A(n2560), .Y(n2557) );
  A2O1A1Ixp33_ASAP7_75t_L U3290 ( .A1(n2726), .A2(n2566), .B(n2872), .C(n2614), 
        .Y(n2560) );
  OAI21xp33_ASAP7_75t_L U3291 ( .A1(n2561), .A2(n2461), .B(n2497), .Y(n2614)
         );
  NAND3xp33_ASAP7_75t_L U3292 ( .A(n2905), .B(n2728), .C(n3256), .Y(n2566) );
  AOI21xp33_ASAP7_75t_L U3293 ( .A1(n2866), .A2(n2549), .B(n2570), .Y(n2726)
         );
  OAI21xp33_ASAP7_75t_L U3294 ( .A1(n2964), .A2(n3257), .B(n2610), .Y(n2570)
         );
  NOR3xp33_ASAP7_75t_L U3295 ( .A(n2766), .B(n3087), .C(n3149), .Y(n2964) );
  OAI221xp5_ASAP7_75t_L U3296 ( .A1(n3258), .A2(n3259), .B1(
        i_tv80_core_PC_reg_15__net_Q), .B2(n3260), .C(n3261), .Y(U386_net_Y)
         );
  AOI22xp33_ASAP7_75t_L U3297 ( .A1(n3262), .A2(n3263), .B1(n3264), .B2(
        i_tv80_core_I_reg_7__net_Q), .Y(n3261) );
  AOI22xp33_ASAP7_75t_L U3298 ( .A1(n3265), .A2(n3266), .B1(n3267), .B2(n3268), 
        .Y(n3260) );
  INVx1_ASAP7_75t_L U3299 ( .A(i_tv80_core_PC_reg_15__net_Q), .Y(n3259) );
  AOI221xp5_ASAP7_75t_L U3300 ( .A1(n3267), .A2(n3266), .B1(n3268), .B2(n3265), 
        .C(n3269), .Y(n3258) );
  INVx1_ASAP7_75t_L U3301 ( .A(n3266), .Y(n3268) );
  OAI22xp33_ASAP7_75t_L U3302 ( .A1(n3270), .A2(n3271), .B1(
        i_tv80_core_PC_reg_14__net_Q), .B2(n3272), .Y(n3266) );
  NOR2xp33_ASAP7_75t_L U3303 ( .A(n3273), .B(n3274), .Y(n3272) );
  OAI22xp33_ASAP7_75t_L U3304 ( .A1(n3275), .A2(n3276), .B1(n3277), .B2(n3278), 
        .Y(U382_net_Y) );
  NAND3xp33_ASAP7_75t_L U3305 ( .A(n3279), .B(n3280), .C(n2493), .Y(n3276) );
  INVx1_ASAP7_75t_L U3306 ( .A(n3277), .Y(n3275) );
  O2A1O1Ixp33_ASAP7_75t_L U3307 ( .A1(i_tv80_core_F_reg_2__net_Q), .A2(n2623), 
        .B(n3281), .C(n2461), .Y(U379_net_Y) );
  AOI21xp33_ASAP7_75t_L U3308 ( .A1(n3279), .A2(n3282), .B(n3283), .Y(n3281)
         );
  AOI211xp5_ASAP7_75t_L U3309 ( .A1(n3284), .A2(n2952), .B(n2559), .C(n3028), 
        .Y(n3283) );
  OR2x2_ASAP7_75t_L U3310 ( .A(n2620), .B(n3285), .Y(n3279) );
  INVx1_ASAP7_75t_L U3311 ( .A(n2620), .Y(n2623) );
  NOR2xp33_ASAP7_75t_L U3312 ( .A(n3028), .B(n3286), .Y(n2620) );
  NOR2xp33_ASAP7_75t_L U3313 ( .A(int_n), .B(n2461), .Y(U378_net_Y) );
  NOR2xp33_ASAP7_75t_L U3314 ( .A(busrq_n), .B(n2461), .Y(U377_net_Y) );
  NAND3xp33_ASAP7_75t_L U3315 ( .A(n3287), .B(n3288), .C(n3289), .Y(U303_net_Y) );
  AOI221xp5_ASAP7_75t_L U3316 ( .A1(n3290), .A2(i_tv80_core_PC_reg_4__net_Q), 
        .B1(i_tv80_core_PC_reg_12__net_Q), .B2(n3291), .C(n3292), .Y(n3289) );
  OAI222xp33_ASAP7_75t_L U3317 ( .A1(n2834), .A2(n3293), .B1(n3294), .B2(n3295), .C1(n2785), .C2(n3296), .Y(n3292) );
  INVx1_ASAP7_75t_L U3318 ( .A(n3297), .Y(n3294) );
  AOI222xp33_ASAP7_75t_L U3319 ( .A1(n3298), .A2(n3299), .B1(n3300), .B2(
        i_tv80_core_ACC_reg_4__net_Q), .C1(n3301), .C2(di_reg_reg_4__net_Q), 
        .Y(n3288) );
  AOI22xp33_ASAP7_75t_L U3320 ( .A1(n3302), .A2(i_tv80_core_F_reg_4__net_Q), 
        .B1(i_tv80_core_BusB_reg_4__net_Q), .B2(i_tv80_core_BusAck_reg_net_Q), 
        .Y(n3287) );
  NAND3xp33_ASAP7_75t_L U3321 ( .A(n3303), .B(n3304), .C(n3305), .Y(U296_net_Y) );
  AOI221xp5_ASAP7_75t_L U3322 ( .A1(n3290), .A2(i_tv80_core_PC_reg_3__net_Q), 
        .B1(i_tv80_core_PC_reg_11__net_Q), .B2(n3291), .C(n3306), .Y(n3305) );
  OAI222xp33_ASAP7_75t_L U3323 ( .A1(n2839), .A2(n3293), .B1(n3307), .B2(n3295), .C1(n2789), .C2(n3296), .Y(n3306) );
  INVx1_ASAP7_75t_L U3324 ( .A(n3308), .Y(n3307) );
  AOI222xp33_ASAP7_75t_L U3325 ( .A1(n3298), .A2(n3309), .B1(n3300), .B2(
        i_tv80_core_ACC_reg_3__net_Q), .C1(n3301), .C2(di_reg_reg_3__net_Q), 
        .Y(n3304) );
  AOI22xp33_ASAP7_75t_L U3326 ( .A1(n3302), .A2(i_tv80_core_F_reg_3__net_Q), 
        .B1(i_tv80_core_BusB_reg_3__net_Q), .B2(i_tv80_core_BusAck_reg_net_Q), 
        .Y(n3303) );
  NAND3xp33_ASAP7_75t_L U3327 ( .A(n3310), .B(n3311), .C(n3312), .Y(U289_net_Y) );
  AOI221xp5_ASAP7_75t_L U3328 ( .A1(n3290), .A2(i_tv80_core_PC_reg_2__net_Q), 
        .B1(i_tv80_core_PC_reg_10__net_Q), .B2(n3291), .C(n3313), .Y(n3312) );
  OAI222xp33_ASAP7_75t_L U3329 ( .A1(n2844), .A2(n3293), .B1(n3314), .B2(n3295), .C1(n2793), .C2(n3296), .Y(n3313) );
  INVx1_ASAP7_75t_L U3330 ( .A(n3315), .Y(n3314) );
  INVx1_ASAP7_75t_L U3331 ( .A(i_tv80_core_SP_reg_2__net_Q), .Y(n2844) );
  AOI222xp33_ASAP7_75t_L U3332 ( .A1(n3298), .A2(n3316), .B1(n3300), .B2(
        i_tv80_core_ACC_reg_2__net_Q), .C1(n3301), .C2(di_reg_reg_2__net_Q), 
        .Y(n3311) );
  AOI22xp33_ASAP7_75t_L U3333 ( .A1(n3302), .A2(i_tv80_core_F_reg_2__net_Q), 
        .B1(i_tv80_core_BusB_reg_2__net_Q), .B2(i_tv80_core_BusAck_reg_net_Q), 
        .Y(n3310) );
  NAND3xp33_ASAP7_75t_L U3334 ( .A(n3317), .B(n3318), .C(n3319), .Y(U282_net_Y) );
  AOI221xp5_ASAP7_75t_L U3335 ( .A1(i_tv80_core_PC_reg_1__net_Q), .A2(n3290), 
        .B1(i_tv80_core_PC_reg_9__net_Q), .B2(n3291), .C(n3320), .Y(n3319) );
  OAI222xp33_ASAP7_75t_L U3336 ( .A1(n2849), .A2(n3293), .B1(n3321), .B2(n3295), .C1(n2797), .C2(n3296), .Y(n3320) );
  INVx1_ASAP7_75t_L U3337 ( .A(n3322), .Y(n3321) );
  INVx1_ASAP7_75t_L U3338 ( .A(i_tv80_core_SP_reg_1__net_Q), .Y(n2849) );
  AOI222xp33_ASAP7_75t_L U3339 ( .A1(n3298), .A2(n3323), .B1(n3300), .B2(
        i_tv80_core_ACC_reg_1__net_Q), .C1(n3301), .C2(di_reg_reg_1__net_Q), 
        .Y(n3318) );
  AOI22xp33_ASAP7_75t_L U3340 ( .A1(n3302), .A2(i_tv80_core_F_reg_1__net_Q), 
        .B1(i_tv80_core_BusB_reg_1__net_Q), .B2(i_tv80_core_BusAck_reg_net_Q), 
        .Y(n3317) );
  NAND4xp25_ASAP7_75t_L U3341 ( .A(n3324), .B(n3325), .C(n3326), .D(n3327), 
        .Y(U273_net_Y) );
  INVx1_ASAP7_75t_L U3342 ( .A(n3328), .Y(n3327) );
  OAI22xp33_ASAP7_75t_L U3343 ( .A1(n3295), .A2(n3329), .B1(n3296), .B2(n2801), 
        .Y(n3328) );
  INVx1_ASAP7_75t_L U3344 ( .A(n3330), .Y(n3329) );
  AOI22xp33_ASAP7_75t_L U3345 ( .A1(n3290), .A2(i_tv80_core_PC_reg_0__net_Q), 
        .B1(i_tv80_core_PC_reg_8__net_Q), .B2(n3291), .Y(n3326) );
  AOI22xp33_ASAP7_75t_L U3346 ( .A1(n3300), .A2(i_tv80_core_ACC_reg_0__net_Q), 
        .B1(n3301), .B2(di_reg_reg_0__net_Q), .Y(n3325) );
  AOI322xp5_ASAP7_75t_L U3347 ( .A1(n3331), .A2(n3332), .A3(busak_n), .B1(
        n3298), .B2(n3333), .C1(i_tv80_core_BusB_reg_0__net_Q), .C2(
        i_tv80_core_BusAck_reg_net_Q), .Y(n3324) );
  O2A1O1Ixp33_ASAP7_75t_L U3348 ( .A1(n2854), .A2(n3334), .B(n3335), .C(n3336), 
        .Y(n3331) );
  OAI21xp33_ASAP7_75t_L U3349 ( .A1(n3337), .A2(i_tv80_core_F_reg_0__net_Q), 
        .B(n2381), .Y(n3335) );
  INVx1_ASAP7_75t_L U3350 ( .A(i_tv80_core_SP_reg_0__net_Q), .Y(n2854) );
  NAND3xp33_ASAP7_75t_L U3351 ( .A(n3338), .B(n3339), .C(n3340), .Y(U266_net_Y) );
  AOI221xp5_ASAP7_75t_L U3352 ( .A1(i_tv80_core_PC_reg_5__net_Q), .A2(n3290), 
        .B1(i_tv80_core_PC_reg_13__net_Q), .B2(n3291), .C(n3341), .Y(n3340) );
  OAI222xp33_ASAP7_75t_L U3353 ( .A1(n2829), .A2(n3293), .B1(n3342), .B2(n3295), .C1(n2781), .C2(n3296), .Y(n3341) );
  INVx1_ASAP7_75t_L U3354 ( .A(n3343), .Y(n3342) );
  AOI222xp33_ASAP7_75t_L U3355 ( .A1(n3298), .A2(n3344), .B1(n3300), .B2(
        i_tv80_core_ACC_reg_5__net_Q), .C1(n3301), .C2(di_reg_reg_5__net_Q), 
        .Y(n3339) );
  AOI22xp33_ASAP7_75t_L U3356 ( .A1(n3302), .A2(i_tv80_core_F_reg_5__net_Q), 
        .B1(i_tv80_core_BusB_reg_5__net_Q), .B2(i_tv80_core_BusAck_reg_net_Q), 
        .Y(n3338) );
  NAND3xp33_ASAP7_75t_L U3357 ( .A(n3345), .B(n3346), .C(n3347), .Y(U259_net_Y) );
  AOI221xp5_ASAP7_75t_L U3358 ( .A1(i_tv80_core_PC_reg_6__net_Q), .A2(n3290), 
        .B1(i_tv80_core_PC_reg_14__net_Q), .B2(n3291), .C(n3348), .Y(n3347) );
  OAI222xp33_ASAP7_75t_L U3359 ( .A1(n2824), .A2(n3293), .B1(n3349), .B2(n3295), .C1(n2777), .C2(n3296), .Y(n3348) );
  INVx1_ASAP7_75t_L U3360 ( .A(i_tv80_core_SP_reg_14__net_Q), .Y(n2777) );
  INVx1_ASAP7_75t_L U3361 ( .A(n3350), .Y(n3349) );
  AOI222xp33_ASAP7_75t_L U3362 ( .A1(n3298), .A2(n3351), .B1(n3300), .B2(
        i_tv80_core_ACC_reg_6__net_Q), .C1(n3301), .C2(di_reg_reg_6__net_Q), 
        .Y(n3346) );
  AOI22xp33_ASAP7_75t_L U3363 ( .A1(n3302), .A2(i_tv80_core_F_reg_6__net_Q), 
        .B1(i_tv80_core_BusB_reg_6__net_Q), .B2(i_tv80_core_BusAck_reg_net_Q), 
        .Y(n3345) );
  OAI321xp33_ASAP7_75t_L U3364 ( .A1(i_tv80_core_BusAck_reg_net_Q), .A2(n3352), 
        .A3(n3097), .B1(busak_n), .B2(n3353), .C(n3354), .Y(U253_net_Y) );
  NAND4xp25_ASAP7_75t_L U3365 ( .A(i_tv80_core_XY_State_reg_1__net_Q), .B(
        n2375), .C(n2378), .D(n2455), .Y(n3354) );
  INVx1_ASAP7_75t_L U3366 ( .A(n2454), .Y(n2375) );
  NOR4xp25_ASAP7_75t_L U3367 ( .A(i_tv80_core_XY_Ind_reg_net_Q), .B(n2374), 
        .C(n2454), .D(n3355), .Y(n3352) );
  OAI211xp5_ASAP7_75t_L U3368 ( .A1(n3356), .A2(n3030), .B(n3357), .C(n3358), 
        .Y(n2454) );
  O2A1O1Ixp33_ASAP7_75t_L U3369 ( .A1(n2903), .A2(n3359), .B(
        i_tv80_core_IR_reg_4__net_Q), .C(n2890), .Y(n3358) );
  AO21x1_ASAP7_75t_L U3370 ( .A1(n2888), .A2(n2879), .B(n2882), .Y(n3359) );
  INVx1_ASAP7_75t_L U3371 ( .A(n2455), .Y(n2374) );
  OAI211xp5_ASAP7_75t_L U3372 ( .A1(n3360), .A2(n2867), .B(reset_n), .C(n3361), 
        .Y(U2537_net_Y) );
  OAI211xp5_ASAP7_75t_L U3373 ( .A1(n2945), .A2(n3362), .B(n3363), .C(n3364), 
        .Y(U2523_net_Y) );
  OAI21xp33_ASAP7_75t_L U3374 ( .A1(n3365), .A2(n3192), .B(n2945), .Y(n3363)
         );
  OAI311xp33_ASAP7_75t_L U3375 ( .A1(n2867), .A2(n2364), .A3(n3360), .B1(n3364), .C1(n2870), .Y(U2520_net_Y) );
  INVx1_ASAP7_75t_L U3376 ( .A(n3362), .Y(n2870) );
  OAI221xp5_ASAP7_75t_L U3377 ( .A1(n3079), .A2(n3366), .B1(n2922), .B2(n3367), 
        .C(n3368), .Y(n3362) );
  AOI21xp33_ASAP7_75t_L U3378 ( .A1(n2957), .A2(n3369), .B(n3370), .Y(n3368)
         );
  A2O1A1Ixp33_ASAP7_75t_L U3379 ( .A1(n2867), .A2(n3371), .B(n2461), .C(
        U2535_net_Y), .Y(n3364) );
  NAND3xp33_ASAP7_75t_L U3380 ( .A(reset_n), .B(n3372), .C(n3204), .Y(
        U2535_net_Y) );
  INVx1_ASAP7_75t_L U3381 ( .A(n3361), .Y(n3371) );
  NOR5xp2_ASAP7_75t_L U3382 ( .A(n3365), .B(n3373), .C(n3374), .D(n3375), .E(
        n3372), .Y(n3361) );
  NAND4xp25_ASAP7_75t_L U3383 ( .A(n3376), .B(n3377), .C(n3378), .D(n3379), 
        .Y(n3372) );
  AOI311xp33_ASAP7_75t_L U3384 ( .A1(i_tv80_core_ISet_reg_1__net_Q), .A2(n3380), .A3(n3381), .B(n2734), .C(n3285), .Y(n3379) );
  INVx1_ASAP7_75t_L U3385 ( .A(n3382), .Y(n2734) );
  AOI221xp5_ASAP7_75t_L U3386 ( .A1(n2881), .A2(n3383), .B1(n3384), .B2(n3385), 
        .C(n3386), .Y(n3378) );
  AOI21xp33_ASAP7_75t_L U3387 ( .A1(n3387), .A2(n3388), .B(n2922), .Y(n3386)
         );
  INVx1_ASAP7_75t_L U3388 ( .A(n3389), .Y(n3383) );
  O2A1O1Ixp33_ASAP7_75t_L U3389 ( .A1(n3390), .A2(n3391), .B(n3380), .C(n3392), 
        .Y(n3389) );
  AOI222xp33_ASAP7_75t_L U3390 ( .A1(n3393), .A2(n2905), .B1(n3394), .B2(n2898), .C1(n3139), .C2(n3083), .Y(n3377) );
  INVx1_ASAP7_75t_L U3391 ( .A(n3059), .Y(n3139) );
  A2O1A1Ixp33_ASAP7_75t_L U3392 ( .A1(n2936), .A2(n3031), .B(n3036), .C(n2925), 
        .Y(n3059) );
  OAI21xp33_ASAP7_75t_L U3393 ( .A1(n2948), .A2(n3395), .B(n3056), .Y(n3036)
         );
  OAI22xp33_ASAP7_75t_L U3394 ( .A1(n3396), .A2(n2911), .B1(n2767), .B2(n2907), 
        .Y(n2898) );
  OA21x2_ASAP7_75t_L U3395 ( .A1(n3397), .A2(n2911), .B(n3398), .Y(n3376) );
  AO21x1_ASAP7_75t_L U3396 ( .A1(n3399), .A2(n2905), .B(n3024), .Y(n3375) );
  INVx1_ASAP7_75t_L U3397 ( .A(n3400), .Y(n3024) );
  OAI22xp33_ASAP7_75t_L U3398 ( .A1(n3401), .A2(n3402), .B1(n3063), .B2(n3403), 
        .Y(n3374) );
  O2A1O1Ixp33_ASAP7_75t_L U3399 ( .A1(n3404), .A2(n2954), .B(n2918), .C(n3405), 
        .Y(n3403) );
  NOR2xp33_ASAP7_75t_L U3400 ( .A(n3284), .B(n3406), .Y(n3405) );
  NOR2xp33_ASAP7_75t_L U3401 ( .A(i_tv80_core_IntCycle_reg_net_Q), .B(n3365), 
        .Y(n3360) );
  NOR2xp33_ASAP7_75t_L U3402 ( .A(n3188), .B(n2735), .Y(n3365) );
  NOR2xp33_ASAP7_75t_L U3403 ( .A(n3214), .B(wait_n), .Y(n3188) );
  INVx1_ASAP7_75t_L U3404 ( .A(n3204), .Y(n3214) );
  OAI321xp33_ASAP7_75t_L U3405 ( .A1(i_tv80_core_BusAck_reg_net_Q), .A2(n3407), 
        .A3(n3097), .B1(busak_n), .B2(n3408), .C(n3409), .Y(U247_net_Y) );
  NAND4xp25_ASAP7_75t_L U3406 ( .A(i_tv80_core_XY_State_reg_1__net_Q), .B(
        n3410), .C(n2378), .D(n2380), .Y(n3409) );
  INVx1_ASAP7_75t_L U3407 ( .A(n2372), .Y(n2378) );
  NAND2xp33_ASAP7_75t_L U3408 ( .A(busak_n), .B(n3093), .Y(n2372) );
  INVx1_ASAP7_75t_L U3409 ( .A(i_tv80_core_RegAddrB_r_reg_2__net_Q), .Y(n3408)
         );
  NOR4xp25_ASAP7_75t_L U3410 ( .A(i_tv80_core_XY_Ind_reg_net_Q), .B(n3332), 
        .C(n2381), .D(n3355), .Y(n3407) );
  OAI22xp33_ASAP7_75t_L U3411 ( .A1(i_tv80_core_BusAck_reg_net_Q), .A2(n3411), 
        .B1(busak_n), .B2(n3412), .Y(U240_net_Y) );
  O2A1O1Ixp33_ASAP7_75t_L U3412 ( .A1(n3413), .A2(n3414), .B(
        i_tv80_core_XY_State_reg_1__net_Q), .C(n3415), .Y(n3411) );
  AOI211xp5_ASAP7_75t_L U3413 ( .A1(i_tv80_core_XY_State_reg_0__net_Q), .A2(
        n3414), .B(n3097), .C(n3413), .Y(n3415) );
  OAI22xp33_ASAP7_75t_L U3414 ( .A1(i_tv80_core_BusAck_reg_net_Q), .A2(n3416), 
        .B1(busak_n), .B2(n3417), .Y(U239_net_Y) );
  OAI22xp33_ASAP7_75t_L U3415 ( .A1(i_tv80_core_BusAck_reg_net_Q), .A2(n3418), 
        .B1(busak_n), .B2(n3419), .Y(U236_net_Y) );
  AOI221xp5_ASAP7_75t_L U3416 ( .A1(n3414), .A2(n2379), .B1(n3420), .B2(n3421), 
        .C(n3413), .Y(n3418) );
  INVx1_ASAP7_75t_L U3417 ( .A(n3421), .Y(n3414) );
  NOR2xp33_ASAP7_75t_L U3418 ( .A(n3422), .B(n2809), .Y(n3421) );
  AO22x1_ASAP7_75t_L U3419 ( .A1(busak_n), .A2(n3423), .B1(
        i_tv80_core_BusAck_reg_net_Q), .B2(i_tv80_core_RegBusA_r_reg_15__net_Q), .Y(U235_net_X) );
  OAI22xp33_ASAP7_75t_L U3420 ( .A1(i_tv80_core_BusAck_reg_net_Q), .A2(n2407), 
        .B1(busak_n), .B2(n3424), .Y(U234_net_X) );
  INVx1_ASAP7_75t_L U3421 ( .A(i_tv80_core_RegBusA_r_reg_14__net_Q), .Y(n3424)
         );
  AO22x1_ASAP7_75t_L U3422 ( .A1(busak_n), .A2(n3425), .B1(
        i_tv80_core_BusAck_reg_net_Q), .B2(i_tv80_core_RegBusA_r_reg_13__net_Q), .Y(U233_net_X) );
  OAI22xp33_ASAP7_75t_L U3423 ( .A1(i_tv80_core_BusAck_reg_net_Q), .A2(n2421), 
        .B1(busak_n), .B2(n3426), .Y(U232_net_X) );
  INVx1_ASAP7_75t_L U3424 ( .A(i_tv80_core_RegBusA_r_reg_12__net_Q), .Y(n3426)
         );
  AO22x1_ASAP7_75t_L U3425 ( .A1(busak_n), .A2(n3427), .B1(
        i_tv80_core_BusAck_reg_net_Q), .B2(i_tv80_core_RegBusA_r_reg_11__net_Q), .Y(U231_net_X) );
  OAI22xp33_ASAP7_75t_L U3426 ( .A1(i_tv80_core_BusAck_reg_net_Q), .A2(n2434), 
        .B1(busak_n), .B2(n3428), .Y(U230_net_X) );
  INVx1_ASAP7_75t_L U3427 ( .A(i_tv80_core_RegBusA_r_reg_10__net_Q), .Y(n3428)
         );
  AO22x1_ASAP7_75t_L U3428 ( .A1(busak_n), .A2(n3429), .B1(
        i_tv80_core_BusAck_reg_net_Q), .B2(i_tv80_core_RegBusA_r_reg_9__net_Q), 
        .Y(U229_net_X) );
  OAI22xp33_ASAP7_75t_L U3429 ( .A1(i_tv80_core_BusAck_reg_net_Q), .A2(n2446), 
        .B1(busak_n), .B2(n3430), .Y(U228_net_X) );
  INVx1_ASAP7_75t_L U3430 ( .A(i_tv80_core_RegBusA_r_reg_8__net_Q), .Y(n3430)
         );
  OAI22xp33_ASAP7_75t_L U3431 ( .A1(i_tv80_core_BusAck_reg_net_Q), .A2(n2394), 
        .B1(busak_n), .B2(n3431), .Y(U227_net_X) );
  OAI22xp33_ASAP7_75t_L U3432 ( .A1(i_tv80_core_BusAck_reg_net_Q), .A2(n2408), 
        .B1(busak_n), .B2(n3432), .Y(U226_net_X) );
  OAI22xp33_ASAP7_75t_L U3433 ( .A1(i_tv80_core_BusAck_reg_net_Q), .A2(n2415), 
        .B1(busak_n), .B2(n3433), .Y(U225_net_X) );
  OAI22xp33_ASAP7_75t_L U3434 ( .A1(i_tv80_core_BusAck_reg_net_Q), .A2(n2422), 
        .B1(busak_n), .B2(n3434), .Y(U224_net_X) );
  OAI22xp33_ASAP7_75t_L U3435 ( .A1(i_tv80_core_BusAck_reg_net_Q), .A2(n2429), 
        .B1(busak_n), .B2(n3435), .Y(U223_net_X) );
  OAI22xp33_ASAP7_75t_L U3436 ( .A1(i_tv80_core_BusAck_reg_net_Q), .A2(n2435), 
        .B1(busak_n), .B2(n3436), .Y(U222_net_X) );
  OAI22xp33_ASAP7_75t_L U3437 ( .A1(i_tv80_core_BusAck_reg_net_Q), .A2(n2441), 
        .B1(busak_n), .B2(n3437), .Y(U221_net_X) );
  OAI22xp33_ASAP7_75t_L U3438 ( .A1(i_tv80_core_BusAck_reg_net_Q), .A2(n2447), 
        .B1(busak_n), .B2(n3438), .Y(U220_net_X) );
  INVx1_ASAP7_75t_L U3439 ( .A(n3018), .Y(n2447) );
  AO22x1_ASAP7_75t_L U3440 ( .A1(busak_n), .A2(n2380), .B1(
        i_tv80_core_BusAck_reg_net_Q), .B2(i_tv80_core_RegAddrB_r_reg_1__net_Q), .Y(U219_net_X) );
  AO22x1_ASAP7_75t_L U3441 ( .A1(busak_n), .A2(n2455), .B1(
        i_tv80_core_BusAck_reg_net_Q), .B2(i_tv80_core_RegAddrA_r_reg_1__net_Q), .Y(U218_net_Y) );
  NAND3xp33_ASAP7_75t_L U3442 ( .A(n3400), .B(n3357), .C(n3439), .Y(n2455) );
  AOI222xp33_ASAP7_75t_L U3443 ( .A1(n2925), .A2(i_tv80_core_IR_reg_2__net_Q), 
        .B1(i_tv80_core_IR_reg_5__net_Q), .B2(n3440), .C1(n2881), .C2(n2880), 
        .Y(n3439) );
  A2O1A1Ixp33_ASAP7_75t_L U3444 ( .A1(n3055), .A2(n3241), .B(n2917), .C(n3441), 
        .Y(n2880) );
  NAND3xp33_ASAP7_75t_L U3445 ( .A(n2727), .B(n3380), .C(n2899), .Y(n3441) );
  INVx1_ASAP7_75t_L U3446 ( .A(n3442), .Y(n3380) );
  OAI221xp5_ASAP7_75t_L U3447 ( .A1(n2915), .A2(n2887), .B1(n2922), .B2(n2921), 
        .C(n3443), .Y(n3440) );
  INVx1_ASAP7_75t_L U3448 ( .A(n2903), .Y(n3443) );
  NAND2xp33_ASAP7_75t_L U3449 ( .A(n2884), .B(n3116), .Y(n2903) );
  AOI22xp33_ASAP7_75t_L U3450 ( .A1(n3444), .A2(n2881), .B1(n3445), .B2(n3072), 
        .Y(n3116) );
  AOI321xp33_ASAP7_75t_L U3451 ( .A1(n3256), .A2(n3446), .A3(n2905), .B1(n3447), .B2(n3445), .C(n3448), .Y(n2884) );
  OR3x1_ASAP7_75t_L U3452 ( .A(n3153), .B(n3449), .C(n3170), .Y(n3447) );
  INVx1_ASAP7_75t_L U3453 ( .A(n2914), .Y(n2921) );
  AOI21xp33_ASAP7_75t_L U3454 ( .A1(n3445), .A2(n2914), .B(n2879), .Y(n2887)
         );
  OAI32xp33_ASAP7_75t_L U3455 ( .A1(n3450), .A2(n3442), .A3(n3063), .B1(n3163), 
        .B2(n2916), .Y(n2879) );
  INVx1_ASAP7_75t_L U3456 ( .A(n2919), .Y(n3450) );
  INVx1_ASAP7_75t_L U3457 ( .A(n2926), .Y(n3357) );
  NAND2xp33_ASAP7_75t_L U3458 ( .A(n3451), .B(n3026), .Y(n2926) );
  OAI21xp33_ASAP7_75t_L U3459 ( .A1(n3452), .A2(n2929), .B(n2881), .Y(n3026)
         );
  NAND3xp33_ASAP7_75t_L U3460 ( .A(n3453), .B(n3454), .C(n3455), .Y(U211_net_Y) );
  AOI221xp5_ASAP7_75t_L U3461 ( .A1(i_tv80_core_PC_reg_7__net_Q), .A2(n3290), 
        .B1(n3291), .B2(i_tv80_core_PC_reg_15__net_Q), .C(n3456), .Y(n3455) );
  OAI222xp33_ASAP7_75t_L U3462 ( .A1(n2816), .A2(n3293), .B1(n3457), .B2(n3295), .C1(n2770), .C2(n3296), .Y(n3456) );
  NAND3xp33_ASAP7_75t_L U3463 ( .A(n3332), .B(n3410), .C(n3458), .Y(n3296) );
  INVx1_ASAP7_75t_L U3464 ( .A(i_tv80_core_SP_reg_15__net_Q), .Y(n2770) );
  NAND3xp33_ASAP7_75t_L U3465 ( .A(n3336), .B(n3459), .C(n3460), .Y(n3295) );
  INVx1_ASAP7_75t_L U3466 ( .A(n3461), .Y(n3457) );
  NAND2xp33_ASAP7_75t_L U3467 ( .A(n3462), .B(n3332), .Y(n3293) );
  AND2x2_ASAP7_75t_L U3468 ( .A(n3458), .B(n2380), .Y(n3291) );
  AND2x2_ASAP7_75t_L U3469 ( .A(n3462), .B(n2380), .Y(n3290) );
  NOR4xp25_ASAP7_75t_L U3470 ( .A(n2381), .B(n3336), .C(n3334), .D(
        i_tv80_core_BusAck_reg_net_Q), .Y(n3462) );
  AOI222xp33_ASAP7_75t_L U3471 ( .A1(n3298), .A2(n3463), .B1(n3300), .B2(
        i_tv80_core_ACC_reg_7__net_Q), .C1(n3301), .C2(di_reg_reg_7__net_Q), 
        .Y(n3454) );
  AND2x2_ASAP7_75t_L U3472 ( .A(n3464), .B(n3465), .Y(n3301) );
  AND2x2_ASAP7_75t_L U3473 ( .A(n3465), .B(n3460), .Y(n3300) );
  AND2x2_ASAP7_75t_L U3474 ( .A(n3464), .B(n3459), .Y(n3298) );
  INVx1_ASAP7_75t_L U3475 ( .A(n3465), .Y(n3459) );
  NOR2xp33_ASAP7_75t_L U3476 ( .A(n3332), .B(n3410), .Y(n3465) );
  INVx1_ASAP7_75t_L U3477 ( .A(n2381), .Y(n3410) );
  INVx1_ASAP7_75t_L U3478 ( .A(n2380), .Y(n3332) );
  NAND3xp33_ASAP7_75t_L U3479 ( .A(n3466), .B(n3467), .C(n3468), .Y(n2380) );
  AOI221xp5_ASAP7_75t_L U3480 ( .A1(n2881), .A2(n3469), .B1(n3445), .B2(n3470), 
        .C(n3471), .Y(n3468) );
  AO21x1_ASAP7_75t_L U3481 ( .A1(n3472), .A2(i_tv80_core_IR_reg_5__net_Q), .B(
        n2890), .Y(n3471) );
  OAI22xp33_ASAP7_75t_L U3482 ( .A1(n3063), .A2(n3473), .B1(n3474), .B2(n2915), 
        .Y(n3472) );
  INVx1_ASAP7_75t_L U3483 ( .A(n3387), .Y(n3470) );
  OAI211xp5_ASAP7_75t_L U3484 ( .A1(n3475), .A2(n3476), .B(n3477), .C(n3478), 
        .Y(n3469) );
  AOI221xp5_ASAP7_75t_L U3485 ( .A1(n3391), .A2(n3479), .B1(
        i_tv80_core_IR_reg_5__net_Q), .B2(n3480), .C(n3481), .Y(n3478) );
  OAI22xp33_ASAP7_75t_L U3486 ( .A1(n2867), .A2(n3482), .B1(n3483), .B2(n3484), 
        .Y(n3480) );
  AOI22xp33_ASAP7_75t_L U3487 ( .A1(i_tv80_core_IR_reg_2__net_Q), .A2(n3485), 
        .B1(n3486), .B2(n3238), .Y(n3467) );
  OA21x2_ASAP7_75t_L U3488 ( .A1(n2952), .A2(n3366), .B(n3451), .Y(n3466) );
  AOI21xp33_ASAP7_75t_L U3489 ( .A1(n3082), .A2(n2957), .B(n3487), .Y(n3451)
         );
  INVx1_ASAP7_75t_L U3490 ( .A(n3027), .Y(n3082) );
  NOR3xp33_ASAP7_75t_L U3491 ( .A(n3488), .B(i_tv80_core_BusAck_reg_net_Q), 
        .C(n3334), .Y(n3464) );
  AOI22xp33_ASAP7_75t_L U3492 ( .A1(n3302), .A2(i_tv80_core_F_reg_7__net_Q), 
        .B1(i_tv80_core_BusB_reg_7__net_Q), .B2(i_tv80_core_BusAck_reg_net_Q), 
        .Y(n3453) );
  AND2x2_ASAP7_75t_L U3493 ( .A(n3458), .B(n2381), .Y(n3302) );
  OAI22xp33_ASAP7_75t_L U3494 ( .A1(n3489), .A2(n3356), .B1(n3490), .B2(n3491), 
        .Y(n2381) );
  AOI322xp5_ASAP7_75t_L U3495 ( .A1(n3445), .A2(n2896), .A3(n3216), .B1(
        i_tv80_core_ISet_reg_1__net_Q), .B2(n3492), .C1(n2881), .C2(n3493), 
        .Y(n3490) );
  OAI211xp5_ASAP7_75t_L U3496 ( .A1(n3475), .A2(n3356), .B(n3494), .C(n3495), 
        .Y(n3493) );
  AOI21xp33_ASAP7_75t_L U3497 ( .A1(i_tv80_core_IR_reg_4__net_Q), .A2(n3496), 
        .B(n3481), .Y(n3495) );
  OAI22xp33_ASAP7_75t_L U3498 ( .A1(n3087), .A2(n3482), .B1(n3483), .B2(n3484), 
        .Y(n3496) );
  OAI221xp5_ASAP7_75t_L U3499 ( .A1(n3087), .A2(n2952), .B1(n3027), .B2(n3497), 
        .C(n3498), .Y(n3492) );
  AOI221xp5_ASAP7_75t_L U3500 ( .A1(n3032), .A2(n3075), .B1(
        i_tv80_core_IR_reg_4__net_Q), .B2(n3499), .C(n3180), .Y(n3498) );
  INVx1_ASAP7_75t_L U3501 ( .A(n3500), .Y(n3180) );
  OAI31xp33_ASAP7_75t_L U3502 ( .A1(n3501), .A2(n2915), .A3(n3406), .B(n3473), 
        .Y(n3499) );
  AOI31xp33_ASAP7_75t_L U3503 ( .A1(n2904), .A2(n3502), .A3(n3053), .B(n3503), 
        .Y(n3473) );
  INVx1_ASAP7_75t_L U3504 ( .A(n3381), .Y(n3501) );
  AND2x2_ASAP7_75t_L U3505 ( .A(n3488), .B(n3460), .Y(n3458) );
  NOR2xp33_ASAP7_75t_L U3506 ( .A(n3337), .B(i_tv80_core_BusAck_reg_net_Q), 
        .Y(n3460) );
  INVx1_ASAP7_75t_L U3507 ( .A(n3334), .Y(n3337) );
  OAI22xp33_ASAP7_75t_L U3508 ( .A1(n3489), .A2(n3504), .B1(n3505), .B2(n3491), 
        .Y(n3334) );
  INVx1_ASAP7_75t_L U3509 ( .A(n3506), .Y(n3491) );
  NOR4xp25_ASAP7_75t_L U3510 ( .A(n3507), .B(n3508), .C(n3236), .D(n2890), .Y(
        n3505) );
  NOR2xp33_ASAP7_75t_L U3511 ( .A(n3500), .B(n3063), .Y(n2890) );
  NOR3xp33_ASAP7_75t_L U3512 ( .A(n2922), .B(n3509), .C(n3243), .Y(n3236) );
  OAI32xp33_ASAP7_75t_L U3513 ( .A1(n3510), .A2(n3511), .A3(n3366), .B1(n3512), 
        .B2(n2922), .Y(n3508) );
  NOR2xp33_ASAP7_75t_L U3514 ( .A(n3391), .B(n3237), .Y(n3512) );
  NOR2xp33_ASAP7_75t_L U3515 ( .A(n2949), .B(n2908), .Y(n3391) );
  INVx1_ASAP7_75t_L U3516 ( .A(n3502), .Y(n3511) );
  NAND2xp33_ASAP7_75t_L U3517 ( .A(i_tv80_core_IR_reg_4__net_Q), .B(n3513), 
        .Y(n3502) );
  OAI211xp5_ASAP7_75t_L U3518 ( .A1(n3514), .A2(n2766), .B(n3515), .C(n3516), 
        .Y(n3507) );
  AOI322xp5_ASAP7_75t_L U3519 ( .A1(n3381), .A2(n2957), .A3(n2888), .B1(n3503), 
        .B2(i_tv80_core_IR_reg_3__net_Q), .C1(n2915), .C2(n3517), .Y(n3516) );
  AO222x2_ASAP7_75t_L U3520 ( .A1(n2957), .A2(n2904), .B1(n3381), .B2(n3518), 
        .C1(n2897), .C2(n2913), .Y(n3517) );
  INVx1_ASAP7_75t_L U3521 ( .A(n3519), .Y(n3503) );
  INVx1_ASAP7_75t_L U3522 ( .A(n3520), .Y(n3515) );
  AOI31xp33_ASAP7_75t_L U3523 ( .A1(n3387), .A2(n3482), .A3(n3484), .B(n2911), 
        .Y(n3520) );
  OAI21xp33_ASAP7_75t_L U3524 ( .A1(n3521), .A2(n3522), .B(n2913), .Y(n3484)
         );
  AOI21xp33_ASAP7_75t_L U3525 ( .A1(n2896), .A2(n3216), .B(n3238), .Y(n3387)
         );
  AOI211xp5_ASAP7_75t_L U3526 ( .A1(i_tv80_core_IR_reg_0__net_Q), .A2(n3523), 
        .B(n3481), .C(n3524), .Y(n3514) );
  O2A1O1Ixp33_ASAP7_75t_L U3527 ( .A1(n2888), .A2(n3482), .B(n3525), .C(n2867), 
        .Y(n3524) );
  O2A1O1Ixp33_ASAP7_75t_L U3528 ( .A1(n2867), .A2(n3396), .B(n3526), .C(n2949), 
        .Y(n3481) );
  NAND2xp33_ASAP7_75t_L U3529 ( .A(n3083), .B(n2764), .Y(n3526) );
  INVx1_ASAP7_75t_L U3530 ( .A(n3475), .Y(n3523) );
  NOR3xp33_ASAP7_75t_L U3531 ( .A(n3527), .B(n3452), .C(n3528), .Y(n3475) );
  OAI22xp33_ASAP7_75t_L U3532 ( .A1(n3529), .A2(n3055), .B1(n3397), .B2(n2867), 
        .Y(n3528) );
  A2O1A1Ixp33_ASAP7_75t_L U3533 ( .A1(n3056), .A2(n3530), .B(n3055), .C(n3531), 
        .Y(n3452) );
  NAND2xp33_ASAP7_75t_L U3534 ( .A(n3532), .B(n3533), .Y(n3531) );
  INVx1_ASAP7_75t_L U3535 ( .A(n3157), .Y(n3530) );
  INVx1_ASAP7_75t_L U3536 ( .A(n3485), .Y(n3489) );
  NAND2xp33_ASAP7_75t_L U3537 ( .A(n3506), .B(n3030), .Y(n3485) );
  INVx1_ASAP7_75t_L U3538 ( .A(n3336), .Y(n3488) );
  OAI31xp33_ASAP7_75t_L U3539 ( .A1(n3534), .A2(n3535), .A3(n3023), .B(n3506), 
        .Y(n3336) );
  OAI32xp33_ASAP7_75t_L U3540 ( .A1(n2952), .A2(n2867), .A3(n3063), .B1(n3494), 
        .B2(n2766), .Y(n3023) );
  AOI221xp5_ASAP7_75t_L U3541 ( .A1(n3032), .A2(n3072), .B1(n2945), .B2(n3126), 
        .C(n3444), .Y(n3494) );
  AOI21xp33_ASAP7_75t_L U3542 ( .A1(n3474), .A2(n3400), .B(n2888), .Y(n3535)
         );
  AOI22xp33_ASAP7_75t_L U3543 ( .A1(n3053), .A2(n3044), .B1(n3536), .B2(n2913), 
        .Y(n3400) );
  INVx1_ASAP7_75t_L U3544 ( .A(n3163), .Y(n3536) );
  NOR2xp33_ASAP7_75t_L U3545 ( .A(n3510), .B(n3063), .Y(n3044) );
  AOI32xp33_ASAP7_75t_L U3546 ( .A1(n3381), .A2(n3479), .A3(
        i_tv80_core_ISet_reg_1__net_Q), .B1(n3445), .B2(n3537), .Y(n3474) );
  OAI32xp33_ASAP7_75t_L U3547 ( .A1(n3519), .A2(n3063), .A3(n3446), .B1(n3477), 
        .B2(n2766), .Y(n3534) );
  NAND2xp33_ASAP7_75t_L U3548 ( .A(n3393), .B(n2945), .Y(n3519) );
  OAI221xp5_ASAP7_75t_L U3549 ( .A1(n3538), .A2(n3539), .B1(n3540), .B2(n3541), 
        .C(n3542), .Y(U203_net_Y) );
  NAND2xp33_ASAP7_75t_L U3550 ( .A(do[7]), .B(n3543), .Y(n3542) );
  INVx1_ASAP7_75t_L U3551 ( .A(n2510), .Y(n3540) );
  AOI222xp33_ASAP7_75t_L U3552 ( .A1(n3544), .A2(i_tv80_core_BusA_reg_3__net_Q), .B1(n3398), .B2(i_tv80_core_BusB_reg_7__net_Q), .C1(n3545), .C2(
        i_tv80_core_BusB_reg_3__net_Q), .Y(n3538) );
  OAI221xp5_ASAP7_75t_L U3553 ( .A1(n3546), .A2(n3539), .B1(n3547), .B2(n3541), 
        .C(n3548), .Y(U200_net_Y) );
  NAND2xp33_ASAP7_75t_L U3554 ( .A(do[6]), .B(n3543), .Y(n3548) );
  INVx1_ASAP7_75t_L U3555 ( .A(n2516), .Y(n3547) );
  AOI222xp33_ASAP7_75t_L U3556 ( .A1(n3544), .A2(i_tv80_core_BusA_reg_2__net_Q), .B1(n3398), .B2(i_tv80_core_BusB_reg_6__net_Q), .C1(n3545), .C2(
        i_tv80_core_BusB_reg_2__net_Q), .Y(n3546) );
  OAI221xp5_ASAP7_75t_L U3557 ( .A1(n3549), .A2(n3539), .B1(n3550), .B2(n3541), 
        .C(n3551), .Y(U197_net_Y) );
  NAND2xp33_ASAP7_75t_L U3558 ( .A(do[5]), .B(n3543), .Y(n3551) );
  INVx1_ASAP7_75t_L U3559 ( .A(n2521), .Y(n3550) );
  AOI222xp33_ASAP7_75t_L U3560 ( .A1(n3544), .A2(i_tv80_core_BusA_reg_1__net_Q), .B1(n3398), .B2(i_tv80_core_BusB_reg_5__net_Q), .C1(n3545), .C2(
        i_tv80_core_BusB_reg_1__net_Q), .Y(n3549) );
  OAI221xp5_ASAP7_75t_L U3561 ( .A1(n3552), .A2(n3539), .B1(n3553), .B2(n3541), 
        .C(n3554), .Y(U194_net_Y) );
  NAND2xp33_ASAP7_75t_L U3562 ( .A(do[4]), .B(n3543), .Y(n3554) );
  INVx1_ASAP7_75t_L U3563 ( .A(n2526), .Y(n3553) );
  AOI222xp33_ASAP7_75t_L U3564 ( .A1(n3544), .A2(i_tv80_core_BusA_reg_0__net_Q), .B1(n3398), .B2(i_tv80_core_BusB_reg_4__net_Q), .C1(n3545), .C2(
        i_tv80_core_BusB_reg_0__net_Q), .Y(n3552) );
  OAI22xp33_ASAP7_75t_L U3565 ( .A1(n3555), .A2(n3556), .B1(n3557), .B2(n3558), 
        .Y(U1927_net_Y) );
  OAI221xp5_ASAP7_75t_L U3566 ( .A1(n3559), .A2(n3539), .B1(n3560), .B2(n3541), 
        .C(n3561), .Y(U191_net_Y) );
  NAND2xp33_ASAP7_75t_L U3567 ( .A(do[3]), .B(n3543), .Y(n3561) );
  INVx1_ASAP7_75t_L U3568 ( .A(n2530), .Y(n3560) );
  AOI222xp33_ASAP7_75t_L U3569 ( .A1(n3544), .A2(i_tv80_core_BusB_reg_7__net_Q), .B1(n3398), .B2(i_tv80_core_BusB_reg_3__net_Q), .C1(n3545), .C2(
        i_tv80_core_BusA_reg_3__net_Q), .Y(n3559) );
  AO22x1_ASAP7_75t_L U3570 ( .A1(n3562), .A2(n3555), .B1(n3558), .B2(
        i_tv80_core_i_reg_RegsH_reg_7__1__net_Q), .Y(U1895_net_Y) );
  OAI221xp5_ASAP7_75t_L U3571 ( .A1(n3563), .A2(n3539), .B1(n3564), .B2(n3541), 
        .C(n3565), .Y(U188_net_Y) );
  NAND2xp33_ASAP7_75t_L U3572 ( .A(do[2]), .B(n3543), .Y(n3565) );
  INVx1_ASAP7_75t_L U3573 ( .A(n2534), .Y(n3564) );
  AOI222xp33_ASAP7_75t_L U3574 ( .A1(n3544), .A2(i_tv80_core_BusB_reg_6__net_Q), .B1(n3398), .B2(i_tv80_core_BusB_reg_2__net_Q), .C1(n3545), .C2(
        i_tv80_core_BusA_reg_2__net_Q), .Y(n3563) );
  OAI22xp33_ASAP7_75t_L U3575 ( .A1(n3566), .A2(n3558), .B1(n3555), .B2(n3567), 
        .Y(U1869_net_Y) );
  OAI221xp5_ASAP7_75t_L U3576 ( .A1(n3568), .A2(n3539), .B1(n3569), .B2(n3541), 
        .C(n3570), .Y(U185_net_Y) );
  NAND2xp33_ASAP7_75t_L U3577 ( .A(do[1]), .B(n3543), .Y(n3570) );
  INVx1_ASAP7_75t_L U3578 ( .A(n2546), .Y(n3569) );
  AOI222xp33_ASAP7_75t_L U3579 ( .A1(n3544), .A2(i_tv80_core_BusB_reg_5__net_Q), .B1(n3398), .B2(i_tv80_core_BusB_reg_1__net_Q), .C1(n3545), .C2(
        i_tv80_core_BusA_reg_1__net_Q), .Y(n3568) );
  AO22x1_ASAP7_75t_L U3580 ( .A1(n3571), .A2(n3555), .B1(n3558), .B2(
        i_tv80_core_i_reg_RegsH_reg_7__3__net_Q), .Y(U1839_net_Y) );
  OAI221xp5_ASAP7_75t_L U3581 ( .A1(n3572), .A2(n3539), .B1(n3573), .B2(n3541), 
        .C(n3574), .Y(U182_net_Y) );
  NAND2xp33_ASAP7_75t_L U3582 ( .A(do[0]), .B(n3543), .Y(n3574) );
  NAND2xp33_ASAP7_75t_L U3583 ( .A(n3575), .B(n2493), .Y(n3541) );
  INVx1_ASAP7_75t_L U3584 ( .A(n2538), .Y(n3573) );
  INVx1_ASAP7_75t_L U3585 ( .A(n3576), .Y(n3539) );
  AOI311xp33_ASAP7_75t_L U3586 ( .A1(n3577), .A2(n2551), .A3(n2861), .B(n2463), 
        .C(n3543), .Y(n3576) );
  OAI21xp33_ASAP7_75t_L U3587 ( .A1(n3575), .A2(n3578), .B(n2497), .Y(n3543)
         );
  INVx1_ASAP7_75t_L U3588 ( .A(n2872), .Y(n2497) );
  NOR2xp33_ASAP7_75t_L U3589 ( .A(n2461), .B(n2493), .Y(n2872) );
  AOI21xp33_ASAP7_75t_L U3590 ( .A1(reset_n), .A2(n3579), .B(U579_net_Y), .Y(
        n3578) );
  AND2x2_ASAP7_75t_L U3591 ( .A(i_tv80_core_Auto_Wait_t1_reg_net_Q), .B(
        reset_n), .Y(U579_net_Y) );
  INVx1_ASAP7_75t_L U3592 ( .A(n3580), .Y(n2861) );
  AOI211xp5_ASAP7_75t_L U3593 ( .A1(n3581), .A2(n2805), .B(n2561), .C(n3575), 
        .Y(n3580) );
  NOR2xp33_ASAP7_75t_L U3594 ( .A(n2862), .B(n2548), .Y(n3575) );
  NAND3xp33_ASAP7_75t_L U3595 ( .A(n2894), .B(n3582), .C(n3583), .Y(n2862) );
  NOR2xp33_ASAP7_75t_L U3596 ( .A(n2551), .B(n2548), .Y(n2561) );
  INVx1_ASAP7_75t_L U3597 ( .A(n2548), .Y(n2805) );
  NAND3xp33_ASAP7_75t_L U3598 ( .A(i_tv80_core_Read_To_Reg_r_reg_0__net_Q), 
        .B(i_tv80_core_Read_To_Reg_r_reg_1__net_Q), .C(n3584), .Y(n2551) );
  INVx1_ASAP7_75t_L U3599 ( .A(n3581), .Y(n3577) );
  NAND3xp33_ASAP7_75t_L U3600 ( .A(n2814), .B(n2547), .C(n2811), .Y(n3581) );
  NAND3xp33_ASAP7_75t_L U3601 ( .A(n2894), .B(n2893), .C(n3584), .Y(n2811) );
  NAND3xp33_ASAP7_75t_L U3602 ( .A(n3583), .B(n3582), .C(
        i_tv80_core_Read_To_Reg_r_reg_0__net_Q), .Y(n2547) );
  NAND3xp33_ASAP7_75t_L U3603 ( .A(i_tv80_core_Read_To_Reg_r_reg_0__net_Q), 
        .B(n2893), .C(n3584), .Y(n2814) );
  NOR2xp33_ASAP7_75t_L U3604 ( .A(n3582), .B(
        i_tv80_core_Read_To_Reg_r_reg_2__net_Q), .Y(n3584) );
  INVx1_ASAP7_75t_L U3605 ( .A(i_tv80_core_Read_To_Reg_r_reg_3__net_Q), .Y(
        n3582) );
  AOI222xp33_ASAP7_75t_L U3606 ( .A1(n3544), .A2(i_tv80_core_BusB_reg_4__net_Q), .B1(n3398), .B2(i_tv80_core_BusB_reg_0__net_Q), .C1(n3545), .C2(
        i_tv80_core_BusA_reg_0__net_Q), .Y(n3572) );
  NOR2xp33_ASAP7_75t_L U3607 ( .A(n3545), .B(n3544), .Y(n3398) );
  AND2x2_ASAP7_75t_L U3608 ( .A(n3399), .B(n3518), .Y(n3545) );
  AND2x2_ASAP7_75t_L U3609 ( .A(n3518), .B(n2956), .Y(n3544) );
  AO221x1_ASAP7_75t_L U3610 ( .A1(n2459), .A2(i_tv80_core_Fp_reg_7__net_Q), 
        .B1(i_tv80_core_F_reg_7__net_Q), .B2(n2460), .C(n2461), .Y(U180_net_Y)
         );
  OAI22xp33_ASAP7_75t_L U3611 ( .A1(n3585), .A2(n3558), .B1(n3555), .B2(n3586), 
        .Y(U1808_net_Y) );
  AO221x1_ASAP7_75t_L U3612 ( .A1(n2459), .A2(i_tv80_core_Fp_reg_6__net_Q), 
        .B1(i_tv80_core_F_reg_6__net_Q), .B2(n2460), .C(n2461), .Y(U178_net_Y)
         );
  AO22x1_ASAP7_75t_L U3613 ( .A1(n3587), .A2(n3555), .B1(n3558), .B2(
        i_tv80_core_i_reg_RegsH_reg_7__5__net_Q), .Y(U1779_net_Y) );
  AO221x1_ASAP7_75t_L U3614 ( .A1(n2459), .A2(i_tv80_core_Fp_reg_5__net_Q), 
        .B1(i_tv80_core_F_reg_5__net_Q), .B2(n2460), .C(n2461), .Y(U176_net_Y)
         );
  AO221x1_ASAP7_75t_L U3615 ( .A1(n2459), .A2(i_tv80_core_Fp_reg_4__net_Q), 
        .B1(i_tv80_core_F_reg_4__net_Q), .B2(n2460), .C(n2461), .Y(U174_net_Y)
         );
  OAI22xp33_ASAP7_75t_L U3616 ( .A1(n3588), .A2(n3558), .B1(n3555), .B2(n3589), 
        .Y(U1748_net_Y) );
  OAI221xp5_ASAP7_75t_L U3617 ( .A1(n2460), .A2(n2600), .B1(n2596), .B2(n2459), 
        .C(reset_n), .Y(U172_net_Y) );
  INVx1_ASAP7_75t_L U3618 ( .A(i_tv80_core_F_reg_3__net_Q), .Y(n2596) );
  INVx1_ASAP7_75t_L U3619 ( .A(i_tv80_core_Fp_reg_3__net_Q), .Y(n2600) );
  OAI22xp33_ASAP7_75t_L U3620 ( .A1(n3590), .A2(n3558), .B1(n3555), .B2(n3591), 
        .Y(U1716_net_Y) );
  INVx1_ASAP7_75t_L U3621 ( .A(n3558), .Y(n3555) );
  NAND2xp33_ASAP7_75t_L U3622 ( .A(n3592), .B(n3593), .Y(n3558) );
  OAI22xp33_ASAP7_75t_L U3623 ( .A1(n3594), .A2(n3595), .B1(n3557), .B2(n3596), 
        .Y(U1714_net_Y) );
  OAI22xp33_ASAP7_75t_L U3624 ( .A1(n3594), .A2(n3597), .B1(n3598), .B2(n3596), 
        .Y(U1713_net_Y) );
  OAI22xp33_ASAP7_75t_L U3625 ( .A1(n3594), .A2(n3599), .B1(n3566), .B2(n3596), 
        .Y(U1712_net_Y) );
  OAI22xp33_ASAP7_75t_L U3626 ( .A1(n3594), .A2(n3600), .B1(n3601), .B2(n3596), 
        .Y(U1711_net_Y) );
  OAI22xp33_ASAP7_75t_L U3627 ( .A1(n3594), .A2(n3602), .B1(n3585), .B2(n3596), 
        .Y(U1710_net_Y) );
  AO221x1_ASAP7_75t_L U3628 ( .A1(n2459), .A2(i_tv80_core_Fp_reg_2__net_Q), 
        .B1(i_tv80_core_F_reg_2__net_Q), .B2(n2460), .C(n2461), .Y(U170_net_Y)
         );
  OAI22xp33_ASAP7_75t_L U3629 ( .A1(n3594), .A2(n3603), .B1(n3604), .B2(n3596), 
        .Y(U1709_net_Y) );
  OAI22xp33_ASAP7_75t_L U3630 ( .A1(n3594), .A2(n3605), .B1(n3588), .B2(n3596), 
        .Y(U1708_net_Y) );
  AO22x1_ASAP7_75t_L U3631 ( .A1(n3596), .A2(
        i_tv80_core_i_reg_RegsH_reg_6__7__net_Q), .B1(n3606), .B2(n3594), .Y(
        U1707_net_Y) );
  INVx1_ASAP7_75t_L U3632 ( .A(n3596), .Y(n3594) );
  NAND2xp33_ASAP7_75t_L U3633 ( .A(n3592), .B(n3607), .Y(n3596) );
  OAI22xp33_ASAP7_75t_L U3634 ( .A1(n3608), .A2(n3609), .B1(n3557), .B2(n3610), 
        .Y(U1705_net_Y) );
  AO22x1_ASAP7_75t_L U3635 ( .A1(n3610), .A2(
        i_tv80_core_i_reg_RegsH_reg_5__1__net_Q), .B1(n3562), .B2(n3608), .Y(
        U1704_net_Y) );
  OAI22xp33_ASAP7_75t_L U3636 ( .A1(n3608), .A2(n3611), .B1(n3566), .B2(n3610), 
        .Y(U1703_net_Y) );
  AO22x1_ASAP7_75t_L U3637 ( .A1(n3610), .A2(
        i_tv80_core_i_reg_RegsH_reg_5__3__net_Q), .B1(n3571), .B2(n3608), .Y(
        U1702_net_Y) );
  OAI22xp33_ASAP7_75t_L U3638 ( .A1(n3608), .A2(n3612), .B1(n3585), .B2(n3610), 
        .Y(U1701_net_Y) );
  AO22x1_ASAP7_75t_L U3639 ( .A1(n3610), .A2(
        i_tv80_core_i_reg_RegsH_reg_5__5__net_Q), .B1(n3587), .B2(n3608), .Y(
        U1700_net_Y) );
  OAI22xp33_ASAP7_75t_L U3640 ( .A1(n3608), .A2(n3613), .B1(n3588), .B2(n3610), 
        .Y(U1699_net_Y) );
  OAI22xp33_ASAP7_75t_L U3641 ( .A1(n3608), .A2(n3614), .B1(n3590), .B2(n3610), 
        .Y(U1698_net_Y) );
  INVx1_ASAP7_75t_L U3642 ( .A(n3606), .Y(n3590) );
  INVx1_ASAP7_75t_L U3643 ( .A(n3610), .Y(n3608) );
  NAND2xp33_ASAP7_75t_L U3644 ( .A(n3592), .B(n3615), .Y(n3610) );
  OAI22xp33_ASAP7_75t_L U3645 ( .A1(n3616), .A2(n3617), .B1(n3557), .B2(n3618), 
        .Y(U1696_net_Y) );
  AO22x1_ASAP7_75t_L U3646 ( .A1(n3618), .A2(
        i_tv80_core_i_reg_RegsH_reg_4__1__net_Q), .B1(n3562), .B2(n3616), .Y(
        U1695_net_Y) );
  OAI22xp33_ASAP7_75t_L U3647 ( .A1(n3616), .A2(n3619), .B1(n3566), .B2(n3618), 
        .Y(U1694_net_Y) );
  AO22x1_ASAP7_75t_L U3648 ( .A1(n3618), .A2(
        i_tv80_core_i_reg_RegsH_reg_4__3__net_Q), .B1(n3571), .B2(n3616), .Y(
        U1693_net_Y) );
  OAI22xp33_ASAP7_75t_L U3649 ( .A1(n3616), .A2(n3620), .B1(n3585), .B2(n3618), 
        .Y(U1692_net_Y) );
  AO22x1_ASAP7_75t_L U3650 ( .A1(n3618), .A2(
        i_tv80_core_i_reg_RegsH_reg_4__5__net_Q), .B1(n3587), .B2(n3616), .Y(
        U1691_net_Y) );
  OAI22xp33_ASAP7_75t_L U3651 ( .A1(n3616), .A2(n3621), .B1(n3588), .B2(n3618), 
        .Y(U1690_net_Y) );
  AO221x1_ASAP7_75t_L U3652 ( .A1(n2459), .A2(i_tv80_core_Fp_reg_1__net_Q), 
        .B1(i_tv80_core_F_reg_1__net_Q), .B2(n2460), .C(n2461), .Y(U168_net_Y)
         );
  AO22x1_ASAP7_75t_L U3653 ( .A1(n3618), .A2(
        i_tv80_core_i_reg_RegsH_reg_4__7__net_Q), .B1(n3606), .B2(n3616), .Y(
        U1689_net_Y) );
  INVx1_ASAP7_75t_L U3654 ( .A(n3618), .Y(n3616) );
  NAND2xp33_ASAP7_75t_L U3655 ( .A(n3592), .B(n3622), .Y(n3618) );
  OAI22xp33_ASAP7_75t_L U3656 ( .A1(n3623), .A2(n3624), .B1(n3557), .B2(n3625), 
        .Y(U1687_net_Y) );
  AO22x1_ASAP7_75t_L U3657 ( .A1(n3625), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__1__net_Q), .B1(n3562), .B2(n3623), .Y(
        U1686_net_Y) );
  OAI22xp33_ASAP7_75t_L U3658 ( .A1(n3623), .A2(n3626), .B1(n3566), .B2(n3625), 
        .Y(U1685_net_Y) );
  AO22x1_ASAP7_75t_L U3659 ( .A1(n3625), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__3__net_Q), .B1(n3571), .B2(n3623), .Y(
        U1684_net_Y) );
  OAI22xp33_ASAP7_75t_L U3660 ( .A1(n3623), .A2(n3627), .B1(n3585), .B2(n3625), 
        .Y(U1683_net_Y) );
  AO22x1_ASAP7_75t_L U3661 ( .A1(n3625), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__5__net_Q), .B1(n3587), .B2(n3623), .Y(
        U1682_net_Y) );
  OAI22xp33_ASAP7_75t_L U3662 ( .A1(n3623), .A2(n3628), .B1(n3588), .B2(n3625), 
        .Y(U1681_net_Y) );
  AO22x1_ASAP7_75t_L U3663 ( .A1(n3625), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__7__net_Q), .B1(n3606), .B2(n3623), .Y(
        U1680_net_Y) );
  INVx1_ASAP7_75t_L U3664 ( .A(n3625), .Y(n3623) );
  NAND2xp33_ASAP7_75t_L U3665 ( .A(n3592), .B(n3629), .Y(n3625) );
  OAI22xp33_ASAP7_75t_L U3666 ( .A1(n3630), .A2(n3631), .B1(n3557), .B2(n3632), 
        .Y(U1678_net_Y) );
  OAI22xp33_ASAP7_75t_L U3667 ( .A1(n3630), .A2(n3633), .B1(n3598), .B2(n3632), 
        .Y(U1677_net_Y) );
  INVx1_ASAP7_75t_L U3668 ( .A(n3562), .Y(n3598) );
  OAI22xp33_ASAP7_75t_L U3669 ( .A1(n3630), .A2(n3634), .B1(n3566), .B2(n3632), 
        .Y(U1676_net_Y) );
  OAI22xp33_ASAP7_75t_L U3670 ( .A1(n3630), .A2(n3635), .B1(n3601), .B2(n3632), 
        .Y(U1675_net_Y) );
  INVx1_ASAP7_75t_L U3671 ( .A(n3571), .Y(n3601) );
  OAI22xp33_ASAP7_75t_L U3672 ( .A1(n3630), .A2(n3636), .B1(n3585), .B2(n3632), 
        .Y(U1674_net_Y) );
  OAI22xp33_ASAP7_75t_L U3673 ( .A1(n3630), .A2(n3637), .B1(n3604), .B2(n3632), 
        .Y(U1673_net_Y) );
  INVx1_ASAP7_75t_L U3674 ( .A(n3587), .Y(n3604) );
  OAI22xp33_ASAP7_75t_L U3675 ( .A1(n3630), .A2(n3638), .B1(n3588), .B2(n3632), 
        .Y(U1672_net_Y) );
  AO22x1_ASAP7_75t_L U3676 ( .A1(n3632), .A2(
        i_tv80_core_i_reg_RegsH_reg_2__7__net_Q), .B1(n3606), .B2(n3630), .Y(
        U1671_net_Y) );
  INVx1_ASAP7_75t_L U3677 ( .A(n3632), .Y(n3630) );
  NAND2xp33_ASAP7_75t_L U3678 ( .A(n3592), .B(n3639), .Y(n3632) );
  AO221x1_ASAP7_75t_L U3679 ( .A1(n2459), .A2(i_tv80_core_Fp_reg_0__net_Q), 
        .B1(i_tv80_core_F_reg_0__net_Q), .B2(n2460), .C(n2461), .Y(U166_net_Y)
         );
  INVx1_ASAP7_75t_L U3680 ( .A(n2460), .Y(n2459) );
  NOR2xp33_ASAP7_75t_L U3681 ( .A(n3095), .B(n2544), .Y(n2460) );
  INVx1_ASAP7_75t_L U3682 ( .A(n2549), .Y(n2544) );
  NOR2xp33_ASAP7_75t_L U3683 ( .A(n3640), .B(n2766), .Y(n2549) );
  OAI22xp33_ASAP7_75t_L U3684 ( .A1(n3641), .A2(n3642), .B1(n3557), .B2(n3643), 
        .Y(U1669_net_Y) );
  AO22x1_ASAP7_75t_L U3685 ( .A1(n3643), .A2(
        i_tv80_core_i_reg_RegsH_reg_1__1__net_Q), .B1(n3562), .B2(n3641), .Y(
        U1668_net_Y) );
  OAI22xp33_ASAP7_75t_L U3686 ( .A1(n3641), .A2(n3644), .B1(n3566), .B2(n3643), 
        .Y(U1667_net_Y) );
  AO22x1_ASAP7_75t_L U3687 ( .A1(n3643), .A2(
        i_tv80_core_i_reg_RegsH_reg_1__3__net_Q), .B1(n3571), .B2(n3641), .Y(
        U1666_net_Y) );
  OAI22xp33_ASAP7_75t_L U3688 ( .A1(n3641), .A2(n3645), .B1(n3585), .B2(n3643), 
        .Y(U1665_net_Y) );
  AO22x1_ASAP7_75t_L U3689 ( .A1(n3643), .A2(
        i_tv80_core_i_reg_RegsH_reg_1__5__net_Q), .B1(n3587), .B2(n3641), .Y(
        U1664_net_Y) );
  OAI22xp33_ASAP7_75t_L U3690 ( .A1(n3641), .A2(n3646), .B1(n3588), .B2(n3643), 
        .Y(U1663_net_Y) );
  AO22x1_ASAP7_75t_L U3691 ( .A1(n3643), .A2(
        i_tv80_core_i_reg_RegsH_reg_1__7__net_Q), .B1(n3606), .B2(n3641), .Y(
        U1662_net_Y) );
  INVx1_ASAP7_75t_L U3692 ( .A(n3643), .Y(n3641) );
  NAND2xp33_ASAP7_75t_L U3693 ( .A(n3592), .B(n3647), .Y(n3643) );
  OAI22xp33_ASAP7_75t_L U3694 ( .A1(n3648), .A2(n3649), .B1(n3557), .B2(n3650), 
        .Y(U1660_net_Y) );
  INVx1_ASAP7_75t_L U3695 ( .A(n3651), .Y(n3557) );
  OAI221xp5_ASAP7_75t_L U3696 ( .A1(n3652), .A2(n3653), .B1(n3009), .B2(n3654), 
        .C(n3655), .Y(n3651) );
  AOI22xp33_ASAP7_75t_L U3697 ( .A1(n3656), .A2(n2538), .B1(n3657), .B2(
        i_tv80_core_RegBusA_r_reg_8__net_Q), .Y(n3655) );
  FAx1_ASAP7_75t_L U3698 ( .A(n2446), .B(n3658), .CI(n3659), .SN(n3009) );
  OAI21xp33_ASAP7_75t_L U3699 ( .A1(n2394), .A2(n3660), .B(n3661), .Y(n3659)
         );
  OAI21xp33_ASAP7_75t_L U3700 ( .A1(n3662), .A2(n3663), .B(n3664), .Y(n3661)
         );
  AND3x1_ASAP7_75t_L U3701 ( .A(n3665), .B(n3666), .C(n3667), .Y(n2446) );
  AOI221xp5_ASAP7_75t_L U3702 ( .A1(i_tv80_core_i_reg_RegsH_reg_3__0__net_Q), 
        .A2(n3629), .B1(i_tv80_core_i_reg_RegsH_reg_1__0__net_Q), .B2(n3647), 
        .C(n3668), .Y(n3667) );
  AOI22xp33_ASAP7_75t_L U3703 ( .A1(i_tv80_core_i_reg_RegsH_reg_6__0__net_Q), 
        .A2(n3607), .B1(i_tv80_core_i_reg_RegsH_reg_4__0__net_Q), .B2(n3622), 
        .Y(n3666) );
  AOI22xp33_ASAP7_75t_L U3704 ( .A1(i_tv80_core_i_reg_RegsH_reg_2__0__net_Q), 
        .A2(n3639), .B1(i_tv80_core_i_reg_RegsH_reg_0__0__net_Q), .B2(n3669), 
        .Y(n3665) );
  INVx1_ASAP7_75t_L U3705 ( .A(n3333), .Y(n3652) );
  NAND4xp25_ASAP7_75t_L U3706 ( .A(n3670), .B(n3671), .C(n3672), .D(n3673), 
        .Y(n3333) );
  AOI22xp33_ASAP7_75t_L U3707 ( .A1(n3674), .A2(
        i_tv80_core_i_reg_RegsH_reg_7__0__net_Q), .B1(n3675), .B2(
        i_tv80_core_i_reg_RegsH_reg_5__0__net_Q), .Y(n3673) );
  AOI22xp33_ASAP7_75t_L U3708 ( .A1(n3676), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__0__net_Q), .B1(n3677), .B2(
        i_tv80_core_i_reg_RegsH_reg_1__0__net_Q), .Y(n3672) );
  AOI22xp33_ASAP7_75t_L U3709 ( .A1(n3678), .A2(
        i_tv80_core_i_reg_RegsH_reg_6__0__net_Q), .B1(n3679), .B2(
        i_tv80_core_i_reg_RegsH_reg_4__0__net_Q), .Y(n3671) );
  AOI22xp33_ASAP7_75t_L U3710 ( .A1(n3680), .A2(
        i_tv80_core_i_reg_RegsH_reg_2__0__net_Q), .B1(n3681), .B2(
        i_tv80_core_i_reg_RegsH_reg_0__0__net_Q), .Y(n3670) );
  AO22x1_ASAP7_75t_L U3711 ( .A1(n3650), .A2(
        i_tv80_core_i_reg_RegsH_reg_0__1__net_Q), .B1(n3562), .B2(n3648), .Y(
        U1659_net_Y) );
  OAI221xp5_ASAP7_75t_L U3712 ( .A1(n3682), .A2(n3653), .B1(n3010), .B2(n3654), 
        .C(n3683), .Y(n3562) );
  AOI22xp33_ASAP7_75t_L U3713 ( .A1(n3656), .A2(n2546), .B1(n3657), .B2(
        i_tv80_core_RegBusA_r_reg_9__net_Q), .Y(n3683) );
  FAx1_ASAP7_75t_L U3714 ( .A(n2440), .B(n3658), .CI(n3684), .SN(n3010) );
  INVx1_ASAP7_75t_L U3715 ( .A(n3323), .Y(n3682) );
  NAND4xp25_ASAP7_75t_L U3716 ( .A(n3685), .B(n3686), .C(n3687), .D(n3688), 
        .Y(n3323) );
  AOI22xp33_ASAP7_75t_L U3717 ( .A1(n3674), .A2(
        i_tv80_core_i_reg_RegsH_reg_7__1__net_Q), .B1(n3675), .B2(
        i_tv80_core_i_reg_RegsH_reg_5__1__net_Q), .Y(n3688) );
  AOI22xp33_ASAP7_75t_L U3718 ( .A1(n3676), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__1__net_Q), .B1(n3677), .B2(
        i_tv80_core_i_reg_RegsH_reg_1__1__net_Q), .Y(n3687) );
  AOI22xp33_ASAP7_75t_L U3719 ( .A1(n3678), .A2(
        i_tv80_core_i_reg_RegsH_reg_6__1__net_Q), .B1(n3679), .B2(
        i_tv80_core_i_reg_RegsH_reg_4__1__net_Q), .Y(n3686) );
  AOI22xp33_ASAP7_75t_L U3720 ( .A1(n3680), .A2(
        i_tv80_core_i_reg_RegsH_reg_2__1__net_Q), .B1(n3681), .B2(
        i_tv80_core_i_reg_RegsH_reg_0__1__net_Q), .Y(n3685) );
  OAI22xp33_ASAP7_75t_L U3721 ( .A1(n3648), .A2(n3689), .B1(n3566), .B2(n3650), 
        .Y(U1658_net_Y) );
  INVx1_ASAP7_75t_L U3722 ( .A(n3690), .Y(n3566) );
  OAI221xp5_ASAP7_75t_L U3723 ( .A1(n3691), .A2(n3653), .B1(n3654), .B2(n3013), 
        .C(n3692), .Y(n3690) );
  AOI22xp33_ASAP7_75t_L U3724 ( .A1(n3656), .A2(n2534), .B1(n3657), .B2(
        i_tv80_core_RegBusA_r_reg_10__net_Q), .Y(n3692) );
  FAx1_ASAP7_75t_L U3725 ( .A(n2434), .B(n3658), .CI(n3693), .SN(n3013) );
  OAI21xp33_ASAP7_75t_L U3726 ( .A1(n2440), .A2(n3694), .B(n3695), .Y(n3693)
         );
  OAI21xp33_ASAP7_75t_L U3727 ( .A1(n3684), .A2(n3429), .B(n3664), .Y(n3695)
         );
  AND3x1_ASAP7_75t_L U3728 ( .A(n3696), .B(n3697), .C(n3698), .Y(n2434) );
  AOI221xp5_ASAP7_75t_L U3729 ( .A1(i_tv80_core_i_reg_RegsH_reg_3__2__net_Q), 
        .A2(n3629), .B1(i_tv80_core_i_reg_RegsH_reg_1__2__net_Q), .B2(n3647), 
        .C(n3699), .Y(n3698) );
  AOI22xp33_ASAP7_75t_L U3730 ( .A1(i_tv80_core_i_reg_RegsH_reg_6__2__net_Q), 
        .A2(n3607), .B1(i_tv80_core_i_reg_RegsH_reg_4__2__net_Q), .B2(n3622), 
        .Y(n3697) );
  AOI22xp33_ASAP7_75t_L U3731 ( .A1(i_tv80_core_i_reg_RegsH_reg_2__2__net_Q), 
        .A2(n3639), .B1(i_tv80_core_i_reg_RegsH_reg_0__2__net_Q), .B2(n3669), 
        .Y(n3696) );
  INVx1_ASAP7_75t_L U3732 ( .A(n3316), .Y(n3691) );
  NAND4xp25_ASAP7_75t_L U3733 ( .A(n3700), .B(n3701), .C(n3702), .D(n3703), 
        .Y(n3316) );
  AOI22xp33_ASAP7_75t_L U3734 ( .A1(n3674), .A2(
        i_tv80_core_i_reg_RegsH_reg_7__2__net_Q), .B1(n3675), .B2(
        i_tv80_core_i_reg_RegsH_reg_5__2__net_Q), .Y(n3703) );
  AOI22xp33_ASAP7_75t_L U3735 ( .A1(n3676), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__2__net_Q), .B1(n3677), .B2(
        i_tv80_core_i_reg_RegsH_reg_1__2__net_Q), .Y(n3702) );
  AOI22xp33_ASAP7_75t_L U3736 ( .A1(n3678), .A2(
        i_tv80_core_i_reg_RegsH_reg_6__2__net_Q), .B1(n3679), .B2(
        i_tv80_core_i_reg_RegsH_reg_4__2__net_Q), .Y(n3701) );
  AOI22xp33_ASAP7_75t_L U3737 ( .A1(n3680), .A2(
        i_tv80_core_i_reg_RegsH_reg_2__2__net_Q), .B1(n3681), .B2(
        i_tv80_core_i_reg_RegsH_reg_0__2__net_Q), .Y(n3700) );
  AO22x1_ASAP7_75t_L U3738 ( .A1(n3650), .A2(
        i_tv80_core_i_reg_RegsH_reg_0__3__net_Q), .B1(n3571), .B2(n3648), .Y(
        U1657_net_Y) );
  OAI221xp5_ASAP7_75t_L U3739 ( .A1(n3704), .A2(n3653), .B1(n3011), .B2(n3654), 
        .C(n3705), .Y(n3571) );
  AOI22xp33_ASAP7_75t_L U3740 ( .A1(n3656), .A2(n2530), .B1(n3657), .B2(
        i_tv80_core_RegBusA_r_reg_11__net_Q), .Y(n3705) );
  FAx1_ASAP7_75t_L U3741 ( .A(n2428), .B(n3658), .CI(n3706), .SN(n3011) );
  INVx1_ASAP7_75t_L U3742 ( .A(n3309), .Y(n3704) );
  NAND4xp25_ASAP7_75t_L U3743 ( .A(n3707), .B(n3708), .C(n3709), .D(n3710), 
        .Y(n3309) );
  AOI22xp33_ASAP7_75t_L U3744 ( .A1(n3674), .A2(
        i_tv80_core_i_reg_RegsH_reg_7__3__net_Q), .B1(n3675), .B2(
        i_tv80_core_i_reg_RegsH_reg_5__3__net_Q), .Y(n3710) );
  AOI22xp33_ASAP7_75t_L U3745 ( .A1(n3676), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__3__net_Q), .B1(n3677), .B2(
        i_tv80_core_i_reg_RegsH_reg_1__3__net_Q), .Y(n3709) );
  AOI22xp33_ASAP7_75t_L U3746 ( .A1(n3678), .A2(
        i_tv80_core_i_reg_RegsH_reg_6__3__net_Q), .B1(n3679), .B2(
        i_tv80_core_i_reg_RegsH_reg_4__3__net_Q), .Y(n3708) );
  AOI22xp33_ASAP7_75t_L U3747 ( .A1(n3680), .A2(
        i_tv80_core_i_reg_RegsH_reg_2__3__net_Q), .B1(n3681), .B2(
        i_tv80_core_i_reg_RegsH_reg_0__3__net_Q), .Y(n3707) );
  OAI22xp33_ASAP7_75t_L U3748 ( .A1(n3648), .A2(n3711), .B1(n3585), .B2(n3650), 
        .Y(U1656_net_Y) );
  INVx1_ASAP7_75t_L U3749 ( .A(n3712), .Y(n3585) );
  OAI221xp5_ASAP7_75t_L U3750 ( .A1(n3713), .A2(n3653), .B1(n3654), .B2(n3014), 
        .C(n3714), .Y(n3712) );
  AOI22xp33_ASAP7_75t_L U3751 ( .A1(n3656), .A2(n2526), .B1(n3657), .B2(
        i_tv80_core_RegBusA_r_reg_12__net_Q), .Y(n3714) );
  FAx1_ASAP7_75t_L U3752 ( .A(n2421), .B(n3658), .CI(n3715), .SN(n3014) );
  OAI21xp33_ASAP7_75t_L U3753 ( .A1(n2428), .A2(n3716), .B(n3717), .Y(n3715)
         );
  OAI21xp33_ASAP7_75t_L U3754 ( .A1(n3706), .A2(n3427), .B(n3664), .Y(n3717)
         );
  AND3x1_ASAP7_75t_L U3755 ( .A(n3718), .B(n3719), .C(n3720), .Y(n2421) );
  AOI221xp5_ASAP7_75t_L U3756 ( .A1(i_tv80_core_i_reg_RegsH_reg_3__4__net_Q), 
        .A2(n3629), .B1(i_tv80_core_i_reg_RegsH_reg_1__4__net_Q), .B2(n3647), 
        .C(n3721), .Y(n3720) );
  AOI22xp33_ASAP7_75t_L U3757 ( .A1(i_tv80_core_i_reg_RegsH_reg_6__4__net_Q), 
        .A2(n3607), .B1(i_tv80_core_i_reg_RegsH_reg_4__4__net_Q), .B2(n3622), 
        .Y(n3719) );
  AOI22xp33_ASAP7_75t_L U3758 ( .A1(i_tv80_core_i_reg_RegsH_reg_2__4__net_Q), 
        .A2(n3639), .B1(i_tv80_core_i_reg_RegsH_reg_0__4__net_Q), .B2(n3669), 
        .Y(n3718) );
  INVx1_ASAP7_75t_L U3759 ( .A(n3299), .Y(n3713) );
  NAND4xp25_ASAP7_75t_L U3760 ( .A(n3722), .B(n3723), .C(n3724), .D(n3725), 
        .Y(n3299) );
  AOI22xp33_ASAP7_75t_L U3761 ( .A1(n3674), .A2(
        i_tv80_core_i_reg_RegsH_reg_7__4__net_Q), .B1(n3675), .B2(
        i_tv80_core_i_reg_RegsH_reg_5__4__net_Q), .Y(n3725) );
  AOI22xp33_ASAP7_75t_L U3762 ( .A1(n3676), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__4__net_Q), .B1(n3677), .B2(
        i_tv80_core_i_reg_RegsH_reg_1__4__net_Q), .Y(n3724) );
  AOI22xp33_ASAP7_75t_L U3763 ( .A1(n3678), .A2(
        i_tv80_core_i_reg_RegsH_reg_6__4__net_Q), .B1(n3679), .B2(
        i_tv80_core_i_reg_RegsH_reg_4__4__net_Q), .Y(n3723) );
  AOI22xp33_ASAP7_75t_L U3764 ( .A1(n3680), .A2(
        i_tv80_core_i_reg_RegsH_reg_2__4__net_Q), .B1(n3681), .B2(
        i_tv80_core_i_reg_RegsH_reg_0__4__net_Q), .Y(n3722) );
  AO22x1_ASAP7_75t_L U3765 ( .A1(n3650), .A2(
        i_tv80_core_i_reg_RegsH_reg_0__5__net_Q), .B1(n3587), .B2(n3648), .Y(
        U1655_net_Y) );
  OAI221xp5_ASAP7_75t_L U3766 ( .A1(n3726), .A2(n3653), .B1(n3012), .B2(n3654), 
        .C(n3727), .Y(n3587) );
  AOI22xp33_ASAP7_75t_L U3767 ( .A1(n3656), .A2(n2521), .B1(n3657), .B2(
        i_tv80_core_RegBusA_r_reg_13__net_Q), .Y(n3727) );
  FAx1_ASAP7_75t_L U3768 ( .A(n2414), .B(n3658), .CI(n3728), .SN(n3012) );
  INVx1_ASAP7_75t_L U3769 ( .A(n3344), .Y(n3726) );
  NAND4xp25_ASAP7_75t_L U3770 ( .A(n3729), .B(n3730), .C(n3731), .D(n3732), 
        .Y(n3344) );
  AOI22xp33_ASAP7_75t_L U3771 ( .A1(n3674), .A2(
        i_tv80_core_i_reg_RegsH_reg_7__5__net_Q), .B1(n3675), .B2(
        i_tv80_core_i_reg_RegsH_reg_5__5__net_Q), .Y(n3732) );
  AOI22xp33_ASAP7_75t_L U3772 ( .A1(n3676), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__5__net_Q), .B1(n3677), .B2(
        i_tv80_core_i_reg_RegsH_reg_1__5__net_Q), .Y(n3731) );
  AOI22xp33_ASAP7_75t_L U3773 ( .A1(n3678), .A2(
        i_tv80_core_i_reg_RegsH_reg_6__5__net_Q), .B1(n3679), .B2(
        i_tv80_core_i_reg_RegsH_reg_4__5__net_Q), .Y(n3730) );
  AOI22xp33_ASAP7_75t_L U3774 ( .A1(n3680), .A2(
        i_tv80_core_i_reg_RegsH_reg_2__5__net_Q), .B1(n3681), .B2(
        i_tv80_core_i_reg_RegsH_reg_0__5__net_Q), .Y(n3729) );
  OAI22xp33_ASAP7_75t_L U3775 ( .A1(n3648), .A2(n3733), .B1(n3588), .B2(n3650), 
        .Y(U1654_net_Y) );
  INVx1_ASAP7_75t_L U3776 ( .A(n3734), .Y(n3588) );
  OAI221xp5_ASAP7_75t_L U3777 ( .A1(n3735), .A2(n3653), .B1(n3654), .B2(n3015), 
        .C(n3736), .Y(n3734) );
  AOI22xp33_ASAP7_75t_L U3778 ( .A1(n3656), .A2(n2516), .B1(n3657), .B2(
        i_tv80_core_RegBusA_r_reg_14__net_Q), .Y(n3736) );
  FAx1_ASAP7_75t_L U3779 ( .A(n2407), .B(n3658), .CI(n3737), .SN(n3015) );
  OAI21xp33_ASAP7_75t_L U3780 ( .A1(n2414), .A2(n3738), .B(n3739), .Y(n3737)
         );
  OAI21xp33_ASAP7_75t_L U3781 ( .A1(n3728), .A2(n3425), .B(n3664), .Y(n3739)
         );
  AND3x1_ASAP7_75t_L U3782 ( .A(n3740), .B(n3741), .C(n3742), .Y(n2407) );
  AOI221xp5_ASAP7_75t_L U3783 ( .A1(i_tv80_core_i_reg_RegsH_reg_3__6__net_Q), 
        .A2(n3629), .B1(i_tv80_core_i_reg_RegsH_reg_1__6__net_Q), .B2(n3647), 
        .C(n3743), .Y(n3742) );
  AOI22xp33_ASAP7_75t_L U3784 ( .A1(i_tv80_core_i_reg_RegsH_reg_6__6__net_Q), 
        .A2(n3607), .B1(i_tv80_core_i_reg_RegsH_reg_4__6__net_Q), .B2(n3622), 
        .Y(n3741) );
  AOI22xp33_ASAP7_75t_L U3785 ( .A1(i_tv80_core_i_reg_RegsH_reg_2__6__net_Q), 
        .A2(n3639), .B1(i_tv80_core_i_reg_RegsH_reg_0__6__net_Q), .B2(n3669), 
        .Y(n3740) );
  INVx1_ASAP7_75t_L U3786 ( .A(n3351), .Y(n3735) );
  NAND4xp25_ASAP7_75t_L U3787 ( .A(n3744), .B(n3745), .C(n3746), .D(n3747), 
        .Y(n3351) );
  AOI22xp33_ASAP7_75t_L U3788 ( .A1(n3674), .A2(
        i_tv80_core_i_reg_RegsH_reg_7__6__net_Q), .B1(n3675), .B2(
        i_tv80_core_i_reg_RegsH_reg_5__6__net_Q), .Y(n3747) );
  AOI22xp33_ASAP7_75t_L U3789 ( .A1(n3676), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__6__net_Q), .B1(n3677), .B2(
        i_tv80_core_i_reg_RegsH_reg_1__6__net_Q), .Y(n3746) );
  AOI22xp33_ASAP7_75t_L U3790 ( .A1(n3678), .A2(
        i_tv80_core_i_reg_RegsH_reg_6__6__net_Q), .B1(n3679), .B2(
        i_tv80_core_i_reg_RegsH_reg_4__6__net_Q), .Y(n3745) );
  AOI22xp33_ASAP7_75t_L U3791 ( .A1(n3680), .A2(
        i_tv80_core_i_reg_RegsH_reg_2__6__net_Q), .B1(n3681), .B2(
        i_tv80_core_i_reg_RegsH_reg_0__6__net_Q), .Y(n3744) );
  AO22x1_ASAP7_75t_L U3792 ( .A1(n3650), .A2(
        i_tv80_core_i_reg_RegsH_reg_0__7__net_Q), .B1(n3606), .B2(n3648), .Y(
        U1653_net_Y) );
  INVx1_ASAP7_75t_L U3793 ( .A(n3650), .Y(n3648) );
  OAI221xp5_ASAP7_75t_L U3794 ( .A1(n3748), .A2(n3653), .B1(n3007), .B2(n3654), 
        .C(n3749), .Y(n3606) );
  AOI22xp33_ASAP7_75t_L U3795 ( .A1(n3656), .A2(n2510), .B1(n3657), .B2(
        i_tv80_core_RegBusA_r_reg_15__net_Q), .Y(n3749) );
  FAx1_ASAP7_75t_L U3796 ( .A(n3750), .B(n2392), .CI(n3658), .SN(n3007) );
  INVx1_ASAP7_75t_L U3797 ( .A(n3423), .Y(n2392) );
  NAND3xp33_ASAP7_75t_L U3798 ( .A(n3751), .B(n3752), .C(n3753), .Y(n3423) );
  AOI221xp5_ASAP7_75t_L U3799 ( .A1(i_tv80_core_i_reg_RegsH_reg_3__7__net_Q), 
        .A2(n3629), .B1(i_tv80_core_i_reg_RegsH_reg_1__7__net_Q), .B2(n3647), 
        .C(n3754), .Y(n3753) );
  OAI22xp33_ASAP7_75t_L U3800 ( .A1(n3755), .A2(n3614), .B1(n3756), .B2(n3591), 
        .Y(n3754) );
  INVx1_ASAP7_75t_L U3801 ( .A(i_tv80_core_i_reg_RegsH_reg_7__7__net_Q), .Y(
        n3591) );
  INVx1_ASAP7_75t_L U3802 ( .A(i_tv80_core_i_reg_RegsH_reg_5__7__net_Q), .Y(
        n3614) );
  AOI22xp33_ASAP7_75t_L U3803 ( .A1(i_tv80_core_i_reg_RegsH_reg_6__7__net_Q), 
        .A2(n3607), .B1(i_tv80_core_i_reg_RegsH_reg_4__7__net_Q), .B2(n3622), 
        .Y(n3752) );
  AOI22xp33_ASAP7_75t_L U3804 ( .A1(i_tv80_core_i_reg_RegsH_reg_2__7__net_Q), 
        .A2(n3639), .B1(i_tv80_core_i_reg_RegsH_reg_0__7__net_Q), .B2(n3669), 
        .Y(n3751) );
  MAJIxp5_ASAP7_75t_L U3805 ( .A(n3757), .B(n3758), .C(n3658), .Y(n3750) );
  NOR4xp25_ASAP7_75t_L U3806 ( .A(n3743), .B(n3759), .C(n3760), .D(n3761), .Y(
        n3758) );
  OAI22xp33_ASAP7_75t_L U3807 ( .A1(n3762), .A2(n3733), .B1(n3763), .B2(n3638), 
        .Y(n3761) );
  INVx1_ASAP7_75t_L U3808 ( .A(i_tv80_core_i_reg_RegsH_reg_2__6__net_Q), .Y(
        n3638) );
  INVx1_ASAP7_75t_L U3809 ( .A(i_tv80_core_i_reg_RegsH_reg_0__6__net_Q), .Y(
        n3733) );
  OAI22xp33_ASAP7_75t_L U3810 ( .A1(n3764), .A2(n3621), .B1(n3765), .B2(n3605), 
        .Y(n3760) );
  INVx1_ASAP7_75t_L U3811 ( .A(i_tv80_core_i_reg_RegsH_reg_6__6__net_Q), .Y(
        n3605) );
  INVx1_ASAP7_75t_L U3812 ( .A(i_tv80_core_i_reg_RegsH_reg_4__6__net_Q), .Y(
        n3621) );
  OAI22xp33_ASAP7_75t_L U3813 ( .A1(n3766), .A2(n3646), .B1(n3767), .B2(n3628), 
        .Y(n3759) );
  INVx1_ASAP7_75t_L U3814 ( .A(i_tv80_core_i_reg_RegsH_reg_3__6__net_Q), .Y(
        n3628) );
  INVx1_ASAP7_75t_L U3815 ( .A(i_tv80_core_i_reg_RegsH_reg_1__6__net_Q), .Y(
        n3646) );
  OAI22xp33_ASAP7_75t_L U3816 ( .A1(n3755), .A2(n3613), .B1(n3756), .B2(n3589), 
        .Y(n3743) );
  INVx1_ASAP7_75t_L U3817 ( .A(i_tv80_core_i_reg_RegsH_reg_7__6__net_Q), .Y(
        n3589) );
  INVx1_ASAP7_75t_L U3818 ( .A(i_tv80_core_i_reg_RegsH_reg_5__6__net_Q), .Y(
        n3613) );
  AOI22xp33_ASAP7_75t_L U3819 ( .A1(n3768), .A2(n3664), .B1(n3728), .B2(n3425), 
        .Y(n3757) );
  NAND2xp33_ASAP7_75t_L U3820 ( .A(n2414), .B(n3738), .Y(n3768) );
  INVx1_ASAP7_75t_L U3821 ( .A(n3728), .Y(n3738) );
  MAJIxp5_ASAP7_75t_L U3822 ( .A(n3769), .B(n3658), .C(n3770), .Y(n3728) );
  O2A1O1Ixp33_ASAP7_75t_L U3823 ( .A1(n3706), .A2(n3427), .B(n3664), .C(n3771), 
        .Y(n3770) );
  NOR2xp33_ASAP7_75t_L U3824 ( .A(n2428), .B(n3716), .Y(n3771) );
  INVx1_ASAP7_75t_L U3825 ( .A(n3706), .Y(n3716) );
  INVx1_ASAP7_75t_L U3826 ( .A(n3427), .Y(n2428) );
  NAND3xp33_ASAP7_75t_L U3827 ( .A(n3772), .B(n3773), .C(n3774), .Y(n3427) );
  AOI221xp5_ASAP7_75t_L U3828 ( .A1(i_tv80_core_i_reg_RegsH_reg_3__3__net_Q), 
        .A2(n3629), .B1(i_tv80_core_i_reg_RegsH_reg_7__3__net_Q), .B2(n3593), 
        .C(n3775), .Y(n3774) );
  OAI22xp33_ASAP7_75t_L U3829 ( .A1(n3765), .A2(n3600), .B1(n3763), .B2(n3635), 
        .Y(n3775) );
  INVx1_ASAP7_75t_L U3830 ( .A(i_tv80_core_i_reg_RegsH_reg_2__3__net_Q), .Y(
        n3635) );
  INVx1_ASAP7_75t_L U3831 ( .A(i_tv80_core_i_reg_RegsH_reg_6__3__net_Q), .Y(
        n3600) );
  AOI22xp33_ASAP7_75t_L U3832 ( .A1(i_tv80_core_i_reg_RegsH_reg_0__3__net_Q), 
        .A2(n3669), .B1(i_tv80_core_i_reg_RegsH_reg_4__3__net_Q), .B2(n3622), 
        .Y(n3773) );
  AOI22xp33_ASAP7_75t_L U3833 ( .A1(i_tv80_core_i_reg_RegsH_reg_1__3__net_Q), 
        .A2(n3647), .B1(i_tv80_core_i_reg_RegsH_reg_5__3__net_Q), .B2(n3615), 
        .Y(n3772) );
  MAJIxp5_ASAP7_75t_L U3834 ( .A(n3776), .B(n3658), .C(n3777), .Y(n3706) );
  AOI22xp33_ASAP7_75t_L U3835 ( .A1(n3778), .A2(n3664), .B1(n3684), .B2(n3429), 
        .Y(n3777) );
  NAND2xp33_ASAP7_75t_L U3836 ( .A(n2440), .B(n3694), .Y(n3778) );
  INVx1_ASAP7_75t_L U3837 ( .A(n3684), .Y(n3694) );
  MAJIxp5_ASAP7_75t_L U3838 ( .A(n3779), .B(n3658), .C(n3780), .Y(n3684) );
  O2A1O1Ixp33_ASAP7_75t_L U3839 ( .A1(n3662), .A2(n3663), .B(n3664), .C(n3781), 
        .Y(n3780) );
  NOR2xp33_ASAP7_75t_L U3840 ( .A(n2394), .B(n3660), .Y(n3781) );
  INVx1_ASAP7_75t_L U3841 ( .A(n3663), .Y(n2394) );
  NOR4xp25_ASAP7_75t_L U3842 ( .A(n3668), .B(n3782), .C(n3783), .D(n3784), .Y(
        n3779) );
  OAI22xp33_ASAP7_75t_L U3843 ( .A1(n3762), .A2(n3649), .B1(n3763), .B2(n3631), 
        .Y(n3784) );
  INVx1_ASAP7_75t_L U3844 ( .A(i_tv80_core_i_reg_RegsH_reg_2__0__net_Q), .Y(
        n3631) );
  INVx1_ASAP7_75t_L U3845 ( .A(i_tv80_core_i_reg_RegsH_reg_0__0__net_Q), .Y(
        n3649) );
  OAI22xp33_ASAP7_75t_L U3846 ( .A1(n3764), .A2(n3617), .B1(n3765), .B2(n3595), 
        .Y(n3783) );
  INVx1_ASAP7_75t_L U3847 ( .A(i_tv80_core_i_reg_RegsH_reg_6__0__net_Q), .Y(
        n3595) );
  INVx1_ASAP7_75t_L U3848 ( .A(i_tv80_core_i_reg_RegsH_reg_4__0__net_Q), .Y(
        n3617) );
  OAI22xp33_ASAP7_75t_L U3849 ( .A1(n3766), .A2(n3642), .B1(n3767), .B2(n3624), 
        .Y(n3782) );
  INVx1_ASAP7_75t_L U3850 ( .A(i_tv80_core_i_reg_RegsH_reg_3__0__net_Q), .Y(
        n3624) );
  INVx1_ASAP7_75t_L U3851 ( .A(i_tv80_core_i_reg_RegsH_reg_1__0__net_Q), .Y(
        n3642) );
  OAI22xp33_ASAP7_75t_L U3852 ( .A1(n3755), .A2(n3609), .B1(n3756), .B2(n3556), 
        .Y(n3668) );
  INVx1_ASAP7_75t_L U3853 ( .A(i_tv80_core_i_reg_RegsH_reg_7__0__net_Q), .Y(
        n3556) );
  INVx1_ASAP7_75t_L U3854 ( .A(i_tv80_core_i_reg_RegsH_reg_5__0__net_Q), .Y(
        n3609) );
  INVx1_ASAP7_75t_L U3855 ( .A(n3429), .Y(n2440) );
  NAND3xp33_ASAP7_75t_L U3856 ( .A(n3785), .B(n3786), .C(n3787), .Y(n3429) );
  AOI221xp5_ASAP7_75t_L U3857 ( .A1(i_tv80_core_i_reg_RegsH_reg_3__1__net_Q), 
        .A2(n3629), .B1(i_tv80_core_i_reg_RegsH_reg_7__1__net_Q), .B2(n3593), 
        .C(n3788), .Y(n3787) );
  OAI22xp33_ASAP7_75t_L U3858 ( .A1(n3765), .A2(n3597), .B1(n3763), .B2(n3633), 
        .Y(n3788) );
  INVx1_ASAP7_75t_L U3859 ( .A(i_tv80_core_i_reg_RegsH_reg_2__1__net_Q), .Y(
        n3633) );
  INVx1_ASAP7_75t_L U3860 ( .A(i_tv80_core_i_reg_RegsH_reg_6__1__net_Q), .Y(
        n3597) );
  AOI22xp33_ASAP7_75t_L U3861 ( .A1(i_tv80_core_i_reg_RegsH_reg_0__1__net_Q), 
        .A2(n3669), .B1(i_tv80_core_i_reg_RegsH_reg_4__1__net_Q), .B2(n3622), 
        .Y(n3786) );
  AOI22xp33_ASAP7_75t_L U3862 ( .A1(i_tv80_core_i_reg_RegsH_reg_1__1__net_Q), 
        .A2(n3647), .B1(i_tv80_core_i_reg_RegsH_reg_5__1__net_Q), .B2(n3615), 
        .Y(n3785) );
  NOR4xp25_ASAP7_75t_L U3863 ( .A(n3699), .B(n3789), .C(n3790), .D(n3791), .Y(
        n3776) );
  OAI22xp33_ASAP7_75t_L U3864 ( .A1(n3762), .A2(n3689), .B1(n3763), .B2(n3634), 
        .Y(n3791) );
  INVx1_ASAP7_75t_L U3865 ( .A(i_tv80_core_i_reg_RegsH_reg_2__2__net_Q), .Y(
        n3634) );
  INVx1_ASAP7_75t_L U3866 ( .A(i_tv80_core_i_reg_RegsH_reg_0__2__net_Q), .Y(
        n3689) );
  OAI22xp33_ASAP7_75t_L U3867 ( .A1(n3764), .A2(n3619), .B1(n3765), .B2(n3599), 
        .Y(n3790) );
  INVx1_ASAP7_75t_L U3868 ( .A(i_tv80_core_i_reg_RegsH_reg_6__2__net_Q), .Y(
        n3599) );
  INVx1_ASAP7_75t_L U3869 ( .A(i_tv80_core_i_reg_RegsH_reg_4__2__net_Q), .Y(
        n3619) );
  OAI22xp33_ASAP7_75t_L U3870 ( .A1(n3766), .A2(n3644), .B1(n3767), .B2(n3626), 
        .Y(n3789) );
  INVx1_ASAP7_75t_L U3871 ( .A(i_tv80_core_i_reg_RegsH_reg_3__2__net_Q), .Y(
        n3626) );
  INVx1_ASAP7_75t_L U3872 ( .A(i_tv80_core_i_reg_RegsH_reg_1__2__net_Q), .Y(
        n3644) );
  OAI22xp33_ASAP7_75t_L U3873 ( .A1(n3755), .A2(n3611), .B1(n3756), .B2(n3567), 
        .Y(n3699) );
  INVx1_ASAP7_75t_L U3874 ( .A(i_tv80_core_i_reg_RegsH_reg_7__2__net_Q), .Y(
        n3567) );
  INVx1_ASAP7_75t_L U3875 ( .A(i_tv80_core_i_reg_RegsH_reg_5__2__net_Q), .Y(
        n3611) );
  NOR4xp25_ASAP7_75t_L U3876 ( .A(n3721), .B(n3792), .C(n3793), .D(n3794), .Y(
        n3769) );
  OAI22xp33_ASAP7_75t_L U3877 ( .A1(n3762), .A2(n3711), .B1(n3763), .B2(n3636), 
        .Y(n3794) );
  INVx1_ASAP7_75t_L U3878 ( .A(i_tv80_core_i_reg_RegsH_reg_2__4__net_Q), .Y(
        n3636) );
  INVx1_ASAP7_75t_L U3879 ( .A(i_tv80_core_i_reg_RegsH_reg_0__4__net_Q), .Y(
        n3711) );
  OAI22xp33_ASAP7_75t_L U3880 ( .A1(n3764), .A2(n3620), .B1(n3765), .B2(n3602), 
        .Y(n3793) );
  INVx1_ASAP7_75t_L U3881 ( .A(i_tv80_core_i_reg_RegsH_reg_6__4__net_Q), .Y(
        n3602) );
  INVx1_ASAP7_75t_L U3882 ( .A(i_tv80_core_i_reg_RegsH_reg_4__4__net_Q), .Y(
        n3620) );
  OAI22xp33_ASAP7_75t_L U3883 ( .A1(n3766), .A2(n3645), .B1(n3767), .B2(n3627), 
        .Y(n3792) );
  INVx1_ASAP7_75t_L U3884 ( .A(i_tv80_core_i_reg_RegsH_reg_3__4__net_Q), .Y(
        n3627) );
  INVx1_ASAP7_75t_L U3885 ( .A(i_tv80_core_i_reg_RegsH_reg_1__4__net_Q), .Y(
        n3645) );
  OAI22xp33_ASAP7_75t_L U3886 ( .A1(n3755), .A2(n3612), .B1(n3756), .B2(n3586), 
        .Y(n3721) );
  INVx1_ASAP7_75t_L U3887 ( .A(i_tv80_core_i_reg_RegsH_reg_7__4__net_Q), .Y(
        n3586) );
  INVx1_ASAP7_75t_L U3888 ( .A(i_tv80_core_i_reg_RegsH_reg_5__4__net_Q), .Y(
        n3612) );
  INVx1_ASAP7_75t_L U3889 ( .A(n3425), .Y(n2414) );
  NAND3xp33_ASAP7_75t_L U3890 ( .A(n3795), .B(n3796), .C(n3797), .Y(n3425) );
  AOI221xp5_ASAP7_75t_L U3891 ( .A1(i_tv80_core_i_reg_RegsH_reg_3__5__net_Q), 
        .A2(n3629), .B1(i_tv80_core_i_reg_RegsH_reg_7__5__net_Q), .B2(n3593), 
        .C(n3798), .Y(n3797) );
  OAI22xp33_ASAP7_75t_L U3892 ( .A1(n3765), .A2(n3603), .B1(n3763), .B2(n3637), 
        .Y(n3798) );
  INVx1_ASAP7_75t_L U3893 ( .A(i_tv80_core_i_reg_RegsH_reg_2__5__net_Q), .Y(
        n3637) );
  INVx1_ASAP7_75t_L U3894 ( .A(i_tv80_core_i_reg_RegsH_reg_6__5__net_Q), .Y(
        n3603) );
  AOI22xp33_ASAP7_75t_L U3895 ( .A1(i_tv80_core_i_reg_RegsH_reg_0__5__net_Q), 
        .A2(n3669), .B1(i_tv80_core_i_reg_RegsH_reg_4__5__net_Q), .B2(n3622), 
        .Y(n3796) );
  AOI22xp33_ASAP7_75t_L U3896 ( .A1(i_tv80_core_i_reg_RegsH_reg_1__5__net_Q), 
        .A2(n3647), .B1(i_tv80_core_i_reg_RegsH_reg_5__5__net_Q), .B2(n3615), 
        .Y(n3795) );
  INVx1_ASAP7_75t_L U3897 ( .A(n3463), .Y(n3748) );
  NAND4xp25_ASAP7_75t_L U3898 ( .A(n3799), .B(n3800), .C(n3801), .D(n3802), 
        .Y(n3463) );
  AOI22xp33_ASAP7_75t_L U3899 ( .A1(n3674), .A2(
        i_tv80_core_i_reg_RegsH_reg_7__7__net_Q), .B1(n3675), .B2(
        i_tv80_core_i_reg_RegsH_reg_5__7__net_Q), .Y(n3802) );
  AOI22xp33_ASAP7_75t_L U3900 ( .A1(n3676), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__7__net_Q), .B1(n3677), .B2(
        i_tv80_core_i_reg_RegsH_reg_1__7__net_Q), .Y(n3801) );
  AOI22xp33_ASAP7_75t_L U3901 ( .A1(n3678), .A2(
        i_tv80_core_i_reg_RegsH_reg_6__7__net_Q), .B1(n3679), .B2(
        i_tv80_core_i_reg_RegsH_reg_4__7__net_Q), .Y(n3800) );
  AOI22xp33_ASAP7_75t_L U3902 ( .A1(n3680), .A2(
        i_tv80_core_i_reg_RegsH_reg_2__7__net_Q), .B1(n3681), .B2(
        i_tv80_core_i_reg_RegsH_reg_0__7__net_Q), .Y(n3799) );
  NAND2xp33_ASAP7_75t_L U3903 ( .A(n3592), .B(n3669), .Y(n3650) );
  OA21x2_ASAP7_75t_L U3904 ( .A1(n3803), .A2(n3804), .B(busak_n), .Y(n3592) );
  NOR4xp25_ASAP7_75t_L U3905 ( .A(i_tv80_core_Read_To_Reg_r_reg_3__net_Q), .B(
        i_tv80_core_Read_To_Reg_r_reg_0__net_Q), .C(n3583), .D(n2548), .Y(
        n3803) );
  OAI22xp33_ASAP7_75t_L U3906 ( .A1(n3805), .A2(n3806), .B1(n3807), .B2(n3808), 
        .Y(U1641_net_Y) );
  OAI22xp33_ASAP7_75t_L U3907 ( .A1(n3809), .A2(n3808), .B1(n3805), .B2(n3810), 
        .Y(U1633_net_Y) );
  OAI22xp33_ASAP7_75t_L U3908 ( .A1(n3811), .A2(n3808), .B1(n3805), .B2(n3812), 
        .Y(U1625_net_Y) );
  OAI22xp33_ASAP7_75t_L U3909 ( .A1(n3813), .A2(n3808), .B1(n3805), .B2(n3814), 
        .Y(U1617_net_Y) );
  OAI22xp33_ASAP7_75t_L U3910 ( .A1(n3815), .A2(n3808), .B1(n3805), .B2(n3816), 
        .Y(U1609_net_Y) );
  OAI22xp33_ASAP7_75t_L U3911 ( .A1(n3817), .A2(n3808), .B1(n3805), .B2(n3818), 
        .Y(U1601_net_Y) );
  OAI22xp33_ASAP7_75t_L U3912 ( .A1(n3819), .A2(n3808), .B1(n3805), .B2(n3820), 
        .Y(U1593_net_Y) );
  AO22x1_ASAP7_75t_L U3913 ( .A1(n3821), .A2(n3805), .B1(n3808), .B2(
        i_tv80_core_i_reg_RegsL_reg_7__7__net_Q), .Y(U1585_net_Y) );
  INVx1_ASAP7_75t_L U3914 ( .A(n3808), .Y(n3805) );
  NAND2xp33_ASAP7_75t_L U3915 ( .A(n3822), .B(n3593), .Y(n3808) );
  OAI22xp33_ASAP7_75t_L U3916 ( .A1(n3823), .A2(n3824), .B1(n3807), .B2(n3825), 
        .Y(U1583_net_Y) );
  OAI22xp33_ASAP7_75t_L U3917 ( .A1(n3823), .A2(n3826), .B1(n3809), .B2(n3825), 
        .Y(U1582_net_Y) );
  OAI22xp33_ASAP7_75t_L U3918 ( .A1(n3823), .A2(n3827), .B1(n3811), .B2(n3825), 
        .Y(U1581_net_Y) );
  AO22x1_ASAP7_75t_L U3919 ( .A1(n3825), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__3__net_Q), .B1(n3828), .B2(n3823), .Y(
        U1580_net_Y) );
  NAND4xp25_ASAP7_75t_L U3920 ( .A(n3829), .B(n3830), .C(n3831), .D(n3832), 
        .Y(U157_net_X) );
  AOI222xp33_ASAP7_75t_L U3921 ( .A1(n3833), .A2(i_tv80_core_SP_reg_15__net_Q), 
        .B1(n3834), .B2(n3263), .C1(i_tv80_core_I_reg_7__net_Q), .C2(n3835), 
        .Y(n3832) );
  OAI222xp33_ASAP7_75t_L U3922 ( .A1(n3836), .A2(n3837), .B1(n3838), .B2(n2403), .C1(n3839), .C2(n3840), .Y(n3263) );
  INVx1_ASAP7_75t_L U3923 ( .A(n2773), .Y(n3836) );
  AOI22xp33_ASAP7_75t_L U3924 ( .A1(n3841), .A2(n2773), .B1(n3842), .B2(
        i_tv80_core_PC_reg_15__net_Q), .Y(n3831) );
  AOI22xp33_ASAP7_75t_L U3925 ( .A1(n3843), .A2(i_tv80_core_ACC_reg_7__net_Q), 
        .B1(n3844), .B2(di_reg_reg_7__net_Q), .Y(n3830) );
  AOI322xp5_ASAP7_75t_L U3926 ( .A1(i_tv80_core_TmpAddr_reg_14__net_Q), .A2(
        n3845), .A3(n3840), .B1(A[15]), .B2(n3846), .C1(
        i_tv80_core_TmpAddr_reg_15__net_Q), .C2(n3847), .Y(n3829) );
  OAI21xp33_ASAP7_75t_L U3927 ( .A1(i_tv80_core_TmpAddr_reg_14__net_Q), .A2(
        n3848), .B(n3849), .Y(n3847) );
  OAI22xp33_ASAP7_75t_L U3928 ( .A1(n3823), .A2(n3850), .B1(n3815), .B2(n3825), 
        .Y(U1579_net_Y) );
  AO22x1_ASAP7_75t_L U3929 ( .A1(n3825), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__5__net_Q), .B1(n3851), .B2(n3823), .Y(
        U1578_net_Y) );
  OAI22xp33_ASAP7_75t_L U3930 ( .A1(n3823), .A2(n3852), .B1(n3819), .B2(n3825), 
        .Y(U1577_net_Y) );
  OAI22xp33_ASAP7_75t_L U3931 ( .A1(n3823), .A2(n3853), .B1(n3854), .B2(n3825), 
        .Y(U1576_net_Y) );
  INVx1_ASAP7_75t_L U3932 ( .A(n3825), .Y(n3823) );
  NAND2xp33_ASAP7_75t_L U3933 ( .A(n3822), .B(n3607), .Y(n3825) );
  OAI22xp33_ASAP7_75t_L U3934 ( .A1(n3855), .A2(n3856), .B1(n3807), .B2(n3857), 
        .Y(U1574_net_Y) );
  OAI22xp33_ASAP7_75t_L U3935 ( .A1(n3855), .A2(n3858), .B1(n3809), .B2(n3857), 
        .Y(U1573_net_Y) );
  OAI22xp33_ASAP7_75t_L U3936 ( .A1(n3855), .A2(n3859), .B1(n3811), .B2(n3857), 
        .Y(U1572_net_Y) );
  OAI22xp33_ASAP7_75t_L U3937 ( .A1(n3855), .A2(n3860), .B1(n3813), .B2(n3857), 
        .Y(U1571_net_Y) );
  INVx1_ASAP7_75t_L U3938 ( .A(n3828), .Y(n3813) );
  OAI22xp33_ASAP7_75t_L U3939 ( .A1(n3855), .A2(n3861), .B1(n3815), .B2(n3857), 
        .Y(U1570_net_Y) );
  OAI22xp33_ASAP7_75t_L U3940 ( .A1(n3855), .A2(n3862), .B1(n3817), .B2(n3857), 
        .Y(U1569_net_Y) );
  INVx1_ASAP7_75t_L U3941 ( .A(n3851), .Y(n3817) );
  OAI22xp33_ASAP7_75t_L U3942 ( .A1(n3855), .A2(n3863), .B1(n3819), .B2(n3857), 
        .Y(U1568_net_Y) );
  AO22x1_ASAP7_75t_L U3943 ( .A1(n3857), .A2(
        i_tv80_core_i_reg_RegsL_reg_5__7__net_Q), .B1(n3821), .B2(n3855), .Y(
        U1567_net_Y) );
  INVx1_ASAP7_75t_L U3944 ( .A(n3857), .Y(n3855) );
  NAND2xp33_ASAP7_75t_L U3945 ( .A(n3822), .B(n3615), .Y(n3857) );
  OAI22xp33_ASAP7_75t_L U3946 ( .A1(n3864), .A2(n3865), .B1(n3807), .B2(n3866), 
        .Y(U1565_net_Y) );
  OAI22xp33_ASAP7_75t_L U3947 ( .A1(n3864), .A2(n3867), .B1(n3809), .B2(n3866), 
        .Y(U1564_net_Y) );
  OAI22xp33_ASAP7_75t_L U3948 ( .A1(n3864), .A2(n3868), .B1(n3811), .B2(n3866), 
        .Y(U1563_net_Y) );
  AO22x1_ASAP7_75t_L U3949 ( .A1(n3866), .A2(
        i_tv80_core_i_reg_RegsL_reg_4__3__net_Q), .B1(n3828), .B2(n3864), .Y(
        U1562_net_Y) );
  OAI22xp33_ASAP7_75t_L U3950 ( .A1(n3864), .A2(n3869), .B1(n3815), .B2(n3866), 
        .Y(U1561_net_Y) );
  AO22x1_ASAP7_75t_L U3951 ( .A1(n3866), .A2(
        i_tv80_core_i_reg_RegsL_reg_4__5__net_Q), .B1(n3851), .B2(n3864), .Y(
        U1560_net_Y) );
  OAI22xp33_ASAP7_75t_L U3952 ( .A1(n3864), .A2(n3870), .B1(n3819), .B2(n3866), 
        .Y(U1559_net_Y) );
  AO22x1_ASAP7_75t_L U3953 ( .A1(n3866), .A2(
        i_tv80_core_i_reg_RegsL_reg_4__7__net_Q), .B1(n3821), .B2(n3864), .Y(
        U1558_net_Y) );
  INVx1_ASAP7_75t_L U3954 ( .A(n3866), .Y(n3864) );
  NAND2xp33_ASAP7_75t_L U3955 ( .A(n3822), .B(n3622), .Y(n3866) );
  OAI22xp33_ASAP7_75t_L U3956 ( .A1(n3871), .A2(n3872), .B1(n3807), .B2(n3873), 
        .Y(U1556_net_Y) );
  OAI22xp33_ASAP7_75t_L U3957 ( .A1(n3871), .A2(n3874), .B1(n3809), .B2(n3873), 
        .Y(U1555_net_Y) );
  OAI22xp33_ASAP7_75t_L U3958 ( .A1(n3871), .A2(n3875), .B1(n3811), .B2(n3873), 
        .Y(U1554_net_Y) );
  AO22x1_ASAP7_75t_L U3959 ( .A1(n3873), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__3__net_Q), .B1(n3828), .B2(n3871), .Y(
        U1553_net_Y) );
  OAI22xp33_ASAP7_75t_L U3960 ( .A1(n3871), .A2(n3876), .B1(n3815), .B2(n3873), 
        .Y(U1552_net_Y) );
  AO22x1_ASAP7_75t_L U3961 ( .A1(n3873), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__5__net_Q), .B1(n3851), .B2(n3871), .Y(
        U1551_net_Y) );
  OAI22xp33_ASAP7_75t_L U3962 ( .A1(n3871), .A2(n3877), .B1(n3819), .B2(n3873), 
        .Y(U1550_net_Y) );
  AO22x1_ASAP7_75t_L U3963 ( .A1(n3873), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__7__net_Q), .B1(n3821), .B2(n3871), .Y(
        U1549_net_Y) );
  INVx1_ASAP7_75t_L U3964 ( .A(n3873), .Y(n3871) );
  NAND2xp33_ASAP7_75t_L U3965 ( .A(n3822), .B(n3629), .Y(n3873) );
  OAI22xp33_ASAP7_75t_L U3966 ( .A1(n3878), .A2(n3879), .B1(n3807), .B2(n3880), 
        .Y(U1547_net_Y) );
  OAI22xp33_ASAP7_75t_L U3967 ( .A1(n3878), .A2(n3881), .B1(n3809), .B2(n3880), 
        .Y(U1546_net_Y) );
  OAI22xp33_ASAP7_75t_L U3968 ( .A1(n3878), .A2(n3882), .B1(n3811), .B2(n3880), 
        .Y(U1545_net_Y) );
  AO22x1_ASAP7_75t_L U3969 ( .A1(n3880), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__3__net_Q), .B1(n3828), .B2(n3878), .Y(
        U1544_net_Y) );
  OAI22xp33_ASAP7_75t_L U3970 ( .A1(n3878), .A2(n3883), .B1(n3815), .B2(n3880), 
        .Y(U1543_net_Y) );
  AO22x1_ASAP7_75t_L U3971 ( .A1(n3880), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__5__net_Q), .B1(n3851), .B2(n3878), .Y(
        U1542_net_Y) );
  OAI22xp33_ASAP7_75t_L U3972 ( .A1(n3878), .A2(n3884), .B1(n3819), .B2(n3880), 
        .Y(U1541_net_Y) );
  OAI22xp33_ASAP7_75t_L U3973 ( .A1(n3878), .A2(n3885), .B1(n3854), .B2(n3880), 
        .Y(U1540_net_Y) );
  INVx1_ASAP7_75t_L U3974 ( .A(n3821), .Y(n3854) );
  INVx1_ASAP7_75t_L U3975 ( .A(n3880), .Y(n3878) );
  NAND2xp33_ASAP7_75t_L U3976 ( .A(n3822), .B(n3639), .Y(n3880) );
  OAI22xp33_ASAP7_75t_L U3977 ( .A1(n3886), .A2(n3887), .B1(n3807), .B2(n3888), 
        .Y(U1538_net_Y) );
  OAI22xp33_ASAP7_75t_L U3978 ( .A1(n3886), .A2(n3889), .B1(n3809), .B2(n3888), 
        .Y(U1537_net_Y) );
  OAI22xp33_ASAP7_75t_L U3979 ( .A1(n3886), .A2(n3890), .B1(n3811), .B2(n3888), 
        .Y(U1536_net_Y) );
  AO22x1_ASAP7_75t_L U3980 ( .A1(n3888), .A2(
        i_tv80_core_i_reg_RegsL_reg_1__3__net_Q), .B1(n3828), .B2(n3886), .Y(
        U1535_net_Y) );
  OAI22xp33_ASAP7_75t_L U3981 ( .A1(n3886), .A2(n3891), .B1(n3815), .B2(n3888), 
        .Y(U1534_net_Y) );
  AO22x1_ASAP7_75t_L U3982 ( .A1(n3888), .A2(
        i_tv80_core_i_reg_RegsL_reg_1__5__net_Q), .B1(n3851), .B2(n3886), .Y(
        U1533_net_Y) );
  OAI22xp33_ASAP7_75t_L U3983 ( .A1(n3886), .A2(n3892), .B1(n3819), .B2(n3888), 
        .Y(U1532_net_Y) );
  AO22x1_ASAP7_75t_L U3984 ( .A1(n3888), .A2(
        i_tv80_core_i_reg_RegsL_reg_1__7__net_Q), .B1(n3821), .B2(n3886), .Y(
        U1531_net_Y) );
  INVx1_ASAP7_75t_L U3985 ( .A(n3888), .Y(n3886) );
  NAND2xp33_ASAP7_75t_L U3986 ( .A(n3822), .B(n3647), .Y(n3888) );
  OAI22xp33_ASAP7_75t_L U3987 ( .A1(n3893), .A2(n3894), .B1(n3807), .B2(n3895), 
        .Y(U1529_net_Y) );
  INVx1_ASAP7_75t_L U3988 ( .A(n3896), .Y(n3807) );
  OAI221xp5_ASAP7_75t_L U3989 ( .A1(n3018), .A2(n3654), .B1(n3438), .B2(n3897), 
        .C(n3898), .Y(n3896) );
  AOI22xp33_ASAP7_75t_L U3990 ( .A1(n3656), .A2(n2538), .B1(n3899), .B2(n3330), 
        .Y(n3898) );
  NAND4xp25_ASAP7_75t_L U3991 ( .A(n3900), .B(n3901), .C(n3902), .D(n3903), 
        .Y(n3330) );
  AOI22xp33_ASAP7_75t_L U3992 ( .A1(n3674), .A2(
        i_tv80_core_i_reg_RegsL_reg_7__0__net_Q), .B1(n3675), .B2(
        i_tv80_core_i_reg_RegsL_reg_5__0__net_Q), .Y(n3903) );
  AOI22xp33_ASAP7_75t_L U3993 ( .A1(n3676), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__0__net_Q), .B1(n3677), .B2(
        i_tv80_core_i_reg_RegsL_reg_1__0__net_Q), .Y(n3902) );
  AOI22xp33_ASAP7_75t_L U3994 ( .A1(n3678), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__0__net_Q), .B1(n3679), .B2(
        i_tv80_core_i_reg_RegsL_reg_4__0__net_Q), .Y(n3901) );
  AOI22xp33_ASAP7_75t_L U3995 ( .A1(n3680), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__0__net_Q), .B1(n3681), .B2(
        i_tv80_core_i_reg_RegsL_reg_0__0__net_Q), .Y(n3900) );
  OAI221xp5_ASAP7_75t_L U3996 ( .A1(n3904), .A2(n3905), .B1(n3906), .B2(n3907), 
        .C(n3908), .Y(n2538) );
  AOI22xp33_ASAP7_75t_L U3997 ( .A1(n3909), .A2(n3910), .B1(n3911), .B2(
        di_reg_reg_0__net_Q), .Y(n3908) );
  OAI221xp5_ASAP7_75t_L U3998 ( .A1(n2684), .A2(n2755), .B1(n2753), .B2(n2709), 
        .C(n3912), .Y(n3910) );
  AOI221xp5_ASAP7_75t_L U3999 ( .A1(n3913), .A2(n2642), .B1(n2655), .B2(n2589), 
        .C(n3914), .Y(n3912) );
  AOI221xp5_ASAP7_75t_L U4000 ( .A1(n3254), .A2(n3906), .B1(n2998), .B2(n2610), 
        .C(n3905), .Y(n3914) );
  OAI222xp33_ASAP7_75t_L U4001 ( .A1(i_tv80_core_BusA_reg_0__net_Q), .A2(n3915), .B1(n3916), .B2(n2753), .C1(n3905), .C2(n3917), .Y(n2655) );
  AOI211xp5_ASAP7_75t_L U4002 ( .A1(n3918), .A2(n3919), .B(n3920), .C(n3921), 
        .Y(n3916) );
  OAI22xp33_ASAP7_75t_L U4003 ( .A1(n2715), .A2(n3905), .B1(
        i_tv80_core_BusB_reg_0__net_Q), .B2(n3922), .Y(n3920) );
  XNOR2xp5_ASAP7_75t_L U4004 ( .A(n3923), .B(n3924), .Y(n3918) );
  AOI22xp33_ASAP7_75t_L U4005 ( .A1(n3925), .A2(n3919), .B1(
        i_tv80_core_BusB_reg_0__net_Q), .B2(n3926), .Y(n3915) );
  XOR2xp5_ASAP7_75t_L U4006 ( .A(n3924), .B(n3923), .Y(n3925) );
  OAI211xp5_ASAP7_75t_L U4007 ( .A1(n3906), .A2(n2692), .B(n3446), .C(n3927), 
        .Y(n2642) );
  AOI32xp33_ASAP7_75t_L U4008 ( .A1(i_tv80_core_F_reg_0__net_Q), .A2(
        i_tv80_core_IR_reg_4__net_Q), .A3(n2752), .B1(
        i_tv80_core_BusA_reg_1__net_Q), .B2(i_tv80_core_IR_reg_3__net_Q), .Y(
        n3927) );
  AOI22xp33_ASAP7_75t_L U4009 ( .A1(i_tv80_core_ALU_Op_r_reg_0__net_Q), .A2(
        i_tv80_core_BusB_reg_4__net_Q), .B1(n3928), .B2(
        i_tv80_core_BusB_reg_0__net_Q), .Y(n2684) );
  INVx1_ASAP7_75t_L U4010 ( .A(n2998), .Y(n3906) );
  INVx1_ASAP7_75t_L U4011 ( .A(i_tv80_core_BusB_reg_0__net_Q), .Y(n3905) );
  INVx1_ASAP7_75t_L U4012 ( .A(i_tv80_core_RegBusA_r_reg_0__net_Q), .Y(n3438)
         );
  OAI22xp33_ASAP7_75t_L U4013 ( .A1(n3893), .A2(n3929), .B1(n3809), .B2(n3895), 
        .Y(U1528_net_Y) );
  INVx1_ASAP7_75t_L U4014 ( .A(n3930), .Y(n3809) );
  OAI221xp5_ASAP7_75t_L U4015 ( .A1(n3654), .A2(n3016), .B1(n3437), .B2(n3897), 
        .C(n3931), .Y(n3930) );
  AOI22xp33_ASAP7_75t_L U4016 ( .A1(n3656), .A2(n2546), .B1(n3899), .B2(n3322), 
        .Y(n3931) );
  NAND4xp25_ASAP7_75t_L U4017 ( .A(n3932), .B(n3933), .C(n3934), .D(n3935), 
        .Y(n3322) );
  AOI22xp33_ASAP7_75t_L U4018 ( .A1(n3674), .A2(
        i_tv80_core_i_reg_RegsL_reg_7__1__net_Q), .B1(n3675), .B2(
        i_tv80_core_i_reg_RegsL_reg_5__1__net_Q), .Y(n3935) );
  AOI22xp33_ASAP7_75t_L U4019 ( .A1(n3676), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__1__net_Q), .B1(n3677), .B2(
        i_tv80_core_i_reg_RegsL_reg_1__1__net_Q), .Y(n3934) );
  AOI22xp33_ASAP7_75t_L U4020 ( .A1(n3678), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__1__net_Q), .B1(n3679), .B2(
        i_tv80_core_i_reg_RegsL_reg_4__1__net_Q), .Y(n3933) );
  AOI22xp33_ASAP7_75t_L U4021 ( .A1(n3680), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__1__net_Q), .B1(n3681), .B2(
        i_tv80_core_i_reg_RegsL_reg_0__1__net_Q), .Y(n3932) );
  OAI221xp5_ASAP7_75t_L U4022 ( .A1(n3936), .A2(n3907), .B1(n3937), .B2(n3938), 
        .C(n3939), .Y(n2546) );
  AOI22xp33_ASAP7_75t_L U4023 ( .A1(n3909), .A2(n2587), .B1(n3911), .B2(
        di_reg_reg_1__net_Q), .Y(n3939) );
  OAI221xp5_ASAP7_75t_L U4024 ( .A1(i_tv80_core_ALU_Op_r_reg_3__net_Q), .A2(
        n2656), .B1(n2676), .B2(n2709), .C(n3940), .Y(n2587) );
  AOI222xp33_ASAP7_75t_L U4025 ( .A1(n2667), .A2(n3941), .B1(n3913), .B2(n2638), .C1(i_tv80_core_BusB_reg_1__net_Q), .C2(n3942), .Y(n3940) );
  OAI221xp5_ASAP7_75t_L U4026 ( .A1(n2997), .A2(n3254), .B1(n3936), .B2(n2610), 
        .C(n3253), .Y(n3942) );
  OAI22xp33_ASAP7_75t_L U4027 ( .A1(n2752), .A2(n3943), .B1(
        i_tv80_core_IR_reg_3__net_Q), .B2(n2753), .Y(n2638) );
  INVx1_ASAP7_75t_L U4028 ( .A(n2685), .Y(n3941) );
  AOI22xp33_ASAP7_75t_L U4029 ( .A1(i_tv80_core_ALU_Op_r_reg_0__net_Q), .A2(
        i_tv80_core_BusB_reg_5__net_Q), .B1(n3928), .B2(
        i_tv80_core_BusB_reg_1__net_Q), .Y(n2685) );
  AOI21xp33_ASAP7_75t_L U4030 ( .A1(i_tv80_core_BusA_reg_1__net_Q), .A2(n3944), 
        .B(n3945), .Y(n2676) );
  OA222x2_ASAP7_75t_L U4031 ( .A1(i_tv80_core_BusA_reg_1__net_Q), .A2(n3946), 
        .B1(n3947), .B2(n3948), .C1(n3937), .C2(n3917), .Y(n2656) );
  AOI211xp5_ASAP7_75t_L U4032 ( .A1(n3949), .A2(n3919), .B(n3950), .C(n3921), 
        .Y(n3947) );
  OAI22xp33_ASAP7_75t_L U4033 ( .A1(n2715), .A2(n3937), .B1(
        i_tv80_core_BusB_reg_1__net_Q), .B2(n3922), .Y(n3950) );
  XNOR2xp5_ASAP7_75t_L U4034 ( .A(n3951), .B(n3952), .Y(n3949) );
  AOI22xp33_ASAP7_75t_L U4035 ( .A1(n3953), .A2(n3919), .B1(
        i_tv80_core_BusB_reg_1__net_Q), .B2(n3926), .Y(n3946) );
  XNOR2xp5_ASAP7_75t_L U4036 ( .A(n3952), .B(n3954), .Y(n3953) );
  INVx1_ASAP7_75t_L U4037 ( .A(i_tv80_core_BusB_reg_1__net_Q), .Y(n3937) );
  INVx1_ASAP7_75t_L U4038 ( .A(i_tv80_core_RegBusA_r_reg_1__net_Q), .Y(n3437)
         );
  FAx1_ASAP7_75t_L U4039 ( .A(n3018), .B(n2441), .CI(n3658), .SN(n3016) );
  AND3x1_ASAP7_75t_L U4040 ( .A(n3955), .B(n3956), .C(n3957), .Y(n2441) );
  AOI221xp5_ASAP7_75t_L U4041 ( .A1(i_tv80_core_i_reg_RegsL_reg_3__1__net_Q), 
        .A2(n3629), .B1(i_tv80_core_i_reg_RegsL_reg_1__1__net_Q), .B2(n3647), 
        .C(n3958), .Y(n3957) );
  AOI22xp33_ASAP7_75t_L U4042 ( .A1(i_tv80_core_i_reg_RegsL_reg_6__1__net_Q), 
        .A2(n3607), .B1(i_tv80_core_i_reg_RegsL_reg_4__1__net_Q), .B2(n3622), 
        .Y(n3956) );
  AOI22xp33_ASAP7_75t_L U4043 ( .A1(i_tv80_core_i_reg_RegsL_reg_2__1__net_Q), 
        .A2(n3639), .B1(i_tv80_core_i_reg_RegsL_reg_0__1__net_Q), .B2(n3669), 
        .Y(n3955) );
  NAND3xp33_ASAP7_75t_L U4044 ( .A(n3959), .B(n3960), .C(n3961), .Y(n3018) );
  AOI221xp5_ASAP7_75t_L U4045 ( .A1(i_tv80_core_i_reg_RegsL_reg_3__0__net_Q), 
        .A2(n3629), .B1(i_tv80_core_i_reg_RegsL_reg_1__0__net_Q), .B2(n3647), 
        .C(n3962), .Y(n3961) );
  AOI22xp33_ASAP7_75t_L U4046 ( .A1(i_tv80_core_i_reg_RegsL_reg_6__0__net_Q), 
        .A2(n3607), .B1(i_tv80_core_i_reg_RegsL_reg_4__0__net_Q), .B2(n3622), 
        .Y(n3960) );
  AOI22xp33_ASAP7_75t_L U4047 ( .A1(i_tv80_core_i_reg_RegsL_reg_2__0__net_Q), 
        .A2(n3639), .B1(i_tv80_core_i_reg_RegsL_reg_0__0__net_Q), .B2(n3669), 
        .Y(n3959) );
  OAI22xp33_ASAP7_75t_L U4048 ( .A1(n3893), .A2(n3963), .B1(n3811), .B2(n3895), 
        .Y(U1527_net_Y) );
  INVx1_ASAP7_75t_L U4049 ( .A(n3964), .Y(n3811) );
  OAI221xp5_ASAP7_75t_L U4050 ( .A1(n3654), .A2(n3021), .B1(n3436), .B2(n3897), 
        .C(n3965), .Y(n3964) );
  AOI22xp33_ASAP7_75t_L U4051 ( .A1(n3656), .A2(n2534), .B1(n3899), .B2(n3315), 
        .Y(n3965) );
  NAND4xp25_ASAP7_75t_L U4052 ( .A(n3966), .B(n3967), .C(n3968), .D(n3969), 
        .Y(n3315) );
  AOI22xp33_ASAP7_75t_L U4053 ( .A1(n3674), .A2(
        i_tv80_core_i_reg_RegsL_reg_7__2__net_Q), .B1(n3675), .B2(
        i_tv80_core_i_reg_RegsL_reg_5__2__net_Q), .Y(n3969) );
  AOI22xp33_ASAP7_75t_L U4054 ( .A1(n3676), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__2__net_Q), .B1(n3677), .B2(
        i_tv80_core_i_reg_RegsL_reg_1__2__net_Q), .Y(n3968) );
  AOI22xp33_ASAP7_75t_L U4055 ( .A1(n3678), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__2__net_Q), .B1(n3679), .B2(
        i_tv80_core_i_reg_RegsL_reg_4__2__net_Q), .Y(n3967) );
  AOI22xp33_ASAP7_75t_L U4056 ( .A1(n3680), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__2__net_Q), .B1(n3681), .B2(
        i_tv80_core_i_reg_RegsL_reg_0__2__net_Q), .Y(n3966) );
  OAI221xp5_ASAP7_75t_L U4057 ( .A1(n3904), .A2(n2993), .B1(n2992), .B2(n3907), 
        .C(n3970), .Y(n2534) );
  AOI22xp33_ASAP7_75t_L U4058 ( .A1(n3909), .A2(n3971), .B1(n3911), .B2(
        di_reg_reg_2__net_Q), .Y(n3970) );
  OAI221xp5_ASAP7_75t_L U4059 ( .A1(n2687), .A2(n2755), .B1(
        i_tv80_core_ALU_Op_r_reg_3__net_Q), .B2(n2653), .C(n3972), .Y(n3971)
         );
  AOI221xp5_ASAP7_75t_L U4060 ( .A1(n2637), .A2(n3913), .B1(n3973), .B2(n2669), 
        .C(n3974), .Y(n3972) );
  AOI221xp5_ASAP7_75t_L U4061 ( .A1(n3254), .A2(n2992), .B1(n3975), .B2(n2610), 
        .C(n2993), .Y(n3974) );
  INVx1_ASAP7_75t_L U4062 ( .A(n2675), .Y(n3973) );
  OAI322xp33_ASAP7_75t_L U4063 ( .A1(n3976), .A2(n3977), .A3(n2717), .B1(n3978), .B2(n2732), .C1(i_tv80_core_BusA_reg_2__net_Q), .C2(n3979), .Y(n2675) );
  XOR2xp5_ASAP7_75t_L U4064 ( .A(n3980), .B(n3945), .Y(n3978) );
  NAND2xp33_ASAP7_75t_L U4065 ( .A(i_tv80_core_BusA_reg_2__net_Q), .B(n3979), 
        .Y(n3980) );
  NOR2xp33_ASAP7_75t_L U4066 ( .A(n3948), .B(n3943), .Y(n2717) );
  AOI22xp33_ASAP7_75t_L U4067 ( .A1(n2752), .A2(n3948), .B1(n3981), .B2(
        i_tv80_core_IR_reg_3__net_Q), .Y(n2637) );
  INVx1_ASAP7_75t_L U4068 ( .A(i_tv80_core_BusA_reg_1__net_Q), .Y(n3948) );
  OA222x2_ASAP7_75t_L U4069 ( .A1(i_tv80_core_BusA_reg_2__net_Q), .A2(n3982), 
        .B1(n3983), .B2(n3943), .C1(n2993), .C2(n3917), .Y(n2653) );
  AOI211xp5_ASAP7_75t_L U4070 ( .A1(n3984), .A2(n3919), .B(n3985), .C(n3921), 
        .Y(n3983) );
  OAI22xp33_ASAP7_75t_L U4071 ( .A1(n2715), .A2(n2993), .B1(
        i_tv80_core_BusB_reg_2__net_Q), .B2(n3922), .Y(n3985) );
  XNOR2xp5_ASAP7_75t_L U4072 ( .A(n3986), .B(n3987), .Y(n3984) );
  AOI22xp33_ASAP7_75t_L U4073 ( .A1(n3988), .A2(n3919), .B1(
        i_tv80_core_BusB_reg_2__net_Q), .B2(n3926), .Y(n3982) );
  XNOR2xp5_ASAP7_75t_L U4074 ( .A(n3987), .B(n3989), .Y(n3988) );
  AOI22xp33_ASAP7_75t_L U4075 ( .A1(i_tv80_core_ALU_Op_r_reg_0__net_Q), .A2(
        i_tv80_core_BusB_reg_6__net_Q), .B1(n3928), .B2(
        i_tv80_core_BusB_reg_2__net_Q), .Y(n2687) );
  INVx1_ASAP7_75t_L U4076 ( .A(i_tv80_core_BusB_reg_2__net_Q), .Y(n2993) );
  INVx1_ASAP7_75t_L U4077 ( .A(i_tv80_core_RegBusA_r_reg_2__net_Q), .Y(n3436)
         );
  FAx1_ASAP7_75t_L U4078 ( .A(n3990), .B(n2435), .CI(n3664), .SN(n3021) );
  AND3x1_ASAP7_75t_L U4079 ( .A(n3991), .B(n3992), .C(n3993), .Y(n2435) );
  AOI221xp5_ASAP7_75t_L U4080 ( .A1(i_tv80_core_i_reg_RegsL_reg_3__2__net_Q), 
        .A2(n3629), .B1(i_tv80_core_i_reg_RegsL_reg_1__2__net_Q), .B2(n3647), 
        .C(n3994), .Y(n3993) );
  AOI22xp33_ASAP7_75t_L U4081 ( .A1(i_tv80_core_i_reg_RegsL_reg_6__2__net_Q), 
        .A2(n3607), .B1(i_tv80_core_i_reg_RegsL_reg_4__2__net_Q), .B2(n3622), 
        .Y(n3992) );
  AOI22xp33_ASAP7_75t_L U4082 ( .A1(i_tv80_core_i_reg_RegsL_reg_2__2__net_Q), 
        .A2(n3639), .B1(i_tv80_core_i_reg_RegsL_reg_0__2__net_Q), .B2(n3669), 
        .Y(n3991) );
  AO22x1_ASAP7_75t_L U4083 ( .A1(n3895), .A2(
        i_tv80_core_i_reg_RegsL_reg_0__3__net_Q), .B1(n3828), .B2(n3893), .Y(
        U1526_net_Y) );
  OAI221xp5_ASAP7_75t_L U4084 ( .A1(n3006), .A2(n3654), .B1(n3435), .B2(n3897), 
        .C(n3995), .Y(n3828) );
  AOI22xp33_ASAP7_75t_L U4085 ( .A1(n3656), .A2(n2530), .B1(n3899), .B2(n3308), 
        .Y(n3995) );
  NAND4xp25_ASAP7_75t_L U4086 ( .A(n3996), .B(n3997), .C(n3998), .D(n3999), 
        .Y(n3308) );
  AOI22xp33_ASAP7_75t_L U4087 ( .A1(n3674), .A2(
        i_tv80_core_i_reg_RegsL_reg_7__3__net_Q), .B1(n3675), .B2(
        i_tv80_core_i_reg_RegsL_reg_5__3__net_Q), .Y(n3999) );
  AOI22xp33_ASAP7_75t_L U4088 ( .A1(n3676), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__3__net_Q), .B1(n3677), .B2(
        i_tv80_core_i_reg_RegsL_reg_1__3__net_Q), .Y(n3998) );
  AOI22xp33_ASAP7_75t_L U4089 ( .A1(n3678), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__3__net_Q), .B1(n3679), .B2(
        i_tv80_core_i_reg_RegsL_reg_4__3__net_Q), .Y(n3997) );
  AOI22xp33_ASAP7_75t_L U4090 ( .A1(n3680), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__3__net_Q), .B1(n3681), .B2(
        i_tv80_core_i_reg_RegsL_reg_0__3__net_Q), .Y(n3996) );
  OAI221xp5_ASAP7_75t_L U4091 ( .A1(n4000), .A2(n3907), .B1(n4001), .B2(n3938), 
        .C(n4002), .Y(n2530) );
  AOI22xp33_ASAP7_75t_L U4092 ( .A1(n3909), .A2(n2611), .B1(n3911), .B2(
        di_reg_reg_3__net_Q), .Y(n4002) );
  OAI221xp5_ASAP7_75t_L U4093 ( .A1(i_tv80_core_ALU_Op_r_reg_3__net_Q), .A2(
        n4003), .B1(n4004), .B2(n4001), .C(n2608), .Y(n2611) );
  AOI222xp33_ASAP7_75t_L U4094 ( .A1(n4005), .A2(n2667), .B1(n2669), .B2(n4006), .C1(n3913), .C2(n2641), .Y(n2608) );
  AOI22xp33_ASAP7_75t_L U4095 ( .A1(n2752), .A2(n3943), .B1(n2690), .B2(
        i_tv80_core_IR_reg_3__net_Q), .Y(n2641) );
  INVx1_ASAP7_75t_L U4096 ( .A(n2673), .Y(n4006) );
  OAI221xp5_ASAP7_75t_L U4097 ( .A1(n4007), .A2(n4008), .B1(n4009), .B2(n3976), 
        .C(n4010), .Y(n2673) );
  A2O1A1Ixp33_ASAP7_75t_L U4098 ( .A1(n3977), .A2(n4011), .B(n4012), .C(n3981), 
        .Y(n4010) );
  INVx1_ASAP7_75t_L U4099 ( .A(n4013), .Y(n4012) );
  INVx1_ASAP7_75t_L U4100 ( .A(n2688), .Y(n4005) );
  AOI22xp33_ASAP7_75t_L U4101 ( .A1(i_tv80_core_ALU_Op_r_reg_0__net_Q), .A2(
        i_tv80_core_BusB_reg_7__net_Q), .B1(n3928), .B2(
        i_tv80_core_BusB_reg_3__net_Q), .Y(n2688) );
  AOI221xp5_ASAP7_75t_L U4102 ( .A1(n4014), .A2(n4000), .B1(n2994), .B2(n2999), 
        .C(n4015), .Y(n4004) );
  INVx1_ASAP7_75t_L U4103 ( .A(n2605), .Y(n4003) );
  OAI222xp33_ASAP7_75t_L U4104 ( .A1(i_tv80_core_BusA_reg_3__net_Q), .A2(n4016), .B1(n4017), .B2(n3981), .C1(n4001), .C2(n3917), .Y(n2605) );
  AOI211xp5_ASAP7_75t_L U4105 ( .A1(n4018), .A2(n3919), .B(n4019), .C(n3921), 
        .Y(n4017) );
  OAI22xp33_ASAP7_75t_L U4106 ( .A1(n2715), .A2(n4001), .B1(
        i_tv80_core_BusB_reg_3__net_Q), .B2(n3922), .Y(n4019) );
  XNOR2xp5_ASAP7_75t_L U4107 ( .A(n4020), .B(n4021), .Y(n4018) );
  AOI22xp33_ASAP7_75t_L U4108 ( .A1(n4022), .A2(n3919), .B1(
        i_tv80_core_BusB_reg_3__net_Q), .B2(n3926), .Y(n4016) );
  XNOR2xp5_ASAP7_75t_L U4109 ( .A(n4021), .B(n4023), .Y(n4022) );
  INVx1_ASAP7_75t_L U4110 ( .A(i_tv80_core_BusB_reg_3__net_Q), .Y(n4001) );
  INVx1_ASAP7_75t_L U4111 ( .A(i_tv80_core_RegBusA_r_reg_3__net_Q), .Y(n3435)
         );
  FAx1_ASAP7_75t_L U4112 ( .A(n4024), .B(n2429), .CI(n3664), .SN(n3006) );
  OAI22xp33_ASAP7_75t_L U4113 ( .A1(n3893), .A2(n4025), .B1(n3815), .B2(n3895), 
        .Y(U1525_net_Y) );
  INVx1_ASAP7_75t_L U4114 ( .A(n4026), .Y(n3815) );
  OAI221xp5_ASAP7_75t_L U4115 ( .A1(n3654), .A2(n3020), .B1(n3434), .B2(n3897), 
        .C(n4027), .Y(n4026) );
  AOI22xp33_ASAP7_75t_L U4116 ( .A1(n3656), .A2(n2526), .B1(n3899), .B2(n3297), 
        .Y(n4027) );
  NAND4xp25_ASAP7_75t_L U4117 ( .A(n4028), .B(n4029), .C(n4030), .D(n4031), 
        .Y(n3297) );
  AOI22xp33_ASAP7_75t_L U4118 ( .A1(n3674), .A2(
        i_tv80_core_i_reg_RegsL_reg_7__4__net_Q), .B1(n3675), .B2(
        i_tv80_core_i_reg_RegsL_reg_5__4__net_Q), .Y(n4031) );
  AOI22xp33_ASAP7_75t_L U4119 ( .A1(n3676), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__4__net_Q), .B1(n3677), .B2(
        i_tv80_core_i_reg_RegsL_reg_1__4__net_Q), .Y(n4030) );
  AOI22xp33_ASAP7_75t_L U4120 ( .A1(n3678), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__4__net_Q), .B1(n3679), .B2(
        i_tv80_core_i_reg_RegsL_reg_4__4__net_Q), .Y(n4029) );
  AOI22xp33_ASAP7_75t_L U4121 ( .A1(n3680), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__4__net_Q), .B1(n3681), .B2(
        i_tv80_core_i_reg_RegsL_reg_0__4__net_Q), .Y(n4028) );
  OAI221xp5_ASAP7_75t_L U4122 ( .A1(n3904), .A2(n4032), .B1(n4033), .B2(n3907), 
        .C(n4034), .Y(n2526) );
  AOI22xp33_ASAP7_75t_L U4123 ( .A1(n3909), .A2(n4035), .B1(n3911), .B2(
        di_reg_reg_4__net_Q), .Y(n4034) );
  OAI221xp5_ASAP7_75t_L U4124 ( .A1(n2640), .A2(n2754), .B1(n2690), .B2(n2755), 
        .C(n4036), .Y(n4035) );
  AOI221xp5_ASAP7_75t_L U4125 ( .A1(n2660), .A2(n2589), .B1(n2669), .B2(n2672), 
        .C(n4037), .Y(n4036) );
  AOI221xp5_ASAP7_75t_L U4126 ( .A1(n3254), .A2(n4033), .B1(n2990), .B2(n2610), 
        .C(n4032), .Y(n4037) );
  INVx1_ASAP7_75t_L U4127 ( .A(n2979), .Y(n2672) );
  AOI322xp5_ASAP7_75t_L U4128 ( .A1(n2690), .A2(n2718), .A3(n4011), .B1(n4038), 
        .B2(i_tv80_core_BusA_reg_4__net_Q), .C1(n4039), .C2(
        i_tv80_core_F_reg_1__net_Q), .Y(n2979) );
  OAI211xp5_ASAP7_75t_L U4129 ( .A1(n3976), .A2(n2718), .B(n4013), .C(n4008), 
        .Y(n4038) );
  INVx1_ASAP7_75t_L U4130 ( .A(n2719), .Y(n4008) );
  NOR2xp33_ASAP7_75t_L U4131 ( .A(n2732), .B(n3981), .Y(n2719) );
  AOI21xp33_ASAP7_75t_L U4132 ( .A1(i_tv80_core_F_reg_1__net_Q), .A2(n4007), 
        .B(n3944), .Y(n4013) );
  INVx1_ASAP7_75t_L U4133 ( .A(n4011), .Y(n3976) );
  NOR2xp33_ASAP7_75t_L U4134 ( .A(n3944), .B(i_tv80_core_F_reg_1__net_Q), .Y(
        n4011) );
  OAI321xp33_ASAP7_75t_L U4135 ( .A1(i_tv80_core_BusA_reg_4__net_Q), .A2(n4040), .A3(n4041), .B1(n4042), .B2(n2690), .C(n4043), .Y(n2660) );
  A2O1A1Ixp33_ASAP7_75t_L U4136 ( .A1(n3926), .A2(n2690), .B(n3921), .C(
        i_tv80_core_BusB_reg_4__net_Q), .Y(n4043) );
  AOI211xp5_ASAP7_75t_L U4137 ( .A1(n4041), .A2(n3919), .B(n4044), .C(n3921), 
        .Y(n4042) );
  OAI22xp33_ASAP7_75t_L U4138 ( .A1(n2715), .A2(n4032), .B1(
        i_tv80_core_BusB_reg_4__net_Q), .B2(n3922), .Y(n4044) );
  XNOR2xp5_ASAP7_75t_L U4139 ( .A(n4045), .B(n2711), .Y(n4041) );
  AOI22xp33_ASAP7_75t_L U4140 ( .A1(i_tv80_core_IR_reg_3__net_Q), .A2(
        i_tv80_core_BusA_reg_5__net_Q), .B1(n2752), .B2(
        i_tv80_core_BusA_reg_3__net_Q), .Y(n2640) );
  INVx1_ASAP7_75t_L U4141 ( .A(n4046), .Y(n3907) );
  INVx1_ASAP7_75t_L U4142 ( .A(n2990), .Y(n4033) );
  INVx1_ASAP7_75t_L U4143 ( .A(i_tv80_core_BusB_reg_4__net_Q), .Y(n4032) );
  INVx1_ASAP7_75t_L U4144 ( .A(i_tv80_core_RegBusA_r_reg_4__net_Q), .Y(n3434)
         );
  FAx1_ASAP7_75t_L U4145 ( .A(n2422), .B(n3658), .CI(n4047), .SN(n3020) );
  OAI21xp33_ASAP7_75t_L U4146 ( .A1(n2429), .A2(n4024), .B(n4048), .Y(n4047)
         );
  OAI21xp33_ASAP7_75t_L U4147 ( .A1(n4049), .A2(n4050), .B(n3664), .Y(n4048)
         );
  AND3x1_ASAP7_75t_L U4148 ( .A(n4051), .B(n4052), .C(n4053), .Y(n2422) );
  AOI221xp5_ASAP7_75t_L U4149 ( .A1(i_tv80_core_i_reg_RegsL_reg_3__4__net_Q), 
        .A2(n3629), .B1(i_tv80_core_i_reg_RegsL_reg_1__4__net_Q), .B2(n3647), 
        .C(n4054), .Y(n4053) );
  AOI22xp33_ASAP7_75t_L U4150 ( .A1(i_tv80_core_i_reg_RegsL_reg_6__4__net_Q), 
        .A2(n3607), .B1(i_tv80_core_i_reg_RegsL_reg_4__4__net_Q), .B2(n3622), 
        .Y(n4052) );
  AOI22xp33_ASAP7_75t_L U4151 ( .A1(i_tv80_core_i_reg_RegsL_reg_2__4__net_Q), 
        .A2(n3639), .B1(i_tv80_core_i_reg_RegsL_reg_0__4__net_Q), .B2(n3669), 
        .Y(n4051) );
  AO22x1_ASAP7_75t_L U4152 ( .A1(n3895), .A2(
        i_tv80_core_i_reg_RegsL_reg_0__5__net_Q), .B1(n3851), .B2(n3893), .Y(
        U1524_net_Y) );
  OAI221xp5_ASAP7_75t_L U4153 ( .A1(n3005), .A2(n3654), .B1(n3433), .B2(n3897), 
        .C(n4055), .Y(n3851) );
  AOI22xp33_ASAP7_75t_L U4154 ( .A1(n3656), .A2(n2521), .B1(n3899), .B2(n3343), 
        .Y(n4055) );
  NAND4xp25_ASAP7_75t_L U4155 ( .A(n4056), .B(n4057), .C(n4058), .D(n4059), 
        .Y(n3343) );
  AOI22xp33_ASAP7_75t_L U4156 ( .A1(n3674), .A2(
        i_tv80_core_i_reg_RegsL_reg_7__5__net_Q), .B1(n3675), .B2(
        i_tv80_core_i_reg_RegsL_reg_5__5__net_Q), .Y(n4059) );
  AOI22xp33_ASAP7_75t_L U4157 ( .A1(n3676), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__5__net_Q), .B1(n3677), .B2(
        i_tv80_core_i_reg_RegsL_reg_1__5__net_Q), .Y(n4058) );
  AOI22xp33_ASAP7_75t_L U4158 ( .A1(n3678), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__5__net_Q), .B1(n3679), .B2(
        i_tv80_core_i_reg_RegsL_reg_4__5__net_Q), .Y(n4057) );
  AOI22xp33_ASAP7_75t_L U4159 ( .A1(n3680), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__5__net_Q), .B1(n3681), .B2(
        i_tv80_core_i_reg_RegsL_reg_0__5__net_Q), .Y(n4056) );
  OAI221xp5_ASAP7_75t_L U4160 ( .A1(n4060), .A2(n4061), .B1(n2419), .B2(n4062), 
        .C(n4063), .Y(n2521) );
  AOI22xp33_ASAP7_75t_L U4161 ( .A1(i_tv80_core_BusB_reg_5__net_Q), .A2(n4064), 
        .B1(n4046), .B2(n2996), .Y(n4063) );
  AOI221xp5_ASAP7_75t_L U4162 ( .A1(n4065), .A2(i_tv80_core_BusB_reg_5__net_Q), 
        .B1(n2590), .B2(n2589), .C(n2594), .Y(n4060) );
  OAI222xp33_ASAP7_75t_L U4163 ( .A1(n2709), .A2(n2678), .B1(n2754), .B2(n2982), .C1(n2689), .C2(n2755), .Y(n2594) );
  OAI22xp33_ASAP7_75t_L U4164 ( .A1(i_tv80_core_IR_reg_3__net_Q), .A2(
        i_tv80_core_BusA_reg_4__net_Q), .B1(i_tv80_core_BusA_reg_6__net_Q), 
        .B2(n2752), .Y(n2982) );
  OAI22xp33_ASAP7_75t_L U4165 ( .A1(n2732), .A2(n4066), .B1(
        i_tv80_core_F_reg_1__net_Q), .B2(n4067), .Y(n2678) );
  XNOR2xp5_ASAP7_75t_L U4166 ( .A(n4068), .B(n4069), .Y(n4067) );
  XNOR2xp5_ASAP7_75t_L U4167 ( .A(n4069), .B(n4070), .Y(n4066) );
  OAI222xp33_ASAP7_75t_L U4168 ( .A1(n4071), .A2(n2689), .B1(
        i_tv80_core_BusA_reg_5__net_Q), .B2(n4072), .C1(n4073), .C2(n3917), 
        .Y(n2590) );
  AOI22xp33_ASAP7_75t_L U4169 ( .A1(i_tv80_core_BusB_reg_5__net_Q), .A2(n3926), 
        .B1(n4074), .B2(n3919), .Y(n4072) );
  AOI211xp5_ASAP7_75t_L U4170 ( .A1(n4075), .A2(n3919), .B(n4076), .C(n3921), 
        .Y(n4071) );
  OAI22xp33_ASAP7_75t_L U4171 ( .A1(n2715), .A2(n4073), .B1(
        i_tv80_core_BusB_reg_5__net_Q), .B2(n3922), .Y(n4076) );
  INVx1_ASAP7_75t_L U4172 ( .A(i_tv80_core_BusB_reg_5__net_Q), .Y(n4073) );
  INVx1_ASAP7_75t_L U4173 ( .A(n4074), .Y(n4075) );
  XOR2xp5_ASAP7_75t_L U4174 ( .A(n4077), .B(n4078), .Y(n4074) );
  AOI22xp33_ASAP7_75t_L U4175 ( .A1(n2996), .A2(n2610), .B1(n4079), .B2(n3254), 
        .Y(n4065) );
  INVx1_ASAP7_75t_L U4176 ( .A(i_tv80_core_RegBusA_r_reg_5__net_Q), .Y(n3433)
         );
  FAx1_ASAP7_75t_L U4177 ( .A(n4080), .B(n3658), .CI(n4081), .SN(n3005) );
  OAI22xp33_ASAP7_75t_L U4178 ( .A1(n3893), .A2(n4082), .B1(n3819), .B2(n3895), 
        .Y(U1523_net_Y) );
  INVx1_ASAP7_75t_L U4179 ( .A(n4083), .Y(n3819) );
  OAI221xp5_ASAP7_75t_L U4180 ( .A1(n3654), .A2(n3019), .B1(n3432), .B2(n3897), 
        .C(n4084), .Y(n4083) );
  AOI22xp33_ASAP7_75t_L U4181 ( .A1(n3656), .A2(n2516), .B1(n3899), .B2(n3350), 
        .Y(n4084) );
  NAND4xp25_ASAP7_75t_L U4182 ( .A(n4085), .B(n4086), .C(n4087), .D(n4088), 
        .Y(n3350) );
  AOI22xp33_ASAP7_75t_L U4183 ( .A1(n3674), .A2(
        i_tv80_core_i_reg_RegsL_reg_7__6__net_Q), .B1(n3675), .B2(
        i_tv80_core_i_reg_RegsL_reg_5__6__net_Q), .Y(n4088) );
  AOI22xp33_ASAP7_75t_L U4184 ( .A1(n3676), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__6__net_Q), .B1(n3677), .B2(
        i_tv80_core_i_reg_RegsL_reg_1__6__net_Q), .Y(n4087) );
  AOI22xp33_ASAP7_75t_L U4185 ( .A1(n3678), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__6__net_Q), .B1(n3679), .B2(
        i_tv80_core_i_reg_RegsL_reg_4__6__net_Q), .Y(n4086) );
  AOI22xp33_ASAP7_75t_L U4186 ( .A1(n3680), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__6__net_Q), .B1(n3681), .B2(
        i_tv80_core_i_reg_RegsL_reg_0__6__net_Q), .Y(n4085) );
  OAI221xp5_ASAP7_75t_L U4187 ( .A1(n4089), .A2(n4061), .B1(n2412), .B2(n4062), 
        .C(n4090), .Y(n2516) );
  AOI22xp33_ASAP7_75t_L U4188 ( .A1(i_tv80_core_BusB_reg_6__net_Q), .A2(n4064), 
        .B1(n4046), .B2(n2995), .Y(n4090) );
  AOI221xp5_ASAP7_75t_L U4189 ( .A1(n2658), .A2(n2589), .B1(n2667), .B2(
        i_tv80_core_BusA_reg_6__net_Q), .C(n4091), .Y(n4089) );
  OAI221xp5_ASAP7_75t_L U4190 ( .A1(n2978), .A2(n2709), .B1(n2754), .B2(n4092), 
        .C(n4093), .Y(n4091) );
  OAI221xp5_ASAP7_75t_L U4191 ( .A1(n2995), .A2(n4014), .B1(n2994), .B2(n3446), 
        .C(i_tv80_core_BusB_reg_6__net_Q), .Y(n4093) );
  INVx1_ASAP7_75t_L U4192 ( .A(n2995), .Y(n3446) );
  INVx1_ASAP7_75t_L U4193 ( .A(n2646), .Y(n4092) );
  AOI22xp33_ASAP7_75t_L U4194 ( .A1(n2752), .A2(n2689), .B1(n2692), .B2(
        i_tv80_core_IR_reg_3__net_Q), .Y(n2646) );
  INVx1_ASAP7_75t_L U4195 ( .A(n2677), .Y(n2978) );
  OAI22xp33_ASAP7_75t_L U4196 ( .A1(n2732), .A2(n4094), .B1(
        i_tv80_core_F_reg_1__net_Q), .B2(n4095), .Y(n2677) );
  XNOR2xp5_ASAP7_75t_L U4197 ( .A(n4096), .B(n4097), .Y(n4095) );
  NOR2xp33_ASAP7_75t_L U4198 ( .A(n4069), .B(n4068), .Y(n4097) );
  XOR2xp5_ASAP7_75t_L U4199 ( .A(n4098), .B(n4099), .Y(n4094) );
  NOR2xp33_ASAP7_75t_L U4200 ( .A(n4100), .B(n4069), .Y(n4099) );
  OAI321xp33_ASAP7_75t_L U4201 ( .A1(i_tv80_core_BusA_reg_6__net_Q), .A2(n4040), .A3(n4101), .B1(n4102), .B2(n4103), .C(n4104), .Y(n2658) );
  A2O1A1Ixp33_ASAP7_75t_L U4202 ( .A1(n3926), .A2(n4103), .B(n3921), .C(
        i_tv80_core_BusB_reg_6__net_Q), .Y(n4104) );
  AOI211xp5_ASAP7_75t_L U4203 ( .A1(n4101), .A2(n3919), .B(n4105), .C(n3921), 
        .Y(n4102) );
  OAI22xp33_ASAP7_75t_L U4204 ( .A1(n2715), .A2(n4106), .B1(
        i_tv80_core_BusB_reg_6__net_Q), .B2(n3922), .Y(n4105) );
  XNOR2xp5_ASAP7_75t_L U4205 ( .A(n4107), .B(n4108), .Y(n4101) );
  INVx1_ASAP7_75t_L U4206 ( .A(i_tv80_core_RegBusA_r_reg_6__net_Q), .Y(n3432)
         );
  FAx1_ASAP7_75t_L U4207 ( .A(n2408), .B(n3658), .CI(n4109), .SN(n3019) );
  OAI21xp33_ASAP7_75t_L U4208 ( .A1(n2415), .A2(n4081), .B(n4110), .Y(n4109)
         );
  OAI21xp33_ASAP7_75t_L U4209 ( .A1(n4111), .A2(n4080), .B(n3664), .Y(n4110)
         );
  AND3x1_ASAP7_75t_L U4210 ( .A(n4112), .B(n4113), .C(n4114), .Y(n2408) );
  AOI221xp5_ASAP7_75t_L U4211 ( .A1(i_tv80_core_i_reg_RegsL_reg_3__6__net_Q), 
        .A2(n3629), .B1(i_tv80_core_i_reg_RegsL_reg_1__6__net_Q), .B2(n3647), 
        .C(n4115), .Y(n4114) );
  AOI22xp33_ASAP7_75t_L U4212 ( .A1(i_tv80_core_i_reg_RegsL_reg_6__6__net_Q), 
        .A2(n3607), .B1(i_tv80_core_i_reg_RegsL_reg_4__6__net_Q), .B2(n3622), 
        .Y(n4113) );
  AOI22xp33_ASAP7_75t_L U4213 ( .A1(i_tv80_core_i_reg_RegsL_reg_2__6__net_Q), 
        .A2(n3639), .B1(i_tv80_core_i_reg_RegsL_reg_0__6__net_Q), .B2(n3669), 
        .Y(n4112) );
  AO22x1_ASAP7_75t_L U4214 ( .A1(n3895), .A2(
        i_tv80_core_i_reg_RegsL_reg_0__7__net_Q), .B1(n3821), .B2(n3893), .Y(
        U1522_net_Y) );
  INVx1_ASAP7_75t_L U4215 ( .A(n3895), .Y(n3893) );
  OAI221xp5_ASAP7_75t_L U4216 ( .A1(n3004), .A2(n3654), .B1(n3431), .B2(n3897), 
        .C(n4116), .Y(n3821) );
  AOI22xp33_ASAP7_75t_L U4217 ( .A1(n3656), .A2(n2510), .B1(n3899), .B2(n3461), 
        .Y(n4116) );
  NAND4xp25_ASAP7_75t_L U4218 ( .A(n4117), .B(n4118), .C(n4119), .D(n4120), 
        .Y(n3461) );
  AOI22xp33_ASAP7_75t_L U4219 ( .A1(n3674), .A2(
        i_tv80_core_i_reg_RegsL_reg_7__7__net_Q), .B1(n3675), .B2(
        i_tv80_core_i_reg_RegsL_reg_5__7__net_Q), .Y(n4120) );
  NOR3xp33_ASAP7_75t_L U4220 ( .A(n4121), .B(n4122), .C(n4123), .Y(n3675) );
  NOR3xp33_ASAP7_75t_L U4221 ( .A(n4123), .B(n4122), .C(n4124), .Y(n3674) );
  AOI22xp33_ASAP7_75t_L U4222 ( .A1(n3676), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__7__net_Q), .B1(n3677), .B2(
        i_tv80_core_i_reg_RegsL_reg_1__7__net_Q), .Y(n4119) );
  NOR3xp33_ASAP7_75t_L U4223 ( .A(n4121), .B(n4122), .C(n4125), .Y(n3677) );
  NOR3xp33_ASAP7_75t_L U4224 ( .A(n4124), .B(n4122), .C(n4125), .Y(n3676) );
  AOI22xp33_ASAP7_75t_L U4225 ( .A1(n3678), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__7__net_Q), .B1(n3679), .B2(
        i_tv80_core_i_reg_RegsL_reg_4__7__net_Q), .Y(n4118) );
  NOR3xp33_ASAP7_75t_L U4226 ( .A(n4123), .B(n4121), .C(n4126), .Y(n3679) );
  NOR3xp33_ASAP7_75t_L U4227 ( .A(n4124), .B(n4123), .C(n4126), .Y(n3678) );
  AOI22xp33_ASAP7_75t_L U4228 ( .A1(n3680), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__7__net_Q), .B1(n3681), .B2(
        i_tv80_core_i_reg_RegsL_reg_0__7__net_Q), .Y(n4117) );
  NOR3xp33_ASAP7_75t_L U4229 ( .A(n4125), .B(n4121), .C(n4126), .Y(n3681) );
  INVx1_ASAP7_75t_L U4230 ( .A(n4124), .Y(n4121) );
  NOR3xp33_ASAP7_75t_L U4231 ( .A(n4125), .B(n4124), .C(n4126), .Y(n3680) );
  INVx1_ASAP7_75t_L U4232 ( .A(n4122), .Y(n4126) );
  NOR2xp33_ASAP7_75t_L U4233 ( .A(n3899), .B(
        i_tv80_core_RegAddrB_r_reg_0__net_Q), .Y(n4122) );
  NAND2xp33_ASAP7_75t_L U4234 ( .A(i_tv80_core_RegAddrB_r_reg_1__net_Q), .B(
        n3653), .Y(n4124) );
  INVx1_ASAP7_75t_L U4235 ( .A(n4123), .Y(n4125) );
  AOI22xp33_ASAP7_75t_L U4236 ( .A1(i_tv80_core_Alternate_reg_net_Q), .A2(
        n3899), .B1(n3653), .B2(i_tv80_core_RegAddrB_r_reg_2__net_Q), .Y(n4123) );
  OAI221xp5_ASAP7_75t_L U4237 ( .A1(n4127), .A2(n4061), .B1(n2403), .B2(n4062), 
        .C(n4128), .Y(n2510) );
  AOI22xp33_ASAP7_75t_L U4238 ( .A1(i_tv80_core_BusB_reg_7__net_Q), .A2(n4064), 
        .B1(n4046), .B2(n2989), .Y(n4128) );
  INVx1_ASAP7_75t_L U4239 ( .A(n3904), .Y(n4064) );
  NOR2xp33_ASAP7_75t_L U4240 ( .A(n3448), .B(n4046), .Y(n3904) );
  NOR2xp33_ASAP7_75t_L U4241 ( .A(n3253), .B(n4061), .Y(n4046) );
  INVx1_ASAP7_75t_L U4242 ( .A(n4015), .Y(n3253) );
  NOR4xp25_ASAP7_75t_L U4243 ( .A(n2589), .B(n4129), .C(
        i_tv80_core_ALU_Op_r_reg_0__net_Q), .D(
        i_tv80_core_ALU_Op_r_reg_2__net_Q), .Y(n4015) );
  INVx1_ASAP7_75t_L U4244 ( .A(n3911), .Y(n4062) );
  NOR2xp33_ASAP7_75t_L U4245 ( .A(n3448), .B(i_tv80_core_Save_ALU_r_reg_net_Q), 
        .Y(n3911) );
  INVx1_ASAP7_75t_L U4246 ( .A(n3909), .Y(n4061) );
  NOR2xp33_ASAP7_75t_L U4247 ( .A(n3257), .B(n3448), .Y(n3909) );
  INVx1_ASAP7_75t_L U4248 ( .A(n3938), .Y(n3448) );
  NAND2xp33_ASAP7_75t_L U4249 ( .A(n2881), .B(n3527), .Y(n3938) );
  AOI211xp5_ASAP7_75t_L U4250 ( .A1(n2657), .A2(n2589), .B(n4130), .C(n3252), 
        .Y(n4127) );
  OAI322xp33_ASAP7_75t_L U4251 ( .A1(n4131), .A2(n4132), .A3(n2610), .B1(n2680), .B2(n2709), .C1(n2692), .C2(n2755), .Y(n3252) );
  INVx1_ASAP7_75t_L U4252 ( .A(n2667), .Y(n2755) );
  AOI21xp33_ASAP7_75t_L U4253 ( .A1(n3917), .A2(n3922), .B(n2589), .Y(n2667)
         );
  INVx1_ASAP7_75t_L U4254 ( .A(n2669), .Y(n2709) );
  NOR2xp33_ASAP7_75t_L U4255 ( .A(n2715), .B(n2589), .Y(n2669) );
  OAI22xp33_ASAP7_75t_L U4256 ( .A1(n2732), .A2(n4133), .B1(
        i_tv80_core_F_reg_1__net_Q), .B2(n4134), .Y(n2680) );
  XOR2xp5_ASAP7_75t_L U4257 ( .A(n2760), .B(n2761), .Y(n4134) );
  OAI21xp33_ASAP7_75t_L U4258 ( .A1(n4068), .A2(n4096), .B(n2759), .Y(n2761)
         );
  INVx1_ASAP7_75t_L U4259 ( .A(n4135), .Y(n4068) );
  XNOR2xp5_ASAP7_75t_L U4260 ( .A(n2756), .B(n2757), .Y(n4133) );
  OAI21xp33_ASAP7_75t_L U4261 ( .A1(n4136), .A2(n2977), .B(n4137), .Y(n2757)
         );
  OAI21xp33_ASAP7_75t_L U4262 ( .A1(i_tv80_core_BusA_reg_6__net_Q), .A2(n4136), 
        .B(i_tv80_core_BusA_reg_7__net_Q), .Y(n4137) );
  AOI21xp33_ASAP7_75t_L U4263 ( .A1(n2759), .A2(n4098), .B(n4100), .Y(n2756)
         );
  NOR2xp33_ASAP7_75t_L U4264 ( .A(n4070), .B(n4069), .Y(n4100) );
  INVx1_ASAP7_75t_L U4265 ( .A(n2759), .Y(n4069) );
  OAI21xp33_ASAP7_75t_L U4266 ( .A1(n4039), .A2(n2689), .B(n4136), .Y(n4070)
         );
  XNOR2xp5_ASAP7_75t_L U4267 ( .A(n4136), .B(n4103), .Y(n4098) );
  NAND2xp33_ASAP7_75t_L U4268 ( .A(n4039), .B(n2689), .Y(n4136) );
  INVx1_ASAP7_75t_L U4269 ( .A(i_tv80_core_BusA_reg_5__net_Q), .Y(n2689) );
  NOR3xp33_ASAP7_75t_L U4270 ( .A(i_tv80_core_BusA_reg_3__net_Q), .B(
        i_tv80_core_BusA_reg_4__net_Q), .C(n4007), .Y(n4039) );
  AOI21xp33_ASAP7_75t_L U4271 ( .A1(n3979), .A2(n3943), .B(n3945), .Y(n4007)
         );
  NOR2xp33_ASAP7_75t_L U4272 ( .A(i_tv80_core_BusA_reg_1__net_Q), .B(n3944), 
        .Y(n3945) );
  INVx1_ASAP7_75t_L U4273 ( .A(i_tv80_core_BusA_reg_2__net_Q), .Y(n3943) );
  INVx1_ASAP7_75t_L U4274 ( .A(n3944), .Y(n3979) );
  NOR2xp33_ASAP7_75t_L U4275 ( .A(n2718), .B(i_tv80_core_F_reg_4__net_Q), .Y(
        n3944) );
  A2O1A1Ixp33_ASAP7_75t_L U4276 ( .A1(n4138), .A2(n4135), .B(n2760), .C(n4139), 
        .Y(n2759) );
  AND2x2_ASAP7_75t_L U4277 ( .A(n2738), .B(n2762), .Y(n4139) );
  OAI221xp5_ASAP7_75t_L U4278 ( .A1(n4103), .A2(n2762), .B1(
        i_tv80_core_BusA_reg_7__net_Q), .B2(n4140), .C(n2977), .Y(n2760) );
  NAND2xp33_ASAP7_75t_L U4279 ( .A(n4103), .B(n2692), .Y(n2977) );
  NAND2xp33_ASAP7_75t_L U4280 ( .A(n4140), .B(i_tv80_core_BusA_reg_7__net_Q), 
        .Y(n2762) );
  INVx1_ASAP7_75t_L U4281 ( .A(n4141), .Y(n4140) );
  OAI21xp33_ASAP7_75t_L U4282 ( .A1(i_tv80_core_BusA_reg_5__net_Q), .A2(n4142), 
        .B(n4141), .Y(n4135) );
  INVx1_ASAP7_75t_L U4283 ( .A(n4096), .Y(n4138) );
  XNOR2xp5_ASAP7_75t_L U4284 ( .A(i_tv80_core_BusA_reg_6__net_Q), .B(n4141), 
        .Y(n4096) );
  NAND2xp33_ASAP7_75t_L U4285 ( .A(n4142), .B(i_tv80_core_BusA_reg_5__net_Q), 
        .Y(n4141) );
  NOR2xp33_ASAP7_75t_L U4286 ( .A(n4009), .B(n2690), .Y(n4142) );
  INVx1_ASAP7_75t_L U4287 ( .A(i_tv80_core_BusA_reg_4__net_Q), .Y(n2690) );
  INVx1_ASAP7_75t_L U4288 ( .A(n2718), .Y(n4009) );
  NOR2xp33_ASAP7_75t_L U4289 ( .A(n3981), .B(n3977), .Y(n2718) );
  NOR2xp33_ASAP7_75t_L U4290 ( .A(i_tv80_core_BusA_reg_2__net_Q), .B(
        i_tv80_core_BusA_reg_1__net_Q), .Y(n3977) );
  INVx1_ASAP7_75t_L U4291 ( .A(i_tv80_core_BusA_reg_3__net_Q), .Y(n3981) );
  INVx1_ASAP7_75t_L U4292 ( .A(i_tv80_core_F_reg_1__net_Q), .Y(n2732) );
  INVx1_ASAP7_75t_L U4293 ( .A(n2994), .Y(n2610) );
  NOR3xp33_ASAP7_75t_L U4294 ( .A(n2712), .B(n3928), .C(n2589), .Y(n2994) );
  INVx1_ASAP7_75t_L U4295 ( .A(n2989), .Y(n4132) );
  OAI32xp33_ASAP7_75t_L U4296 ( .A1(n3254), .A2(n2989), .A3(n4131), .B1(n2643), 
        .B2(n2754), .Y(n4130) );
  INVx1_ASAP7_75t_L U4297 ( .A(n3913), .Y(n2754) );
  NOR3xp33_ASAP7_75t_L U4298 ( .A(n2712), .B(i_tv80_core_ALU_Op_r_reg_0__net_Q), .C(n2589), .Y(n3913) );
  INVx1_ASAP7_75t_L U4299 ( .A(n3255), .Y(n2643) );
  OAI221xp5_ASAP7_75t_L U4300 ( .A1(n4079), .A2(n2692), .B1(n3936), .B2(n2753), 
        .C(n4143), .Y(n3255) );
  AOI22xp33_ASAP7_75t_L U4301 ( .A1(i_tv80_core_F_reg_0__net_Q), .A2(n2999), 
        .B1(i_tv80_core_BusA_reg_6__net_Q), .B2(n2752), .Y(n4143) );
  INVx1_ASAP7_75t_L U4302 ( .A(i_tv80_core_BusA_reg_0__net_Q), .Y(n2753) );
  INVx1_ASAP7_75t_L U4303 ( .A(n2997), .Y(n3936) );
  INVx1_ASAP7_75t_L U4304 ( .A(n2996), .Y(n4079) );
  INVx1_ASAP7_75t_L U4305 ( .A(n4014), .Y(n3254) );
  NOR3xp33_ASAP7_75t_L U4306 ( .A(n4144), .B(i_tv80_core_ALU_Op_r_reg_2__net_Q), .C(n2589), .Y(n4014) );
  INVx1_ASAP7_75t_L U4307 ( .A(n2662), .Y(n4144) );
  INVx1_ASAP7_75t_L U4308 ( .A(i_tv80_core_ALU_Op_r_reg_3__net_Q), .Y(n2589)
         );
  OAI321xp33_ASAP7_75t_L U4309 ( .A1(i_tv80_core_BusA_reg_7__net_Q), .A2(n4040), .A3(n2749), .B1(n4145), .B2(n2692), .C(n4146), .Y(n2657) );
  A2O1A1Ixp33_ASAP7_75t_L U4310 ( .A1(n3926), .A2(n2692), .B(n3921), .C(
        i_tv80_core_BusB_reg_7__net_Q), .Y(n4146) );
  INVx1_ASAP7_75t_L U4311 ( .A(i_tv80_core_BusA_reg_7__net_Q), .Y(n2692) );
  AOI211xp5_ASAP7_75t_L U4312 ( .A1(n2749), .A2(n3919), .B(n4147), .C(n3921), 
        .Y(n4145) );
  INVx1_ASAP7_75t_L U4313 ( .A(n3917), .Y(n3921) );
  NAND2xp33_ASAP7_75t_L U4314 ( .A(n4148), .B(
        i_tv80_core_ALU_Op_r_reg_1__net_Q), .Y(n3917) );
  OAI22xp33_ASAP7_75t_L U4315 ( .A1(n4131), .A2(n2715), .B1(
        i_tv80_core_BusB_reg_7__net_Q), .B2(n3922), .Y(n4147) );
  INVx1_ASAP7_75t_L U4316 ( .A(n3926), .Y(n3922) );
  NOR3xp33_ASAP7_75t_L U4317 ( .A(n3928), .B(i_tv80_core_ALU_Op_r_reg_1__net_Q), .C(n2661), .Y(n3926) );
  NAND2xp33_ASAP7_75t_L U4318 ( .A(n4148), .B(n4129), .Y(n2715) );
  INVx1_ASAP7_75t_L U4319 ( .A(i_tv80_core_BusB_reg_7__net_Q), .Y(n4131) );
  INVx1_ASAP7_75t_L U4320 ( .A(n4040), .Y(n3919) );
  XNOR2xp5_ASAP7_75t_L U4321 ( .A(n2663), .B(n2748), .Y(n2749) );
  XNOR2xp5_ASAP7_75t_L U4322 ( .A(i_tv80_core_BusB_reg_7__net_Q), .B(
        i_tv80_core_ALU_Op_r_reg_1__net_Q), .Y(n2748) );
  AO21x1_ASAP7_75t_L U4323 ( .A1(n4107), .A2(n4108), .B(n4149), .Y(n2663) );
  OA21x2_ASAP7_75t_L U4324 ( .A1(n4108), .A2(n4107), .B(n4103), .Y(n4149) );
  INVx1_ASAP7_75t_L U4325 ( .A(i_tv80_core_BusA_reg_6__net_Q), .Y(n4103) );
  AOI22xp33_ASAP7_75t_L U4326 ( .A1(n4078), .A2(n4077), .B1(n4150), .B2(
        i_tv80_core_BusA_reg_5__net_Q), .Y(n4108) );
  OR2x2_ASAP7_75t_L U4327 ( .A(n4077), .B(n4078), .Y(n4150) );
  XOR2xp5_ASAP7_75t_L U4328 ( .A(i_tv80_core_BusB_reg_5__net_Q), .B(
        i_tv80_core_ALU_Op_r_reg_1__net_Q), .Y(n4077) );
  OAI21xp33_ASAP7_75t_L U4329 ( .A1(n2711), .A2(n4045), .B(n4151), .Y(n4078)
         );
  OAI21xp33_ASAP7_75t_L U4330 ( .A1(n4152), .A2(n2713), .B(
        i_tv80_core_BusA_reg_4__net_Q), .Y(n4151) );
  INVx1_ASAP7_75t_L U4331 ( .A(n2711), .Y(n2713) );
  INVx1_ASAP7_75t_L U4332 ( .A(n4152), .Y(n4045) );
  XNOR2xp5_ASAP7_75t_L U4333 ( .A(i_tv80_core_BusB_reg_4__net_Q), .B(n4129), 
        .Y(n4152) );
  AOI22xp33_ASAP7_75t_L U4334 ( .A1(n4020), .A2(n4021), .B1(n4153), .B2(
        i_tv80_core_BusA_reg_3__net_Q), .Y(n2711) );
  OR2x2_ASAP7_75t_L U4335 ( .A(n4021), .B(n4020), .Y(n4153) );
  XOR2xp5_ASAP7_75t_L U4336 ( .A(i_tv80_core_BusB_reg_3__net_Q), .B(
        i_tv80_core_ALU_Op_r_reg_1__net_Q), .Y(n4021) );
  INVx1_ASAP7_75t_L U4337 ( .A(n4023), .Y(n4020) );
  AOI21xp33_ASAP7_75t_L U4338 ( .A1(n3986), .A2(n3987), .B(n4154), .Y(n4023)
         );
  OA21x2_ASAP7_75t_L U4339 ( .A1(n3987), .A2(n3986), .B(
        i_tv80_core_BusA_reg_2__net_Q), .Y(n4154) );
  XOR2xp5_ASAP7_75t_L U4340 ( .A(i_tv80_core_BusB_reg_2__net_Q), .B(
        i_tv80_core_ALU_Op_r_reg_1__net_Q), .Y(n3987) );
  INVx1_ASAP7_75t_L U4341 ( .A(n3989), .Y(n3986) );
  AOI22xp33_ASAP7_75t_L U4342 ( .A1(n3951), .A2(n3952), .B1(n4155), .B2(
        i_tv80_core_BusA_reg_1__net_Q), .Y(n3989) );
  OR2x2_ASAP7_75t_L U4343 ( .A(n3952), .B(n3951), .Y(n4155) );
  XOR2xp5_ASAP7_75t_L U4344 ( .A(i_tv80_core_BusB_reg_1__net_Q), .B(
        i_tv80_core_ALU_Op_r_reg_1__net_Q), .Y(n3952) );
  INVx1_ASAP7_75t_L U4345 ( .A(n3954), .Y(n3951) );
  AOI21xp33_ASAP7_75t_L U4346 ( .A1(n3923), .A2(n3924), .B(n4156), .Y(n3954)
         );
  OA21x2_ASAP7_75t_L U4347 ( .A1(n3924), .A2(n3923), .B(
        i_tv80_core_BusA_reg_0__net_Q), .Y(n4156) );
  XOR2xp5_ASAP7_75t_L U4348 ( .A(i_tv80_core_BusB_reg_0__net_Q), .B(
        i_tv80_core_ALU_Op_r_reg_1__net_Q), .Y(n3924) );
  OAI31xp33_ASAP7_75t_L U4349 ( .A1(n2712), .A2(n2738), .A3(n3928), .B(n4157), 
        .Y(n3923) );
  OAI31xp33_ASAP7_75t_L U4350 ( .A1(n3928), .A2(
        i_tv80_core_ALU_Op_r_reg_2__net_Q), .A3(n2738), .B(
        i_tv80_core_ALU_Op_r_reg_1__net_Q), .Y(n4157) );
  INVx1_ASAP7_75t_L U4351 ( .A(n2747), .Y(n2712) );
  XNOR2xp5_ASAP7_75t_L U4352 ( .A(n4106), .B(n4129), .Y(n4107) );
  INVx1_ASAP7_75t_L U4353 ( .A(i_tv80_core_BusB_reg_6__net_Q), .Y(n4106) );
  NOR2xp33_ASAP7_75t_L U4354 ( .A(n2747), .B(n2733), .Y(n4040) );
  NOR2xp33_ASAP7_75t_L U4355 ( .A(n4129), .B(n4148), .Y(n2733) );
  NOR2xp33_ASAP7_75t_L U4356 ( .A(n2661), .B(i_tv80_core_ALU_Op_r_reg_0__net_Q), .Y(n4148) );
  INVx1_ASAP7_75t_L U4357 ( .A(i_tv80_core_ALU_Op_r_reg_2__net_Q), .Y(n2661)
         );
  NOR2xp33_ASAP7_75t_L U4358 ( .A(i_tv80_core_ALU_Op_r_reg_2__net_Q), .B(
        i_tv80_core_ALU_Op_r_reg_1__net_Q), .Y(n2747) );
  AND2x2_ASAP7_75t_L U4359 ( .A(n4158), .B(n3654), .Y(n3656) );
  INVx1_ASAP7_75t_L U4360 ( .A(i_tv80_core_RegBusA_r_reg_7__net_Q), .Y(n3431)
         );
  OAI221xp5_ASAP7_75t_L U4361 ( .A1(n2364), .A2(n2867), .B1(n2945), .B2(n3204), 
        .C(n3003), .Y(n3654) );
  FAx1_ASAP7_75t_L U4362 ( .A(n3663), .B(n3658), .CI(n3660), .SN(n3004) );
  INVx1_ASAP7_75t_L U4363 ( .A(n3662), .Y(n3660) );
  MAJIxp5_ASAP7_75t_L U4364 ( .A(n4159), .B(n3658), .C(n4160), .Y(n3662) );
  AOI22xp33_ASAP7_75t_L U4365 ( .A1(n4161), .A2(n3664), .B1(n4111), .B2(n4080), 
        .Y(n4160) );
  NAND2xp33_ASAP7_75t_L U4366 ( .A(n2415), .B(n4081), .Y(n4161) );
  INVx1_ASAP7_75t_L U4367 ( .A(n4111), .Y(n4081) );
  MAJIxp5_ASAP7_75t_L U4368 ( .A(n4162), .B(n3658), .C(n4163), .Y(n4111) );
  AOI22xp33_ASAP7_75t_L U4369 ( .A1(n4164), .A2(n3664), .B1(n4049), .B2(n4050), 
        .Y(n4163) );
  NAND2xp33_ASAP7_75t_L U4370 ( .A(n2429), .B(n4024), .Y(n4164) );
  INVx1_ASAP7_75t_L U4371 ( .A(n4049), .Y(n4024) );
  MAJIxp5_ASAP7_75t_L U4372 ( .A(n3990), .B(n3658), .C(n4165), .Y(n4049) );
  NOR4xp25_ASAP7_75t_L U4373 ( .A(n3994), .B(n4166), .C(n4167), .D(n4168), .Y(
        n4165) );
  OAI22xp33_ASAP7_75t_L U4374 ( .A1(n3762), .A2(n3963), .B1(n3763), .B2(n3882), 
        .Y(n4168) );
  INVx1_ASAP7_75t_L U4375 ( .A(i_tv80_core_i_reg_RegsL_reg_2__2__net_Q), .Y(
        n3882) );
  INVx1_ASAP7_75t_L U4376 ( .A(i_tv80_core_i_reg_RegsL_reg_0__2__net_Q), .Y(
        n3963) );
  OAI22xp33_ASAP7_75t_L U4377 ( .A1(n3764), .A2(n3868), .B1(n3765), .B2(n3827), 
        .Y(n4167) );
  INVx1_ASAP7_75t_L U4378 ( .A(i_tv80_core_i_reg_RegsL_reg_6__2__net_Q), .Y(
        n3827) );
  INVx1_ASAP7_75t_L U4379 ( .A(i_tv80_core_i_reg_RegsL_reg_4__2__net_Q), .Y(
        n3868) );
  OAI22xp33_ASAP7_75t_L U4380 ( .A1(n3766), .A2(n3890), .B1(n3767), .B2(n3875), 
        .Y(n4166) );
  INVx1_ASAP7_75t_L U4381 ( .A(i_tv80_core_i_reg_RegsL_reg_3__2__net_Q), .Y(
        n3875) );
  INVx1_ASAP7_75t_L U4382 ( .A(i_tv80_core_i_reg_RegsL_reg_1__2__net_Q), .Y(
        n3890) );
  OAI22xp33_ASAP7_75t_L U4383 ( .A1(n3755), .A2(n3859), .B1(n3756), .B2(n3812), 
        .Y(n3994) );
  INVx1_ASAP7_75t_L U4384 ( .A(i_tv80_core_i_reg_RegsL_reg_7__2__net_Q), .Y(
        n3812) );
  INVx1_ASAP7_75t_L U4385 ( .A(i_tv80_core_i_reg_RegsL_reg_5__2__net_Q), .Y(
        n3859) );
  MAJx2_ASAP7_75t_L U4386 ( .A(n4169), .B(n4170), .C(n3658), .Y(n3990) );
  NOR4xp25_ASAP7_75t_L U4387 ( .A(n3958), .B(n4171), .C(n4172), .D(n4173), .Y(
        n4170) );
  OAI22xp33_ASAP7_75t_L U4388 ( .A1(n3762), .A2(n3929), .B1(n3763), .B2(n3881), 
        .Y(n4173) );
  INVx1_ASAP7_75t_L U4389 ( .A(i_tv80_core_i_reg_RegsL_reg_2__1__net_Q), .Y(
        n3881) );
  INVx1_ASAP7_75t_L U4390 ( .A(i_tv80_core_i_reg_RegsL_reg_0__1__net_Q), .Y(
        n3929) );
  OAI22xp33_ASAP7_75t_L U4391 ( .A1(n3764), .A2(n3867), .B1(n3765), .B2(n3826), 
        .Y(n4172) );
  INVx1_ASAP7_75t_L U4392 ( .A(i_tv80_core_i_reg_RegsL_reg_6__1__net_Q), .Y(
        n3826) );
  INVx1_ASAP7_75t_L U4393 ( .A(i_tv80_core_i_reg_RegsL_reg_4__1__net_Q), .Y(
        n3867) );
  OAI22xp33_ASAP7_75t_L U4394 ( .A1(n3766), .A2(n3889), .B1(n3767), .B2(n3874), 
        .Y(n4171) );
  INVx1_ASAP7_75t_L U4395 ( .A(i_tv80_core_i_reg_RegsL_reg_3__1__net_Q), .Y(
        n3874) );
  INVx1_ASAP7_75t_L U4396 ( .A(i_tv80_core_i_reg_RegsL_reg_1__1__net_Q), .Y(
        n3889) );
  OAI22xp33_ASAP7_75t_L U4397 ( .A1(n3755), .A2(n3858), .B1(n3756), .B2(n3810), 
        .Y(n3958) );
  INVx1_ASAP7_75t_L U4398 ( .A(i_tv80_core_i_reg_RegsL_reg_7__1__net_Q), .Y(
        n3810) );
  INVx1_ASAP7_75t_L U4399 ( .A(i_tv80_core_i_reg_RegsL_reg_5__1__net_Q), .Y(
        n3858) );
  NOR4xp25_ASAP7_75t_L U4400 ( .A(n3962), .B(n4174), .C(n4175), .D(n4176), .Y(
        n4169) );
  OAI22xp33_ASAP7_75t_L U4401 ( .A1(n3762), .A2(n3894), .B1(n3763), .B2(n3879), 
        .Y(n4176) );
  INVx1_ASAP7_75t_L U4402 ( .A(i_tv80_core_i_reg_RegsL_reg_2__0__net_Q), .Y(
        n3879) );
  INVx1_ASAP7_75t_L U4403 ( .A(i_tv80_core_i_reg_RegsL_reg_0__0__net_Q), .Y(
        n3894) );
  OAI22xp33_ASAP7_75t_L U4404 ( .A1(n3764), .A2(n3865), .B1(n3765), .B2(n3824), 
        .Y(n4175) );
  INVx1_ASAP7_75t_L U4405 ( .A(i_tv80_core_i_reg_RegsL_reg_6__0__net_Q), .Y(
        n3824) );
  INVx1_ASAP7_75t_L U4406 ( .A(i_tv80_core_i_reg_RegsL_reg_4__0__net_Q), .Y(
        n3865) );
  OAI22xp33_ASAP7_75t_L U4407 ( .A1(n3766), .A2(n3887), .B1(n3767), .B2(n3872), 
        .Y(n4174) );
  INVx1_ASAP7_75t_L U4408 ( .A(i_tv80_core_i_reg_RegsL_reg_3__0__net_Q), .Y(
        n3872) );
  INVx1_ASAP7_75t_L U4409 ( .A(i_tv80_core_i_reg_RegsL_reg_1__0__net_Q), .Y(
        n3887) );
  OAI22xp33_ASAP7_75t_L U4410 ( .A1(n3755), .A2(n3856), .B1(n3756), .B2(n3806), 
        .Y(n3962) );
  INVx1_ASAP7_75t_L U4411 ( .A(i_tv80_core_i_reg_RegsL_reg_7__0__net_Q), .Y(
        n3806) );
  INVx1_ASAP7_75t_L U4412 ( .A(i_tv80_core_i_reg_RegsL_reg_5__0__net_Q), .Y(
        n3856) );
  INVx1_ASAP7_75t_L U4413 ( .A(n4050), .Y(n2429) );
  NAND3xp33_ASAP7_75t_L U4414 ( .A(n4177), .B(n4178), .C(n4179), .Y(n4050) );
  AOI221xp5_ASAP7_75t_L U4415 ( .A1(i_tv80_core_i_reg_RegsL_reg_3__3__net_Q), 
        .A2(n3629), .B1(i_tv80_core_i_reg_RegsL_reg_1__3__net_Q), .B2(n3647), 
        .C(n4180), .Y(n4179) );
  OAI22xp33_ASAP7_75t_L U4416 ( .A1(n3755), .A2(n3860), .B1(n3756), .B2(n3814), 
        .Y(n4180) );
  INVx1_ASAP7_75t_L U4417 ( .A(i_tv80_core_i_reg_RegsL_reg_7__3__net_Q), .Y(
        n3814) );
  INVx1_ASAP7_75t_L U4418 ( .A(i_tv80_core_i_reg_RegsL_reg_5__3__net_Q), .Y(
        n3860) );
  AOI22xp33_ASAP7_75t_L U4419 ( .A1(i_tv80_core_i_reg_RegsL_reg_6__3__net_Q), 
        .A2(n3607), .B1(i_tv80_core_i_reg_RegsL_reg_4__3__net_Q), .B2(n3622), 
        .Y(n4178) );
  AOI22xp33_ASAP7_75t_L U4420 ( .A1(i_tv80_core_i_reg_RegsL_reg_2__3__net_Q), 
        .A2(n3639), .B1(i_tv80_core_i_reg_RegsL_reg_0__3__net_Q), .B2(n3669), 
        .Y(n4177) );
  NOR4xp25_ASAP7_75t_L U4421 ( .A(n4054), .B(n4181), .C(n4182), .D(n4183), .Y(
        n4162) );
  OAI22xp33_ASAP7_75t_L U4422 ( .A1(n3762), .A2(n4025), .B1(n3763), .B2(n3883), 
        .Y(n4183) );
  INVx1_ASAP7_75t_L U4423 ( .A(i_tv80_core_i_reg_RegsL_reg_2__4__net_Q), .Y(
        n3883) );
  INVx1_ASAP7_75t_L U4424 ( .A(i_tv80_core_i_reg_RegsL_reg_0__4__net_Q), .Y(
        n4025) );
  OAI22xp33_ASAP7_75t_L U4425 ( .A1(n3764), .A2(n3869), .B1(n3765), .B2(n3850), 
        .Y(n4182) );
  INVx1_ASAP7_75t_L U4426 ( .A(i_tv80_core_i_reg_RegsL_reg_6__4__net_Q), .Y(
        n3850) );
  INVx1_ASAP7_75t_L U4427 ( .A(i_tv80_core_i_reg_RegsL_reg_4__4__net_Q), .Y(
        n3869) );
  OAI22xp33_ASAP7_75t_L U4428 ( .A1(n3766), .A2(n3891), .B1(n3767), .B2(n3876), 
        .Y(n4181) );
  INVx1_ASAP7_75t_L U4429 ( .A(i_tv80_core_i_reg_RegsL_reg_3__4__net_Q), .Y(
        n3876) );
  INVx1_ASAP7_75t_L U4430 ( .A(i_tv80_core_i_reg_RegsL_reg_1__4__net_Q), .Y(
        n3891) );
  OAI22xp33_ASAP7_75t_L U4431 ( .A1(n3755), .A2(n3861), .B1(n3756), .B2(n3816), 
        .Y(n4054) );
  INVx1_ASAP7_75t_L U4432 ( .A(i_tv80_core_i_reg_RegsL_reg_7__4__net_Q), .Y(
        n3816) );
  INVx1_ASAP7_75t_L U4433 ( .A(i_tv80_core_i_reg_RegsL_reg_5__4__net_Q), .Y(
        n3861) );
  INVx1_ASAP7_75t_L U4434 ( .A(n4080), .Y(n2415) );
  NAND3xp33_ASAP7_75t_L U4435 ( .A(n4184), .B(n4185), .C(n4186), .Y(n4080) );
  AOI221xp5_ASAP7_75t_L U4436 ( .A1(i_tv80_core_i_reg_RegsL_reg_3__5__net_Q), 
        .A2(n3629), .B1(i_tv80_core_i_reg_RegsL_reg_1__5__net_Q), .B2(n3647), 
        .C(n4187), .Y(n4186) );
  OAI22xp33_ASAP7_75t_L U4437 ( .A1(n3755), .A2(n3862), .B1(n3756), .B2(n3818), 
        .Y(n4187) );
  INVx1_ASAP7_75t_L U4438 ( .A(i_tv80_core_i_reg_RegsL_reg_7__5__net_Q), .Y(
        n3818) );
  INVx1_ASAP7_75t_L U4439 ( .A(i_tv80_core_i_reg_RegsL_reg_5__5__net_Q), .Y(
        n3862) );
  AOI22xp33_ASAP7_75t_L U4440 ( .A1(i_tv80_core_i_reg_RegsL_reg_6__5__net_Q), 
        .A2(n3607), .B1(i_tv80_core_i_reg_RegsL_reg_4__5__net_Q), .B2(n3622), 
        .Y(n4185) );
  AOI22xp33_ASAP7_75t_L U4441 ( .A1(i_tv80_core_i_reg_RegsL_reg_2__5__net_Q), 
        .A2(n3639), .B1(i_tv80_core_i_reg_RegsL_reg_0__5__net_Q), .B2(n3669), 
        .Y(n4184) );
  NOR4xp25_ASAP7_75t_L U4442 ( .A(n4115), .B(n4188), .C(n4189), .D(n4190), .Y(
        n4159) );
  OAI22xp33_ASAP7_75t_L U4443 ( .A1(n3762), .A2(n4082), .B1(n3763), .B2(n3884), 
        .Y(n4190) );
  INVx1_ASAP7_75t_L U4444 ( .A(i_tv80_core_i_reg_RegsL_reg_2__6__net_Q), .Y(
        n3884) );
  INVx1_ASAP7_75t_L U4445 ( .A(i_tv80_core_i_reg_RegsL_reg_0__6__net_Q), .Y(
        n4082) );
  INVx1_ASAP7_75t_L U4446 ( .A(n3669), .Y(n3762) );
  OAI22xp33_ASAP7_75t_L U4447 ( .A1(n3764), .A2(n3870), .B1(n3765), .B2(n3852), 
        .Y(n4189) );
  INVx1_ASAP7_75t_L U4448 ( .A(i_tv80_core_i_reg_RegsL_reg_6__6__net_Q), .Y(
        n3852) );
  INVx1_ASAP7_75t_L U4449 ( .A(i_tv80_core_i_reg_RegsL_reg_4__6__net_Q), .Y(
        n3870) );
  INVx1_ASAP7_75t_L U4450 ( .A(n3622), .Y(n3764) );
  OAI22xp33_ASAP7_75t_L U4451 ( .A1(n3766), .A2(n3892), .B1(n3767), .B2(n3877), 
        .Y(n4188) );
  INVx1_ASAP7_75t_L U4452 ( .A(i_tv80_core_i_reg_RegsL_reg_3__6__net_Q), .Y(
        n3877) );
  INVx1_ASAP7_75t_L U4453 ( .A(i_tv80_core_i_reg_RegsL_reg_1__6__net_Q), .Y(
        n3892) );
  OAI22xp33_ASAP7_75t_L U4454 ( .A1(n3755), .A2(n3863), .B1(n3756), .B2(n3820), 
        .Y(n4115) );
  INVx1_ASAP7_75t_L U4455 ( .A(i_tv80_core_i_reg_RegsL_reg_7__6__net_Q), .Y(
        n3820) );
  INVx1_ASAP7_75t_L U4456 ( .A(i_tv80_core_i_reg_RegsL_reg_5__6__net_Q), .Y(
        n3863) );
  NAND3xp33_ASAP7_75t_L U4457 ( .A(n4191), .B(n4192), .C(n4193), .Y(n3663) );
  AOI221xp5_ASAP7_75t_L U4458 ( .A1(i_tv80_core_i_reg_RegsL_reg_3__7__net_Q), 
        .A2(n3629), .B1(i_tv80_core_i_reg_RegsL_reg_7__7__net_Q), .B2(n3593), 
        .C(n4194), .Y(n4193) );
  OAI22xp33_ASAP7_75t_L U4459 ( .A1(n3765), .A2(n3853), .B1(n3763), .B2(n3885), 
        .Y(n4194) );
  INVx1_ASAP7_75t_L U4460 ( .A(i_tv80_core_i_reg_RegsL_reg_2__7__net_Q), .Y(
        n3885) );
  INVx1_ASAP7_75t_L U4461 ( .A(n3639), .Y(n3763) );
  NOR3xp33_ASAP7_75t_L U4462 ( .A(n4195), .B(n4196), .C(n4197), .Y(n3639) );
  INVx1_ASAP7_75t_L U4463 ( .A(i_tv80_core_i_reg_RegsL_reg_6__7__net_Q), .Y(
        n3853) );
  INVx1_ASAP7_75t_L U4464 ( .A(n3607), .Y(n3765) );
  NOR3xp33_ASAP7_75t_L U4465 ( .A(n4198), .B(n4195), .C(n4197), .Y(n3607) );
  INVx1_ASAP7_75t_L U4466 ( .A(n3756), .Y(n3593) );
  NAND3xp33_ASAP7_75t_L U4467 ( .A(n4199), .B(n4197), .C(n4196), .Y(n3756) );
  INVx1_ASAP7_75t_L U4468 ( .A(n3767), .Y(n3629) );
  NAND3xp33_ASAP7_75t_L U4469 ( .A(n4198), .B(n4197), .C(n4199), .Y(n3767) );
  AOI22xp33_ASAP7_75t_L U4470 ( .A1(i_tv80_core_i_reg_RegsL_reg_0__7__net_Q), 
        .A2(n3669), .B1(i_tv80_core_i_reg_RegsL_reg_4__7__net_Q), .B2(n3622), 
        .Y(n4192) );
  NOR3xp33_ASAP7_75t_L U4471 ( .A(n4198), .B(n4199), .C(n4197), .Y(n3622) );
  AOI22xp33_ASAP7_75t_L U4472 ( .A1(i_tv80_core_i_reg_RegsL_reg_1__7__net_Q), 
        .A2(n3647), .B1(i_tv80_core_i_reg_RegsL_reg_5__7__net_Q), .B2(n3615), 
        .Y(n4191) );
  INVx1_ASAP7_75t_L U4473 ( .A(n3755), .Y(n3615) );
  NAND3xp33_ASAP7_75t_L U4474 ( .A(n4195), .B(n4197), .C(n4196), .Y(n3755) );
  INVx1_ASAP7_75t_L U4475 ( .A(n3766), .Y(n3647) );
  NAND3xp33_ASAP7_75t_L U4476 ( .A(n4198), .B(n4197), .C(n4195), .Y(n3766) );
  INVx1_ASAP7_75t_L U4477 ( .A(n4199), .Y(n4195) );
  NAND2xp33_ASAP7_75t_L U4478 ( .A(n3822), .B(n3669), .Y(n3895) );
  NOR3xp33_ASAP7_75t_L U4479 ( .A(n4199), .B(n4196), .C(n4197), .Y(n3669) );
  OAI211xp5_ASAP7_75t_L U4480 ( .A1(n2376), .A2(n4200), .B(n3897), .C(n4201), 
        .Y(n4197) );
  AOI22xp33_ASAP7_75t_L U4481 ( .A1(n4202), .A2(n4203), .B1(n4204), .B2(n4205), 
        .Y(n4201) );
  INVx1_ASAP7_75t_L U4482 ( .A(i_tv80_core_RegAddrA_r_reg_0__net_Q), .Y(n2376)
         );
  INVx1_ASAP7_75t_L U4483 ( .A(n4198), .Y(n4196) );
  OAI21xp33_ASAP7_75t_L U4484 ( .A1(n4204), .A2(n4206), .B(n4207), .Y(n4198)
         );
  OAI211xp5_ASAP7_75t_L U4485 ( .A1(n4208), .A2(n3097), .B(n4209), .C(n4204), 
        .Y(n4207) );
  AOI22xp33_ASAP7_75t_L U4486 ( .A1(n4208), .A2(n3353), .B1(n4200), .B2(n3097), 
        .Y(n4206) );
  INVx1_ASAP7_75t_L U4487 ( .A(i_tv80_core_Alternate_reg_net_Q), .Y(n3097) );
  INVx1_ASAP7_75t_L U4488 ( .A(i_tv80_core_RegAddrA_r_reg_2__net_Q), .Y(n3353)
         );
  INVx1_ASAP7_75t_L U4489 ( .A(n4200), .Y(n4208) );
  NAND2xp33_ASAP7_75t_L U4490 ( .A(n4158), .B(n4205), .Y(n4200) );
  AOI22xp33_ASAP7_75t_L U4491 ( .A1(n3000), .A2(n4202), .B1(n4205), .B2(n4210), 
        .Y(n4199) );
  AOI211xp5_ASAP7_75t_L U4492 ( .A1(n4158), .A2(
        i_tv80_core_RegAddrA_r_reg_1__net_Q), .B(n3899), .C(n4204), .Y(n4210)
         );
  AND3x1_ASAP7_75t_L U4493 ( .A(n3002), .B(n4211), .C(n3001), .Y(n4204) );
  INVx1_ASAP7_75t_L U4494 ( .A(n4205), .Y(n4202) );
  OAI211xp5_ASAP7_75t_L U4495 ( .A1(n3204), .A2(n3003), .B(n3002), .C(n2373), 
        .Y(n4205) );
  OR2x2_ASAP7_75t_L U4496 ( .A(n3204), .B(n3100), .Y(n3002) );
  OA21x2_ASAP7_75t_L U4497 ( .A1(n4212), .A2(n3804), .B(busak_n), .Y(n3822) );
  INVx1_ASAP7_75t_L U4498 ( .A(i_tv80_core_BusAck_reg_net_Q), .Y(busak_n) );
  OAI31xp33_ASAP7_75t_L U4499 ( .A1(n4213), .A2(n4214), .A3(n2864), .B(n4158), 
        .Y(n3804) );
  NOR2xp33_ASAP7_75t_L U4500 ( .A(n3899), .B(n3657), .Y(n4158) );
  INVx1_ASAP7_75t_L U4501 ( .A(n3897), .Y(n3657) );
  NAND5xp2_ASAP7_75t_L U4502 ( .A(n3183), .B(n3186), .C(
        i_tv80_core_tstate_reg_2__net_Q), .D(n3219), .E(n4215), .Y(n3897) );
  INVx1_ASAP7_75t_L U4503 ( .A(n3653), .Y(n3899) );
  NAND3xp33_ASAP7_75t_L U4504 ( .A(n4215), .B(n2364), .C(n3219), .Y(n3653) );
  NOR2xp33_ASAP7_75t_L U4505 ( .A(n4216), .B(n2766), .Y(n3219) );
  NOR2xp33_ASAP7_75t_L U4506 ( .A(n3000), .B(n3001), .Y(n2864) );
  INVx1_ASAP7_75t_L U4507 ( .A(n4203), .Y(n3001) );
  OAI211xp5_ASAP7_75t_L U4508 ( .A1(n3282), .A2(n4217), .B(n3382), .C(n4218), 
        .Y(n4203) );
  NAND2xp33_ASAP7_75t_L U4509 ( .A(n3404), .B(n2957), .Y(n3382) );
  INVx1_ASAP7_75t_L U4510 ( .A(n4211), .Y(n3000) );
  OAI211xp5_ASAP7_75t_L U4511 ( .A1(n3041), .A2(n4217), .B(n4218), .C(n4219), 
        .Y(n4211) );
  NOR2xp33_ASAP7_75t_L U4512 ( .A(n3285), .B(n3487), .Y(n4219) );
  NOR2xp33_ASAP7_75t_L U4513 ( .A(n3366), .B(n3286), .Y(n3487) );
  NOR2xp33_ASAP7_75t_L U4514 ( .A(n2952), .B(n3028), .Y(n3285) );
  INVx1_ASAP7_75t_L U4515 ( .A(n2954), .Y(n2952) );
  INVx1_ASAP7_75t_L U4516 ( .A(n3003), .Y(n4214) );
  NAND4xp25_ASAP7_75t_L U4517 ( .A(n4220), .B(n4218), .C(n4217), .D(n3065), 
        .Y(n3003) );
  INVx1_ASAP7_75t_L U4518 ( .A(n4221), .Y(n4218) );
  OAI221xp5_ASAP7_75t_L U4519 ( .A1(n4222), .A2(n2766), .B1(n2922), .B2(n2917), 
        .C(n4223), .Y(n4221) );
  AOI321xp33_ASAP7_75t_L U4520 ( .A1(i_tv80_core_ISet_reg_1__net_Q), .A2(n4224), .A3(n3143), .B1(n3384), .B2(n4225), .C(n2882), .Y(n4223) );
  AND2x2_ASAP7_75t_L U4521 ( .A(n3384), .B(n2914), .Y(n2882) );
  AOI22xp33_ASAP7_75t_L U4522 ( .A1(n3100), .A2(
        i_tv80_core_tstate_reg_0__net_Q), .B1(n4226), .B2(n2867), .Y(n4213) );
  NOR4xp25_ASAP7_75t_L U4523 ( .A(i_tv80_core_Read_To_Reg_r_reg_3__net_Q), .B(
        n3583), .C(n2894), .D(n2548), .Y(n4212) );
  OAI311xp33_ASAP7_75t_L U4524 ( .A1(n3257), .A2(
        i_tv80_core_ALU_Op_r_reg_3__net_Q), .A3(n2588), .B1(n4227), .C1(
        i_tv80_core_Read_To_Reg_r_reg_4__net_Q), .Y(n2548) );
  OAI21xp33_ASAP7_75t_L U4525 ( .A1(i_tv80_core_Auto_Wait_t1_reg_net_Q), .A2(
        n3579), .B(n3257), .Y(n4227) );
  INVx1_ASAP7_75t_L U4526 ( .A(n2735), .Y(n3579) );
  NOR3xp33_ASAP7_75t_L U4527 ( .A(i_tv80_core_tstate_reg_1__net_Q), .B(
        i_tv80_core_tstate_reg_2__net_Q), .C(n3183), .Y(n2735) );
  NAND2xp33_ASAP7_75t_L U4528 ( .A(i_tv80_core_ALU_Op_r_reg_2__net_Q), .B(
        n2662), .Y(n2588) );
  NOR2xp33_ASAP7_75t_L U4529 ( .A(n4129), .B(n3928), .Y(n2662) );
  INVx1_ASAP7_75t_L U4530 ( .A(i_tv80_core_ALU_Op_r_reg_0__net_Q), .Y(n3928)
         );
  INVx1_ASAP7_75t_L U4531 ( .A(i_tv80_core_ALU_Op_r_reg_1__net_Q), .Y(n4129)
         );
  INVx1_ASAP7_75t_L U4532 ( .A(i_tv80_core_Save_ALU_r_reg_net_Q), .Y(n3257) );
  INVx1_ASAP7_75t_L U4533 ( .A(i_tv80_core_Read_To_Reg_r_reg_0__net_Q), .Y(
        n2894) );
  NOR2xp33_ASAP7_75t_L U4534 ( .A(n2891), .B(n2893), .Y(n3583) );
  INVx1_ASAP7_75t_L U4535 ( .A(i_tv80_core_Read_To_Reg_r_reg_1__net_Q), .Y(
        n2893) );
  INVx1_ASAP7_75t_L U4536 ( .A(i_tv80_core_Read_To_Reg_r_reg_2__net_Q), .Y(
        n2891) );
  NAND4xp25_ASAP7_75t_L U4537 ( .A(n4228), .B(n4229), .C(n4230), .D(n4231), 
        .Y(U151_net_Y) );
  AOI222xp33_ASAP7_75t_L U4538 ( .A1(n3833), .A2(i_tv80_core_SP_reg_14__net_Q), 
        .B1(i_tv80_core_I_reg_6__net_Q), .B2(n3835), .C1(n3834), .C2(n4232), 
        .Y(n4231) );
  AOI22xp33_ASAP7_75t_L U4539 ( .A1(n3841), .A2(n2779), .B1(n3842), .B2(
        i_tv80_core_PC_reg_14__net_Q), .Y(n4230) );
  AOI22xp33_ASAP7_75t_L U4540 ( .A1(n3843), .A2(i_tv80_core_ACC_reg_6__net_Q), 
        .B1(n3844), .B2(di_reg_reg_6__net_Q), .Y(n4229) );
  AOI222xp33_ASAP7_75t_L U4541 ( .A1(A[14]), .A2(n3846), .B1(n3845), .B2(n4233), .C1(i_tv80_core_TmpAddr_reg_14__net_Q), .C2(n4234), .Y(n4228) );
  INVx1_ASAP7_75t_L U4542 ( .A(n3849), .Y(n4234) );
  AOI21xp33_ASAP7_75t_L U4543 ( .A1(n4235), .A2(n4236), .B(n4237), .Y(n3849)
         );
  AND3x1_ASAP7_75t_L U4544 ( .A(n4238), .B(n4236), .C(
        i_tv80_core_TmpAddr_reg_13__net_Q), .Y(n3845) );
  NAND4xp25_ASAP7_75t_L U4545 ( .A(n4239), .B(n4240), .C(n4241), .D(n4242), 
        .Y(U146_net_Y) );
  AOI222xp33_ASAP7_75t_L U4546 ( .A1(n3833), .A2(i_tv80_core_SP_reg_13__net_Q), 
        .B1(i_tv80_core_I_reg_5__net_Q), .B2(n3835), .C1(n3834), .C2(n4243), 
        .Y(n4242) );
  AOI22xp33_ASAP7_75t_L U4547 ( .A1(n3841), .A2(n2783), .B1(n3842), .B2(
        i_tv80_core_PC_reg_13__net_Q), .Y(n4241) );
  AOI22xp33_ASAP7_75t_L U4548 ( .A1(n3843), .A2(i_tv80_core_ACC_reg_5__net_Q), 
        .B1(n3844), .B2(di_reg_reg_5__net_Q), .Y(n4240) );
  AOI322xp5_ASAP7_75t_L U4549 ( .A1(n4238), .A2(n4236), .A3(n4235), .B1(A[13]), 
        .B2(n3846), .C1(i_tv80_core_TmpAddr_reg_13__net_Q), .C2(n4237), .Y(
        n4239) );
  OAI21xp33_ASAP7_75t_L U4550 ( .A1(n4238), .A2(n3848), .B(n4244), .Y(n4237)
         );
  AND3x1_ASAP7_75t_L U4551 ( .A(i_tv80_core_TmpAddr_reg_11__net_Q), .B(n4245), 
        .C(i_tv80_core_TmpAddr_reg_12__net_Q), .Y(n4238) );
  NAND5xp2_ASAP7_75t_L U4552 ( .A(n4246), .B(n4247), .C(n4248), .D(n4249), .E(
        n4250), .Y(U141_net_Y) );
  AOI221xp5_ASAP7_75t_L U4553 ( .A1(n3841), .A2(n2787), .B1(n3842), .B2(
        i_tv80_core_PC_reg_12__net_Q), .C(n4251), .Y(n4250) );
  AO222x2_ASAP7_75t_L U4554 ( .A1(n4252), .A2(n3834), .B1(n3835), .B2(
        i_tv80_core_I_reg_4__net_Q), .C1(i_tv80_core_SP_reg_12__net_Q), .C2(
        n3833), .Y(n4251) );
  AOI22xp33_ASAP7_75t_L U4555 ( .A1(n3843), .A2(i_tv80_core_ACC_reg_4__net_Q), 
        .B1(n3844), .B2(di_reg_reg_4__net_Q), .Y(n4249) );
  NAND2xp33_ASAP7_75t_L U4556 ( .A(A[12]), .B(n3846), .Y(n4248) );
  A2O1A1Ixp33_ASAP7_75t_L U4557 ( .A1(n4236), .A2(n4253), .B(n4254), .C(
        i_tv80_core_TmpAddr_reg_12__net_Q), .Y(n4247) );
  NAND4xp25_ASAP7_75t_L U4558 ( .A(i_tv80_core_TmpAddr_reg_11__net_Q), .B(
        n4245), .C(n4236), .D(n4255), .Y(n4246) );
  NAND4xp25_ASAP7_75t_L U4559 ( .A(n4256), .B(n4257), .C(n4258), .D(n4259), 
        .Y(U136_net_Y) );
  AOI222xp33_ASAP7_75t_L U4560 ( .A1(n3833), .A2(i_tv80_core_SP_reg_11__net_Q), 
        .B1(i_tv80_core_I_reg_3__net_Q), .B2(n3835), .C1(n3834), .C2(n4260), 
        .Y(n4259) );
  AOI22xp33_ASAP7_75t_L U4561 ( .A1(n3841), .A2(n2791), .B1(n3842), .B2(
        i_tv80_core_PC_reg_11__net_Q), .Y(n4258) );
  AOI22xp33_ASAP7_75t_L U4562 ( .A1(n3843), .A2(i_tv80_core_ACC_reg_3__net_Q), 
        .B1(n3844), .B2(di_reg_reg_3__net_Q), .Y(n4257) );
  AOI322xp5_ASAP7_75t_L U4563 ( .A1(n4236), .A2(n4245), .A3(n4253), .B1(A[11]), 
        .B2(n3846), .C1(i_tv80_core_TmpAddr_reg_11__net_Q), .C2(n4254), .Y(
        n4256) );
  OAI21xp33_ASAP7_75t_L U4564 ( .A1(n4245), .A2(n3848), .B(n4244), .Y(n4254)
         );
  AND2x2_ASAP7_75t_L U4565 ( .A(i_tv80_core_TmpAddr_reg_10__net_Q), .B(n4261), 
        .Y(n4245) );
  NAND4xp25_ASAP7_75t_L U4566 ( .A(n4262), .B(n4263), .C(n4264), .D(n4265), 
        .Y(U131_net_Y) );
  AOI222xp33_ASAP7_75t_L U4567 ( .A1(n3833), .A2(i_tv80_core_SP_reg_10__net_Q), 
        .B1(i_tv80_core_I_reg_2__net_Q), .B2(n3835), .C1(n3834), .C2(n4266), 
        .Y(n4265) );
  AOI22xp33_ASAP7_75t_L U4568 ( .A1(n3841), .A2(n2795), .B1(n3842), .B2(
        i_tv80_core_PC_reg_10__net_Q), .Y(n4264) );
  AOI22xp33_ASAP7_75t_L U4569 ( .A1(n3843), .A2(i_tv80_core_ACC_reg_2__net_Q), 
        .B1(n3844), .B2(di_reg_reg_2__net_Q), .Y(n4263) );
  AOI322xp5_ASAP7_75t_L U4570 ( .A1(n4236), .A2(n4261), .A3(n4267), .B1(A[10]), 
        .B2(n3846), .C1(i_tv80_core_TmpAddr_reg_10__net_Q), .C2(n4268), .Y(
        n4262) );
  OAI21xp33_ASAP7_75t_L U4571 ( .A1(i_tv80_core_TmpAddr_reg_9__net_Q), .A2(
        n3848), .B(n4269), .Y(n4268) );
  NOR3xp33_ASAP7_75t_L U4572 ( .A(n4270), .B(n4271), .C(n4272), .Y(n4261) );
  NAND4xp25_ASAP7_75t_L U4573 ( .A(n4273), .B(n4274), .C(n4275), .D(n4276), 
        .Y(U1302_net_Y) );
  AOI21xp33_ASAP7_75t_L U4574 ( .A1(n3833), .A2(i_tv80_core_SP_reg_6__net_Q), 
        .B(n4277), .Y(n4276) );
  AOI22xp33_ASAP7_75t_L U4575 ( .A1(n2826), .A2(n4278), .B1(n3842), .B2(
        i_tv80_core_PC_reg_6__net_Q), .Y(n4275) );
  AOI22xp33_ASAP7_75t_L U4576 ( .A1(n4279), .A2(i_tv80_core_R_reg_6__net_Q), 
        .B1(n3843), .B2(di_reg_reg_6__net_Q), .Y(n4274) );
  AOI221xp5_ASAP7_75t_L U4577 ( .A1(A[6]), .A2(n3846), .B1(
        i_tv80_core_TmpAddr_reg_6__net_Q), .B2(n4280), .C(n4281), .Y(n4273) );
  NOR4xp25_ASAP7_75t_L U4578 ( .A(i_tv80_core_TmpAddr_reg_6__net_Q), .B(n3848), 
        .C(n4282), .D(n4283), .Y(n4281) );
  NAND4xp25_ASAP7_75t_L U4579 ( .A(n4284), .B(n4285), .C(n4286), .D(n4287), 
        .Y(U1296_net_Y) );
  AOI21xp33_ASAP7_75t_L U4580 ( .A1(n3833), .A2(i_tv80_core_SP_reg_5__net_Q), 
        .B(n4277), .Y(n4287) );
  AOI22xp33_ASAP7_75t_L U4581 ( .A1(n2831), .A2(n4278), .B1(n3842), .B2(
        i_tv80_core_PC_reg_5__net_Q), .Y(n4286) );
  AOI22xp33_ASAP7_75t_L U4582 ( .A1(n4279), .A2(i_tv80_core_R_reg_5__net_Q), 
        .B1(n3843), .B2(di_reg_reg_5__net_Q), .Y(n4285) );
  AOI322xp5_ASAP7_75t_L U4583 ( .A1(n4236), .A2(n4288), .A3(n4283), .B1(A[5]), 
        .B2(n3846), .C1(i_tv80_core_TmpAddr_reg_5__net_Q), .C2(n4289), .Y(
        n4284) );
  NAND5xp2_ASAP7_75t_L U4584 ( .A(n4290), .B(n4291), .C(n4292), .D(n4293), .E(
        n4294), .Y(U1288_net_Y) );
  AOI22xp33_ASAP7_75t_L U4585 ( .A1(n3833), .A2(i_tv80_core_SP_reg_4__net_Q), 
        .B1(n2836), .B2(n4278), .Y(n4294) );
  AOI22xp33_ASAP7_75t_L U4586 ( .A1(n3842), .A2(i_tv80_core_PC_reg_4__net_Q), 
        .B1(n4279), .B2(i_tv80_core_R_reg_4__net_Q), .Y(n4293) );
  AOI22xp33_ASAP7_75t_L U4587 ( .A1(n3843), .A2(di_reg_reg_4__net_Q), .B1(A[4]), .B2(n3846), .Y(n4292) );
  A2O1A1Ixp33_ASAP7_75t_L U4588 ( .A1(n4236), .A2(n4295), .B(n4296), .C(
        i_tv80_core_TmpAddr_reg_4__net_Q), .Y(n4291) );
  NAND4xp25_ASAP7_75t_L U4589 ( .A(i_tv80_core_TmpAddr_reg_3__net_Q), .B(n4297), .C(n4236), .D(n4298), .Y(n4290) );
  NAND4xp25_ASAP7_75t_L U4590 ( .A(n4299), .B(n4300), .C(n4301), .D(n4302), 
        .Y(U1280_net_Y) );
  AOI22xp33_ASAP7_75t_L U4591 ( .A1(n3833), .A2(i_tv80_core_SP_reg_3__net_Q), 
        .B1(n2841), .B2(n4278), .Y(n4302) );
  AOI22xp33_ASAP7_75t_L U4592 ( .A1(n3842), .A2(i_tv80_core_PC_reg_3__net_Q), 
        .B1(n4279), .B2(i_tv80_core_R_reg_3__net_Q), .Y(n4301) );
  AOI32xp33_ASAP7_75t_L U4593 ( .A1(n4236), .A2(n4297), .A3(n4295), .B1(
        i_tv80_core_TmpAddr_reg_3__net_Q), .B2(n4296), .Y(n4300) );
  OAI21xp33_ASAP7_75t_L U4594 ( .A1(n4297), .A2(n3848), .B(n4303), .Y(n4296)
         );
  AOI22xp33_ASAP7_75t_L U4595 ( .A1(n3843), .A2(di_reg_reg_3__net_Q), .B1(A[3]), .B2(n3846), .Y(n4299) );
  NAND5xp2_ASAP7_75t_L U4596 ( .A(n4304), .B(n4305), .C(n4306), .D(n4307), .E(
        n4308), .Y(U1274_net_Y) );
  AOI221xp5_ASAP7_75t_L U4597 ( .A1(n2846), .A2(n4278), .B1(n3842), .B2(
        i_tv80_core_PC_reg_2__net_Q), .C(n4309), .Y(n4308) );
  AO21x1_ASAP7_75t_L U4598 ( .A1(i_tv80_core_SP_reg_2__net_Q), .A2(n3833), .B(
        n4277), .Y(n4309) );
  AOI22xp33_ASAP7_75t_L U4599 ( .A1(n4279), .A2(i_tv80_core_R_reg_2__net_Q), 
        .B1(n3843), .B2(di_reg_reg_2__net_Q), .Y(n4307) );
  NAND2xp33_ASAP7_75t_L U4600 ( .A(A[2]), .B(n3846), .Y(n4306) );
  A2O1A1Ixp33_ASAP7_75t_L U4601 ( .A1(n4236), .A2(n4310), .B(n4311), .C(
        i_tv80_core_TmpAddr_reg_2__net_Q), .Y(n4305) );
  NAND4xp25_ASAP7_75t_L U4602 ( .A(i_tv80_core_TmpAddr_reg_1__net_Q), .B(
        i_tv80_core_TmpAddr_reg_0__net_Q), .C(n4236), .D(n4312), .Y(n4304) );
  NAND4xp25_ASAP7_75t_L U4603 ( .A(n4313), .B(n4314), .C(n4315), .D(n4316), 
        .Y(U126_net_Y) );
  AOI222xp33_ASAP7_75t_L U4604 ( .A1(n3833), .A2(i_tv80_core_SP_reg_9__net_Q), 
        .B1(i_tv80_core_I_reg_1__net_Q), .B2(n3835), .C1(n3834), .C2(n4317), 
        .Y(n4316) );
  AOI22xp33_ASAP7_75t_L U4605 ( .A1(n3841), .A2(n2799), .B1(n3842), .B2(
        i_tv80_core_PC_reg_9__net_Q), .Y(n4315) );
  AOI22xp33_ASAP7_75t_L U4606 ( .A1(n3843), .A2(i_tv80_core_ACC_reg_1__net_Q), 
        .B1(n3844), .B2(di_reg_reg_1__net_Q), .Y(n4314) );
  AOI221xp5_ASAP7_75t_L U4607 ( .A1(A[9]), .A2(n3846), .B1(
        i_tv80_core_TmpAddr_reg_9__net_Q), .B2(n4318), .C(n4319), .Y(n4313) );
  NOR4xp25_ASAP7_75t_L U4608 ( .A(i_tv80_core_TmpAddr_reg_9__net_Q), .B(n3848), 
        .C(n4271), .D(n4270), .Y(n4319) );
  INVx1_ASAP7_75t_L U4609 ( .A(n4269), .Y(n4318) );
  AOI21xp33_ASAP7_75t_L U4610 ( .A1(n4270), .A2(n4236), .B(n4320), .Y(n4269)
         );
  NAND4xp25_ASAP7_75t_L U4611 ( .A(n4321), .B(n4322), .C(n4323), .D(n4324), 
        .Y(U1268_net_Y) );
  AOI21xp33_ASAP7_75t_L U4612 ( .A1(n3833), .A2(i_tv80_core_SP_reg_1__net_Q), 
        .B(n4277), .Y(n4324) );
  NOR2xp33_ASAP7_75t_L U4613 ( .A(n4325), .B(n4326), .Y(n4277) );
  AOI22xp33_ASAP7_75t_L U4614 ( .A1(n2851), .A2(n4278), .B1(n3842), .B2(
        i_tv80_core_PC_reg_1__net_Q), .Y(n4323) );
  AOI22xp33_ASAP7_75t_L U4615 ( .A1(n4279), .A2(i_tv80_core_R_reg_1__net_Q), 
        .B1(n3843), .B2(di_reg_reg_1__net_Q), .Y(n4322) );
  AOI322xp5_ASAP7_75t_L U4616 ( .A1(n4236), .A2(
        i_tv80_core_TmpAddr_reg_0__net_Q), .A3(n4310), .B1(A[1]), .B2(n3846), 
        .C1(i_tv80_core_TmpAddr_reg_1__net_Q), .C2(n4311), .Y(n4321) );
  OAI21xp33_ASAP7_75t_L U4617 ( .A1(i_tv80_core_TmpAddr_reg_0__net_Q), .A2(
        n3848), .B(n4303), .Y(n4311) );
  NAND4xp25_ASAP7_75t_L U4618 ( .A(n4327), .B(n4328), .C(n4329), .D(n4330), 
        .Y(U1262_net_Y) );
  AOI22xp33_ASAP7_75t_L U4619 ( .A1(n3833), .A2(i_tv80_core_SP_reg_0__net_Q), 
        .B1(n2856), .B2(n4278), .Y(n4330) );
  AOI22xp33_ASAP7_75t_L U4620 ( .A1(n3842), .A2(i_tv80_core_PC_reg_0__net_Q), 
        .B1(n4279), .B2(i_tv80_core_R_reg_0__net_Q), .Y(n4329) );
  AOI22xp33_ASAP7_75t_L U4621 ( .A1(n4236), .A2(n4331), .B1(
        i_tv80_core_TmpAddr_reg_0__net_Q), .B2(n4332), .Y(n4328) );
  AOI22xp33_ASAP7_75t_L U4622 ( .A1(n3843), .A2(di_reg_reg_0__net_Q), .B1(A[0]), .B2(n3846), .Y(n4327) );
  OAI221xp5_ASAP7_75t_L U4623 ( .A1(n4310), .A2(n4333), .B1(n4334), .B2(n4335), 
        .C(n4336), .Y(U1234_net_X) );
  AOI221xp5_ASAP7_75t_L U4624 ( .A1(n4337), .A2(n2851), .B1(n4338), .B2(n4339), 
        .C(n4340), .Y(n4336) );
  FAx1_ASAP7_75t_L U4625 ( .A(n4341), .B(n4334), .CI(n4342), .SN(n4338) );
  OAI221xp5_ASAP7_75t_L U4626 ( .A1(n4312), .A2(n4333), .B1(n4343), .B2(n4335), 
        .C(n4344), .Y(U1231_net_X) );
  AOI221xp5_ASAP7_75t_L U4627 ( .A1(n4337), .A2(n2846), .B1(n4345), .B2(n4339), 
        .C(n4340), .Y(n4344) );
  FAx1_ASAP7_75t_L U4628 ( .A(n4346), .B(n4343), .CI(n4347), .SN(n4345) );
  INVx1_ASAP7_75t_L U4629 ( .A(i_tv80_core_PC_reg_2__net_Q), .Y(n4343) );
  OAI221xp5_ASAP7_75t_L U4630 ( .A1(n4295), .A2(n4333), .B1(n4348), .B2(n4335), 
        .C(n4349), .Y(U1228_net_Y) );
  AOI22xp33_ASAP7_75t_L U4631 ( .A1(n4339), .A2(n4350), .B1(n4337), .B2(n2841), 
        .Y(n4349) );
  FAx1_ASAP7_75t_L U4632 ( .A(n4351), .B(n4352), .CI(n4348), .SN(n4350) );
  INVx1_ASAP7_75t_L U4633 ( .A(i_tv80_core_TmpAddr_reg_3__net_Q), .Y(n4295) );
  OAI221xp5_ASAP7_75t_L U4634 ( .A1(n4298), .A2(n4333), .B1(n4353), .B2(n4335), 
        .C(n4354), .Y(U1225_net_Y) );
  AOI22xp33_ASAP7_75t_L U4635 ( .A1(n4339), .A2(n4355), .B1(n4337), .B2(n2836), 
        .Y(n4354) );
  FAx1_ASAP7_75t_L U4636 ( .A(n4356), .B(n4353), .CI(n4357), .SN(n4355) );
  OAI21xp33_ASAP7_75t_L U4637 ( .A1(n2426), .A2(n4358), .B(n4359), .Y(n4357)
         );
  MAJIxp5_ASAP7_75t_L U4638 ( .A(n4351), .B(n4352), .C(n4348), .Y(n4356) );
  INVx1_ASAP7_75t_L U4639 ( .A(i_tv80_core_TmpAddr_reg_4__net_Q), .Y(n4298) );
  OAI221xp5_ASAP7_75t_L U4640 ( .A1(n4283), .A2(n4333), .B1(n4360), .B2(n4335), 
        .C(n4361), .Y(U1222_net_X) );
  AOI221xp5_ASAP7_75t_L U4641 ( .A1(n4337), .A2(n2831), .B1(n4339), .B2(n4362), 
        .C(n4340), .Y(n4361) );
  FAx1_ASAP7_75t_L U4642 ( .A(n4363), .B(n4360), .CI(n4364), .SN(n4362) );
  OAI21xp33_ASAP7_75t_L U4643 ( .A1(n2419), .A2(n4358), .B(n4359), .Y(n4364)
         );
  MAJIxp5_ASAP7_75t_L U4644 ( .A(n4365), .B(n4366), .C(n4353), .Y(n4363) );
  NAND4xp25_ASAP7_75t_L U4645 ( .A(n4367), .B(n4368), .C(n4369), .D(n4370), 
        .Y(U121_net_Y) );
  AOI222xp33_ASAP7_75t_L U4646 ( .A1(n3833), .A2(i_tv80_core_SP_reg_8__net_Q), 
        .B1(i_tv80_core_I_reg_0__net_Q), .B2(n3835), .C1(n3834), .C2(n4371), 
        .Y(n4370) );
  OAI31xp33_ASAP7_75t_L U4647 ( .A1(n4372), .A2(n3846), .A3(n2463), .B(n4373), 
        .Y(n3835) );
  INVx1_ASAP7_75t_L U4648 ( .A(n4279), .Y(n4373) );
  AOI22xp33_ASAP7_75t_L U4649 ( .A1(n3841), .A2(n2803), .B1(n3842), .B2(
        i_tv80_core_PC_reg_8__net_Q), .Y(n4369) );
  AOI22xp33_ASAP7_75t_L U4650 ( .A1(n3843), .A2(i_tv80_core_ACC_reg_0__net_Q), 
        .B1(n3844), .B2(di_reg_reg_0__net_Q), .Y(n4368) );
  INVx1_ASAP7_75t_L U4651 ( .A(n4374), .Y(n3844) );
  AOI322xp5_ASAP7_75t_L U4652 ( .A1(n4236), .A2(n4375), .A3(n4270), .B1(A[8]), 
        .B2(n3846), .C1(i_tv80_core_TmpAddr_reg_8__net_Q), .C2(n4320), .Y(
        n4367) );
  OAI21xp33_ASAP7_75t_L U4653 ( .A1(n4375), .A2(n3848), .B(n4244), .Y(n4320)
         );
  INVx1_ASAP7_75t_L U4654 ( .A(n4271), .Y(n4375) );
  NAND2xp33_ASAP7_75t_L U4655 ( .A(i_tv80_core_TmpAddr_reg_7__net_Q), .B(n4376), .Y(n4271) );
  OAI221xp5_ASAP7_75t_L U4656 ( .A1(n4377), .A2(n4333), .B1(n4378), .B2(n4335), 
        .C(n4379), .Y(U1219_net_X) );
  AOI221xp5_ASAP7_75t_L U4657 ( .A1(n4337), .A2(n2826), .B1(n4380), .B2(n4339), 
        .C(n4340), .Y(n4379) );
  NOR2xp33_ASAP7_75t_L U4658 ( .A(n4325), .B(n4381), .Y(n4340) );
  FAx1_ASAP7_75t_L U4659 ( .A(n4382), .B(n4378), .CI(n4383), .SN(n4380) );
  INVx1_ASAP7_75t_L U4660 ( .A(i_tv80_core_PC_reg_6__net_Q), .Y(n4378) );
  INVx1_ASAP7_75t_L U4661 ( .A(n4384), .Y(n4333) );
  OAI221xp5_ASAP7_75t_L U4662 ( .A1(n4385), .A2(n4386), .B1(
        i_tv80_core_PC_reg_7__net_Q), .B2(n4387), .C(n4388), .Y(U1216_net_Y)
         );
  AOI22xp33_ASAP7_75t_L U4663 ( .A1(n4337), .A2(n2819), .B1(n4384), .B2(
        i_tv80_core_TmpAddr_reg_7__net_Q), .Y(n4388) );
  AOI22xp33_ASAP7_75t_L U4664 ( .A1(n3265), .A2(n4389), .B1(n3267), .B2(n4390), 
        .Y(n4387) );
  AOI221xp5_ASAP7_75t_L U4665 ( .A1(n3267), .A2(n4389), .B1(n3265), .B2(n4390), 
        .C(n3269), .Y(n4385) );
  OAI221xp5_ASAP7_75t_L U4666 ( .A1(n4391), .A2(n4392), .B1(
        i_tv80_core_PC_reg_8__net_Q), .B2(n4393), .C(n4394), .Y(U1207_net_Y)
         );
  AOI22xp33_ASAP7_75t_L U4667 ( .A1(n3262), .A2(n4371), .B1(n3264), .B2(
        i_tv80_core_I_reg_0__net_Q), .Y(n4394) );
  OAI222xp33_ASAP7_75t_L U4668 ( .A1(n4395), .A2(n3837), .B1(n3838), .B2(n2450), .C1(n3839), .C2(n4270), .Y(n4371) );
  AOI22xp33_ASAP7_75t_L U4669 ( .A1(n3265), .A2(n4396), .B1(n3267), .B2(n4397), 
        .Y(n4393) );
  INVx1_ASAP7_75t_L U4670 ( .A(i_tv80_core_PC_reg_8__net_Q), .Y(n4392) );
  AOI221xp5_ASAP7_75t_L U4671 ( .A1(n3267), .A2(n4396), .B1(n3265), .B2(n4397), 
        .C(n3269), .Y(n4391) );
  OAI221xp5_ASAP7_75t_L U4672 ( .A1(n4398), .A2(n4399), .B1(
        i_tv80_core_PC_reg_9__net_Q), .B2(n4400), .C(n4401), .Y(U1200_net_Y)
         );
  AOI22xp33_ASAP7_75t_L U4673 ( .A1(n3262), .A2(n4317), .B1(n3264), .B2(
        i_tv80_core_I_reg_1__net_Q), .Y(n4401) );
  OAI222xp33_ASAP7_75t_L U4674 ( .A1(n4402), .A2(n3837), .B1(n3838), .B2(n2444), .C1(n3839), .C2(n4272), .Y(n4317) );
  AOI22xp33_ASAP7_75t_L U4675 ( .A1(n3265), .A2(n4403), .B1(n3267), .B2(n4404), 
        .Y(n4400) );
  AOI221xp5_ASAP7_75t_L U4676 ( .A1(n3267), .A2(n4403), .B1(n3265), .B2(n4404), 
        .C(n3269), .Y(n4398) );
  OAI221xp5_ASAP7_75t_L U4677 ( .A1(n4405), .A2(n4406), .B1(
        i_tv80_core_PC_reg_10__net_Q), .B2(n4407), .C(n4408), .Y(U1193_net_Y)
         );
  AOI22xp33_ASAP7_75t_L U4678 ( .A1(n3262), .A2(n4266), .B1(n3264), .B2(
        i_tv80_core_I_reg_2__net_Q), .Y(n4408) );
  OAI222xp33_ASAP7_75t_L U4679 ( .A1(n4409), .A2(n3837), .B1(n3838), .B2(n2438), .C1(n3839), .C2(n4267), .Y(n4266) );
  AOI22xp33_ASAP7_75t_L U4680 ( .A1(n3265), .A2(n4410), .B1(n3267), .B2(n4411), 
        .Y(n4407) );
  AOI221xp5_ASAP7_75t_L U4681 ( .A1(n3267), .A2(n4410), .B1(n3265), .B2(n4411), 
        .C(n3269), .Y(n4405) );
  OAI221xp5_ASAP7_75t_L U4682 ( .A1(n4412), .A2(n4413), .B1(
        i_tv80_core_PC_reg_11__net_Q), .B2(n4414), .C(n4415), .Y(U1186_net_Y)
         );
  AOI22xp33_ASAP7_75t_L U4683 ( .A1(n3262), .A2(n4260), .B1(n3264), .B2(
        i_tv80_core_I_reg_3__net_Q), .Y(n4415) );
  OAI222xp33_ASAP7_75t_L U4684 ( .A1(n4416), .A2(n3837), .B1(n3838), .B2(n2432), .C1(n3839), .C2(n4253), .Y(n4260) );
  AOI22xp33_ASAP7_75t_L U4685 ( .A1(n3265), .A2(n4417), .B1(n3267), .B2(n4418), 
        .Y(n4414) );
  INVx1_ASAP7_75t_L U4686 ( .A(i_tv80_core_PC_reg_11__net_Q), .Y(n4413) );
  AOI221xp5_ASAP7_75t_L U4687 ( .A1(n3267), .A2(n4417), .B1(n3265), .B2(n4418), 
        .C(n3269), .Y(n4412) );
  OAI221xp5_ASAP7_75t_L U4688 ( .A1(n4419), .A2(n4420), .B1(
        i_tv80_core_PC_reg_12__net_Q), .B2(n4421), .C(n4422), .Y(U1179_net_Y)
         );
  AOI22xp33_ASAP7_75t_L U4689 ( .A1(n3262), .A2(n4252), .B1(n3264), .B2(
        i_tv80_core_I_reg_4__net_Q), .Y(n4422) );
  OAI222xp33_ASAP7_75t_L U4690 ( .A1(n4423), .A2(n3837), .B1(n3838), .B2(n2426), .C1(n3839), .C2(n4255), .Y(n4252) );
  AOI22xp33_ASAP7_75t_L U4691 ( .A1(n3265), .A2(n4424), .B1(n3267), .B2(n4425), 
        .Y(n4421) );
  AOI221xp5_ASAP7_75t_L U4692 ( .A1(n3267), .A2(n4424), .B1(n3265), .B2(n4425), 
        .C(n3269), .Y(n4419) );
  OAI221xp5_ASAP7_75t_L U4693 ( .A1(n4426), .A2(n4427), .B1(
        i_tv80_core_PC_reg_13__net_Q), .B2(n4428), .C(n4429), .Y(U1172_net_Y)
         );
  AOI22xp33_ASAP7_75t_L U4694 ( .A1(n3262), .A2(n4243), .B1(n3264), .B2(
        i_tv80_core_I_reg_5__net_Q), .Y(n4429) );
  OAI222xp33_ASAP7_75t_L U4695 ( .A1(n4430), .A2(n3837), .B1(n3838), .B2(n2419), .C1(n3839), .C2(n4235), .Y(n4243) );
  AOI22xp33_ASAP7_75t_L U4696 ( .A1(n3265), .A2(n4431), .B1(n3267), .B2(n4432), 
        .Y(n4428) );
  AOI221xp5_ASAP7_75t_L U4697 ( .A1(n3267), .A2(n4431), .B1(n3265), .B2(n4432), 
        .C(n3269), .Y(n4426) );
  OAI221xp5_ASAP7_75t_L U4698 ( .A1(n4433), .A2(n4434), .B1(
        i_tv80_core_PC_reg_14__net_Q), .B2(n4435), .C(n4436), .Y(U1165_net_Y)
         );
  AOI22xp33_ASAP7_75t_L U4699 ( .A1(n3262), .A2(n4232), .B1(n3264), .B2(
        i_tv80_core_I_reg_6__net_Q), .Y(n4436) );
  NOR2xp33_ASAP7_75t_L U4700 ( .A(n4372), .B(n4381), .Y(n3264) );
  OAI222xp33_ASAP7_75t_L U4701 ( .A1(n4437), .A2(n3837), .B1(n3838), .B2(n2412), .C1(n3839), .C2(n4233), .Y(n4232) );
  INVx1_ASAP7_75t_L U4702 ( .A(n2779), .Y(n4437) );
  AOI22xp33_ASAP7_75t_L U4703 ( .A1(n3265), .A2(n3274), .B1(n3267), .B2(n3270), 
        .Y(n4435) );
  INVx1_ASAP7_75t_L U4704 ( .A(i_tv80_core_PC_reg_14__net_Q), .Y(n4434) );
  AOI221xp5_ASAP7_75t_L U4705 ( .A1(n3267), .A2(n3274), .B1(n3265), .B2(n3270), 
        .C(n3269), .Y(n4433) );
  INVx1_ASAP7_75t_L U4706 ( .A(n3274), .Y(n3270) );
  NOR2xp33_ASAP7_75t_L U4707 ( .A(n4438), .B(n3273), .Y(n3265) );
  OAI21xp33_ASAP7_75t_L U4708 ( .A1(n4432), .A2(n3271), .B(n4439), .Y(n3274)
         );
  OAI21xp33_ASAP7_75t_L U4709 ( .A1(n3273), .A2(n4431), .B(n4427), .Y(n4439)
         );
  INVx1_ASAP7_75t_L U4710 ( .A(i_tv80_core_PC_reg_13__net_Q), .Y(n4427) );
  INVx1_ASAP7_75t_L U4711 ( .A(n4431), .Y(n4432) );
  OAI21xp33_ASAP7_75t_L U4712 ( .A1(n4425), .A2(n3271), .B(n4440), .Y(n4431)
         );
  OAI21xp33_ASAP7_75t_L U4713 ( .A1(n3273), .A2(n4424), .B(n4420), .Y(n4440)
         );
  INVx1_ASAP7_75t_L U4714 ( .A(i_tv80_core_PC_reg_12__net_Q), .Y(n4420) );
  INVx1_ASAP7_75t_L U4715 ( .A(n4424), .Y(n4425) );
  OAI22xp33_ASAP7_75t_L U4716 ( .A1(n4418), .A2(n3271), .B1(
        i_tv80_core_PC_reg_11__net_Q), .B2(n4441), .Y(n4424) );
  NOR2xp33_ASAP7_75t_L U4717 ( .A(n3273), .B(n4417), .Y(n4441) );
  INVx1_ASAP7_75t_L U4718 ( .A(n4417), .Y(n4418) );
  OAI21xp33_ASAP7_75t_L U4719 ( .A1(n4411), .A2(n3271), .B(n4442), .Y(n4417)
         );
  OAI21xp33_ASAP7_75t_L U4720 ( .A1(n3273), .A2(n4410), .B(n4406), .Y(n4442)
         );
  INVx1_ASAP7_75t_L U4721 ( .A(i_tv80_core_PC_reg_10__net_Q), .Y(n4406) );
  INVx1_ASAP7_75t_L U4722 ( .A(n4410), .Y(n4411) );
  OAI21xp33_ASAP7_75t_L U4723 ( .A1(n4404), .A2(n3271), .B(n4443), .Y(n4410)
         );
  OAI21xp33_ASAP7_75t_L U4724 ( .A1(n3273), .A2(n4403), .B(n4399), .Y(n4443)
         );
  INVx1_ASAP7_75t_L U4725 ( .A(i_tv80_core_PC_reg_9__net_Q), .Y(n4399) );
  INVx1_ASAP7_75t_L U4726 ( .A(n4403), .Y(n4404) );
  OAI22xp33_ASAP7_75t_L U4727 ( .A1(n4397), .A2(n3271), .B1(
        i_tv80_core_PC_reg_8__net_Q), .B2(n4444), .Y(n4403) );
  NOR2xp33_ASAP7_75t_L U4728 ( .A(n3273), .B(n4396), .Y(n4444) );
  INVx1_ASAP7_75t_L U4729 ( .A(n4396), .Y(n4397) );
  OAI21xp33_ASAP7_75t_L U4730 ( .A1(n4390), .A2(n3271), .B(n4445), .Y(n4396)
         );
  OAI21xp33_ASAP7_75t_L U4731 ( .A1(n3273), .A2(n4389), .B(n4386), .Y(n4445)
         );
  INVx1_ASAP7_75t_L U4732 ( .A(i_tv80_core_PC_reg_7__net_Q), .Y(n4386) );
  INVx1_ASAP7_75t_L U4733 ( .A(n4389), .Y(n4390) );
  OAI21xp33_ASAP7_75t_L U4734 ( .A1(n4382), .A2(n4383), .B(n4446), .Y(n4389)
         );
  AO21x1_ASAP7_75t_L U4735 ( .A1(n4383), .A2(n4382), .B(
        i_tv80_core_PC_reg_6__net_Q), .Y(n4446) );
  OAI21xp33_ASAP7_75t_L U4736 ( .A1(n2412), .A2(n4358), .B(n4359), .Y(n4383)
         );
  MAJIxp5_ASAP7_75t_L U4737 ( .A(n4447), .B(n4360), .C(n4448), .Y(n4382) );
  AOI21xp33_ASAP7_75t_L U4738 ( .A1(n3373), .A2(di_reg_reg_5__net_Q), .B(n4449), .Y(n4448) );
  INVx1_ASAP7_75t_L U4739 ( .A(i_tv80_core_PC_reg_5__net_Q), .Y(n4360) );
  MAJx2_ASAP7_75t_L U4740 ( .A(n4365), .B(n4353), .C(n4366), .Y(n4447) );
  AOI21xp33_ASAP7_75t_L U4741 ( .A1(n3373), .A2(di_reg_reg_4__net_Q), .B(n4449), .Y(n4366) );
  INVx1_ASAP7_75t_L U4742 ( .A(i_tv80_core_PC_reg_4__net_Q), .Y(n4353) );
  MAJx2_ASAP7_75t_L U4743 ( .A(n4352), .B(n4348), .C(n4351), .Y(n4365) );
  AOI22xp33_ASAP7_75t_L U4744 ( .A1(n4346), .A2(n4347), .B1(n4450), .B2(
        i_tv80_core_PC_reg_2__net_Q), .Y(n4351) );
  OR2x2_ASAP7_75t_L U4745 ( .A(n4347), .B(n4346), .Y(n4450) );
  O2A1O1Ixp33_ASAP7_75t_L U4746 ( .A1(n4342), .A2(n4341), .B(n4334), .C(n4451), 
        .Y(n4347) );
  AND2x2_ASAP7_75t_L U4747 ( .A(n4341), .B(n4342), .Y(n4451) );
  INVx1_ASAP7_75t_L U4748 ( .A(i_tv80_core_PC_reg_1__net_Q), .Y(n4334) );
  AOI21xp33_ASAP7_75t_L U4749 ( .A1(di_reg_reg_1__net_Q), .A2(n3373), .B(n4449), .Y(n4341) );
  NAND2xp33_ASAP7_75t_L U4750 ( .A(i_tv80_core_PC_reg_0__net_Q), .B(n4452), 
        .Y(n4342) );
  OAI21xp33_ASAP7_75t_L U4751 ( .A1(n2438), .A2(n4358), .B(n4359), .Y(n4346)
         );
  INVx1_ASAP7_75t_L U4752 ( .A(n4449), .Y(n4359) );
  INVx1_ASAP7_75t_L U4753 ( .A(i_tv80_core_PC_reg_3__net_Q), .Y(n4348) );
  AOI21xp33_ASAP7_75t_L U4754 ( .A1(di_reg_reg_3__net_Q), .A2(n3373), .B(n4449), .Y(n4352) );
  NOR2xp33_ASAP7_75t_L U4755 ( .A(n4438), .B(n3271), .Y(n3267) );
  INVx1_ASAP7_75t_L U4756 ( .A(n3273), .Y(n3271) );
  AOI21xp33_ASAP7_75t_L U4757 ( .A1(di_reg_reg_7__net_Q), .A2(n3373), .B(n4449), .Y(n3273) );
  OAI311xp33_ASAP7_75t_L U4758 ( .A1(i_tv80_core_PC_reg_0__net_Q), .A2(n4438), 
        .A3(n4453), .B1(n4454), .C1(n4455), .Y(U1162_net_Y) );
  AOI22xp33_ASAP7_75t_L U4759 ( .A1(n4337), .A2(n2856), .B1(n4384), .B2(
        i_tv80_core_TmpAddr_reg_0__net_Q), .Y(n4455) );
  NOR2xp33_ASAP7_75t_L U4760 ( .A(n4381), .B(n4456), .Y(n4384) );
  NOR2xp33_ASAP7_75t_L U4761 ( .A(n4381), .B(n3837), .Y(n4337) );
  INVx1_ASAP7_75t_L U4762 ( .A(n3262), .Y(n4381) );
  NOR3xp33_ASAP7_75t_L U4763 ( .A(n3269), .B(n4226), .C(n3095), .Y(n3262) );
  A2O1A1Ixp33_ASAP7_75t_L U4764 ( .A1(n4339), .A2(n4453), .B(n3269), .C(
        i_tv80_core_PC_reg_0__net_Q), .Y(n4454) );
  INVx1_ASAP7_75t_L U4765 ( .A(n4452), .Y(n4453) );
  AOI21xp33_ASAP7_75t_L U4766 ( .A1(n2450), .A2(n3373), .B(n4449), .Y(n4452)
         );
  NOR2xp33_ASAP7_75t_L U4767 ( .A(n3278), .B(n3373), .Y(n4449) );
  INVx1_ASAP7_75t_L U4768 ( .A(n4358), .Y(n3373) );
  INVx1_ASAP7_75t_L U4769 ( .A(n4339), .Y(n4438) );
  NOR3xp33_ASAP7_75t_L U4770 ( .A(n2463), .B(n3269), .C(n2868), .Y(n4339) );
  INVx1_ASAP7_75t_L U4771 ( .A(n4335), .Y(n3269) );
  NAND3xp33_ASAP7_75t_L U4772 ( .A(n4457), .B(n4458), .C(reset_n), .Y(n4335)
         );
  NAND4xp25_ASAP7_75t_L U4773 ( .A(n2869), .B(n4459), .C(n4460), .D(halt_n), 
        .Y(n4458) );
  A2O1A1Ixp33_ASAP7_75t_L U4774 ( .A1(n4461), .A2(n4462), .B(n4463), .C(n2553), 
        .Y(n4457) );
  AOI31xp33_ASAP7_75t_L U4775 ( .A1(n4325), .A2(n3837), .A3(n4456), .B(n2724), 
        .Y(n4463) );
  NAND5xp2_ASAP7_75t_L U4776 ( .A(i_tv80_core_NMICycle_reg_net_Q), .B(n3837), 
        .C(n3838), .D(n4464), .E(n3839), .Y(n4325) );
  NAND5xp2_ASAP7_75t_L U4777 ( .A(n3092), .B(n3278), .C(n4358), .D(n4465), .E(
        n4466), .Y(n4461) );
  AOI221xp5_ASAP7_75t_L U4778 ( .A1(n3445), .A2(n4467), .B1(n3384), .B2(n4468), 
        .C(n4469), .Y(n4466) );
  OAI22xp33_ASAP7_75t_L U4779 ( .A1(n2907), .A2(n4470), .B1(n4471), .B2(n3163), 
        .Y(n4469) );
  NAND2xp33_ASAP7_75t_L U4780 ( .A(n3053), .B(n2881), .Y(n3163) );
  INVx1_ASAP7_75t_L U4781 ( .A(n3486), .Y(n2907) );
  NOR2xp33_ASAP7_75t_L U4782 ( .A(n2766), .B(n3483), .Y(n3384) );
  NAND2xp33_ASAP7_75t_L U4783 ( .A(n4472), .B(n3122), .Y(n4467) );
  AOI31xp33_ASAP7_75t_L U4784 ( .A1(n3245), .A2(n4224), .A3(
        i_tv80_core_ISet_reg_1__net_Q), .B(n4473), .Y(n4465) );
  OA21x2_ASAP7_75t_L U4785 ( .A1(n2925), .A2(n3402), .B(n4474), .Y(n4473) );
  OAI21xp33_ASAP7_75t_L U4786 ( .A1(n3126), .A2(n3146), .B(n2897), .Y(n4358)
         );
  INVx1_ASAP7_75t_L U4787 ( .A(i_tv80_core_BTR_r_reg_net_Q), .Y(n3278) );
  NAND5xp2_ASAP7_75t_L U4788 ( .A(n4475), .B(n4476), .C(n4477), .D(n4478), .E(
        n4479), .Y(U115_net_Y) );
  AOI22xp33_ASAP7_75t_L U4789 ( .A1(n3833), .A2(i_tv80_core_SP_reg_7__net_Q), 
        .B1(n2819), .B2(n4278), .Y(n4479) );
  AO21x1_ASAP7_75t_L U4790 ( .A1(n3422), .A2(n3834), .B(n3841), .Y(n4278) );
  NOR3xp33_ASAP7_75t_L U4791 ( .A(n4480), .B(n4481), .C(n4482), .Y(n3841) );
  NOR4xp25_ASAP7_75t_L U4792 ( .A(n4483), .B(n4484), .C(n4482), .D(n4485), .Y(
        n3833) );
  AOI22xp33_ASAP7_75t_L U4793 ( .A1(n3842), .A2(i_tv80_core_PC_reg_7__net_Q), 
        .B1(n4279), .B2(i_tv80_core_R_reg_7__net_Q), .Y(n4478) );
  NOR2xp33_ASAP7_75t_L U4794 ( .A(n4486), .B(n3846), .Y(n4279) );
  INVx1_ASAP7_75t_L U4795 ( .A(n4487), .Y(n4486) );
  AOI211xp5_ASAP7_75t_L U4796 ( .A1(n3111), .A2(n4485), .B(n3416), .C(n4482), 
        .Y(n3842) );
  AOI22xp33_ASAP7_75t_L U4797 ( .A1(n3843), .A2(di_reg_reg_7__net_Q), .B1(A[7]), .B2(n3846), .Y(n4477) );
  NOR4xp25_ASAP7_75t_L U4798 ( .A(n4483), .B(n4484), .C(n4482), .D(n3420), .Y(
        n3843) );
  INVx1_ASAP7_75t_L U4799 ( .A(n4485), .Y(n3420) );
  A2O1A1Ixp33_ASAP7_75t_L U4800 ( .A1(n4236), .A2(n4377), .B(n4280), .C(
        i_tv80_core_TmpAddr_reg_7__net_Q), .Y(n4476) );
  AO21x1_ASAP7_75t_L U4801 ( .A1(n4283), .A2(n4236), .B(n4289), .Y(n4280) );
  OAI21xp33_ASAP7_75t_L U4802 ( .A1(n4288), .A2(n3848), .B(n4303), .Y(n4289)
         );
  INVx1_ASAP7_75t_L U4803 ( .A(n4332), .Y(n4303) );
  OAI211xp5_ASAP7_75t_L U4804 ( .A1(n4456), .A2(n4326), .B(n4244), .C(n4374), 
        .Y(n4332) );
  NAND5xp2_ASAP7_75t_L U4805 ( .A(n4485), .B(n4483), .C(n4488), .D(n4489), .E(
        n4481), .Y(n4374) );
  OAI31xp33_ASAP7_75t_L U4806 ( .A1(n4490), .A2(n4491), .A3(n4492), .B(n3401), 
        .Y(n4485) );
  AOI31xp33_ASAP7_75t_L U4807 ( .A1(n4493), .A2(n4494), .A3(n4495), .B(n4496), 
        .Y(n4492) );
  AOI221xp5_ASAP7_75t_L U4808 ( .A1(n3244), .A2(n3245), .B1(n3081), .B2(n3075), 
        .C(n3143), .Y(n4495) );
  AOI31xp33_ASAP7_75t_L U4809 ( .A1(n4497), .A2(n4498), .A3(n4499), .B(n4500), 
        .Y(n4491) );
  AOI21xp33_ASAP7_75t_L U4810 ( .A1(n3154), .A2(n3055), .B(n4501), .Y(n4499)
         );
  O2A1O1Ixp33_ASAP7_75t_L U4811 ( .A1(n3083), .A2(n2767), .B(n3135), .C(n4502), 
        .Y(n4501) );
  NAND2xp33_ASAP7_75t_L U4812 ( .A(n3127), .B(n3244), .Y(n4498) );
  NAND4xp25_ASAP7_75t_L U4813 ( .A(n4480), .B(n4488), .C(n3111), .D(n4484), 
        .Y(n4244) );
  NOR2xp33_ASAP7_75t_L U4814 ( .A(n2373), .B(n3416), .Y(n4480) );
  AND3x1_ASAP7_75t_L U4815 ( .A(n3838), .B(n4372), .C(n3839), .Y(n4456) );
  NAND2xp33_ASAP7_75t_L U4816 ( .A(n4503), .B(n4504), .Y(n4372) );
  INVx1_ASAP7_75t_L U4817 ( .A(n4505), .Y(n4503) );
  INVx1_ASAP7_75t_L U4818 ( .A(n4236), .Y(n3848) );
  INVx1_ASAP7_75t_L U4819 ( .A(n4282), .Y(n4288) );
  NAND3xp33_ASAP7_75t_L U4820 ( .A(n4236), .B(n4376), .C(n4506), .Y(n4475) );
  NOR3xp33_ASAP7_75t_L U4821 ( .A(n4283), .B(n4282), .C(n4377), .Y(n4376) );
  NAND3xp33_ASAP7_75t_L U4822 ( .A(i_tv80_core_TmpAddr_reg_3__net_Q), .B(n4297), .C(i_tv80_core_TmpAddr_reg_4__net_Q), .Y(n4282) );
  NOR3xp33_ASAP7_75t_L U4823 ( .A(n4310), .B(n4331), .C(n4312), .Y(n4297) );
  INVx1_ASAP7_75t_L U4824 ( .A(i_tv80_core_TmpAddr_reg_5__net_Q), .Y(n4283) );
  NOR2xp33_ASAP7_75t_L U4825 ( .A(n4482), .B(n4489), .Y(n4236) );
  AOI22xp33_ASAP7_75t_L U4826 ( .A1(n3486), .A2(n3127), .B1(n3245), .B2(n3518), 
        .Y(n4489) );
  NOR2xp33_ASAP7_75t_L U4827 ( .A(n3241), .B(n3063), .Y(n3518) );
  INVx1_ASAP7_75t_L U4828 ( .A(n4488), .Y(n4482) );
  NOR3xp33_ASAP7_75t_L U4829 ( .A(n4505), .B(n4504), .C(n4326), .Y(n4488) );
  INVx1_ASAP7_75t_L U4830 ( .A(n3834), .Y(n4326) );
  NOR2xp33_ASAP7_75t_L U4831 ( .A(n3095), .B(n3846), .Y(n3834) );
  NOR2xp33_ASAP7_75t_L U4832 ( .A(n4459), .B(n3277), .Y(n3846) );
  AOI21xp33_ASAP7_75t_L U4833 ( .A1(n3095), .A2(reset_n), .B(n2366), .Y(n3277)
         );
  NOR2xp33_ASAP7_75t_L U4834 ( .A(n2461), .B(n2728), .Y(n2366) );
  NOR4xp25_ASAP7_75t_L U4835 ( .A(n3167), .B(n3192), .C(n3497), .D(
        i_tv80_core_IStatus_reg_0__net_Q), .Y(n4504) );
  INVx1_ASAP7_75t_L U4836 ( .A(i_tv80_core_IntCycle_reg_net_Q), .Y(n3192) );
  NAND3xp33_ASAP7_75t_L U4837 ( .A(n3839), .B(n3838), .C(n4507), .Y(n4505) );
  AOI21xp33_ASAP7_75t_L U4838 ( .A1(n4464), .A2(i_tv80_core_NMICycle_reg_net_Q), .B(n3422), .Y(n4507) );
  INVx1_ASAP7_75t_L U4839 ( .A(n3837), .Y(n3422) );
  NAND2xp33_ASAP7_75t_L U4840 ( .A(n4215), .B(n3099), .Y(n3837) );
  INVx1_ASAP7_75t_L U4841 ( .A(n4508), .Y(n4464) );
  AOI322xp5_ASAP7_75t_L U4842 ( .A1(n3239), .A2(n2881), .A3(n2924), .B1(n4509), 
        .B2(n2897), .C1(n2957), .C2(n3143), .Y(n3838) );
  AO21x1_ASAP7_75t_L U4843 ( .A1(n4510), .A2(n3160), .B(n4511), .Y(n4509) );
  AOI31xp33_ASAP7_75t_L U4844 ( .A1(n2924), .A2(n3390), .A3(n2881), .B(n4512), 
        .Y(n3839) );
  OAI32xp33_ASAP7_75t_L U4845 ( .A1(n4513), .A2(i_tv80_core_NMICycle_reg_net_Q), .A3(n2461), .B1(n3218), .B2(n4514), .Y(U1157_net_Y) );
  INVx1_ASAP7_75t_L U4846 ( .A(n4513), .Y(n4514) );
  INVx1_ASAP7_75t_L U4847 ( .A(i_tv80_core_NMI_s_reg_net_Q), .Y(n3218) );
  O2A1O1Ixp33_ASAP7_75t_L U4848 ( .A1(n2461), .A2(
        i_tv80_core_Oldnmi_n_reg_net_Q), .B(n2371), .C(
        i_tv80_core_NMICycle_reg_net_Q), .Y(n4513) );
  NAND2xp33_ASAP7_75t_L U4849 ( .A(nmi_n), .B(reset_n), .Y(n2371) );
  OAI31xp33_ASAP7_75t_L U4850 ( .A1(n4515), .A2(n3207), .A3(n4516), .B(reset_n), .Y(U1141_net_Y) );
  NOR3xp33_ASAP7_75t_L U4851 ( .A(i_tv80_core_tstate_reg_0__net_Q), .B(
        i_tv80_core_tstate_reg_2__net_Q), .C(i_tv80_core_tstate_reg_1__net_Q), 
        .Y(n4516) );
  AOI31xp33_ASAP7_75t_L U4852 ( .A1(wait_n), .A2(n3183), .A3(n3100), .B(m1_n), 
        .Y(n4515) );
  NOR2xp33_ASAP7_75t_L U4853 ( .A(n2866), .B(n3186), .Y(n3100) );
  OAI22xp33_ASAP7_75t_L U4854 ( .A1(n4517), .A2(n3228), .B1(n3104), .B2(n4518), 
        .Y(U1137_net_Y) );
  INVx1_ASAP7_75t_L U4855 ( .A(i_tv80_core_Pre_XY_F_M_reg_1__net_Q), .Y(n3228)
         );
  OAI22xp33_ASAP7_75t_L U4856 ( .A1(n3226), .A2(n4517), .B1(n3221), .B2(n4518), 
        .Y(U1135_net_Y) );
  INVx1_ASAP7_75t_L U4857 ( .A(i_tv80_core_Pre_XY_F_M_reg_2__net_Q), .Y(n3226)
         );
  OAI22xp33_ASAP7_75t_L U4858 ( .A1(n3231), .A2(n4517), .B1(n3229), .B2(n4518), 
        .Y(U1133_net_Y) );
  NAND2xp33_ASAP7_75t_L U4859 ( .A(reset_n), .B(n4517), .Y(n4518) );
  OAI21xp33_ASAP7_75t_L U4860 ( .A1(n3111), .A2(n3223), .B(reset_n), .Y(n4517)
         );
  INVx1_ASAP7_75t_L U4861 ( .A(i_tv80_core_Pre_XY_F_M_reg_0__net_Q), .Y(n3231)
         );
  OAI22xp33_ASAP7_75t_L U4862 ( .A1(n2403), .A2(n4462), .B1(n4519), .B2(n4520), 
        .Y(U112_net_Y) );
  OAI221xp5_ASAP7_75t_L U4863 ( .A1(n4520), .A2(n4521), .B1(n4522), .B2(n4523), 
        .C(n4524), .Y(U1123_net_Y) );
  INVx1_ASAP7_75t_L U4864 ( .A(di[7]), .Y(n4520) );
  OAI221xp5_ASAP7_75t_L U4865 ( .A1(n4521), .A2(n4525), .B1(n4526), .B2(n4523), 
        .C(n4524), .Y(U1121_net_Y) );
  OAI22xp33_ASAP7_75t_L U4866 ( .A1(n2412), .A2(n4462), .B1(n4519), .B2(n4525), 
        .Y(U111_net_Y) );
  INVx1_ASAP7_75t_L U4867 ( .A(di[6]), .Y(n4525) );
  OAI22xp33_ASAP7_75t_L U4868 ( .A1(n4209), .A2(n4527), .B1(n4528), .B2(n4529), 
        .Y(U1112_net_Y) );
  NAND3xp33_ASAP7_75t_L U4869 ( .A(n2493), .B(i_tv80_core_IR_reg_5__net_Q), 
        .C(n3200), .Y(n4529) );
  INVx1_ASAP7_75t_L U4870 ( .A(i_tv80_core_XY_State_reg_1__net_Q), .Y(n4209)
         );
  OAI22xp33_ASAP7_75t_L U4871 ( .A1(n3355), .A2(n4527), .B1(n4528), .B2(n4530), 
        .Y(U1110_net_Y) );
  NAND3xp33_ASAP7_75t_L U4872 ( .A(n2493), .B(n3041), .C(n3200), .Y(n4530) );
  INVx1_ASAP7_75t_L U4873 ( .A(n4528), .Y(n4527) );
  AOI211xp5_ASAP7_75t_L U4874 ( .A1(n3201), .A2(n4459), .B(n3094), .C(n2461), 
        .Y(n4528) );
  NOR2xp33_ASAP7_75t_L U4875 ( .A(n2495), .B(n3200), .Y(n3094) );
  INVx1_ASAP7_75t_L U4876 ( .A(n2495), .Y(n4459) );
  INVx1_ASAP7_75t_L U4877 ( .A(n3089), .Y(n3201) );
  INVx1_ASAP7_75t_L U4878 ( .A(i_tv80_core_XY_State_reg_0__net_Q), .Y(n3355)
         );
  OAI22xp33_ASAP7_75t_L U4879 ( .A1(n2419), .A2(n4462), .B1(n4519), .B2(n4531), 
        .Y(U110_net_Y) );
  OAI22xp33_ASAP7_75t_L U4880 ( .A1(n2426), .A2(n4462), .B1(n4519), .B2(n4532), 
        .Y(U109_net_Y) );
  OAI222xp33_ASAP7_75t_L U4881 ( .A1(n3840), .A2(n4533), .B1(n4534), .B2(n4535), .C1(n2403), .C2(n4536), .Y(U1096_net_Y) );
  INVx1_ASAP7_75t_L U4882 ( .A(n2775), .Y(n4534) );
  OAI22xp33_ASAP7_75t_L U4883 ( .A1(n4540), .A2(n2773), .B1(
        i_tv80_core_SP_reg_15__net_Q), .B2(n2364), .Y(n4539) );
  NAND4xp25_ASAP7_75t_L U4884 ( .A(n4541), .B(n4542), .C(n4543), .D(n4544), 
        .Y(n2773) );
  AOI22xp33_ASAP7_75t_L U4885 ( .A1(n4545), .A2(
        i_tv80_core_i_reg_RegsH_reg_7__7__net_Q), .B1(n4546), .B2(
        i_tv80_core_i_reg_RegsH_reg_5__7__net_Q), .Y(n4544) );
  AOI22xp33_ASAP7_75t_L U4886 ( .A1(n4547), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__7__net_Q), .B1(n4548), .B2(
        i_tv80_core_i_reg_RegsH_reg_1__7__net_Q), .Y(n4543) );
  AOI22xp33_ASAP7_75t_L U4887 ( .A1(n4549), .A2(
        i_tv80_core_i_reg_RegsH_reg_6__7__net_Q), .B1(n4550), .B2(
        i_tv80_core_i_reg_RegsH_reg_4__7__net_Q), .Y(n4542) );
  AOI22xp33_ASAP7_75t_L U4888 ( .A1(n4551), .A2(
        i_tv80_core_i_reg_RegsH_reg_2__7__net_Q), .B1(n4552), .B2(
        i_tv80_core_i_reg_RegsH_reg_0__7__net_Q), .Y(n4541) );
  MAJIxp5_ASAP7_75t_L U4889 ( .A(n4553), .B(n4554), .C(n4555), .Y(n4537) );
  INVx1_ASAP7_75t_L U4890 ( .A(i_tv80_core_TmpAddr_reg_15__net_Q), .Y(n3840)
         );
  OAI222xp33_ASAP7_75t_L U4891 ( .A1(n4233), .A2(n4533), .B1(n4558), .B2(n4535), .C1(n2412), .C2(n4536), .Y(U1092_net_Y) );
  INVx1_ASAP7_75t_L U4892 ( .A(n2780), .Y(n4558) );
  AOI22xp33_ASAP7_75t_L U4893 ( .A1(n4540), .A2(n2781), .B1(n4430), .B2(n2364), 
        .Y(n4557) );
  INVx1_ASAP7_75t_L U4894 ( .A(n2783), .Y(n4430) );
  INVx1_ASAP7_75t_L U4895 ( .A(i_tv80_core_SP_reg_13__net_Q), .Y(n2781) );
  AOI22xp33_ASAP7_75t_L U4896 ( .A1(n2779), .A2(n2364), .B1(n4540), .B2(
        i_tv80_core_SP_reg_14__net_Q), .Y(n4554) );
  NAND4xp25_ASAP7_75t_L U4897 ( .A(n4560), .B(n4561), .C(n4562), .D(n4563), 
        .Y(n2779) );
  AOI22xp33_ASAP7_75t_L U4898 ( .A1(n4545), .A2(
        i_tv80_core_i_reg_RegsH_reg_7__6__net_Q), .B1(n4546), .B2(
        i_tv80_core_i_reg_RegsH_reg_5__6__net_Q), .Y(n4563) );
  AOI22xp33_ASAP7_75t_L U4899 ( .A1(n4547), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__6__net_Q), .B1(n4548), .B2(
        i_tv80_core_i_reg_RegsH_reg_1__6__net_Q), .Y(n4562) );
  AOI22xp33_ASAP7_75t_L U4900 ( .A1(n4549), .A2(
        i_tv80_core_i_reg_RegsH_reg_6__6__net_Q), .B1(n4550), .B2(
        i_tv80_core_i_reg_RegsH_reg_4__6__net_Q), .Y(n4561) );
  AOI22xp33_ASAP7_75t_L U4901 ( .A1(n4551), .A2(
        i_tv80_core_i_reg_RegsH_reg_2__6__net_Q), .B1(n4552), .B2(
        i_tv80_core_i_reg_RegsH_reg_0__6__net_Q), .Y(n4560) );
  INVx1_ASAP7_75t_L U4902 ( .A(i_tv80_core_TmpAddr_reg_14__net_Q), .Y(n4233)
         );
  OAI22xp33_ASAP7_75t_L U4903 ( .A1(n2432), .A2(n4462), .B1(n4519), .B2(n4564), 
        .Y(U108_net_Y) );
  OAI222xp33_ASAP7_75t_L U4904 ( .A1(n4235), .A2(n4533), .B1(n4565), .B2(n4535), .C1(n2419), .C2(n4536), .Y(U1088_net_Y) );
  INVx1_ASAP7_75t_L U4905 ( .A(n2784), .Y(n4565) );
  OAI22xp33_ASAP7_75t_L U4906 ( .A1(n4540), .A2(n2783), .B1(
        i_tv80_core_SP_reg_13__net_Q), .B2(n2364), .Y(n4566) );
  NAND4xp25_ASAP7_75t_L U4907 ( .A(n4567), .B(n4568), .C(n4569), .D(n4570), 
        .Y(n2783) );
  AOI22xp33_ASAP7_75t_L U4908 ( .A1(n4545), .A2(
        i_tv80_core_i_reg_RegsH_reg_7__5__net_Q), .B1(n4546), .B2(
        i_tv80_core_i_reg_RegsH_reg_5__5__net_Q), .Y(n4570) );
  AOI22xp33_ASAP7_75t_L U4909 ( .A1(n4547), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__5__net_Q), .B1(n4548), .B2(
        i_tv80_core_i_reg_RegsH_reg_1__5__net_Q), .Y(n4569) );
  AOI22xp33_ASAP7_75t_L U4910 ( .A1(n4549), .A2(
        i_tv80_core_i_reg_RegsH_reg_6__5__net_Q), .B1(n4550), .B2(
        i_tv80_core_i_reg_RegsH_reg_4__5__net_Q), .Y(n4568) );
  AOI22xp33_ASAP7_75t_L U4911 ( .A1(n4551), .A2(
        i_tv80_core_i_reg_RegsH_reg_2__5__net_Q), .B1(n4552), .B2(
        i_tv80_core_i_reg_RegsH_reg_0__5__net_Q), .Y(n4567) );
  AOI22xp33_ASAP7_75t_L U4912 ( .A1(n4540), .A2(n2785), .B1(n4423), .B2(n2364), 
        .Y(n4572) );
  INVx1_ASAP7_75t_L U4913 ( .A(n2787), .Y(n4423) );
  INVx1_ASAP7_75t_L U4914 ( .A(i_tv80_core_SP_reg_12__net_Q), .Y(n2785) );
  INVx1_ASAP7_75t_L U4915 ( .A(i_tv80_core_TmpAddr_reg_13__net_Q), .Y(n4235)
         );
  OAI222xp33_ASAP7_75t_L U4916 ( .A1(n4255), .A2(n4533), .B1(n4573), .B2(n4535), .C1(n2426), .C2(n4536), .Y(U1084_net_Y) );
  INVx1_ASAP7_75t_L U4917 ( .A(n2788), .Y(n4573) );
  OAI22xp33_ASAP7_75t_L U4918 ( .A1(n4540), .A2(n2787), .B1(
        i_tv80_core_SP_reg_12__net_Q), .B2(n2364), .Y(n4574) );
  NAND4xp25_ASAP7_75t_L U4919 ( .A(n4575), .B(n4576), .C(n4577), .D(n4578), 
        .Y(n2787) );
  AOI22xp33_ASAP7_75t_L U4920 ( .A1(n4545), .A2(
        i_tv80_core_i_reg_RegsH_reg_7__4__net_Q), .B1(n4546), .B2(
        i_tv80_core_i_reg_RegsH_reg_5__4__net_Q), .Y(n4578) );
  AOI22xp33_ASAP7_75t_L U4921 ( .A1(n4547), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__4__net_Q), .B1(n4548), .B2(
        i_tv80_core_i_reg_RegsH_reg_1__4__net_Q), .Y(n4577) );
  AOI22xp33_ASAP7_75t_L U4922 ( .A1(n4549), .A2(
        i_tv80_core_i_reg_RegsH_reg_6__4__net_Q), .B1(n4550), .B2(
        i_tv80_core_i_reg_RegsH_reg_4__4__net_Q), .Y(n4576) );
  AOI22xp33_ASAP7_75t_L U4923 ( .A1(n4551), .A2(
        i_tv80_core_i_reg_RegsH_reg_2__4__net_Q), .B1(n4552), .B2(
        i_tv80_core_i_reg_RegsH_reg_0__4__net_Q), .Y(n4575) );
  AOI22xp33_ASAP7_75t_L U4924 ( .A1(n4540), .A2(n2789), .B1(n4416), .B2(n2364), 
        .Y(n4580) );
  INVx1_ASAP7_75t_L U4925 ( .A(n2791), .Y(n4416) );
  INVx1_ASAP7_75t_L U4926 ( .A(i_tv80_core_SP_reg_11__net_Q), .Y(n2789) );
  INVx1_ASAP7_75t_L U4927 ( .A(i_tv80_core_TmpAddr_reg_12__net_Q), .Y(n4255)
         );
  OAI222xp33_ASAP7_75t_L U4928 ( .A1(n4253), .A2(n4533), .B1(n4581), .B2(n4535), .C1(n2432), .C2(n4536), .Y(U1080_net_Y) );
  INVx1_ASAP7_75t_L U4929 ( .A(n2792), .Y(n4581) );
  OAI22xp33_ASAP7_75t_L U4930 ( .A1(n4540), .A2(n2791), .B1(
        i_tv80_core_SP_reg_11__net_Q), .B2(n2364), .Y(n4582) );
  NAND4xp25_ASAP7_75t_L U4931 ( .A(n4583), .B(n4584), .C(n4585), .D(n4586), 
        .Y(n2791) );
  AOI22xp33_ASAP7_75t_L U4932 ( .A1(n4545), .A2(
        i_tv80_core_i_reg_RegsH_reg_7__3__net_Q), .B1(n4546), .B2(
        i_tv80_core_i_reg_RegsH_reg_5__3__net_Q), .Y(n4586) );
  AOI22xp33_ASAP7_75t_L U4933 ( .A1(n4547), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__3__net_Q), .B1(n4548), .B2(
        i_tv80_core_i_reg_RegsH_reg_1__3__net_Q), .Y(n4585) );
  AOI22xp33_ASAP7_75t_L U4934 ( .A1(n4549), .A2(
        i_tv80_core_i_reg_RegsH_reg_6__3__net_Q), .B1(n4550), .B2(
        i_tv80_core_i_reg_RegsH_reg_4__3__net_Q), .Y(n4584) );
  AOI22xp33_ASAP7_75t_L U4935 ( .A1(n4551), .A2(
        i_tv80_core_i_reg_RegsH_reg_2__3__net_Q), .B1(n4552), .B2(
        i_tv80_core_i_reg_RegsH_reg_0__3__net_Q), .Y(n4583) );
  AOI22xp33_ASAP7_75t_L U4936 ( .A1(n4540), .A2(n2793), .B1(n4409), .B2(n2364), 
        .Y(n4588) );
  INVx1_ASAP7_75t_L U4937 ( .A(n2795), .Y(n4409) );
  INVx1_ASAP7_75t_L U4938 ( .A(i_tv80_core_SP_reg_10__net_Q), .Y(n2793) );
  INVx1_ASAP7_75t_L U4939 ( .A(i_tv80_core_TmpAddr_reg_11__net_Q), .Y(n4253)
         );
  OAI22xp33_ASAP7_75t_L U4940 ( .A1(n2438), .A2(n4462), .B1(n4519), .B2(n4589), 
        .Y(U107_net_Y) );
  OAI222xp33_ASAP7_75t_L U4941 ( .A1(n4267), .A2(n4533), .B1(n4590), .B2(n4535), .C1(n2438), .C2(n4536), .Y(U1076_net_Y) );
  INVx1_ASAP7_75t_L U4942 ( .A(n2796), .Y(n4590) );
  OAI22xp33_ASAP7_75t_L U4943 ( .A1(n4540), .A2(n2795), .B1(
        i_tv80_core_SP_reg_10__net_Q), .B2(n2364), .Y(n4591) );
  NAND4xp25_ASAP7_75t_L U4944 ( .A(n4592), .B(n4593), .C(n4594), .D(n4595), 
        .Y(n2795) );
  AOI22xp33_ASAP7_75t_L U4945 ( .A1(n4545), .A2(
        i_tv80_core_i_reg_RegsH_reg_7__2__net_Q), .B1(n4546), .B2(
        i_tv80_core_i_reg_RegsH_reg_5__2__net_Q), .Y(n4595) );
  AOI22xp33_ASAP7_75t_L U4946 ( .A1(n4547), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__2__net_Q), .B1(n4548), .B2(
        i_tv80_core_i_reg_RegsH_reg_1__2__net_Q), .Y(n4594) );
  AOI22xp33_ASAP7_75t_L U4947 ( .A1(n4549), .A2(
        i_tv80_core_i_reg_RegsH_reg_6__2__net_Q), .B1(n4550), .B2(
        i_tv80_core_i_reg_RegsH_reg_4__2__net_Q), .Y(n4593) );
  AOI22xp33_ASAP7_75t_L U4948 ( .A1(n4551), .A2(
        i_tv80_core_i_reg_RegsH_reg_2__2__net_Q), .B1(n4552), .B2(
        i_tv80_core_i_reg_RegsH_reg_0__2__net_Q), .Y(n4592) );
  AOI22xp33_ASAP7_75t_L U4949 ( .A1(n4540), .A2(n2797), .B1(n4402), .B2(n2364), 
        .Y(n4597) );
  INVx1_ASAP7_75t_L U4950 ( .A(n2799), .Y(n4402) );
  INVx1_ASAP7_75t_L U4951 ( .A(i_tv80_core_SP_reg_9__net_Q), .Y(n2797) );
  INVx1_ASAP7_75t_L U4952 ( .A(i_tv80_core_TmpAddr_reg_10__net_Q), .Y(n4267)
         );
  OAI222xp33_ASAP7_75t_L U4953 ( .A1(n4272), .A2(n4533), .B1(n4598), .B2(n4535), .C1(n2444), .C2(n4536), .Y(U1072_net_Y) );
  INVx1_ASAP7_75t_L U4954 ( .A(n2800), .Y(n4598) );
  OAI22xp33_ASAP7_75t_L U4955 ( .A1(n4540), .A2(n2799), .B1(
        i_tv80_core_SP_reg_9__net_Q), .B2(n2364), .Y(n4599) );
  NAND4xp25_ASAP7_75t_L U4956 ( .A(n4600), .B(n4601), .C(n4602), .D(n4603), 
        .Y(n2799) );
  AOI22xp33_ASAP7_75t_L U4957 ( .A1(n4545), .A2(
        i_tv80_core_i_reg_RegsH_reg_7__1__net_Q), .B1(n4546), .B2(
        i_tv80_core_i_reg_RegsH_reg_5__1__net_Q), .Y(n4603) );
  AOI22xp33_ASAP7_75t_L U4958 ( .A1(n4547), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__1__net_Q), .B1(n4548), .B2(
        i_tv80_core_i_reg_RegsH_reg_1__1__net_Q), .Y(n4602) );
  AOI22xp33_ASAP7_75t_L U4959 ( .A1(n4549), .A2(
        i_tv80_core_i_reg_RegsH_reg_6__1__net_Q), .B1(n4550), .B2(
        i_tv80_core_i_reg_RegsH_reg_4__1__net_Q), .Y(n4601) );
  AOI22xp33_ASAP7_75t_L U4960 ( .A1(n4551), .A2(
        i_tv80_core_i_reg_RegsH_reg_2__1__net_Q), .B1(n4552), .B2(
        i_tv80_core_i_reg_RegsH_reg_0__1__net_Q), .Y(n4600) );
  MAJIxp5_ASAP7_75t_L U4961 ( .A(n4604), .B(n4555), .C(n4605), .Y(n4596) );
  AOI22xp33_ASAP7_75t_L U4962 ( .A1(i_tv80_core_SP_reg_8__net_Q), .A2(n4540), 
        .B1(n2364), .B2(n2803), .Y(n4604) );
  INVx1_ASAP7_75t_L U4963 ( .A(i_tv80_core_TmpAddr_reg_9__net_Q), .Y(n4272) );
  OAI22xp33_ASAP7_75t_L U4964 ( .A1(n2444), .A2(n4462), .B1(n4519), .B2(n4606), 
        .Y(U106_net_Y) );
  OAI222xp33_ASAP7_75t_L U4965 ( .A1(n4270), .A2(n4533), .B1(n4607), .B2(n4535), .C1(n2450), .C2(n4536), .Y(U1068_net_Y) );
  INVx1_ASAP7_75t_L U4966 ( .A(n2804), .Y(n4607) );
  OAI22xp33_ASAP7_75t_L U4967 ( .A1(n4395), .A2(n4540), .B1(n2364), .B2(n2801), 
        .Y(n4608) );
  INVx1_ASAP7_75t_L U4968 ( .A(i_tv80_core_SP_reg_8__net_Q), .Y(n2801) );
  INVx1_ASAP7_75t_L U4969 ( .A(n2803), .Y(n4395) );
  NAND4xp25_ASAP7_75t_L U4970 ( .A(n4609), .B(n4610), .C(n4611), .D(n4612), 
        .Y(n2803) );
  AOI22xp33_ASAP7_75t_L U4971 ( .A1(n4545), .A2(
        i_tv80_core_i_reg_RegsH_reg_7__0__net_Q), .B1(n4546), .B2(
        i_tv80_core_i_reg_RegsH_reg_5__0__net_Q), .Y(n4612) );
  AOI22xp33_ASAP7_75t_L U4972 ( .A1(n4547), .A2(
        i_tv80_core_i_reg_RegsH_reg_3__0__net_Q), .B1(n4548), .B2(
        i_tv80_core_i_reg_RegsH_reg_1__0__net_Q), .Y(n4611) );
  AOI22xp33_ASAP7_75t_L U4973 ( .A1(n4549), .A2(
        i_tv80_core_i_reg_RegsH_reg_6__0__net_Q), .B1(n4550), .B2(
        i_tv80_core_i_reg_RegsH_reg_4__0__net_Q), .Y(n4610) );
  AOI22xp33_ASAP7_75t_L U4974 ( .A1(n4551), .A2(
        i_tv80_core_i_reg_RegsH_reg_2__0__net_Q), .B1(n4552), .B2(
        i_tv80_core_i_reg_RegsH_reg_0__0__net_Q), .Y(n4609) );
  NAND2xp33_ASAP7_75t_L U4975 ( .A(n4615), .B(n4536), .Y(n4533) );
  NAND3xp33_ASAP7_75t_L U4976 ( .A(n2364), .B(n4616), .C(n2493), .Y(n4536) );
  OAI22xp33_ASAP7_75t_L U4977 ( .A1(n4617), .A2(n2922), .B1(n4618), .B2(n3028), 
        .Y(n4616) );
  INVx1_ASAP7_75t_L U4978 ( .A(n2957), .Y(n3028) );
  NOR2xp33_ASAP7_75t_L U4979 ( .A(n3497), .B(n3063), .Y(n2957) );
  NOR2xp33_ASAP7_75t_L U4980 ( .A(n3127), .B(n3390), .Y(n4617) );
  INVx1_ASAP7_75t_L U4981 ( .A(i_tv80_core_TmpAddr_reg_8__net_Q), .Y(n4270) );
  OAI22xp33_ASAP7_75t_L U4982 ( .A1(n2450), .A2(n4462), .B1(n4519), .B2(n4619), 
        .Y(U105_net_Y) );
  NAND2xp33_ASAP7_75t_L U4983 ( .A(reset_n), .B(n4462), .Y(n4519) );
  NAND2xp33_ASAP7_75t_L U4984 ( .A(reset_n), .B(n2868), .Y(n4462) );
  OAI222xp33_ASAP7_75t_L U4985 ( .A1(n4506), .A2(n4620), .B1(n2823), .B2(n4535), .C1(n2403), .C2(n4621), .Y(U1058_net_Y) );
  MAJx2_ASAP7_75t_L U4986 ( .A(n4622), .B(n4623), .C(n4624), .Y(n4613) );
  INVx1_ASAP7_75t_L U4987 ( .A(di_reg_reg_7__net_Q), .Y(n2403) );
  AOI22xp33_ASAP7_75t_L U4988 ( .A1(n2364), .A2(n4627), .B1(n2816), .B2(n4540), 
        .Y(n4614) );
  INVx1_ASAP7_75t_L U4989 ( .A(i_tv80_core_SP_reg_7__net_Q), .Y(n2816) );
  INVx1_ASAP7_75t_L U4990 ( .A(n2819), .Y(n4627) );
  NAND4xp25_ASAP7_75t_L U4991 ( .A(n4628), .B(n4629), .C(n4630), .D(n4631), 
        .Y(n2819) );
  AOI22xp33_ASAP7_75t_L U4992 ( .A1(n4545), .A2(
        i_tv80_core_i_reg_RegsL_reg_7__7__net_Q), .B1(n4546), .B2(
        i_tv80_core_i_reg_RegsL_reg_5__7__net_Q), .Y(n4631) );
  AOI22xp33_ASAP7_75t_L U4993 ( .A1(n4547), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__7__net_Q), .B1(n4548), .B2(
        i_tv80_core_i_reg_RegsL_reg_1__7__net_Q), .Y(n4630) );
  AOI22xp33_ASAP7_75t_L U4994 ( .A1(n4549), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__7__net_Q), .B1(n4550), .B2(
        i_tv80_core_i_reg_RegsL_reg_4__7__net_Q), .Y(n4629) );
  AOI22xp33_ASAP7_75t_L U4995 ( .A1(n4551), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__7__net_Q), .B1(n4552), .B2(
        i_tv80_core_i_reg_RegsL_reg_0__7__net_Q), .Y(n4628) );
  INVx1_ASAP7_75t_L U4996 ( .A(i_tv80_core_TmpAddr_reg_7__net_Q), .Y(n4506) );
  OAI222xp33_ASAP7_75t_L U4997 ( .A1(n4377), .A2(n4620), .B1(n2828), .B2(n4535), .C1(n2412), .C2(n4621), .Y(U1055_net_Y) );
  FAx1_ASAP7_75t_L U4998 ( .A(n4624), .B(n4622), .CI(n4623), .SN(n2828) );
  AOI22xp33_ASAP7_75t_L U4999 ( .A1(n2364), .A2(n4632), .B1(n2824), .B2(n4540), 
        .Y(n4623) );
  INVx1_ASAP7_75t_L U5000 ( .A(i_tv80_core_SP_reg_6__net_Q), .Y(n2824) );
  INVx1_ASAP7_75t_L U5001 ( .A(n2826), .Y(n4632) );
  NAND4xp25_ASAP7_75t_L U5002 ( .A(n4633), .B(n4634), .C(n4635), .D(n4636), 
        .Y(n2826) );
  AOI22xp33_ASAP7_75t_L U5003 ( .A1(n4545), .A2(
        i_tv80_core_i_reg_RegsL_reg_7__6__net_Q), .B1(n4546), .B2(
        i_tv80_core_i_reg_RegsL_reg_5__6__net_Q), .Y(n4636) );
  AOI22xp33_ASAP7_75t_L U5004 ( .A1(n4547), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__6__net_Q), .B1(n4548), .B2(
        i_tv80_core_i_reg_RegsL_reg_1__6__net_Q), .Y(n4635) );
  AOI22xp33_ASAP7_75t_L U5005 ( .A1(n4549), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__6__net_Q), .B1(n4550), .B2(
        i_tv80_core_i_reg_RegsL_reg_4__6__net_Q), .Y(n4634) );
  AOI22xp33_ASAP7_75t_L U5006 ( .A1(n4551), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__6__net_Q), .B1(n4552), .B2(
        i_tv80_core_i_reg_RegsL_reg_0__6__net_Q), .Y(n4633) );
  AOI21xp33_ASAP7_75t_L U5007 ( .A1(n2412), .A2(n4625), .B(n4626), .Y(n4622)
         );
  INVx1_ASAP7_75t_L U5008 ( .A(di_reg_reg_6__net_Q), .Y(n2412) );
  MAJx2_ASAP7_75t_L U5009 ( .A(n4637), .B(n4638), .C(n4639), .Y(n4624) );
  INVx1_ASAP7_75t_L U5010 ( .A(i_tv80_core_TmpAddr_reg_6__net_Q), .Y(n4377) );
  OAI221xp5_ASAP7_75t_L U5011 ( .A1(n2833), .A2(n4535), .B1(n3041), .B2(n4640), 
        .C(n4641), .Y(U1051_net_Y) );
  AOI22xp33_ASAP7_75t_L U5012 ( .A1(n4642), .A2(
        i_tv80_core_TmpAddr_reg_5__net_Q), .B1(n4643), .B2(di_reg_reg_5__net_Q), .Y(n4641) );
  FAx1_ASAP7_75t_L U5013 ( .A(n4639), .B(n4637), .CI(n4638), .SN(n2833) );
  AOI22xp33_ASAP7_75t_L U5014 ( .A1(n2364), .A2(n4644), .B1(n2829), .B2(n4540), 
        .Y(n4638) );
  INVx1_ASAP7_75t_L U5015 ( .A(i_tv80_core_SP_reg_5__net_Q), .Y(n2829) );
  INVx1_ASAP7_75t_L U5016 ( .A(n2831), .Y(n4644) );
  NAND4xp25_ASAP7_75t_L U5017 ( .A(n4645), .B(n4646), .C(n4647), .D(n4648), 
        .Y(n2831) );
  AOI22xp33_ASAP7_75t_L U5018 ( .A1(n4545), .A2(
        i_tv80_core_i_reg_RegsL_reg_7__5__net_Q), .B1(n4546), .B2(
        i_tv80_core_i_reg_RegsL_reg_5__5__net_Q), .Y(n4648) );
  AOI22xp33_ASAP7_75t_L U5019 ( .A1(n4547), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__5__net_Q), .B1(n4548), .B2(
        i_tv80_core_i_reg_RegsL_reg_1__5__net_Q), .Y(n4647) );
  AOI22xp33_ASAP7_75t_L U5020 ( .A1(n4549), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__5__net_Q), .B1(n4550), .B2(
        i_tv80_core_i_reg_RegsL_reg_4__5__net_Q), .Y(n4646) );
  AOI22xp33_ASAP7_75t_L U5021 ( .A1(n4551), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__5__net_Q), .B1(n4552), .B2(
        i_tv80_core_i_reg_RegsL_reg_0__5__net_Q), .Y(n4645) );
  AOI21xp33_ASAP7_75t_L U5022 ( .A1(n2419), .A2(n4625), .B(n4626), .Y(n4637)
         );
  INVx1_ASAP7_75t_L U5023 ( .A(di_reg_reg_5__net_Q), .Y(n2419) );
  MAJx2_ASAP7_75t_L U5024 ( .A(n4649), .B(n4650), .C(n4651), .Y(n4639) );
  OAI221xp5_ASAP7_75t_L U5025 ( .A1(n2838), .A2(n4535), .B1(n3282), .B2(n4640), 
        .C(n4652), .Y(U1049_net_Y) );
  AOI22xp33_ASAP7_75t_L U5026 ( .A1(n4642), .A2(
        i_tv80_core_TmpAddr_reg_4__net_Q), .B1(n4643), .B2(di_reg_reg_4__net_Q), .Y(n4652) );
  FAx1_ASAP7_75t_L U5027 ( .A(n4651), .B(n4649), .CI(n4650), .SN(n2838) );
  AOI22xp33_ASAP7_75t_L U5028 ( .A1(n2364), .A2(n4653), .B1(n2834), .B2(n4540), 
        .Y(n4650) );
  INVx1_ASAP7_75t_L U5029 ( .A(i_tv80_core_SP_reg_4__net_Q), .Y(n2834) );
  INVx1_ASAP7_75t_L U5030 ( .A(n2836), .Y(n4653) );
  NAND4xp25_ASAP7_75t_L U5031 ( .A(n4654), .B(n4655), .C(n4656), .D(n4657), 
        .Y(n2836) );
  AOI22xp33_ASAP7_75t_L U5032 ( .A1(n4545), .A2(
        i_tv80_core_i_reg_RegsL_reg_7__4__net_Q), .B1(n4546), .B2(
        i_tv80_core_i_reg_RegsL_reg_5__4__net_Q), .Y(n4657) );
  AOI22xp33_ASAP7_75t_L U5033 ( .A1(n4547), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__4__net_Q), .B1(n4548), .B2(
        i_tv80_core_i_reg_RegsL_reg_1__4__net_Q), .Y(n4656) );
  AOI22xp33_ASAP7_75t_L U5034 ( .A1(n4549), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__4__net_Q), .B1(n4550), .B2(
        i_tv80_core_i_reg_RegsL_reg_4__4__net_Q), .Y(n4655) );
  AOI22xp33_ASAP7_75t_L U5035 ( .A1(n4551), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__4__net_Q), .B1(n4552), .B2(
        i_tv80_core_i_reg_RegsL_reg_0__4__net_Q), .Y(n4654) );
  AOI21xp33_ASAP7_75t_L U5036 ( .A1(n2426), .A2(n4625), .B(n4626), .Y(n4649)
         );
  INVx1_ASAP7_75t_L U5037 ( .A(di_reg_reg_4__net_Q), .Y(n2426) );
  MAJx2_ASAP7_75t_L U5038 ( .A(n4658), .B(n4659), .C(n4660), .Y(n4651) );
  OAI221xp5_ASAP7_75t_L U5039 ( .A1(n2752), .A2(n4640), .B1(n2843), .B2(n4535), 
        .C(n4661), .Y(U1047_net_Y) );
  AOI22xp33_ASAP7_75t_L U5040 ( .A1(n4642), .A2(
        i_tv80_core_TmpAddr_reg_3__net_Q), .B1(n4643), .B2(di_reg_reg_3__net_Q), .Y(n4661) );
  INVx1_ASAP7_75t_L U5041 ( .A(n4620), .Y(n4642) );
  FAx1_ASAP7_75t_L U5042 ( .A(n4660), .B(n4658), .CI(n4659), .SN(n2843) );
  AOI22xp33_ASAP7_75t_L U5043 ( .A1(n2364), .A2(n4662), .B1(n2839), .B2(n4540), 
        .Y(n4659) );
  INVx1_ASAP7_75t_L U5044 ( .A(i_tv80_core_SP_reg_3__net_Q), .Y(n2839) );
  INVx1_ASAP7_75t_L U5045 ( .A(n2841), .Y(n4662) );
  NAND4xp25_ASAP7_75t_L U5046 ( .A(n4663), .B(n4664), .C(n4665), .D(n4666), 
        .Y(n2841) );
  AOI22xp33_ASAP7_75t_L U5047 ( .A1(n4545), .A2(
        i_tv80_core_i_reg_RegsL_reg_7__3__net_Q), .B1(n4546), .B2(
        i_tv80_core_i_reg_RegsL_reg_5__3__net_Q), .Y(n4666) );
  AOI22xp33_ASAP7_75t_L U5048 ( .A1(n4547), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__3__net_Q), .B1(n4548), .B2(
        i_tv80_core_i_reg_RegsL_reg_1__3__net_Q), .Y(n4665) );
  AOI22xp33_ASAP7_75t_L U5049 ( .A1(n4549), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__3__net_Q), .B1(n4550), .B2(
        i_tv80_core_i_reg_RegsL_reg_4__3__net_Q), .Y(n4664) );
  AOI22xp33_ASAP7_75t_L U5050 ( .A1(n4551), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__3__net_Q), .B1(n4552), .B2(
        i_tv80_core_i_reg_RegsL_reg_0__3__net_Q), .Y(n4663) );
  AOI21xp33_ASAP7_75t_L U5051 ( .A1(n2432), .A2(n4625), .B(n4626), .Y(n4658)
         );
  INVx1_ASAP7_75t_L U5052 ( .A(di_reg_reg_3__net_Q), .Y(n2432) );
  MAJx2_ASAP7_75t_L U5053 ( .A(n4667), .B(n4668), .C(n4669), .Y(n4660) );
  INVx1_ASAP7_75t_L U5054 ( .A(n4670), .Y(n4668) );
  AOI21xp33_ASAP7_75t_L U5055 ( .A1(n4625), .A2(n2438), .B(n4626), .Y(n4667)
         );
  NAND4xp25_ASAP7_75t_L U5056 ( .A(n4671), .B(n2493), .C(n4620), .D(n3092), 
        .Y(n4640) );
  OAI222xp33_ASAP7_75t_L U5057 ( .A1(n4312), .A2(n4620), .B1(n2848), .B2(n4535), .C1(n2438), .C2(n4621), .Y(U1044_net_Y) );
  FAx1_ASAP7_75t_L U5058 ( .A(n4669), .B(n4672), .CI(n4670), .SN(n2848) );
  OAI22xp33_ASAP7_75t_L U5059 ( .A1(n4540), .A2(n2846), .B1(
        i_tv80_core_SP_reg_2__net_Q), .B2(n2364), .Y(n4670) );
  NAND4xp25_ASAP7_75t_L U5060 ( .A(n4673), .B(n4674), .C(n4675), .D(n4676), 
        .Y(n2846) );
  AOI22xp33_ASAP7_75t_L U5061 ( .A1(n4545), .A2(
        i_tv80_core_i_reg_RegsL_reg_7__2__net_Q), .B1(n4546), .B2(
        i_tv80_core_i_reg_RegsL_reg_5__2__net_Q), .Y(n4676) );
  AOI22xp33_ASAP7_75t_L U5062 ( .A1(n4547), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__2__net_Q), .B1(n4548), .B2(
        i_tv80_core_i_reg_RegsL_reg_1__2__net_Q), .Y(n4675) );
  AOI22xp33_ASAP7_75t_L U5063 ( .A1(n4549), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__2__net_Q), .B1(n4550), .B2(
        i_tv80_core_i_reg_RegsL_reg_4__2__net_Q), .Y(n4674) );
  AOI22xp33_ASAP7_75t_L U5064 ( .A1(n4551), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__2__net_Q), .B1(n4552), .B2(
        i_tv80_core_i_reg_RegsL_reg_0__2__net_Q), .Y(n4673) );
  AO21x1_ASAP7_75t_L U5065 ( .A1(n2438), .A2(n4625), .B(n4626), .Y(n4672) );
  INVx1_ASAP7_75t_L U5066 ( .A(di_reg_reg_2__net_Q), .Y(n2438) );
  MAJIxp5_ASAP7_75t_L U5067 ( .A(n4678), .B(n4679), .C(n4680), .Y(n4669) );
  AOI21xp33_ASAP7_75t_L U5068 ( .A1(di_reg_reg_1__net_Q), .A2(n2364), .B(n4677), .Y(n4680) );
  INVx1_ASAP7_75t_L U5069 ( .A(i_tv80_core_TmpAddr_reg_2__net_Q), .Y(n4312) );
  OAI222xp33_ASAP7_75t_L U5070 ( .A1(n4310), .A2(n4620), .B1(n2853), .B2(n4535), .C1(n2444), .C2(n4621), .Y(U1041_net_Y) );
  FAx1_ASAP7_75t_L U5071 ( .A(n4678), .B(n4679), .CI(n4681), .SN(n2853) );
  OAI21xp33_ASAP7_75t_L U5072 ( .A1(n4540), .A2(n2444), .B(n4625), .Y(n4681)
         );
  INVx1_ASAP7_75t_L U5073 ( .A(n4677), .Y(n4625) );
  NOR2xp33_ASAP7_75t_L U5074 ( .A(n3658), .B(n2364), .Y(n4677) );
  INVx1_ASAP7_75t_L U5075 ( .A(n3664), .Y(n3658) );
  OAI211xp5_ASAP7_75t_L U5076 ( .A1(n4220), .A2(n2752), .B(n4222), .C(n4682), 
        .Y(n3664) );
  AND2x2_ASAP7_75t_L U5077 ( .A(n3065), .B(n4216), .Y(n4682) );
  NAND3xp33_ASAP7_75t_L U5078 ( .A(n2945), .B(n3075), .C(
        i_tv80_core_ISet_reg_1__net_Q), .Y(n3065) );
  INVx1_ASAP7_75t_L U5079 ( .A(n3286), .Y(n3075) );
  NOR2xp33_ASAP7_75t_L U5080 ( .A(n4683), .B(n3404), .Y(n3286) );
  AOI211xp5_ASAP7_75t_L U5081 ( .A1(n4684), .A2(n3537), .B(n3392), .C(n4685), 
        .Y(n4222) );
  INVx1_ASAP7_75t_L U5082 ( .A(n3477), .Y(n4685) );
  AOI221xp5_ASAP7_75t_L U5083 ( .A1(n3479), .A2(n3237), .B1(n4684), .B2(n4686), 
        .C(n4687), .Y(n3477) );
  O2A1O1Ixp33_ASAP7_75t_L U5084 ( .A1(n3497), .A2(n3509), .B(n3241), .C(n3243), 
        .Y(n4687) );
  INVx1_ASAP7_75t_L U5085 ( .A(n4688), .Y(n3237) );
  INVx1_ASAP7_75t_L U5086 ( .A(n3087), .Y(n4684) );
  AOI31xp33_ASAP7_75t_L U5087 ( .A1(n3404), .A2(n4224), .A3(
        i_tv80_core_ISet_reg_1__net_Q), .B(n3037), .Y(n4220) );
  NOR2xp33_ASAP7_75t_L U5088 ( .A(n3284), .B(n3366), .Y(n3037) );
  INVx1_ASAP7_75t_L U5089 ( .A(n4683), .Y(n3284) );
  INVx1_ASAP7_75t_L U5090 ( .A(n3483), .Y(n4224) );
  NOR2xp33_ASAP7_75t_L U5091 ( .A(n3083), .B(n3032), .Y(n3483) );
  INVx1_ASAP7_75t_L U5092 ( .A(di_reg_reg_1__net_Q), .Y(n2444) );
  OR2x2_ASAP7_75t_L U5093 ( .A(n4689), .B(n4690), .Y(n4679) );
  AOI22xp33_ASAP7_75t_L U5094 ( .A1(n2851), .A2(n2364), .B1(n4540), .B2(
        i_tv80_core_SP_reg_1__net_Q), .Y(n4678) );
  NAND4xp25_ASAP7_75t_L U5095 ( .A(n4691), .B(n4692), .C(n4693), .D(n4694), 
        .Y(n2851) );
  AOI22xp33_ASAP7_75t_L U5096 ( .A1(n4545), .A2(
        i_tv80_core_i_reg_RegsL_reg_7__1__net_Q), .B1(n4546), .B2(
        i_tv80_core_i_reg_RegsL_reg_5__1__net_Q), .Y(n4694) );
  AOI22xp33_ASAP7_75t_L U5097 ( .A1(n4547), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__1__net_Q), .B1(n4548), .B2(
        i_tv80_core_i_reg_RegsL_reg_1__1__net_Q), .Y(n4693) );
  AOI22xp33_ASAP7_75t_L U5098 ( .A1(n4549), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__1__net_Q), .B1(n4550), .B2(
        i_tv80_core_i_reg_RegsL_reg_4__1__net_Q), .Y(n4692) );
  AOI22xp33_ASAP7_75t_L U5099 ( .A1(n4551), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__1__net_Q), .B1(n4552), .B2(
        i_tv80_core_i_reg_RegsL_reg_0__1__net_Q), .Y(n4691) );
  INVx1_ASAP7_75t_L U5100 ( .A(i_tv80_core_TmpAddr_reg_1__net_Q), .Y(n4310) );
  OAI222xp33_ASAP7_75t_L U5101 ( .A1(n4331), .A2(n4620), .B1(n2859), .B2(n4535), .C1(n2450), .C2(n4621), .Y(U1038_net_Y) );
  INVx1_ASAP7_75t_L U5102 ( .A(di_reg_reg_0__net_Q), .Y(n2450) );
  NAND3xp33_ASAP7_75t_L U5103 ( .A(n2364), .B(n3413), .C(n2493), .Y(n4535) );
  XNOR2xp5_ASAP7_75t_L U5104 ( .A(n4689), .B(n4690), .Y(n2859) );
  NOR2xp33_ASAP7_75t_L U5105 ( .A(n4540), .B(di_reg_reg_0__net_Q), .Y(n4690)
         );
  OAI22xp33_ASAP7_75t_L U5106 ( .A1(n4540), .A2(n2856), .B1(
        i_tv80_core_SP_reg_0__net_Q), .B2(n2364), .Y(n4689) );
  NAND4xp25_ASAP7_75t_L U5107 ( .A(n4695), .B(n4696), .C(n4697), .D(n4698), 
        .Y(n2856) );
  AOI22xp33_ASAP7_75t_L U5108 ( .A1(n4545), .A2(
        i_tv80_core_i_reg_RegsL_reg_7__0__net_Q), .B1(n4546), .B2(
        i_tv80_core_i_reg_RegsL_reg_5__0__net_Q), .Y(n4698) );
  NOR3xp33_ASAP7_75t_L U5109 ( .A(n3419), .B(i_tv80_core_RegAddrC_reg_1__net_Q), .C(n3412), .Y(n4546) );
  NOR3xp33_ASAP7_75t_L U5110 ( .A(n3417), .B(n3419), .C(n3412), .Y(n4545) );
  AOI22xp33_ASAP7_75t_L U5111 ( .A1(n4547), .A2(
        i_tv80_core_i_reg_RegsL_reg_3__0__net_Q), .B1(n4548), .B2(
        i_tv80_core_i_reg_RegsL_reg_1__0__net_Q), .Y(n4697) );
  NOR3xp33_ASAP7_75t_L U5112 ( .A(i_tv80_core_RegAddrC_reg_1__net_Q), .B(
        i_tv80_core_RegAddrC_reg_2__net_Q), .C(n3419), .Y(n4548) );
  NOR3xp33_ASAP7_75t_L U5113 ( .A(n3419), .B(i_tv80_core_RegAddrC_reg_2__net_Q), .C(n3417), .Y(n4547) );
  INVx1_ASAP7_75t_L U5114 ( .A(i_tv80_core_RegAddrC_reg_0__net_Q), .Y(n3419)
         );
  AOI22xp33_ASAP7_75t_L U5115 ( .A1(n4549), .A2(
        i_tv80_core_i_reg_RegsL_reg_6__0__net_Q), .B1(n4550), .B2(
        i_tv80_core_i_reg_RegsL_reg_4__0__net_Q), .Y(n4696) );
  NOR3xp33_ASAP7_75t_L U5116 ( .A(i_tv80_core_RegAddrC_reg_0__net_Q), .B(
        i_tv80_core_RegAddrC_reg_1__net_Q), .C(n3412), .Y(n4550) );
  NOR3xp33_ASAP7_75t_L U5117 ( .A(n3417), .B(i_tv80_core_RegAddrC_reg_0__net_Q), .C(n3412), .Y(n4549) );
  INVx1_ASAP7_75t_L U5118 ( .A(i_tv80_core_RegAddrC_reg_2__net_Q), .Y(n3412)
         );
  AOI22xp33_ASAP7_75t_L U5119 ( .A1(n4551), .A2(
        i_tv80_core_i_reg_RegsL_reg_2__0__net_Q), .B1(n4552), .B2(
        i_tv80_core_i_reg_RegsL_reg_0__0__net_Q), .Y(n4695) );
  NOR3xp33_ASAP7_75t_L U5120 ( .A(i_tv80_core_RegAddrC_reg_1__net_Q), .B(
        i_tv80_core_RegAddrC_reg_2__net_Q), .C(
        i_tv80_core_RegAddrC_reg_0__net_Q), .Y(n4552) );
  NOR3xp33_ASAP7_75t_L U5121 ( .A(i_tv80_core_RegAddrC_reg_0__net_Q), .B(
        i_tv80_core_RegAddrC_reg_2__net_Q), .C(n3417), .Y(n4551) );
  INVx1_ASAP7_75t_L U5122 ( .A(i_tv80_core_RegAddrC_reg_1__net_Q), .Y(n3417)
         );
  NAND2xp33_ASAP7_75t_L U5123 ( .A(n4615), .B(n4621), .Y(n4620) );
  INVx1_ASAP7_75t_L U5124 ( .A(n4643), .Y(n4621) );
  NOR3xp33_ASAP7_75t_L U5125 ( .A(n4540), .B(n4671), .C(n2463), .Y(n4643) );
  OA211x2_ASAP7_75t_L U5126 ( .A1(n3078), .A2(n3366), .B(n4699), .C(n4700), 
        .Y(n4671) );
  OAI31xp33_ASAP7_75t_L U5127 ( .A1(n4468), .A2(n4510), .A3(n4511), .B(n3445), 
        .Y(n4700) );
  NAND2xp33_ASAP7_75t_L U5128 ( .A(n4701), .B(n4702), .Y(n4511) );
  NAND2xp33_ASAP7_75t_L U5129 ( .A(n3067), .B(n4703), .Y(n4468) );
  A2O1A1Ixp33_ASAP7_75t_L U5130 ( .A1(n2881), .A2(n2945), .B(n3486), .C(n3239), 
        .Y(n4699) );
  NOR2xp33_ASAP7_75t_L U5131 ( .A(n3241), .B(n2766), .Y(n3486) );
  OA21x2_ASAP7_75t_L U5132 ( .A1(n4704), .A2(n3095), .B(reset_n), .Y(n4615) );
  AOI22xp33_ASAP7_75t_L U5133 ( .A1(n4512), .A2(n4226), .B1(n2364), .B2(n3413), 
        .Y(n4704) );
  NOR2xp33_ASAP7_75t_L U5134 ( .A(n4705), .B(n2922), .Y(n4512) );
  INVx1_ASAP7_75t_L U5135 ( .A(i_tv80_core_TmpAddr_reg_0__net_Q), .Y(n4331) );
  OAI221xp5_ASAP7_75t_L U5136 ( .A1(n4521), .A2(n4531), .B1(n3041), .B2(n4523), 
        .C(n4524), .Y(U1036_net_Y) );
  INVx1_ASAP7_75t_L U5137 ( .A(di[5]), .Y(n4531) );
  OAI221xp5_ASAP7_75t_L U5138 ( .A1(n4521), .A2(n4532), .B1(n3282), .B2(n4523), 
        .C(n4524), .Y(U1034_net_Y) );
  INVx1_ASAP7_75t_L U5139 ( .A(di[4]), .Y(n4532) );
  OAI221xp5_ASAP7_75t_L U5140 ( .A1(n4521), .A2(n4564), .B1(n2752), .B2(n4523), 
        .C(n4524), .Y(U1032_net_Y) );
  INVx1_ASAP7_75t_L U5141 ( .A(di[3]), .Y(n4564) );
  OAI221xp5_ASAP7_75t_L U5142 ( .A1(n4521), .A2(n4589), .B1(n3476), .B2(n4523), 
        .C(n4524), .Y(U1030_net_Y) );
  INVx1_ASAP7_75t_L U5143 ( .A(di[2]), .Y(n4589) );
  OAI221xp5_ASAP7_75t_L U5144 ( .A1(n4521), .A2(n4606), .B1(n3356), .B2(n4523), 
        .C(n4524), .Y(U1028_net_Y) );
  INVx1_ASAP7_75t_L U5145 ( .A(di[1]), .Y(n4606) );
  OAI221xp5_ASAP7_75t_L U5146 ( .A1(n4521), .A2(n4619), .B1(n3504), .B2(n4523), 
        .C(n4524), .Y(U1026_net_Y) );
  NAND5xp2_ASAP7_75t_L U5147 ( .A(n4523), .B(n3167), .C(n4487), .D(
        i_tv80_core_IStatus_reg_0__net_Q), .E(i_tv80_core_IntCycle_reg_net_Q), 
        .Y(n4524) );
  INVx1_ASAP7_75t_L U5148 ( .A(i_tv80_core_IStatus_reg_1__net_Q), .Y(n3167) );
  INVx1_ASAP7_75t_L U5149 ( .A(di[0]), .Y(n4619) );
  A2O1A1Ixp33_ASAP7_75t_L U5150 ( .A1(n4706), .A2(n2493), .B(n2553), .C(n4523), 
        .Y(n4521) );
  NAND3xp33_ASAP7_75t_L U5151 ( .A(n4707), .B(n2495), .C(reset_n), .Y(n4523)
         );
  NAND2xp33_ASAP7_75t_L U5152 ( .A(n4226), .B(n4487), .Y(n2495) );
  NOR2xp33_ASAP7_75t_L U5153 ( .A(n2866), .B(n2463), .Y(n4487) );
  NAND4xp25_ASAP7_75t_L U5154 ( .A(n4474), .B(n4226), .C(n2553), .D(n2925), 
        .Y(n4707) );
  INVx1_ASAP7_75t_L U5155 ( .A(n2868), .Y(n4226) );
  NAND2xp33_ASAP7_75t_L U5156 ( .A(wait_n), .B(n3204), .Y(n2868) );
  NOR3xp33_ASAP7_75t_L U5157 ( .A(i_tv80_core_tstate_reg_0__net_Q), .B(
        i_tv80_core_tstate_reg_2__net_Q), .C(n3186), .Y(n3204) );
  INVx1_ASAP7_75t_L U5158 ( .A(n3095), .Y(n2553) );
  NAND2xp33_ASAP7_75t_L U5159 ( .A(n2493), .B(n2866), .Y(n3095) );
  A2O1A1O1Ixp25_ASAP7_75t_L U5160 ( .A1(i_tv80_core_IStatus_reg_1__net_Q), 
        .A2(n3169), .B(i_tv80_core_NMICycle_reg_net_Q), .C(n4708), .D(
        i_tv80_core_Halt_FF_reg_net_Q), .Y(n4706) );
  INVx1_ASAP7_75t_L U5161 ( .A(i_tv80_core_IStatus_reg_0__net_Q), .Y(n3169) );
  OAI33xp33_ASAP7_75t_L U5162 ( .A1(n4708), .A2(halt_n), .A3(n2461), .B1(n4460), .B2(n3212), .B3(n2724), .Y(U1022_net_Y) );
  AOI21xp33_ASAP7_75t_L U5163 ( .A1(n3181), .A2(reset_n), .B(n2493), .Y(n3212)
         );
  NAND2xp33_ASAP7_75t_L U5164 ( .A(n3175), .B(n2881), .Y(n4460) );
  INVx1_ASAP7_75t_L U5165 ( .A(i_tv80_core_Halt_FF_reg_net_Q), .Y(halt_n) );
  OAI22xp33_ASAP7_75t_L U5166 ( .A1(n4709), .A2(n3193), .B1(n3190), .B2(n4710), 
        .Y(U1018_net_Y) );
  NAND4xp25_ASAP7_75t_L U5167 ( .A(i_tv80_core_NMI_s_reg_net_Q), .B(reset_n), 
        .C(n3089), .D(n3091), .Y(n4710) );
  INVx1_ASAP7_75t_L U5168 ( .A(n3200), .Y(n3091) );
  NOR2xp33_ASAP7_75t_L U5169 ( .A(n2766), .B(n4711), .Y(n3200) );
  OAI311xp33_ASAP7_75t_L U5170 ( .A1(n4215), .A2(n3217), .A3(n2896), .B1(n2881), .C1(n4712), .Y(n3089) );
  INVx1_ASAP7_75t_L U5171 ( .A(n3190), .Y(n3193) );
  NOR2xp33_ASAP7_75t_L U5172 ( .A(n2461), .B(n3207), .Y(n3190) );
  NOR3xp33_ASAP7_75t_L U5173 ( .A(n3113), .B(n3222), .C(n3223), .Y(n3207) );
  NAND2xp33_ASAP7_75t_L U5174 ( .A(n2728), .B(n3181), .Y(n3223) );
  INVx1_ASAP7_75t_L U5175 ( .A(i_tv80_core_BusReq_s_reg_net_Q), .Y(n3181) );
  INVx1_ASAP7_75t_L U5176 ( .A(n2724), .Y(n2728) );
  NAND3xp33_ASAP7_75t_L U5177 ( .A(n4713), .B(n2866), .C(n4714), .Y(n2724) );
  AOI221xp5_ASAP7_75t_L U5178 ( .A1(n3413), .A2(n2370), .B1(n4715), .B2(
        i_tv80_core_tstate_reg_2__net_Q), .C(n4716), .Y(n4714) );
  XNOR2xp5_ASAP7_75t_L U5179 ( .A(i_tv80_core_tstate_reg_1__net_Q), .B(n4717), 
        .Y(n4716) );
  AOI221xp5_ASAP7_75t_L U5180 ( .A1(n4718), .A2(n4719), .B1(n2809), .B2(n3092), 
        .C(n4715), .Y(n4717) );
  INVx1_ASAP7_75t_L U5181 ( .A(n2808), .Y(n2809) );
  NAND2xp33_ASAP7_75t_L U5182 ( .A(n3099), .B(n3217), .Y(n2808) );
  NOR2xp33_ASAP7_75t_L U5183 ( .A(n4720), .B(n2766), .Y(n3099) );
  NAND2xp33_ASAP7_75t_L U5184 ( .A(n2945), .B(n2370), .Y(n2866) );
  INVx1_ASAP7_75t_L U5185 ( .A(i_tv80_core_tstate_reg_2__net_Q), .Y(n2370) );
  XNOR2xp5_ASAP7_75t_L U5186 ( .A(i_tv80_core_tstate_reg_0__net_Q), .B(n4721), 
        .Y(n4713) );
  NAND3xp33_ASAP7_75t_L U5187 ( .A(n4722), .B(n4723), .C(n4724), .Y(n4721) );
  OAI31xp33_ASAP7_75t_L U5188 ( .A1(n4225), .A2(n3126), .A3(n3385), .B(n4719), 
        .Y(n4724) );
  NAND2xp33_ASAP7_75t_L U5189 ( .A(n3525), .B(n3482), .Y(n3385) );
  INVx1_ASAP7_75t_L U5190 ( .A(n4686), .Y(n3525) );
  OAI21xp33_ASAP7_75t_L U5191 ( .A1(n2869), .A2(n4725), .B(n4705), .Y(n4686)
         );
  INVx1_ASAP7_75t_L U5192 ( .A(n4715), .Y(n4723) );
  NOR2xp33_ASAP7_75t_L U5193 ( .A(n3413), .B(n2945), .Y(n4715) );
  A2O1A1Ixp33_ASAP7_75t_L U5194 ( .A1(n4726), .A2(n4727), .B(n3369), .C(n4728), 
        .Y(n4722) );
  INVx1_ASAP7_75t_L U5195 ( .A(n3111), .Y(n3222) );
  NAND3xp33_ASAP7_75t_L U5196 ( .A(n2379), .B(n3093), .C(n4729), .Y(n3111) );
  OAI22xp33_ASAP7_75t_L U5197 ( .A1(n3416), .A2(n4481), .B1(n4730), .B2(n2867), 
        .Y(n4729) );
  INVx1_ASAP7_75t_L U5198 ( .A(n4484), .Y(n4481) );
  OAI31xp33_ASAP7_75t_L U5199 ( .A1(n4490), .A2(n4731), .A3(n4732), .B(n3401), 
        .Y(n4484) );
  NAND2xp33_ASAP7_75t_L U5200 ( .A(n4474), .B(n3030), .Y(n3401) );
  AOI31xp33_ASAP7_75t_L U5201 ( .A1(n4733), .A2(n4493), .A3(n4734), .B(n4496), 
        .Y(n4732) );
  INVx1_ASAP7_75t_L U5202 ( .A(n4728), .Y(n4496) );
  NOR2xp33_ASAP7_75t_L U5203 ( .A(n3063), .B(n3413), .Y(n4728) );
  AOI22xp33_ASAP7_75t_L U5204 ( .A1(n4683), .A2(n3081), .B1(n3404), .B2(n3074), 
        .Y(n4734) );
  OR2x2_ASAP7_75t_L U5205 ( .A(n3074), .B(n3032), .Y(n3081) );
  AOI221xp5_ASAP7_75t_L U5206 ( .A1(n3074), .A2(n2954), .B1(n3161), .B2(n3144), 
        .C(n4735), .Y(n4493) );
  O2A1O1Ixp33_ASAP7_75t_L U5207 ( .A1(n3479), .A2(n3032), .B(n3241), .C(n3027), 
        .Y(n4735) );
  INVx1_ASAP7_75t_L U5208 ( .A(n2918), .Y(n3241) );
  INVx1_ASAP7_75t_L U5209 ( .A(n3406), .Y(n3479) );
  NOR2xp33_ASAP7_75t_L U5210 ( .A(n4736), .B(n4737), .Y(n2954) );
  NAND3xp33_ASAP7_75t_L U5211 ( .A(n4738), .B(n3221), .C(n3406), .Y(n3074) );
  NOR2xp33_ASAP7_75t_L U5212 ( .A(n2918), .B(n3083), .Y(n3406) );
  INVx1_ASAP7_75t_L U5213 ( .A(n3120), .Y(n4733) );
  NAND2xp33_ASAP7_75t_L U5214 ( .A(n4494), .B(n3078), .Y(n3120) );
  NOR2xp33_ASAP7_75t_L U5215 ( .A(n3245), .B(n3143), .Y(n3078) );
  INVx1_ASAP7_75t_L U5216 ( .A(n3178), .Y(n3143) );
  NAND2xp33_ASAP7_75t_L U5217 ( .A(n2935), .B(n4739), .Y(n3178) );
  AOI31xp33_ASAP7_75t_L U5218 ( .A1(n4497), .A2(n3067), .A3(n4740), .B(n4500), 
        .Y(n4731) );
  INVx1_ASAP7_75t_L U5219 ( .A(n4719), .Y(n4500) );
  NOR2xp33_ASAP7_75t_L U5220 ( .A(n2766), .B(n3413), .Y(n4719) );
  O2A1O1Ixp33_ASAP7_75t_L U5221 ( .A1(n4741), .A2(n3055), .B(n3154), .C(n4742), 
        .Y(n4740) );
  INVx1_ASAP7_75t_L U5222 ( .A(n3122), .Y(n3154) );
  NOR2xp33_ASAP7_75t_L U5223 ( .A(n4741), .B(n4743), .Y(n3122) );
  AND4x1_ASAP7_75t_L U5224 ( .A(n4744), .B(n3068), .C(n3121), .D(n4745), .Y(
        n4497) );
  AOI221xp5_ASAP7_75t_L U5225 ( .A1(n4742), .A2(n4746), .B1(n3161), .B2(n3152), 
        .C(n2914), .Y(n4745) );
  INVx1_ASAP7_75t_L U5226 ( .A(n4747), .Y(n4746) );
  INVx1_ASAP7_75t_L U5227 ( .A(n4748), .Y(n4742) );
  AOI211xp5_ASAP7_75t_L U5228 ( .A1(n4749), .A2(n3072), .B(n3146), .C(n3134), 
        .Y(n3068) );
  NAND4xp25_ASAP7_75t_L U5229 ( .A(n4703), .B(n4701), .C(n4750), .D(n4751), 
        .Y(n3134) );
  NOR4xp25_ASAP7_75t_L U5230 ( .A(n4752), .B(n3537), .C(n4753), .D(n4718), .Y(
        n4751) );
  AOI21xp33_ASAP7_75t_L U5231 ( .A1(n3217), .A2(n4754), .B(n3238), .Y(n4750)
         );
  INVx1_ASAP7_75t_L U5232 ( .A(n2917), .Y(n3238) );
  INVx1_ASAP7_75t_L U5233 ( .A(n3390), .Y(n4703) );
  OAI21xp33_ASAP7_75t_L U5234 ( .A1(n4730), .A2(n3092), .B(n4755), .Y(n4490)
         );
  A2O1A1Ixp33_ASAP7_75t_L U5235 ( .A1(n3087), .A2(n3506), .B(n4756), .C(n2925), 
        .Y(n4755) );
  O2A1O1Ixp33_ASAP7_75t_L U5236 ( .A1(n3055), .A2(n3048), .B(n3046), .C(n3413), 
        .Y(n4756) );
  AND4x1_ASAP7_75t_L U5237 ( .A(n3086), .B(n2944), .C(n2946), .D(n3034), .Y(
        n3046) );
  NAND2xp33_ASAP7_75t_L U5238 ( .A(n3532), .B(n4757), .Y(n3034) );
  NAND2xp33_ASAP7_75t_L U5239 ( .A(n4739), .B(n4757), .Y(n2946) );
  OR3x1_ASAP7_75t_L U5240 ( .A(n4727), .B(n4758), .C(n4759), .Y(n4757) );
  AOI211xp5_ASAP7_75t_L U5241 ( .A1(n4759), .A2(n4760), .B(n3162), .C(n4753), 
        .Y(n2944) );
  INVx1_ASAP7_75t_L U5242 ( .A(n4705), .Y(n4753) );
  INVx1_ASAP7_75t_L U5243 ( .A(n3033), .Y(n3086) );
  NAND4xp25_ASAP7_75t_L U5244 ( .A(n3640), .B(n3149), .C(n4725), .D(n4761), 
        .Y(n3033) );
  O2A1O1Ixp33_ASAP7_75t_L U5245 ( .A1(n4727), .A2(n4759), .B(n2936), .C(n3146), 
        .Y(n4761) );
  NAND3xp33_ASAP7_75t_L U5246 ( .A(n4762), .B(n4737), .C(n4763), .Y(n4759) );
  INVx1_ASAP7_75t_L U5247 ( .A(n4764), .Y(n3640) );
  NAND2xp33_ASAP7_75t_L U5248 ( .A(n4739), .B(n3031), .Y(n3048) );
  NOR2xp33_ASAP7_75t_L U5249 ( .A(n4474), .B(n3413), .Y(n3506) );
  NOR2xp33_ASAP7_75t_L U5250 ( .A(n2945), .B(n3032), .Y(n3087) );
  INVx1_ASAP7_75t_L U5251 ( .A(n3413), .Y(n3092) );
  NOR2xp33_ASAP7_75t_L U5252 ( .A(n4765), .B(i_tv80_core_mcycle_reg_0__net_Q), 
        .Y(n3413) );
  AOI21xp33_ASAP7_75t_L U5253 ( .A1(n4766), .A2(n2895), .B(n3402), .Y(n4730)
         );
  AND3x1_ASAP7_75t_L U5254 ( .A(n2609), .B(n4767), .C(n2995), .Y(n3402) );
  INVx1_ASAP7_75t_L U5255 ( .A(n4483), .Y(n3416) );
  NAND4xp25_ASAP7_75t_L U5256 ( .A(n4217), .B(n3030), .C(n4768), .D(n4769), 
        .Y(n4483) );
  AOI221xp5_ASAP7_75t_L U5257 ( .A1(n2881), .A2(n4770), .B1(
        i_tv80_core_ISet_reg_1__net_Q), .B2(n4771), .C(n3370), .Y(n4769) );
  NOR3xp33_ASAP7_75t_L U5258 ( .A(n4736), .B(n4502), .C(n3366), .Y(n3370) );
  INVx1_ASAP7_75t_L U5259 ( .A(n2905), .Y(n3366) );
  NOR2xp33_ASAP7_75t_L U5260 ( .A(n3055), .B(n3063), .Y(n2905) );
  INVx1_ASAP7_75t_L U5261 ( .A(i_tv80_core_ISet_reg_1__net_Q), .Y(n3063) );
  NAND4xp25_ASAP7_75t_L U5262 ( .A(n4772), .B(n3027), .C(n4494), .D(n4773), 
        .Y(n4771) );
  AOI211xp5_ASAP7_75t_L U5263 ( .A1(n3144), .A2(n3161), .B(n4774), .C(n3245), 
        .Y(n4773) );
  INVx1_ASAP7_75t_L U5264 ( .A(n4618), .Y(n3245) );
  NOR2xp33_ASAP7_75t_L U5265 ( .A(n3381), .B(n2919), .Y(n4618) );
  NOR2xp33_ASAP7_75t_L U5266 ( .A(n4216), .B(n2950), .Y(n2919) );
  NOR2xp33_ASAP7_75t_L U5267 ( .A(n4775), .B(n2950), .Y(n3381) );
  INVx1_ASAP7_75t_L U5268 ( .A(n4776), .Y(n4774) );
  O2A1O1Ixp33_ASAP7_75t_L U5269 ( .A1(n3404), .A2(n3369), .B(n2945), .C(n4683), 
        .Y(n4776) );
  NOR2xp33_ASAP7_75t_L U5270 ( .A(n4736), .B(n4762), .Y(n4683) );
  INVx1_ASAP7_75t_L U5271 ( .A(n2867), .Y(n2945) );
  NAND2xp33_ASAP7_75t_L U5272 ( .A(n3071), .B(n3221), .Y(n2867) );
  NOR2xp33_ASAP7_75t_L U5273 ( .A(n4736), .B(n4777), .Y(n3369) );
  NOR2xp33_ASAP7_75t_L U5274 ( .A(n4736), .B(n4778), .Y(n3404) );
  INVx1_ASAP7_75t_L U5275 ( .A(n3079), .Y(n3144) );
  NOR2xp33_ASAP7_75t_L U5276 ( .A(n3393), .B(n3256), .Y(n3079) );
  NOR2xp33_ASAP7_75t_L U5277 ( .A(n2950), .B(n4778), .Y(n3256) );
  NOR2xp33_ASAP7_75t_L U5278 ( .A(n2950), .B(n4762), .Y(n3393) );
  AND3x1_ASAP7_75t_L U5279 ( .A(n3500), .B(n3510), .C(n3080), .Y(n4494) );
  OA211x2_ASAP7_75t_L U5280 ( .A1(n2765), .A2(n4779), .B(n3177), .C(n4780), 
        .Y(n3080) );
  NOR2xp33_ASAP7_75t_L U5281 ( .A(n3449), .B(n3175), .Y(n4780) );
  AND4x1_ASAP7_75t_L U5282 ( .A(n4781), .B(n4782), .C(n4783), .D(n4784), .Y(
        n3177) );
  AOI211xp5_ASAP7_75t_L U5283 ( .A1(n3532), .A2(n3522), .B(n4785), .C(n4786), 
        .Y(n4784) );
  AOI21xp33_ASAP7_75t_L U5284 ( .A1(n2768), .A2(n4787), .B(n4779), .Y(n4786)
         );
  AOI31xp33_ASAP7_75t_L U5285 ( .A1(n4763), .A2(n4788), .A3(n2948), .B(n4736), 
        .Y(n4785) );
  OAI21xp33_ASAP7_75t_L U5286 ( .A1(n3521), .A2(n2915), .B(n3532), .Y(n4736)
         );
  NAND2xp33_ASAP7_75t_L U5287 ( .A(n3513), .B(n4789), .Y(n3522) );
  NAND2xp33_ASAP7_75t_L U5288 ( .A(n4726), .B(n4727), .Y(n4782) );
  INVx1_ASAP7_75t_L U5289 ( .A(n2904), .Y(n3510) );
  NOR2xp33_ASAP7_75t_L U5290 ( .A(n2950), .B(n4502), .Y(n2904) );
  NAND2xp33_ASAP7_75t_L U5291 ( .A(n4790), .B(n4739), .Y(n3500) );
  INVx1_ASAP7_75t_L U5292 ( .A(n2950), .Y(n4739) );
  NOR2xp33_ASAP7_75t_L U5293 ( .A(n4791), .B(n4792), .Y(n2950) );
  NOR2xp33_ASAP7_75t_L U5294 ( .A(n2956), .B(n3399), .Y(n3027) );
  NOR3xp33_ASAP7_75t_L U5295 ( .A(n4793), .B(n4794), .C(n2768), .Y(n3399) );
  NOR3xp33_ASAP7_75t_L U5296 ( .A(n4793), .B(n4794), .C(n2765), .Y(n2956) );
  NAND5xp2_ASAP7_75t_L U5297 ( .A(n4748), .B(n4765), .C(n4795), .D(n4796), .E(
        n4797), .Y(n4770) );
  AND5x1_ASAP7_75t_L U5298 ( .A(n4798), .B(n3067), .C(n3388), .D(n4472), .E(
        n3121), .Y(n4797) );
  NOR4xp25_ASAP7_75t_L U5299 ( .A(n3070), .B(n3444), .C(n2929), .D(n2913), .Y(
        n3121) );
  NOR2xp33_ASAP7_75t_L U5300 ( .A(n4720), .B(n4781), .Y(n2913) );
  OAI22xp33_ASAP7_75t_L U5301 ( .A1(n4788), .A2(n3396), .B1(n2765), .B2(n2908), 
        .Y(n2929) );
  INVx1_ASAP7_75t_L U5302 ( .A(n3155), .Y(n3396) );
  OAI21xp33_ASAP7_75t_L U5303 ( .A1(n4763), .A2(n4799), .B(n4800), .Y(n3444)
         );
  OAI21xp33_ASAP7_75t_L U5304 ( .A1(n4712), .A2(n4801), .B(n2764), .Y(n4800)
         );
  NOR2xp33_ASAP7_75t_L U5305 ( .A(n4790), .B(n2935), .Y(n4763) );
  NAND2xp33_ASAP7_75t_L U5306 ( .A(n4802), .B(n4803), .Y(n2935) );
  NAND5xp2_ASAP7_75t_L U5307 ( .A(n4471), .B(n4711), .C(n4804), .D(n4805), .E(
        n4806), .Y(n3070) );
  AOI211xp5_ASAP7_75t_L U5308 ( .A1(n4215), .A2(n4807), .B(n3175), .C(n4764), 
        .Y(n4806) );
  NOR2xp33_ASAP7_75t_L U5309 ( .A(n4808), .B(n4747), .Y(n4764) );
  NOR2xp33_ASAP7_75t_L U5310 ( .A(n4809), .B(n4779), .Y(n3175) );
  INVx1_ASAP7_75t_L U5311 ( .A(n4792), .Y(n4779) );
  AOI222xp33_ASAP7_75t_L U5312 ( .A1(n3217), .A2(n4810), .B1(n3532), .B2(n3533), .C1(n2896), .C2(n4754), .Y(n4805) );
  AOI221xp5_ASAP7_75t_L U5313 ( .A1(n2764), .A2(n4727), .B1(n4811), .B2(n2727), 
        .C(n3527), .Y(n4804) );
  AO22x1_ASAP7_75t_L U5314 ( .A1(n4791), .A2(n3533), .B1(n4812), .B2(n4792), 
        .Y(n3527) );
  OR5x1_ASAP7_75t_L U5315 ( .A(n4801), .B(n4807), .C(n2899), .D(n3131), .E(
        n4811), .Y(n4812) );
  INVx1_ASAP7_75t_L U5316 ( .A(n4808), .Y(n3131) );
  NAND3xp33_ASAP7_75t_L U5317 ( .A(n4720), .B(n4216), .C(n4802), .Y(n4807) );
  NAND4xp25_ASAP7_75t_L U5318 ( .A(n4762), .B(n4737), .C(n4788), .D(n4813), 
        .Y(n3533) );
  NOR4xp25_ASAP7_75t_L U5319 ( .A(n4801), .B(n4712), .C(n4814), .D(n4758), .Y(
        n4813) );
  INVx1_ASAP7_75t_L U5320 ( .A(n4815), .Y(n4801) );
  NOR2xp33_ASAP7_75t_L U5321 ( .A(n4810), .B(n3156), .Y(n4737) );
  NOR2xp33_ASAP7_75t_L U5322 ( .A(n4816), .B(n4754), .Y(n4762) );
  INVx1_ASAP7_75t_L U5323 ( .A(n4817), .Y(n4791) );
  AOI22xp33_ASAP7_75t_L U5324 ( .A1(n4766), .A2(n2895), .B1(n4818), .B2(n4712), 
        .Y(n4711) );
  OR2x2_ASAP7_75t_L U5325 ( .A(n2896), .B(n3217), .Y(n4818) );
  INVx1_ASAP7_75t_L U5326 ( .A(n3147), .Y(n4471) );
  NAND3xp33_ASAP7_75t_L U5327 ( .A(n4702), .B(n2916), .C(n4819), .Y(n3147) );
  INVx1_ASAP7_75t_L U5328 ( .A(n4510), .Y(n4819) );
  NOR2xp33_ASAP7_75t_L U5329 ( .A(n4502), .B(n4783), .Y(n4510) );
  NAND2xp33_ASAP7_75t_L U5330 ( .A(n4816), .B(n2936), .Y(n2916) );
  INVx1_ASAP7_75t_L U5331 ( .A(n4820), .Y(n4816) );
  NAND2xp33_ASAP7_75t_L U5332 ( .A(n3216), .B(n4766), .Y(n4702) );
  NOR2xp33_ASAP7_75t_L U5333 ( .A(n4821), .B(n3146), .Y(n4472) );
  OAI21xp33_ASAP7_75t_L U5334 ( .A1(n3135), .A2(n4808), .B(n4822), .Y(n3146)
         );
  INVx1_ASAP7_75t_L U5335 ( .A(n3133), .Y(n4822) );
  AOI21xp33_ASAP7_75t_L U5336 ( .A1(n2767), .A2(n2908), .B(n4778), .Y(n3133)
         );
  INVx1_ASAP7_75t_L U5337 ( .A(n4744), .Y(n4821) );
  NOR3xp33_ASAP7_75t_L U5338 ( .A(n3157), .B(n3126), .C(n3153), .Y(n4744) );
  OAI22xp33_ASAP7_75t_L U5339 ( .A1(n4787), .A2(n2767), .B1(n4799), .B2(n2948), 
        .Y(n3153) );
  NOR2xp33_ASAP7_75t_L U5340 ( .A(n2948), .B(n4783), .Y(n3157) );
  NOR2xp33_ASAP7_75t_L U5341 ( .A(n4743), .B(n3072), .Y(n3388) );
  INVx1_ASAP7_75t_L U5342 ( .A(n3130), .Y(n3072) );
  NAND2xp33_ASAP7_75t_L U5343 ( .A(n2764), .B(n4814), .Y(n3130) );
  INVx1_ASAP7_75t_L U5344 ( .A(n3529), .Y(n4743) );
  NAND2xp33_ASAP7_75t_L U5345 ( .A(n3174), .B(n2764), .Y(n3529) );
  AOI21xp33_ASAP7_75t_L U5346 ( .A1(n3156), .A2(n2764), .B(n3127), .Y(n3067)
         );
  NOR2xp33_ASAP7_75t_L U5347 ( .A(n2908), .B(n4502), .Y(n3127) );
  INVx1_ASAP7_75t_L U5348 ( .A(n2767), .Y(n2764) );
  AOI221xp5_ASAP7_75t_L U5349 ( .A1(n3390), .A2(n3244), .B1(n4754), .B2(n3217), 
        .C(n4823), .Y(n4798) );
  AO21x1_ASAP7_75t_L U5350 ( .A1(n3084), .A2(n3221), .B(n3152), .Y(n4823) );
  NAND4xp25_ASAP7_75t_L U5351 ( .A(n3397), .B(n4787), .C(n3056), .D(n4824), 
        .Y(n3152) );
  INVx1_ASAP7_75t_L U5352 ( .A(n3449), .Y(n4824) );
  NOR2xp33_ASAP7_75t_L U5353 ( .A(n2948), .B(n4817), .Y(n3449) );
  O2A1O1Ixp33_ASAP7_75t_L U5354 ( .A1(n3521), .A2(n4825), .B(n4826), .C(n3171), 
        .Y(n4817) );
  NAND2xp33_ASAP7_75t_L U5355 ( .A(n3532), .B(n3031), .Y(n3056) );
  INVx1_ASAP7_75t_L U5356 ( .A(n2948), .Y(n3031) );
  NOR2xp33_ASAP7_75t_L U5357 ( .A(n3174), .B(n3170), .Y(n2948) );
  INVx1_ASAP7_75t_L U5358 ( .A(n4787), .Y(n3170) );
  INVx1_ASAP7_75t_L U5359 ( .A(n4809), .Y(n3174) );
  NAND2xp33_ASAP7_75t_L U5360 ( .A(n2609), .B(n2752), .Y(n4809) );
  NOR2xp33_ASAP7_75t_L U5361 ( .A(n4522), .B(i_tv80_core_IR_reg_6__net_Q), .Y(
        n3532) );
  INVx1_ASAP7_75t_L U5362 ( .A(i_tv80_core_IR_reg_7__net_Q), .Y(n4522) );
  NAND2xp33_ASAP7_75t_L U5363 ( .A(n2609), .B(i_tv80_core_IR_reg_3__net_Q), 
        .Y(n4787) );
  NOR3xp33_ASAP7_75t_L U5364 ( .A(n3356), .B(i_tv80_core_IR_reg_0__net_Q), .C(
        n3476), .Y(n2609) );
  OAI31xp33_ASAP7_75t_L U5365 ( .A1(n4827), .A2(n4814), .A3(n4828), .B(n4792), 
        .Y(n3397) );
  NOR2xp33_ASAP7_75t_L U5366 ( .A(n2888), .B(n4794), .Y(n4792) );
  NAND2xp33_ASAP7_75t_L U5367 ( .A(n4820), .B(n2949), .Y(n4828) );
  NAND2xp33_ASAP7_75t_L U5368 ( .A(n4803), .B(n4829), .Y(n4814) );
  NAND3xp33_ASAP7_75t_L U5369 ( .A(n3129), .B(n4775), .C(n2765), .Y(n4827) );
  NAND4xp25_ASAP7_75t_L U5370 ( .A(n4830), .B(n4831), .C(n4765), .D(n3055), 
        .Y(n3244) );
  NAND2xp33_ASAP7_75t_L U5371 ( .A(n3104), .B(n3221), .Y(n4830) );
  NAND2xp33_ASAP7_75t_L U5372 ( .A(n3243), .B(n4688), .Y(n3390) );
  NAND2xp33_ASAP7_75t_L U5373 ( .A(n4712), .B(n4766), .Y(n4688) );
  INVx1_ASAP7_75t_L U5374 ( .A(n4802), .Y(n4712) );
  NAND2xp33_ASAP7_75t_L U5375 ( .A(n4832), .B(n4833), .Y(n4802) );
  AOI221xp5_ASAP7_75t_L U5376 ( .A1(n4741), .A2(n3055), .B1(n3239), .B2(n3083), 
        .C(n4834), .Y(n4796) );
  A2O1A1Ixp33_ASAP7_75t_L U5377 ( .A1(n3442), .A2(n4708), .B(n4725), .C(n4835), 
        .Y(n4834) );
  OAI31xp33_ASAP7_75t_L U5378 ( .A1(n3148), .A2(n2914), .A3(n4225), .B(n4749), 
        .Y(n4835) );
  INVx1_ASAP7_75t_L U5379 ( .A(n4772), .Y(n4749) );
  INVx1_ASAP7_75t_L U5380 ( .A(n4701), .Y(n4225) );
  NOR2xp33_ASAP7_75t_L U5381 ( .A(n3162), .B(n4836), .Y(n4701) );
  INVx1_ASAP7_75t_L U5382 ( .A(n3158), .Y(n4836) );
  NAND2xp33_ASAP7_75t_L U5383 ( .A(n4754), .B(n4766), .Y(n3158) );
  INVx1_ASAP7_75t_L U5384 ( .A(n4720), .Y(n4754) );
  NAND2xp33_ASAP7_75t_L U5385 ( .A(n4837), .B(n4833), .Y(n4720) );
  NOR2xp33_ASAP7_75t_L U5386 ( .A(n4820), .B(n4783), .Y(n2914) );
  NAND2xp33_ASAP7_75t_L U5387 ( .A(n4837), .B(n4838), .Y(n4820) );
  OAI211xp5_ASAP7_75t_L U5388 ( .A1(n4725), .A2(n4709), .B(n4705), .C(n3482), 
        .Y(n3148) );
  INVx1_ASAP7_75t_L U5389 ( .A(n3537), .Y(n3482) );
  NOR2xp33_ASAP7_75t_L U5390 ( .A(n4803), .B(n4783), .Y(n3537) );
  NAND2xp33_ASAP7_75t_L U5391 ( .A(n4832), .B(n4838), .Y(n4803) );
  NAND2xp33_ASAP7_75t_L U5392 ( .A(n4760), .B(n4727), .Y(n4705) );
  INVx1_ASAP7_75t_L U5393 ( .A(n4752), .Y(n4725) );
  INVx1_ASAP7_75t_L U5394 ( .A(n2869), .Y(n4708) );
  NOR2xp33_ASAP7_75t_L U5395 ( .A(i_tv80_core_IntCycle_reg_net_Q), .B(
        i_tv80_core_NMICycle_reg_net_Q), .Y(n2869) );
  NOR2xp33_ASAP7_75t_L U5396 ( .A(n2918), .B(n2924), .Y(n3442) );
  INVx1_ASAP7_75t_L U5397 ( .A(n4831), .Y(n2924) );
  NOR2xp33_ASAP7_75t_L U5398 ( .A(n4738), .B(n3221), .Y(n2918) );
  INVx1_ASAP7_75t_L U5399 ( .A(n3084), .Y(n4738) );
  INVx1_ASAP7_75t_L U5400 ( .A(n4470), .Y(n3239) );
  NAND3xp33_ASAP7_75t_L U5401 ( .A(n4752), .B(n4709), .C(
        i_tv80_core_IntCycle_reg_net_Q), .Y(n4470) );
  NOR2xp33_ASAP7_75t_L U5402 ( .A(n4747), .B(n3129), .Y(n4752) );
  INVx1_ASAP7_75t_L U5403 ( .A(n3367), .Y(n4741) );
  NAND2xp33_ASAP7_75t_L U5404 ( .A(n2896), .B(n4810), .Y(n3367) );
  INVx1_ASAP7_75t_L U5405 ( .A(n4777), .Y(n4810) );
  AOI31xp33_ASAP7_75t_L U5406 ( .A1(n3509), .A2(n3071), .A3(n3162), .B(n3392), 
        .Y(n4795) );
  NOR2xp33_ASAP7_75t_L U5407 ( .A(n4831), .B(n2917), .Y(n3392) );
  NAND2xp33_ASAP7_75t_L U5408 ( .A(n3216), .B(n4215), .Y(n2917) );
  NAND2xp33_ASAP7_75t_L U5409 ( .A(i_tv80_core_mcycle_reg_2__net_Q), .B(n3071), 
        .Y(n4831) );
  NOR2xp33_ASAP7_75t_L U5410 ( .A(n4778), .B(n4783), .Y(n3162) );
  INVx1_ASAP7_75t_L U5411 ( .A(n4758), .Y(n4778) );
  NAND2xp33_ASAP7_75t_L U5412 ( .A(n3129), .B(n4808), .Y(n4758) );
  NAND2xp33_ASAP7_75t_L U5413 ( .A(n4839), .B(n4837), .Y(n4808) );
  NOR2xp33_ASAP7_75t_L U5414 ( .A(n3229), .B(i_tv80_core_mcycle_reg_1__net_Q), 
        .Y(n3071) );
  INVx1_ASAP7_75t_L U5415 ( .A(n3160), .Y(n3509) );
  NAND2xp33_ASAP7_75t_L U5416 ( .A(n3156), .B(n3161), .Y(n4748) );
  NAND2xp33_ASAP7_75t_L U5417 ( .A(n4772), .B(i_tv80_core_mcycle_reg_0__net_Q), 
        .Y(n3161) );
  AOI211xp5_ASAP7_75t_L U5418 ( .A1(i_tv80_core_mcycle_reg_0__net_Q), .A2(
        i_tv80_core_mcycle_reg_1__net_Q), .B(n3084), .C(
        i_tv80_core_mcycle_reg_2__net_Q), .Y(n4772) );
  NOR2xp33_ASAP7_75t_L U5419 ( .A(i_tv80_core_mcycle_reg_0__net_Q), .B(
        i_tv80_core_mcycle_reg_1__net_Q), .Y(n3084) );
  INVx1_ASAP7_75t_L U5420 ( .A(n4502), .Y(n3156) );
  NOR2xp33_ASAP7_75t_L U5421 ( .A(n2899), .B(n3394), .Y(n4502) );
  INVx1_ASAP7_75t_L U5422 ( .A(n2949), .Y(n3394) );
  NAND3xp33_ASAP7_75t_L U5423 ( .A(n3504), .B(n2752), .C(n4840), .Y(n2949) );
  INVx1_ASAP7_75t_L U5424 ( .A(n2909), .Y(n2899) );
  NAND2xp33_ASAP7_75t_L U5425 ( .A(n4839), .B(n4840), .Y(n2909) );
  INVx1_ASAP7_75t_L U5426 ( .A(n3140), .Y(n4768) );
  NOR3xp33_ASAP7_75t_L U5427 ( .A(n3243), .B(n2922), .C(n3160), .Y(n3140) );
  NAND3xp33_ASAP7_75t_L U5428 ( .A(n4841), .B(n4842), .C(n4843), .Y(n3160) );
  AOI221xp5_ASAP7_75t_L U5429 ( .A1(n2995), .A2(n3247), .B1(
        i_tv80_core_F_reg_7__net_Q), .B2(n2989), .C(n4844), .Y(n4843) );
  OAI22xp33_ASAP7_75t_L U5430 ( .A1(n4000), .A2(n2738), .B1(
        i_tv80_core_F_reg_0__net_Q), .B2(n2992), .Y(n4844) );
  INVx1_ASAP7_75t_L U5431 ( .A(n3975), .Y(n2992) );
  NOR2xp33_ASAP7_75t_L U5432 ( .A(n3513), .B(i_tv80_core_IR_reg_3__net_Q), .Y(
        n3975) );
  INVx1_ASAP7_75t_L U5433 ( .A(i_tv80_core_F_reg_0__net_Q), .Y(n2738) );
  INVx1_ASAP7_75t_L U5434 ( .A(n2999), .Y(n4000) );
  NOR2xp33_ASAP7_75t_L U5435 ( .A(n3513), .B(n2752), .Y(n2999) );
  NOR2xp33_ASAP7_75t_L U5436 ( .A(n2888), .B(n2752), .Y(n2989) );
  INVx1_ASAP7_75t_L U5437 ( .A(i_tv80_core_F_reg_7__net_Q), .Y(n3247) );
  NOR2xp33_ASAP7_75t_L U5438 ( .A(n2888), .B(i_tv80_core_IR_reg_3__net_Q), .Y(
        n2995) );
  AOI22xp33_ASAP7_75t_L U5439 ( .A1(n2990), .A2(n2617), .B1(
        i_tv80_core_F_reg_2__net_Q), .B2(n2996), .Y(n4842) );
  NOR2xp33_ASAP7_75t_L U5440 ( .A(n4793), .B(n2752), .Y(n2996) );
  INVx1_ASAP7_75t_L U5441 ( .A(i_tv80_core_F_reg_2__net_Q), .Y(n2617) );
  NOR2xp33_ASAP7_75t_L U5442 ( .A(n4793), .B(i_tv80_core_IR_reg_3__net_Q), .Y(
        n2990) );
  AOI22xp33_ASAP7_75t_L U5443 ( .A1(n2998), .A2(n2559), .B1(
        i_tv80_core_F_reg_6__net_Q), .B2(n2997), .Y(n4841) );
  NOR2xp33_ASAP7_75t_L U5444 ( .A(n4789), .B(n2752), .Y(n2997) );
  INVx1_ASAP7_75t_L U5445 ( .A(i_tv80_core_F_reg_6__net_Q), .Y(n2559) );
  NOR2xp33_ASAP7_75t_L U5446 ( .A(n4789), .B(i_tv80_core_IR_reg_3__net_Q), .Y(
        n2998) );
  INVx1_ASAP7_75t_L U5447 ( .A(n2897), .Y(n2922) );
  NOR2xp33_ASAP7_75t_L U5448 ( .A(n3497), .B(n2766), .Y(n2897) );
  INVx1_ASAP7_75t_L U5449 ( .A(n3083), .Y(n3497) );
  NOR2xp33_ASAP7_75t_L U5450 ( .A(n2951), .B(n3229), .Y(n3083) );
  NAND2xp33_ASAP7_75t_L U5451 ( .A(n4790), .B(n4760), .Y(n3243) );
  INVx1_ASAP7_75t_L U5452 ( .A(n4783), .Y(n4760) );
  NOR4xp25_ASAP7_75t_L U5453 ( .A(n4215), .B(n2896), .C(n4766), .D(n3217), .Y(
        n4783) );
  NOR2xp33_ASAP7_75t_L U5454 ( .A(n2888), .B(n3395), .Y(n3217) );
  INVx1_ASAP7_75t_L U5455 ( .A(n2915), .Y(n2888) );
  NOR2xp33_ASAP7_75t_L U5456 ( .A(n3395), .B(n4789), .Y(n4766) );
  NOR2xp33_ASAP7_75t_L U5457 ( .A(n3395), .B(n3513), .Y(n2896) );
  NOR2xp33_ASAP7_75t_L U5458 ( .A(n4793), .B(n3395), .Y(n4215) );
  NAND2xp33_ASAP7_75t_L U5459 ( .A(i_tv80_core_IR_reg_7__net_Q), .B(
        i_tv80_core_IR_reg_6__net_Q), .Y(n3395) );
  INVx1_ASAP7_75t_L U5460 ( .A(n3521), .Y(n4793) );
  NAND2xp33_ASAP7_75t_L U5461 ( .A(n4815), .B(n4829), .Y(n4790) );
  NAND3xp33_ASAP7_75t_L U5462 ( .A(n3504), .B(n2752), .C(n4832), .Y(n4829) );
  NAND2xp33_ASAP7_75t_L U5463 ( .A(n4832), .B(n4839), .Y(n4815) );
  NOR2xp33_ASAP7_75t_L U5464 ( .A(n2752), .B(i_tv80_core_IR_reg_0__net_Q), .Y(
        n4839) );
  NOR2xp33_ASAP7_75t_L U5465 ( .A(n3476), .B(i_tv80_core_IR_reg_1__net_Q), .Y(
        n4832) );
  INVx1_ASAP7_75t_L U5466 ( .A(i_tv80_core_IR_reg_2__net_Q), .Y(n3476) );
  NAND2xp33_ASAP7_75t_L U5467 ( .A(n4718), .B(n2881), .Y(n4217) );
  NOR2xp33_ASAP7_75t_L U5468 ( .A(n4781), .B(n4777), .Y(n4718) );
  NOR2xp33_ASAP7_75t_L U5469 ( .A(n3216), .B(n2895), .Y(n4777) );
  INVx1_ASAP7_75t_L U5470 ( .A(n4216), .Y(n2895) );
  NAND2xp33_ASAP7_75t_L U5471 ( .A(n4840), .B(n4833), .Y(n4216) );
  INVx1_ASAP7_75t_L U5472 ( .A(n4775), .Y(n3216) );
  NAND2xp33_ASAP7_75t_L U5473 ( .A(n4840), .B(n4838), .Y(n4775) );
  NOR2xp33_ASAP7_75t_L U5474 ( .A(n3356), .B(i_tv80_core_IR_reg_2__net_Q), .Y(
        n4840) );
  INVx1_ASAP7_75t_L U5475 ( .A(i_tv80_core_IR_reg_1__net_Q), .Y(n3356) );
  INVx1_ASAP7_75t_L U5476 ( .A(n2936), .Y(n4781) );
  NAND2xp33_ASAP7_75t_L U5477 ( .A(n4799), .B(n2767), .Y(n2936) );
  NAND2xp33_ASAP7_75t_L U5478 ( .A(n2915), .B(n4767), .Y(n2767) );
  NOR2xp33_ASAP7_75t_L U5479 ( .A(n3041), .B(n3282), .Y(n2915) );
  NOR2xp33_ASAP7_75t_L U5480 ( .A(n3155), .B(n2727), .Y(n4799) );
  INVx1_ASAP7_75t_L U5481 ( .A(n2908), .Y(n2727) );
  NAND2xp33_ASAP7_75t_L U5482 ( .A(n3521), .B(n4767), .Y(n2908) );
  NOR2xp33_ASAP7_75t_L U5483 ( .A(n3041), .B(i_tv80_core_IR_reg_4__net_Q), .Y(
        n3521) );
  INVx1_ASAP7_75t_L U5484 ( .A(i_tv80_core_IR_reg_5__net_Q), .Y(n3041) );
  NAND2xp33_ASAP7_75t_L U5485 ( .A(n4747), .B(n3135), .Y(n3155) );
  NAND2xp33_ASAP7_75t_L U5486 ( .A(n4767), .B(n4825), .Y(n4747) );
  INVx1_ASAP7_75t_L U5487 ( .A(i_tv80_core_XY_Ind_reg_net_Q), .Y(n3093) );
  INVx1_ASAP7_75t_L U5488 ( .A(n2373), .Y(n2379) );
  NOR2xp33_ASAP7_75t_L U5489 ( .A(i_tv80_core_XY_State_reg_0__net_Q), .B(
        i_tv80_core_XY_State_reg_1__net_Q), .Y(n2373) );
  NAND2xp33_ASAP7_75t_L U5490 ( .A(n3230), .B(n4845), .Y(n3113) );
  OAI311xp33_ASAP7_75t_L U5491 ( .A1(n2621), .A2(n2911), .A3(n3149), .B1(n4508), .C1(n3280), .Y(n4845) );
  INVx1_ASAP7_75t_L U5492 ( .A(i_tv80_core_No_BTR_reg_net_Q), .Y(n3280) );
  NAND3xp33_ASAP7_75t_L U5493 ( .A(n4846), .B(n4847), .C(n4848), .Y(n4508) );
  XNOR2xp5_ASAP7_75t_L U5494 ( .A(i_tv80_core_mcycles_reg_1__net_Q), .B(
        i_tv80_core_mcycle_reg_1__net_Q), .Y(n4848) );
  XNOR2xp5_ASAP7_75t_L U5495 ( .A(i_tv80_core_mcycles_reg_2__net_Q), .B(
        i_tv80_core_mcycle_reg_2__net_Q), .Y(n4847) );
  XNOR2xp5_ASAP7_75t_L U5496 ( .A(i_tv80_core_mcycles_reg_0__net_Q), .B(
        i_tv80_core_mcycle_reg_0__net_Q), .Y(n4846) );
  INVx1_ASAP7_75t_L U5497 ( .A(n3126), .Y(n3149) );
  NOR2xp33_ASAP7_75t_L U5498 ( .A(n3135), .B(n3129), .Y(n3126) );
  NAND3xp33_ASAP7_75t_L U5499 ( .A(n3504), .B(n2752), .C(n4837), .Y(n3129) );
  NOR2xp33_ASAP7_75t_L U5500 ( .A(i_tv80_core_IR_reg_2__net_Q), .B(
        i_tv80_core_IR_reg_1__net_Q), .Y(n4837) );
  NAND2xp33_ASAP7_75t_L U5501 ( .A(n4767), .B(n4849), .Y(n3135) );
  NOR2xp33_ASAP7_75t_L U5502 ( .A(i_tv80_core_IR_reg_6__net_Q), .B(
        i_tv80_core_IR_reg_7__net_Q), .Y(n4767) );
  INVx1_ASAP7_75t_L U5503 ( .A(n3445), .Y(n2911) );
  NOR2xp33_ASAP7_75t_L U5504 ( .A(n3055), .B(n2766), .Y(n3445) );
  INVx1_ASAP7_75t_L U5505 ( .A(n2881), .Y(n2766) );
  NOR2xp33_ASAP7_75t_L U5506 ( .A(i_tv80_core_ISet_reg_0__net_Q), .B(
        i_tv80_core_ISet_reg_1__net_Q), .Y(n2881) );
  INVx1_ASAP7_75t_L U5507 ( .A(n3032), .Y(n3055) );
  NOR2xp33_ASAP7_75t_L U5508 ( .A(n2951), .B(i_tv80_core_mcycle_reg_0__net_Q), 
        .Y(n3032) );
  INVx1_ASAP7_75t_L U5509 ( .A(n3053), .Y(n2951) );
  NOR2xp33_ASAP7_75t_L U5510 ( .A(n3104), .B(i_tv80_core_mcycle_reg_2__net_Q), 
        .Y(n3053) );
  INVx1_ASAP7_75t_L U5511 ( .A(i_tv80_core_IncDecZ_reg_net_Q), .Y(n2621) );
  AOI21xp33_ASAP7_75t_L U5512 ( .A1(n3030), .A2(n4850), .B(n4474), .Y(n3230)
         );
  NOR2xp33_ASAP7_75t_L U5513 ( .A(n4765), .B(n3229), .Y(n4474) );
  INVx1_ASAP7_75t_L U5514 ( .A(i_tv80_core_mcycle_reg_0__net_Q), .Y(n3229) );
  INVx1_ASAP7_75t_L U5515 ( .A(n4850), .Y(n4765) );
  NOR2xp33_ASAP7_75t_L U5516 ( .A(n3221), .B(n3104), .Y(n4850) );
  INVx1_ASAP7_75t_L U5517 ( .A(i_tv80_core_mcycle_reg_1__net_Q), .Y(n3104) );
  INVx1_ASAP7_75t_L U5518 ( .A(i_tv80_core_mcycle_reg_2__net_Q), .Y(n3221) );
  INVx1_ASAP7_75t_L U5519 ( .A(n2925), .Y(n3030) );
  NOR2xp33_ASAP7_75t_L U5520 ( .A(n3049), .B(i_tv80_core_ISet_reg_1__net_Q), 
        .Y(n2925) );
  INVx1_ASAP7_75t_L U5521 ( .A(i_tv80_core_ISet_reg_0__net_Q), .Y(n3049) );
  INVx1_ASAP7_75t_L U5522 ( .A(i_tv80_core_NMICycle_reg_net_Q), .Y(n4709) );
  OAI22xp33_ASAP7_75t_L U5523 ( .A1(n2382), .A2(n2507), .B1(n2384), .B2(n2401), 
        .Y(U1007_net_Y) );
  INVx1_ASAP7_75t_L U5524 ( .A(i_tv80_core_ACC_reg_7__net_Q), .Y(n2401) );
  INVx1_ASAP7_75t_L U5525 ( .A(i_tv80_core_I_reg_7__net_Q), .Y(n2507) );
  OAI22xp33_ASAP7_75t_L U5526 ( .A1(n2382), .A2(n2515), .B1(n2384), .B2(n2411), 
        .Y(U1005_net_Y) );
  INVx1_ASAP7_75t_L U5527 ( .A(i_tv80_core_ACC_reg_6__net_Q), .Y(n2411) );
  INVx1_ASAP7_75t_L U5528 ( .A(i_tv80_core_I_reg_6__net_Q), .Y(n2515) );
  OAI22xp33_ASAP7_75t_L U5529 ( .A1(n2382), .A2(n2520), .B1(n2384), .B2(n2418), 
        .Y(U1003_net_Y) );
  INVx1_ASAP7_75t_L U5530 ( .A(i_tv80_core_ACC_reg_5__net_Q), .Y(n2418) );
  INVx1_ASAP7_75t_L U5531 ( .A(i_tv80_core_I_reg_5__net_Q), .Y(n2520) );
  OAI22xp33_ASAP7_75t_L U5532 ( .A1(n2382), .A2(n2525), .B1(n2384), .B2(n2425), 
        .Y(U1001_net_Y) );
  INVx1_ASAP7_75t_L U5533 ( .A(i_tv80_core_ACC_reg_4__net_Q), .Y(n2425) );
  NAND2xp33_ASAP7_75t_L U5534 ( .A(n2493), .B(n2382), .Y(n2384) );
  INVx1_ASAP7_75t_L U5535 ( .A(i_tv80_core_I_reg_4__net_Q), .Y(n2525) );
  OAI31xp33_ASAP7_75t_L U5536 ( .A1(n4851), .A2(n2499), .A3(n2463), .B(reset_n), .Y(n2382) );
  INVx1_ASAP7_75t_L U5537 ( .A(n2493), .Y(n2463) );
  NOR2xp33_ASAP7_75t_L U5538 ( .A(n2461), .B(i_tv80_core_BusAck_reg_net_Q), 
        .Y(n2493) );
  INVx1_ASAP7_75t_L U5539 ( .A(reset_n), .Y(n2461) );
  NAND2xp33_ASAP7_75t_L U5540 ( .A(n2492), .B(n2498), .Y(n4851) );
  NAND2xp33_ASAP7_75t_L U5541 ( .A(n4811), .B(n4726), .Y(n2498) );
  OAI21xp33_ASAP7_75t_L U5542 ( .A1(n4789), .A2(n4794), .B(n4852), .Y(n4726)
         );
  O2A1O1Ixp33_ASAP7_75t_L U5543 ( .A1(n4852), .A2(n4853), .B(n2499), .C(n4540), 
        .Y(n2492) );
  INVx1_ASAP7_75t_L U5544 ( .A(n2364), .Y(n4540) );
  NOR3xp33_ASAP7_75t_L U5545 ( .A(n3183), .B(i_tv80_core_tstate_reg_2__net_Q), 
        .C(n3186), .Y(n2364) );
  INVx1_ASAP7_75t_L U5546 ( .A(i_tv80_core_tstate_reg_1__net_Q), .Y(n3186) );
  INVx1_ASAP7_75t_L U5547 ( .A(i_tv80_core_tstate_reg_0__net_Q), .Y(n3183) );
  OR3x1_ASAP7_75t_L U5548 ( .A(n4794), .B(n4789), .C(n4853), .Y(n2499) );
  INVx1_ASAP7_75t_L U5549 ( .A(n4825), .Y(n4789) );
  NOR2xp33_ASAP7_75t_L U5550 ( .A(i_tv80_core_IR_reg_4__net_Q), .B(
        i_tv80_core_IR_reg_5__net_Q), .Y(n4825) );
  NAND2xp33_ASAP7_75t_L U5551 ( .A(i_tv80_core_ISet_reg_1__net_Q), .B(n4727), 
        .Y(n4853) );
  INVx1_ASAP7_75t_L U5552 ( .A(n4788), .Y(n4727) );
  NOR2xp33_ASAP7_75t_L U5553 ( .A(n3172), .B(n4811), .Y(n4788) );
  INVx1_ASAP7_75t_L U5554 ( .A(n2768), .Y(n4811) );
  NAND3xp33_ASAP7_75t_L U5555 ( .A(i_tv80_core_IR_reg_1__net_Q), .B(n4833), 
        .C(i_tv80_core_IR_reg_2__net_Q), .Y(n2768) );
  NOR2xp33_ASAP7_75t_L U5556 ( .A(n2752), .B(n3504), .Y(n4833) );
  INVx1_ASAP7_75t_L U5557 ( .A(i_tv80_core_IR_reg_3__net_Q), .Y(n2752) );
  INVx1_ASAP7_75t_L U5558 ( .A(n2765), .Y(n3172) );
  NAND3xp33_ASAP7_75t_L U5559 ( .A(i_tv80_core_IR_reg_2__net_Q), .B(
        i_tv80_core_IR_reg_1__net_Q), .C(n4838), .Y(n2765) );
  NOR2xp33_ASAP7_75t_L U5560 ( .A(n3504), .B(i_tv80_core_IR_reg_3__net_Q), .Y(
        n4838) );
  INVx1_ASAP7_75t_L U5561 ( .A(i_tv80_core_IR_reg_0__net_Q), .Y(n3504) );
  INVx1_ASAP7_75t_L U5562 ( .A(n3171), .Y(n4852) );
  NOR2xp33_ASAP7_75t_L U5563 ( .A(n3513), .B(n4794), .Y(n3171) );
  INVx1_ASAP7_75t_L U5564 ( .A(n4826), .Y(n4794) );
  NOR2xp33_ASAP7_75t_L U5565 ( .A(n4526), .B(i_tv80_core_IR_reg_7__net_Q), .Y(
        n4826) );
  INVx1_ASAP7_75t_L U5566 ( .A(i_tv80_core_IR_reg_6__net_Q), .Y(n4526) );
  INVx1_ASAP7_75t_L U5567 ( .A(n4849), .Y(n3513) );
  NOR2xp33_ASAP7_75t_L U5568 ( .A(n3282), .B(i_tv80_core_IR_reg_5__net_Q), .Y(
        n4849) );
  INVx1_ASAP7_75t_L U5569 ( .A(i_tv80_core_IR_reg_4__net_Q), .Y(n3282) );
endmodule

