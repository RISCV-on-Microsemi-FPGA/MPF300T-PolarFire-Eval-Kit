//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Jun 13 16:22:21 2017
// Version: PolarFire v1.1SP1 12.100.9.11
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// lsram
module lsram(
    // Inputs
    HADDR,
    HBURST,
    HCLK,
    HREADYIN,
    HRESETN,
    HSEL,
    HSIZE,
    HTRANS,
    HWDATA,
    HWRITE,
    // Outputs
    HRDATA,
    HREADYOUT,
    HRESP
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [31:0] HADDR;
input  [2:0]  HBURST;
input         HCLK;
input         HREADYIN;
input         HRESETN;
input         HSEL;
input  [2:0]  HSIZE;
input  [1:0]  HTRANS;
input  [31:0] HWDATA;
input         HWRITE;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] HRDATA;
output        HREADYOUT;
output [1:0]  HRESP;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0]  HADDR;
wire   [2:0]   HBURST;
wire   [31:0]  AHBSlaveInterface_HRDATA;
wire           HREADYIN;
wire           AHBSlaveInterface_HREADYOUT;
wire   [1:0]   AHBSlaveInterface_HRESP;
wire           HSEL;
wire   [2:0]   HSIZE;
wire   [1:0]   HTRANS;
wire   [31:0]  HWDATA;
wire           HWRITE;
wire   [17:0]  COREAHBLSRAM_PF_0_mem_addr;
wire   [0:0]   COREAHBLSRAM_PF_0_mem_byteen0to0;
wire   [1:1]   COREAHBLSRAM_PF_0_mem_byteen1to1;
wire   [2:2]   COREAHBLSRAM_PF_0_mem_byteen2to2;
wire   [3:3]   COREAHBLSRAM_PF_0_mem_byteen3to3;
wire           COREAHBLSRAM_PF_0_mem_ren;
wire   [0:0]   COREAHBLSRAM_PF_0_mem_wdata0to0;
wire   [1:1]   COREAHBLSRAM_PF_0_mem_wdata1to1;
wire   [2:2]   COREAHBLSRAM_PF_0_mem_wdata2to2;
wire   [3:3]   COREAHBLSRAM_PF_0_mem_wdata3to3;
wire   [4:4]   COREAHBLSRAM_PF_0_mem_wdata4to4;
wire   [5:5]   COREAHBLSRAM_PF_0_mem_wdata5to5;
wire   [6:6]   COREAHBLSRAM_PF_0_mem_wdata6to6;
wire   [7:7]   COREAHBLSRAM_PF_0_mem_wdata7to7;
wire   [8:8]   COREAHBLSRAM_PF_0_mem_wdata8to8;
wire   [9:9]   COREAHBLSRAM_PF_0_mem_wdata9to9;
wire   [10:10] COREAHBLSRAM_PF_0_mem_wdata10to10;
wire   [11:11] COREAHBLSRAM_PF_0_mem_wdata11to11;
wire   [12:12] COREAHBLSRAM_PF_0_mem_wdata12to12;
wire   [13:13] COREAHBLSRAM_PF_0_mem_wdata13to13;
wire   [14:14] COREAHBLSRAM_PF_0_mem_wdata14to14;
wire   [15:15] COREAHBLSRAM_PF_0_mem_wdata15to15;
wire   [16:16] COREAHBLSRAM_PF_0_mem_wdata16to16;
wire   [17:17] COREAHBLSRAM_PF_0_mem_wdata17to17;
wire   [18:18] COREAHBLSRAM_PF_0_mem_wdata18to18;
wire   [19:19] COREAHBLSRAM_PF_0_mem_wdata19to19;
wire   [20:20] COREAHBLSRAM_PF_0_mem_wdata20to20;
wire   [21:21] COREAHBLSRAM_PF_0_mem_wdata21to21;
wire   [22:22] COREAHBLSRAM_PF_0_mem_wdata22to22;
wire   [23:23] COREAHBLSRAM_PF_0_mem_wdata23to23;
wire   [24:24] COREAHBLSRAM_PF_0_mem_wdata24to24;
wire   [25:25] COREAHBLSRAM_PF_0_mem_wdata25to25;
wire   [26:26] COREAHBLSRAM_PF_0_mem_wdata26to26;
wire   [27:27] COREAHBLSRAM_PF_0_mem_wdata27to27;
wire   [28:28] COREAHBLSRAM_PF_0_mem_wdata28to28;
wire   [29:29] COREAHBLSRAM_PF_0_mem_wdata29to29;
wire   [30:30] COREAHBLSRAM_PF_0_mem_wdata30to30;
wire   [31:31] COREAHBLSRAM_PF_0_mem_wdata31to31;
wire           COREAHBLSRAM_PF_0_mem_wen;
wire           HCLK;
wire           HRESETN;
wire   [3:0]   mem_byteen;
wire   [31:0]  mem_wdata;
wire   [0:0]   PF_TPSRAM_AHB_AXI_0_R_DATA0to0;
wire   [1:1]   PF_TPSRAM_AHB_AXI_0_R_DATA1to1;
wire   [2:2]   PF_TPSRAM_AHB_AXI_0_R_DATA2to2;
wire   [3:3]   PF_TPSRAM_AHB_AXI_0_R_DATA3to3;
wire   [4:4]   PF_TPSRAM_AHB_AXI_0_R_DATA4to4;
wire   [5:5]   PF_TPSRAM_AHB_AXI_0_R_DATA5to5;
wire   [6:6]   PF_TPSRAM_AHB_AXI_0_R_DATA6to6;
wire   [7:7]   PF_TPSRAM_AHB_AXI_0_R_DATA7to7;
wire   [10:10] PF_TPSRAM_AHB_AXI_0_R_DATA10to10;
wire   [11:11] PF_TPSRAM_AHB_AXI_0_R_DATA11to11;
wire   [12:12] PF_TPSRAM_AHB_AXI_0_R_DATA12to12;
wire   [13:13] PF_TPSRAM_AHB_AXI_0_R_DATA13to13;
wire   [14:14] PF_TPSRAM_AHB_AXI_0_R_DATA14to14;
wire   [15:15] PF_TPSRAM_AHB_AXI_0_R_DATA15to15;
wire   [16:16] PF_TPSRAM_AHB_AXI_0_R_DATA16to16;
wire   [17:17] PF_TPSRAM_AHB_AXI_0_R_DATA17to17;
wire   [20:20] PF_TPSRAM_AHB_AXI_0_R_DATA20to20;
wire   [21:21] PF_TPSRAM_AHB_AXI_0_R_DATA21to21;
wire   [22:22] PF_TPSRAM_AHB_AXI_0_R_DATA22to22;
wire   [23:23] PF_TPSRAM_AHB_AXI_0_R_DATA23to23;
wire   [24:24] PF_TPSRAM_AHB_AXI_0_R_DATA24to24;
wire   [25:25] PF_TPSRAM_AHB_AXI_0_R_DATA25to25;
wire   [26:26] PF_TPSRAM_AHB_AXI_0_R_DATA26to26;
wire   [27:27] PF_TPSRAM_AHB_AXI_0_R_DATA27to27;
wire   [30:30] PF_TPSRAM_AHB_AXI_0_R_DATA30to30;
wire   [31:31] PF_TPSRAM_AHB_AXI_0_R_DATA31to31;
wire   [32:32] PF_TPSRAM_AHB_AXI_0_R_DATA32to32;
wire   [33:33] PF_TPSRAM_AHB_AXI_0_R_DATA33to33;
wire   [34:34] PF_TPSRAM_AHB_AXI_0_R_DATA34to34;
wire   [35:35] PF_TPSRAM_AHB_AXI_0_R_DATA35to35;
wire   [36:36] PF_TPSRAM_AHB_AXI_0_R_DATA36to36;
wire   [37:37] PF_TPSRAM_AHB_AXI_0_R_DATA37to37;
wire   [31:0]  AHBSlaveInterface_HRDATA_net_0;
wire           AHBSlaveInterface_HREADYOUT_net_0;
wire   [1:0]   AHBSlaveInterface_HRESP_net_0;
wire   [18:18] R_DATA_slice_0;
wire   [19:19] R_DATA_slice_1;
wire   [28:28] R_DATA_slice_2;
wire   [29:29] R_DATA_slice_3;
wire   [38:38] R_DATA_slice_4;
wire   [39:39] R_DATA_slice_5;
wire   [8:8]   R_DATA_slice_6;
wire   [9:9]   R_DATA_slice_7;
wire   [31:0]  mem_rdata_net_0;
wire   [39:0]  W_DATA_net_0;
wire   [39:0]  R_DATA_net_0;
wire   [19:0]  WBYTE_EN_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire           GND_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net     = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign AHBSlaveInterface_HRDATA_net_0    = AHBSlaveInterface_HRDATA;
assign HRDATA[31:0]                      = AHBSlaveInterface_HRDATA_net_0;
assign AHBSlaveInterface_HREADYOUT_net_0 = AHBSlaveInterface_HREADYOUT;
assign HREADYOUT                         = AHBSlaveInterface_HREADYOUT_net_0;
assign AHBSlaveInterface_HRESP_net_0     = AHBSlaveInterface_HRESP;
assign HRESP[1:0]                        = AHBSlaveInterface_HRESP_net_0;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign COREAHBLSRAM_PF_0_mem_byteen0to0[0]   = mem_byteen[0:0];
assign COREAHBLSRAM_PF_0_mem_byteen1to1[1]   = mem_byteen[1:1];
assign COREAHBLSRAM_PF_0_mem_byteen2to2[2]   = mem_byteen[2:2];
assign COREAHBLSRAM_PF_0_mem_byteen3to3[3]   = mem_byteen[3:3];
assign COREAHBLSRAM_PF_0_mem_wdata0to0[0]    = mem_wdata[0:0];
assign COREAHBLSRAM_PF_0_mem_wdata1to1[1]    = mem_wdata[1:1];
assign COREAHBLSRAM_PF_0_mem_wdata2to2[2]    = mem_wdata[2:2];
assign COREAHBLSRAM_PF_0_mem_wdata3to3[3]    = mem_wdata[3:3];
assign COREAHBLSRAM_PF_0_mem_wdata4to4[4]    = mem_wdata[4:4];
assign COREAHBLSRAM_PF_0_mem_wdata5to5[5]    = mem_wdata[5:5];
assign COREAHBLSRAM_PF_0_mem_wdata6to6[6]    = mem_wdata[6:6];
assign COREAHBLSRAM_PF_0_mem_wdata7to7[7]    = mem_wdata[7:7];
assign COREAHBLSRAM_PF_0_mem_wdata8to8[8]    = mem_wdata[8:8];
assign COREAHBLSRAM_PF_0_mem_wdata9to9[9]    = mem_wdata[9:9];
assign COREAHBLSRAM_PF_0_mem_wdata10to10[10] = mem_wdata[10:10];
assign COREAHBLSRAM_PF_0_mem_wdata11to11[11] = mem_wdata[11:11];
assign COREAHBLSRAM_PF_0_mem_wdata12to12[12] = mem_wdata[12:12];
assign COREAHBLSRAM_PF_0_mem_wdata13to13[13] = mem_wdata[13:13];
assign COREAHBLSRAM_PF_0_mem_wdata14to14[14] = mem_wdata[14:14];
assign COREAHBLSRAM_PF_0_mem_wdata15to15[15] = mem_wdata[15:15];
assign COREAHBLSRAM_PF_0_mem_wdata16to16[16] = mem_wdata[16:16];
assign COREAHBLSRAM_PF_0_mem_wdata17to17[17] = mem_wdata[17:17];
assign COREAHBLSRAM_PF_0_mem_wdata18to18[18] = mem_wdata[18:18];
assign COREAHBLSRAM_PF_0_mem_wdata19to19[19] = mem_wdata[19:19];
assign COREAHBLSRAM_PF_0_mem_wdata20to20[20] = mem_wdata[20:20];
assign COREAHBLSRAM_PF_0_mem_wdata21to21[21] = mem_wdata[21:21];
assign COREAHBLSRAM_PF_0_mem_wdata22to22[22] = mem_wdata[22:22];
assign COREAHBLSRAM_PF_0_mem_wdata23to23[23] = mem_wdata[23:23];
assign COREAHBLSRAM_PF_0_mem_wdata24to24[24] = mem_wdata[24:24];
assign COREAHBLSRAM_PF_0_mem_wdata25to25[25] = mem_wdata[25:25];
assign COREAHBLSRAM_PF_0_mem_wdata26to26[26] = mem_wdata[26:26];
assign COREAHBLSRAM_PF_0_mem_wdata27to27[27] = mem_wdata[27:27];
assign COREAHBLSRAM_PF_0_mem_wdata28to28[28] = mem_wdata[28:28];
assign COREAHBLSRAM_PF_0_mem_wdata29to29[29] = mem_wdata[29:29];
assign COREAHBLSRAM_PF_0_mem_wdata30to30[30] = mem_wdata[30:30];
assign COREAHBLSRAM_PF_0_mem_wdata31to31[31] = mem_wdata[31:31];
assign PF_TPSRAM_AHB_AXI_0_R_DATA0to0[0]     = R_DATA_net_0[0:0];
assign PF_TPSRAM_AHB_AXI_0_R_DATA1to1[1]     = R_DATA_net_0[1:1];
assign PF_TPSRAM_AHB_AXI_0_R_DATA2to2[2]     = R_DATA_net_0[2:2];
assign PF_TPSRAM_AHB_AXI_0_R_DATA3to3[3]     = R_DATA_net_0[3:3];
assign PF_TPSRAM_AHB_AXI_0_R_DATA4to4[4]     = R_DATA_net_0[4:4];
assign PF_TPSRAM_AHB_AXI_0_R_DATA5to5[5]     = R_DATA_net_0[5:5];
assign PF_TPSRAM_AHB_AXI_0_R_DATA6to6[6]     = R_DATA_net_0[6:6];
assign PF_TPSRAM_AHB_AXI_0_R_DATA7to7[7]     = R_DATA_net_0[7:7];
assign PF_TPSRAM_AHB_AXI_0_R_DATA10to10[10]  = R_DATA_net_0[10:10];
assign PF_TPSRAM_AHB_AXI_0_R_DATA11to11[11]  = R_DATA_net_0[11:11];
assign PF_TPSRAM_AHB_AXI_0_R_DATA12to12[12]  = R_DATA_net_0[12:12];
assign PF_TPSRAM_AHB_AXI_0_R_DATA13to13[13]  = R_DATA_net_0[13:13];
assign PF_TPSRAM_AHB_AXI_0_R_DATA14to14[14]  = R_DATA_net_0[14:14];
assign PF_TPSRAM_AHB_AXI_0_R_DATA15to15[15]  = R_DATA_net_0[15:15];
assign PF_TPSRAM_AHB_AXI_0_R_DATA16to16[16]  = R_DATA_net_0[16:16];
assign PF_TPSRAM_AHB_AXI_0_R_DATA17to17[17]  = R_DATA_net_0[17:17];
assign PF_TPSRAM_AHB_AXI_0_R_DATA20to20[20]  = R_DATA_net_0[20:20];
assign PF_TPSRAM_AHB_AXI_0_R_DATA21to21[21]  = R_DATA_net_0[21:21];
assign PF_TPSRAM_AHB_AXI_0_R_DATA22to22[22]  = R_DATA_net_0[22:22];
assign PF_TPSRAM_AHB_AXI_0_R_DATA23to23[23]  = R_DATA_net_0[23:23];
assign PF_TPSRAM_AHB_AXI_0_R_DATA24to24[24]  = R_DATA_net_0[24:24];
assign PF_TPSRAM_AHB_AXI_0_R_DATA25to25[25]  = R_DATA_net_0[25:25];
assign PF_TPSRAM_AHB_AXI_0_R_DATA26to26[26]  = R_DATA_net_0[26:26];
assign PF_TPSRAM_AHB_AXI_0_R_DATA27to27[27]  = R_DATA_net_0[27:27];
assign PF_TPSRAM_AHB_AXI_0_R_DATA30to30[30]  = R_DATA_net_0[30:30];
assign PF_TPSRAM_AHB_AXI_0_R_DATA31to31[31]  = R_DATA_net_0[31:31];
assign PF_TPSRAM_AHB_AXI_0_R_DATA32to32[32]  = R_DATA_net_0[32:32];
assign PF_TPSRAM_AHB_AXI_0_R_DATA33to33[33]  = R_DATA_net_0[33:33];
assign PF_TPSRAM_AHB_AXI_0_R_DATA34to34[34]  = R_DATA_net_0[34:34];
assign PF_TPSRAM_AHB_AXI_0_R_DATA35to35[35]  = R_DATA_net_0[35:35];
assign PF_TPSRAM_AHB_AXI_0_R_DATA36to36[36]  = R_DATA_net_0[36:36];
assign PF_TPSRAM_AHB_AXI_0_R_DATA37to37[37]  = R_DATA_net_0[37:37];
assign R_DATA_slice_0[18]                    = R_DATA_net_0[18:18];
assign R_DATA_slice_1[19]                    = R_DATA_net_0[19:19];
assign R_DATA_slice_2[28]                    = R_DATA_net_0[28:28];
assign R_DATA_slice_3[29]                    = R_DATA_net_0[29:29];
assign R_DATA_slice_4[38]                    = R_DATA_net_0[38:38];
assign R_DATA_slice_5[39]                    = R_DATA_net_0[39:39];
assign R_DATA_slice_6[8]                     = R_DATA_net_0[8:8];
assign R_DATA_slice_7[9]                     = R_DATA_net_0[9:9];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign mem_rdata_net_0 = { PF_TPSRAM_AHB_AXI_0_R_DATA37to37[37] , PF_TPSRAM_AHB_AXI_0_R_DATA36to36[36] , PF_TPSRAM_AHB_AXI_0_R_DATA35to35[35] , PF_TPSRAM_AHB_AXI_0_R_DATA34to34[34] , PF_TPSRAM_AHB_AXI_0_R_DATA33to33[33] , PF_TPSRAM_AHB_AXI_0_R_DATA32to32[32] , PF_TPSRAM_AHB_AXI_0_R_DATA31to31[31] , PF_TPSRAM_AHB_AXI_0_R_DATA30to30[30] , PF_TPSRAM_AHB_AXI_0_R_DATA27to27[27] , PF_TPSRAM_AHB_AXI_0_R_DATA26to26[26] , PF_TPSRAM_AHB_AXI_0_R_DATA25to25[25] , PF_TPSRAM_AHB_AXI_0_R_DATA24to24[24] , PF_TPSRAM_AHB_AXI_0_R_DATA23to23[23] , PF_TPSRAM_AHB_AXI_0_R_DATA22to22[22] , PF_TPSRAM_AHB_AXI_0_R_DATA21to21[21] , PF_TPSRAM_AHB_AXI_0_R_DATA20to20[20] , PF_TPSRAM_AHB_AXI_0_R_DATA17to17[17] , PF_TPSRAM_AHB_AXI_0_R_DATA16to16[16] , PF_TPSRAM_AHB_AXI_0_R_DATA15to15[15] , PF_TPSRAM_AHB_AXI_0_R_DATA14to14[14] , PF_TPSRAM_AHB_AXI_0_R_DATA13to13[13] , PF_TPSRAM_AHB_AXI_0_R_DATA12to12[12] , PF_TPSRAM_AHB_AXI_0_R_DATA11to11[11] , PF_TPSRAM_AHB_AXI_0_R_DATA10to10[10] , PF_TPSRAM_AHB_AXI_0_R_DATA7to7[7] , PF_TPSRAM_AHB_AXI_0_R_DATA6to6[6] , PF_TPSRAM_AHB_AXI_0_R_DATA5to5[5] , PF_TPSRAM_AHB_AXI_0_R_DATA4to4[4] , PF_TPSRAM_AHB_AXI_0_R_DATA3to3[3] , PF_TPSRAM_AHB_AXI_0_R_DATA2to2[2] , PF_TPSRAM_AHB_AXI_0_R_DATA1to1[1] , PF_TPSRAM_AHB_AXI_0_R_DATA0to0[0] };
assign W_DATA_net_0    = { 1'b0 , 1'b0 , COREAHBLSRAM_PF_0_mem_wdata31to31[31] , COREAHBLSRAM_PF_0_mem_wdata30to30[30] , COREAHBLSRAM_PF_0_mem_wdata29to29[29] , COREAHBLSRAM_PF_0_mem_wdata28to28[28] , COREAHBLSRAM_PF_0_mem_wdata27to27[27] , COREAHBLSRAM_PF_0_mem_wdata26to26[26] , COREAHBLSRAM_PF_0_mem_wdata25to25[25] , COREAHBLSRAM_PF_0_mem_wdata24to24[24] , 1'b0 , 1'b0 , COREAHBLSRAM_PF_0_mem_wdata23to23[23] , COREAHBLSRAM_PF_0_mem_wdata22to22[22] , COREAHBLSRAM_PF_0_mem_wdata21to21[21] , COREAHBLSRAM_PF_0_mem_wdata20to20[20] , COREAHBLSRAM_PF_0_mem_wdata19to19[19] , COREAHBLSRAM_PF_0_mem_wdata18to18[18] , COREAHBLSRAM_PF_0_mem_wdata17to17[17] , COREAHBLSRAM_PF_0_mem_wdata16to16[16] , 1'b0 , 1'b0 , COREAHBLSRAM_PF_0_mem_wdata15to15[15] , COREAHBLSRAM_PF_0_mem_wdata14to14[14] , COREAHBLSRAM_PF_0_mem_wdata13to13[13] , COREAHBLSRAM_PF_0_mem_wdata12to12[12] , COREAHBLSRAM_PF_0_mem_wdata11to11[11] , COREAHBLSRAM_PF_0_mem_wdata10to10[10] , COREAHBLSRAM_PF_0_mem_wdata9to9[9] , COREAHBLSRAM_PF_0_mem_wdata8to8[8] , 1'b0 , 1'b0 , COREAHBLSRAM_PF_0_mem_wdata7to7[7] , COREAHBLSRAM_PF_0_mem_wdata6to6[6] , COREAHBLSRAM_PF_0_mem_wdata5to5[5] , COREAHBLSRAM_PF_0_mem_wdata4to4[4] , COREAHBLSRAM_PF_0_mem_wdata3to3[3] , COREAHBLSRAM_PF_0_mem_wdata2to2[2] , COREAHBLSRAM_PF_0_mem_wdata1to1[1] , COREAHBLSRAM_PF_0_mem_wdata0to0[0] };
assign WBYTE_EN_net_0  = { COREAHBLSRAM_PF_0_mem_byteen3to3[3] , COREAHBLSRAM_PF_0_mem_byteen3to3[3] , COREAHBLSRAM_PF_0_mem_byteen3to3[3] , COREAHBLSRAM_PF_0_mem_byteen3to3[3] , COREAHBLSRAM_PF_0_mem_byteen3to3[3] , COREAHBLSRAM_PF_0_mem_byteen2to2[2] , COREAHBLSRAM_PF_0_mem_byteen2to2[2] , COREAHBLSRAM_PF_0_mem_byteen2to2[2] , COREAHBLSRAM_PF_0_mem_byteen2to2[2] , COREAHBLSRAM_PF_0_mem_byteen2to2[2] , COREAHBLSRAM_PF_0_mem_byteen1to1[1] , COREAHBLSRAM_PF_0_mem_byteen1to1[1] , COREAHBLSRAM_PF_0_mem_byteen1to1[1] , COREAHBLSRAM_PF_0_mem_byteen1to1[1] , COREAHBLSRAM_PF_0_mem_byteen1to1[1] , COREAHBLSRAM_PF_0_mem_byteen0to0[0] , COREAHBLSRAM_PF_0_mem_byteen0to0[0] , COREAHBLSRAM_PF_0_mem_byteen0to0[0] , COREAHBLSRAM_PF_0_mem_byteen0to0[0] , COREAHBLSRAM_PF_0_mem_byteen0to0[0] };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------lsram_COREAHBLSRAM_PF_0_COREAHBLSRAM_PF   -   Actel:DirectCore:COREAHBLSRAM_PF:2.3.104
lsram_COREAHBLSRAM_PF_0_COREAHBLSRAM_PF #( 
        .FAMILY        ( 26 ),
        .MEM_DEPTH     ( 262144 ),
        .SEL_SRAM_TYPE ( 0 ) )
COREAHBLSRAM_PF_0(
        // Inputs
        .HCLK       ( HCLK ),
        .HRESETN    ( HRESETN ),
        .HSEL       ( HSEL ),
        .HREADYIN   ( HREADYIN ),
        .HSIZE      ( HSIZE ),
        .HTRANS     ( HTRANS ),
        .HBURST     ( HBURST ),
        .HADDR      ( HADDR ),
        .HWRITE     ( HWRITE ),
        .HWDATA     ( HWDATA ),
        .mem_rdata  ( mem_rdata_net_0 ),
        // Outputs
        .HREADYOUT  ( AHBSlaveInterface_HREADYOUT ),
        .HRDATA     ( AHBSlaveInterface_HRDATA ),
        .HRESP      ( AHBSlaveInterface_HRESP ),
        .mem_wen    ( COREAHBLSRAM_PF_0_mem_wen ),
        .mem_ren    ( COREAHBLSRAM_PF_0_mem_ren ),
        .mem_addr   ( COREAHBLSRAM_PF_0_mem_addr ),
        .mem_byteen ( mem_byteen ),
        .mem_wdata  ( mem_wdata ) 
        );

//--------lsram_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM   -   Actel:SgCore:PF_TPSRAM:1.1.107
lsram_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM PF_TPSRAM_AHB_AXI_0(
        // Inputs
        .W_DATA   ( W_DATA_net_0 ),
        .W_ADDR   ( COREAHBLSRAM_PF_0_mem_addr ),
        .R_ADDR   ( COREAHBLSRAM_PF_0_mem_addr ),
        .WBYTE_EN ( WBYTE_EN_net_0 ),
        .W_EN     ( COREAHBLSRAM_PF_0_mem_wen ),
        .R_EN     ( COREAHBLSRAM_PF_0_mem_ren ),
        .CLK      ( HCLK ),
        // Outputs
        .R_DATA   ( R_DATA_net_0 ) 
        );


endmodule
