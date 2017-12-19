`timescale 1 ns/100 ps
// Version: PolarFire v2.0 12.200.0.20


module LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM(
       W_DATA,
       R_DATA,
       W_ADDR,
       R_ADDR,
       W_EN,
       R_EN,
       CLK,
       WBYTE_EN
    );
input  [39:0] W_DATA;
output [39:0] R_DATA;
input  [15:0] W_ADDR;
input  [15:0] R_ADDR;
input  W_EN;
input  R_EN;
input  CLK;
input  [39:0] WBYTE_EN;

    wire \R_DATA_TEMPR0[0] , \R_DATA_TEMPR1[0] , \R_DATA_TEMPR2[0] , 
        \R_DATA_TEMPR3[0] , \R_DATA_TEMPR0[1] , \R_DATA_TEMPR1[1] , 
        \R_DATA_TEMPR2[1] , \R_DATA_TEMPR3[1] , \R_DATA_TEMPR0[2] , 
        \R_DATA_TEMPR1[2] , \R_DATA_TEMPR2[2] , \R_DATA_TEMPR3[2] , 
        \R_DATA_TEMPR0[3] , \R_DATA_TEMPR1[3] , \R_DATA_TEMPR2[3] , 
        \R_DATA_TEMPR3[3] , \R_DATA_TEMPR0[4] , \R_DATA_TEMPR1[4] , 
        \R_DATA_TEMPR2[4] , \R_DATA_TEMPR3[4] , \R_DATA_TEMPR0[5] , 
        \R_DATA_TEMPR1[5] , \R_DATA_TEMPR2[5] , \R_DATA_TEMPR3[5] , 
        \R_DATA_TEMPR0[6] , \R_DATA_TEMPR1[6] , \R_DATA_TEMPR2[6] , 
        \R_DATA_TEMPR3[6] , \R_DATA_TEMPR0[7] , \R_DATA_TEMPR1[7] , 
        \R_DATA_TEMPR2[7] , \R_DATA_TEMPR3[7] , \R_DATA_TEMPR0[8] , 
        \R_DATA_TEMPR1[8] , \R_DATA_TEMPR2[8] , \R_DATA_TEMPR3[8] , 
        \R_DATA_TEMPR0[9] , \R_DATA_TEMPR1[9] , \R_DATA_TEMPR2[9] , 
        \R_DATA_TEMPR3[9] , \R_DATA_TEMPR0[10] , \R_DATA_TEMPR1[10] , 
        \R_DATA_TEMPR2[10] , \R_DATA_TEMPR3[10] , \R_DATA_TEMPR0[11] , 
        \R_DATA_TEMPR1[11] , \R_DATA_TEMPR2[11] , \R_DATA_TEMPR3[11] , 
        \R_DATA_TEMPR0[12] , \R_DATA_TEMPR1[12] , \R_DATA_TEMPR2[12] , 
        \R_DATA_TEMPR3[12] , \R_DATA_TEMPR0[13] , \R_DATA_TEMPR1[13] , 
        \R_DATA_TEMPR2[13] , \R_DATA_TEMPR3[13] , \R_DATA_TEMPR0[14] , 
        \R_DATA_TEMPR1[14] , \R_DATA_TEMPR2[14] , \R_DATA_TEMPR3[14] , 
        \R_DATA_TEMPR0[15] , \R_DATA_TEMPR1[15] , \R_DATA_TEMPR2[15] , 
        \R_DATA_TEMPR3[15] , \R_DATA_TEMPR0[16] , \R_DATA_TEMPR1[16] , 
        \R_DATA_TEMPR2[16] , \R_DATA_TEMPR3[16] , \R_DATA_TEMPR0[17] , 
        \R_DATA_TEMPR1[17] , \R_DATA_TEMPR2[17] , \R_DATA_TEMPR3[17] , 
        \R_DATA_TEMPR0[18] , \R_DATA_TEMPR1[18] , \R_DATA_TEMPR2[18] , 
        \R_DATA_TEMPR3[18] , \R_DATA_TEMPR0[19] , \R_DATA_TEMPR1[19] , 
        \R_DATA_TEMPR2[19] , \R_DATA_TEMPR3[19] , \R_DATA_TEMPR0[20] , 
        \R_DATA_TEMPR1[20] , \R_DATA_TEMPR2[20] , \R_DATA_TEMPR3[20] , 
        \R_DATA_TEMPR0[21] , \R_DATA_TEMPR1[21] , \R_DATA_TEMPR2[21] , 
        \R_DATA_TEMPR3[21] , \R_DATA_TEMPR0[22] , \R_DATA_TEMPR1[22] , 
        \R_DATA_TEMPR2[22] , \R_DATA_TEMPR3[22] , \R_DATA_TEMPR0[23] , 
        \R_DATA_TEMPR1[23] , \R_DATA_TEMPR2[23] , \R_DATA_TEMPR3[23] , 
        \R_DATA_TEMPR0[24] , \R_DATA_TEMPR1[24] , \R_DATA_TEMPR2[24] , 
        \R_DATA_TEMPR3[24] , \R_DATA_TEMPR0[25] , \R_DATA_TEMPR1[25] , 
        \R_DATA_TEMPR2[25] , \R_DATA_TEMPR3[25] , \R_DATA_TEMPR0[26] , 
        \R_DATA_TEMPR1[26] , \R_DATA_TEMPR2[26] , \R_DATA_TEMPR3[26] , 
        \R_DATA_TEMPR0[27] , \R_DATA_TEMPR1[27] , \R_DATA_TEMPR2[27] , 
        \R_DATA_TEMPR3[27] , \R_DATA_TEMPR0[28] , \R_DATA_TEMPR1[28] , 
        \R_DATA_TEMPR2[28] , \R_DATA_TEMPR3[28] , \R_DATA_TEMPR0[29] , 
        \R_DATA_TEMPR1[29] , \R_DATA_TEMPR2[29] , \R_DATA_TEMPR3[29] , 
        \R_DATA_TEMPR0[30] , \R_DATA_TEMPR1[30] , \R_DATA_TEMPR2[30] , 
        \R_DATA_TEMPR3[30] , \R_DATA_TEMPR0[31] , \R_DATA_TEMPR1[31] , 
        \R_DATA_TEMPR2[31] , \R_DATA_TEMPR3[31] , \R_DATA_TEMPR0[32] , 
        \R_DATA_TEMPR1[32] , \R_DATA_TEMPR2[32] , \R_DATA_TEMPR3[32] , 
        \R_DATA_TEMPR0[33] , \R_DATA_TEMPR1[33] , \R_DATA_TEMPR2[33] , 
        \R_DATA_TEMPR3[33] , \R_DATA_TEMPR0[34] , \R_DATA_TEMPR1[34] , 
        \R_DATA_TEMPR2[34] , \R_DATA_TEMPR3[34] , \R_DATA_TEMPR0[35] , 
        \R_DATA_TEMPR1[35] , \R_DATA_TEMPR2[35] , \R_DATA_TEMPR3[35] , 
        \R_DATA_TEMPR0[36] , \R_DATA_TEMPR1[36] , \R_DATA_TEMPR2[36] , 
        \R_DATA_TEMPR3[36] , \R_DATA_TEMPR0[37] , \R_DATA_TEMPR1[37] , 
        \R_DATA_TEMPR2[37] , \R_DATA_TEMPR3[37] , \R_DATA_TEMPR0[38] , 
        \R_DATA_TEMPR1[38] , \R_DATA_TEMPR2[38] , \R_DATA_TEMPR3[38] , 
        \R_DATA_TEMPR0[39] , \R_DATA_TEMPR1[39] , \R_DATA_TEMPR2[39] , 
        \R_DATA_TEMPR3[39] , \BLKX0[0] , \BLKY0[0] , \BLKX1[0] , 
        \BLKY1[0] , \ACCESS_BUSY[0][0] , \SB_CORRECT[0][0] , 
        \DB_DETECT[0][0] , \ACCESS_BUSY[0][1] , \SB_CORRECT[0][1] , 
        \DB_DETECT[0][1] , \ACCESS_BUSY[0][2] , \SB_CORRECT[0][2] , 
        \DB_DETECT[0][2] , \ACCESS_BUSY[0][3] , \SB_CORRECT[0][3] , 
        \DB_DETECT[0][3] , \ACCESS_BUSY[0][4] , \SB_CORRECT[0][4] , 
        \DB_DETECT[0][4] , \ACCESS_BUSY[0][5] , \SB_CORRECT[0][5] , 
        \DB_DETECT[0][5] , \ACCESS_BUSY[0][6] , \SB_CORRECT[0][6] , 
        \DB_DETECT[0][6] , \ACCESS_BUSY[0][7] , \SB_CORRECT[0][7] , 
        \DB_DETECT[0][7] , \ACCESS_BUSY[0][8] , \SB_CORRECT[0][8] , 
        \DB_DETECT[0][8] , \ACCESS_BUSY[0][9] , \SB_CORRECT[0][9] , 
        \DB_DETECT[0][9] , \ACCESS_BUSY[0][10] , \SB_CORRECT[0][10] , 
        \DB_DETECT[0][10] , \ACCESS_BUSY[0][11] , \SB_CORRECT[0][11] , 
        \DB_DETECT[0][11] , \ACCESS_BUSY[0][12] , \SB_CORRECT[0][12] , 
        \DB_DETECT[0][12] , \ACCESS_BUSY[0][13] , \SB_CORRECT[0][13] , 
        \DB_DETECT[0][13] , \ACCESS_BUSY[0][14] , \SB_CORRECT[0][14] , 
        \DB_DETECT[0][14] , \ACCESS_BUSY[0][15] , \SB_CORRECT[0][15] , 
        \DB_DETECT[0][15] , \ACCESS_BUSY[0][16] , \SB_CORRECT[0][16] , 
        \DB_DETECT[0][16] , \ACCESS_BUSY[0][17] , \SB_CORRECT[0][17] , 
        \DB_DETECT[0][17] , \ACCESS_BUSY[0][18] , \SB_CORRECT[0][18] , 
        \DB_DETECT[0][18] , \ACCESS_BUSY[0][19] , \SB_CORRECT[0][19] , 
        \DB_DETECT[0][19] , \ACCESS_BUSY[0][20] , \SB_CORRECT[0][20] , 
        \DB_DETECT[0][20] , \ACCESS_BUSY[0][21] , \SB_CORRECT[0][21] , 
        \DB_DETECT[0][21] , \ACCESS_BUSY[0][22] , \SB_CORRECT[0][22] , 
        \DB_DETECT[0][22] , \ACCESS_BUSY[0][23] , \SB_CORRECT[0][23] , 
        \DB_DETECT[0][23] , \ACCESS_BUSY[0][24] , \SB_CORRECT[0][24] , 
        \DB_DETECT[0][24] , \ACCESS_BUSY[0][25] , \SB_CORRECT[0][25] , 
        \DB_DETECT[0][25] , \ACCESS_BUSY[0][26] , \SB_CORRECT[0][26] , 
        \DB_DETECT[0][26] , \ACCESS_BUSY[0][27] , \SB_CORRECT[0][27] , 
        \DB_DETECT[0][27] , \ACCESS_BUSY[0][28] , \SB_CORRECT[0][28] , 
        \DB_DETECT[0][28] , \ACCESS_BUSY[0][29] , \SB_CORRECT[0][29] , 
        \DB_DETECT[0][29] , \ACCESS_BUSY[0][30] , \SB_CORRECT[0][30] , 
        \DB_DETECT[0][30] , \ACCESS_BUSY[0][31] , \SB_CORRECT[0][31] , 
        \DB_DETECT[0][31] , \ACCESS_BUSY[0][32] , \SB_CORRECT[0][32] , 
        \DB_DETECT[0][32] , \ACCESS_BUSY[0][33] , \SB_CORRECT[0][33] , 
        \DB_DETECT[0][33] , \ACCESS_BUSY[0][34] , \SB_CORRECT[0][34] , 
        \DB_DETECT[0][34] , \ACCESS_BUSY[0][35] , \SB_CORRECT[0][35] , 
        \DB_DETECT[0][35] , \ACCESS_BUSY[0][36] , \SB_CORRECT[0][36] , 
        \DB_DETECT[0][36] , \ACCESS_BUSY[0][37] , \SB_CORRECT[0][37] , 
        \DB_DETECT[0][37] , \ACCESS_BUSY[0][38] , \SB_CORRECT[0][38] , 
        \DB_DETECT[0][38] , \ACCESS_BUSY[0][39] , \SB_CORRECT[0][39] , 
        \DB_DETECT[0][39] , \ACCESS_BUSY[1][0] , \SB_CORRECT[1][0] , 
        \DB_DETECT[1][0] , \ACCESS_BUSY[1][1] , \SB_CORRECT[1][1] , 
        \DB_DETECT[1][1] , \ACCESS_BUSY[1][2] , \SB_CORRECT[1][2] , 
        \DB_DETECT[1][2] , \ACCESS_BUSY[1][3] , \SB_CORRECT[1][3] , 
        \DB_DETECT[1][3] , \ACCESS_BUSY[1][4] , \SB_CORRECT[1][4] , 
        \DB_DETECT[1][4] , \ACCESS_BUSY[1][5] , \SB_CORRECT[1][5] , 
        \DB_DETECT[1][5] , \ACCESS_BUSY[1][6] , \SB_CORRECT[1][6] , 
        \DB_DETECT[1][6] , \ACCESS_BUSY[1][7] , \SB_CORRECT[1][7] , 
        \DB_DETECT[1][7] , \ACCESS_BUSY[1][8] , \SB_CORRECT[1][8] , 
        \DB_DETECT[1][8] , \ACCESS_BUSY[1][9] , \SB_CORRECT[1][9] , 
        \DB_DETECT[1][9] , \ACCESS_BUSY[1][10] , \SB_CORRECT[1][10] , 
        \DB_DETECT[1][10] , \ACCESS_BUSY[1][11] , \SB_CORRECT[1][11] , 
        \DB_DETECT[1][11] , \ACCESS_BUSY[1][12] , \SB_CORRECT[1][12] , 
        \DB_DETECT[1][12] , \ACCESS_BUSY[1][13] , \SB_CORRECT[1][13] , 
        \DB_DETECT[1][13] , \ACCESS_BUSY[1][14] , \SB_CORRECT[1][14] , 
        \DB_DETECT[1][14] , \ACCESS_BUSY[1][15] , \SB_CORRECT[1][15] , 
        \DB_DETECT[1][15] , \ACCESS_BUSY[1][16] , \SB_CORRECT[1][16] , 
        \DB_DETECT[1][16] , \ACCESS_BUSY[1][17] , \SB_CORRECT[1][17] , 
        \DB_DETECT[1][17] , \ACCESS_BUSY[1][18] , \SB_CORRECT[1][18] , 
        \DB_DETECT[1][18] , \ACCESS_BUSY[1][19] , \SB_CORRECT[1][19] , 
        \DB_DETECT[1][19] , \ACCESS_BUSY[1][20] , \SB_CORRECT[1][20] , 
        \DB_DETECT[1][20] , \ACCESS_BUSY[1][21] , \SB_CORRECT[1][21] , 
        \DB_DETECT[1][21] , \ACCESS_BUSY[1][22] , \SB_CORRECT[1][22] , 
        \DB_DETECT[1][22] , \ACCESS_BUSY[1][23] , \SB_CORRECT[1][23] , 
        \DB_DETECT[1][23] , \ACCESS_BUSY[1][24] , \SB_CORRECT[1][24] , 
        \DB_DETECT[1][24] , \ACCESS_BUSY[1][25] , \SB_CORRECT[1][25] , 
        \DB_DETECT[1][25] , \ACCESS_BUSY[1][26] , \SB_CORRECT[1][26] , 
        \DB_DETECT[1][26] , \ACCESS_BUSY[1][27] , \SB_CORRECT[1][27] , 
        \DB_DETECT[1][27] , \ACCESS_BUSY[1][28] , \SB_CORRECT[1][28] , 
        \DB_DETECT[1][28] , \ACCESS_BUSY[1][29] , \SB_CORRECT[1][29] , 
        \DB_DETECT[1][29] , \ACCESS_BUSY[1][30] , \SB_CORRECT[1][30] , 
        \DB_DETECT[1][30] , \ACCESS_BUSY[1][31] , \SB_CORRECT[1][31] , 
        \DB_DETECT[1][31] , \ACCESS_BUSY[1][32] , \SB_CORRECT[1][32] , 
        \DB_DETECT[1][32] , \ACCESS_BUSY[1][33] , \SB_CORRECT[1][33] , 
        \DB_DETECT[1][33] , \ACCESS_BUSY[1][34] , \SB_CORRECT[1][34] , 
        \DB_DETECT[1][34] , \ACCESS_BUSY[1][35] , \SB_CORRECT[1][35] , 
        \DB_DETECT[1][35] , \ACCESS_BUSY[1][36] , \SB_CORRECT[1][36] , 
        \DB_DETECT[1][36] , \ACCESS_BUSY[1][37] , \SB_CORRECT[1][37] , 
        \DB_DETECT[1][37] , \ACCESS_BUSY[1][38] , \SB_CORRECT[1][38] , 
        \DB_DETECT[1][38] , \ACCESS_BUSY[1][39] , \SB_CORRECT[1][39] , 
        \DB_DETECT[1][39] , \ACCESS_BUSY[2][0] , \SB_CORRECT[2][0] , 
        \DB_DETECT[2][0] , \ACCESS_BUSY[2][1] , \SB_CORRECT[2][1] , 
        \DB_DETECT[2][1] , \ACCESS_BUSY[2][2] , \SB_CORRECT[2][2] , 
        \DB_DETECT[2][2] , \ACCESS_BUSY[2][3] , \SB_CORRECT[2][3] , 
        \DB_DETECT[2][3] , \ACCESS_BUSY[2][4] , \SB_CORRECT[2][4] , 
        \DB_DETECT[2][4] , \ACCESS_BUSY[2][5] , \SB_CORRECT[2][5] , 
        \DB_DETECT[2][5] , \ACCESS_BUSY[2][6] , \SB_CORRECT[2][6] , 
        \DB_DETECT[2][6] , \ACCESS_BUSY[2][7] , \SB_CORRECT[2][7] , 
        \DB_DETECT[2][7] , \ACCESS_BUSY[2][8] , \SB_CORRECT[2][8] , 
        \DB_DETECT[2][8] , \ACCESS_BUSY[2][9] , \SB_CORRECT[2][9] , 
        \DB_DETECT[2][9] , \ACCESS_BUSY[2][10] , \SB_CORRECT[2][10] , 
        \DB_DETECT[2][10] , \ACCESS_BUSY[2][11] , \SB_CORRECT[2][11] , 
        \DB_DETECT[2][11] , \ACCESS_BUSY[2][12] , \SB_CORRECT[2][12] , 
        \DB_DETECT[2][12] , \ACCESS_BUSY[2][13] , \SB_CORRECT[2][13] , 
        \DB_DETECT[2][13] , \ACCESS_BUSY[2][14] , \SB_CORRECT[2][14] , 
        \DB_DETECT[2][14] , \ACCESS_BUSY[2][15] , \SB_CORRECT[2][15] , 
        \DB_DETECT[2][15] , \ACCESS_BUSY[2][16] , \SB_CORRECT[2][16] , 
        \DB_DETECT[2][16] , \ACCESS_BUSY[2][17] , \SB_CORRECT[2][17] , 
        \DB_DETECT[2][17] , \ACCESS_BUSY[2][18] , \SB_CORRECT[2][18] , 
        \DB_DETECT[2][18] , \ACCESS_BUSY[2][19] , \SB_CORRECT[2][19] , 
        \DB_DETECT[2][19] , \ACCESS_BUSY[2][20] , \SB_CORRECT[2][20] , 
        \DB_DETECT[2][20] , \ACCESS_BUSY[2][21] , \SB_CORRECT[2][21] , 
        \DB_DETECT[2][21] , \ACCESS_BUSY[2][22] , \SB_CORRECT[2][22] , 
        \DB_DETECT[2][22] , \ACCESS_BUSY[2][23] , \SB_CORRECT[2][23] , 
        \DB_DETECT[2][23] , \ACCESS_BUSY[2][24] , \SB_CORRECT[2][24] , 
        \DB_DETECT[2][24] , \ACCESS_BUSY[2][25] , \SB_CORRECT[2][25] , 
        \DB_DETECT[2][25] , \ACCESS_BUSY[2][26] , \SB_CORRECT[2][26] , 
        \DB_DETECT[2][26] , \ACCESS_BUSY[2][27] , \SB_CORRECT[2][27] , 
        \DB_DETECT[2][27] , \ACCESS_BUSY[2][28] , \SB_CORRECT[2][28] , 
        \DB_DETECT[2][28] , \ACCESS_BUSY[2][29] , \SB_CORRECT[2][29] , 
        \DB_DETECT[2][29] , \ACCESS_BUSY[2][30] , \SB_CORRECT[2][30] , 
        \DB_DETECT[2][30] , \ACCESS_BUSY[2][31] , \SB_CORRECT[2][31] , 
        \DB_DETECT[2][31] , \ACCESS_BUSY[2][32] , \SB_CORRECT[2][32] , 
        \DB_DETECT[2][32] , \ACCESS_BUSY[2][33] , \SB_CORRECT[2][33] , 
        \DB_DETECT[2][33] , \ACCESS_BUSY[2][34] , \SB_CORRECT[2][34] , 
        \DB_DETECT[2][34] , \ACCESS_BUSY[2][35] , \SB_CORRECT[2][35] , 
        \DB_DETECT[2][35] , \ACCESS_BUSY[2][36] , \SB_CORRECT[2][36] , 
        \DB_DETECT[2][36] , \ACCESS_BUSY[2][37] , \SB_CORRECT[2][37] , 
        \DB_DETECT[2][37] , \ACCESS_BUSY[2][38] , \SB_CORRECT[2][38] , 
        \DB_DETECT[2][38] , \ACCESS_BUSY[2][39] , \SB_CORRECT[2][39] , 
        \DB_DETECT[2][39] , \ACCESS_BUSY[3][0] , \SB_CORRECT[3][0] , 
        \DB_DETECT[3][0] , \ACCESS_BUSY[3][1] , \SB_CORRECT[3][1] , 
        \DB_DETECT[3][1] , \ACCESS_BUSY[3][2] , \SB_CORRECT[3][2] , 
        \DB_DETECT[3][2] , \ACCESS_BUSY[3][3] , \SB_CORRECT[3][3] , 
        \DB_DETECT[3][3] , \ACCESS_BUSY[3][4] , \SB_CORRECT[3][4] , 
        \DB_DETECT[3][4] , \ACCESS_BUSY[3][5] , \SB_CORRECT[3][5] , 
        \DB_DETECT[3][5] , \ACCESS_BUSY[3][6] , \SB_CORRECT[3][6] , 
        \DB_DETECT[3][6] , \ACCESS_BUSY[3][7] , \SB_CORRECT[3][7] , 
        \DB_DETECT[3][7] , \ACCESS_BUSY[3][8] , \SB_CORRECT[3][8] , 
        \DB_DETECT[3][8] , \ACCESS_BUSY[3][9] , \SB_CORRECT[3][9] , 
        \DB_DETECT[3][9] , \ACCESS_BUSY[3][10] , \SB_CORRECT[3][10] , 
        \DB_DETECT[3][10] , \ACCESS_BUSY[3][11] , \SB_CORRECT[3][11] , 
        \DB_DETECT[3][11] , \ACCESS_BUSY[3][12] , \SB_CORRECT[3][12] , 
        \DB_DETECT[3][12] , \ACCESS_BUSY[3][13] , \SB_CORRECT[3][13] , 
        \DB_DETECT[3][13] , \ACCESS_BUSY[3][14] , \SB_CORRECT[3][14] , 
        \DB_DETECT[3][14] , \ACCESS_BUSY[3][15] , \SB_CORRECT[3][15] , 
        \DB_DETECT[3][15] , \ACCESS_BUSY[3][16] , \SB_CORRECT[3][16] , 
        \DB_DETECT[3][16] , \ACCESS_BUSY[3][17] , \SB_CORRECT[3][17] , 
        \DB_DETECT[3][17] , \ACCESS_BUSY[3][18] , \SB_CORRECT[3][18] , 
        \DB_DETECT[3][18] , \ACCESS_BUSY[3][19] , \SB_CORRECT[3][19] , 
        \DB_DETECT[3][19] , \ACCESS_BUSY[3][20] , \SB_CORRECT[3][20] , 
        \DB_DETECT[3][20] , \ACCESS_BUSY[3][21] , \SB_CORRECT[3][21] , 
        \DB_DETECT[3][21] , \ACCESS_BUSY[3][22] , \SB_CORRECT[3][22] , 
        \DB_DETECT[3][22] , \ACCESS_BUSY[3][23] , \SB_CORRECT[3][23] , 
        \DB_DETECT[3][23] , \ACCESS_BUSY[3][24] , \SB_CORRECT[3][24] , 
        \DB_DETECT[3][24] , \ACCESS_BUSY[3][25] , \SB_CORRECT[3][25] , 
        \DB_DETECT[3][25] , \ACCESS_BUSY[3][26] , \SB_CORRECT[3][26] , 
        \DB_DETECT[3][26] , \ACCESS_BUSY[3][27] , \SB_CORRECT[3][27] , 
        \DB_DETECT[3][27] , \ACCESS_BUSY[3][28] , \SB_CORRECT[3][28] , 
        \DB_DETECT[3][28] , \ACCESS_BUSY[3][29] , \SB_CORRECT[3][29] , 
        \DB_DETECT[3][29] , \ACCESS_BUSY[3][30] , \SB_CORRECT[3][30] , 
        \DB_DETECT[3][30] , \ACCESS_BUSY[3][31] , \SB_CORRECT[3][31] , 
        \DB_DETECT[3][31] , \ACCESS_BUSY[3][32] , \SB_CORRECT[3][32] , 
        \DB_DETECT[3][32] , \ACCESS_BUSY[3][33] , \SB_CORRECT[3][33] , 
        \DB_DETECT[3][33] , \ACCESS_BUSY[3][34] , \SB_CORRECT[3][34] , 
        \DB_DETECT[3][34] , \ACCESS_BUSY[3][35] , \SB_CORRECT[3][35] , 
        \DB_DETECT[3][35] , \ACCESS_BUSY[3][36] , \SB_CORRECT[3][36] , 
        \DB_DETECT[3][36] , \ACCESS_BUSY[3][37] , \SB_CORRECT[3][37] , 
        \DB_DETECT[3][37] , \ACCESS_BUSY[3][38] , \SB_CORRECT[3][38] , 
        \DB_DETECT[3][38] , \ACCESS_BUSY[3][39] , \SB_CORRECT[3][39] , 
        \DB_DETECT[3][39] , VCC, GND, ADLIB_VCC;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign ADLIB_VCC = VCC_power_net1;
    
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%29%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C29 (.A_DOUT({nc0, 
        nc1, nc2, nc3, nc4, nc5, nc6, nc7, nc8, nc9, nc10, nc11, nc12, 
        nc13, nc14, nc15, nc16, nc17, nc18, \R_DATA_TEMPR2[29] }), 
        .B_DOUT({nc19, nc20, nc21, nc22, nc23, nc24, nc25, nc26, nc27, 
        nc28, nc29, nc30, nc31, nc32, nc33, nc34, nc35, nc36, nc37, 
        nc38}), .DB_DETECT(\DB_DETECT[2][29] ), .SB_CORRECT(
        \SB_CORRECT[2][29] ), .ACCESS_BUSY(\ACCESS_BUSY[2][29] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[29]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[29]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[37]  (.A(\R_DATA_TEMPR0[37] ), .B(
        \R_DATA_TEMPR1[37] ), .C(\R_DATA_TEMPR2[37] ), .D(
        \R_DATA_TEMPR3[37] ), .Y(R_DATA[37]));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%2%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C2 (.A_DOUT({nc39, 
        nc40, nc41, nc42, nc43, nc44, nc45, nc46, nc47, nc48, nc49, 
        nc50, nc51, nc52, nc53, nc54, nc55, nc56, nc57, 
        \R_DATA_TEMPR0[2] }), .B_DOUT({nc58, nc59, nc60, nc61, nc62, 
        nc63, nc64, nc65, nc66, nc67, nc68, nc69, nc70, nc71, nc72, 
        nc73, nc74, nc75, nc76, nc77}), .DB_DETECT(\DB_DETECT[0][2] ), 
        .SB_CORRECT(\SB_CORRECT[0][2] ), .ACCESS_BUSY(
        \ACCESS_BUSY[0][2] ), .A_ADDR({R_ADDR[13], R_ADDR[12], 
        R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], R_ADDR[7], 
        R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], R_ADDR[2], 
        R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, \BLKY1[0] , 
        \BLKY0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        \BLKX1[0] , \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[2]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[2]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%31%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C31 (.A_DOUT({nc78, 
        nc79, nc80, nc81, nc82, nc83, nc84, nc85, nc86, nc87, nc88, 
        nc89, nc90, nc91, nc92, nc93, nc94, nc95, nc96, 
        \R_DATA_TEMPR1[31] }), .B_DOUT({nc97, nc98, nc99, nc100, nc101, 
        nc102, nc103, nc104, nc105, nc106, nc107, nc108, nc109, nc110, 
        nc111, nc112, nc113, nc114, nc115, nc116}), .DB_DETECT(
        \DB_DETECT[1][31] ), .SB_CORRECT(\SB_CORRECT[1][31] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[1][31] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, \BLKY1[0] , 
        R_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        \BLKX1[0] , W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[31]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[31]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[21]  (.A(\R_DATA_TEMPR0[21] ), .B(
        \R_DATA_TEMPR1[21] ), .C(\R_DATA_TEMPR2[21] ), .D(
        \R_DATA_TEMPR3[21] ), .Y(R_DATA[21]));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%20%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C20 (.A_DOUT({nc117, 
        nc118, nc119, nc120, nc121, nc122, nc123, nc124, nc125, nc126, 
        nc127, nc128, nc129, nc130, nc131, nc132, nc133, nc134, nc135, 
        \R_DATA_TEMPR1[20] }), .B_DOUT({nc136, nc137, nc138, nc139, 
        nc140, nc141, nc142, nc143, nc144, nc145, nc146, nc147, nc148, 
        nc149, nc150, nc151, nc152, nc153, nc154, nc155}), .DB_DETECT(
        \DB_DETECT[1][20] ), .SB_CORRECT(\SB_CORRECT[1][20] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[1][20] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, \BLKY1[0] , 
        R_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        \BLKX1[0] , W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[20]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[20]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[17]  (.A(\R_DATA_TEMPR0[17] ), .B(
        \R_DATA_TEMPR1[17] ), .C(\R_DATA_TEMPR2[17] ), .D(
        \R_DATA_TEMPR3[17] ), .Y(R_DATA[17]));
    OR4 \OR4_R_DATA[3]  (.A(\R_DATA_TEMPR0[3] ), .B(\R_DATA_TEMPR1[3] )
        , .C(\R_DATA_TEMPR2[3] ), .D(\R_DATA_TEMPR3[3] ), .Y(R_DATA[3])
        );
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%21%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C21 (.A_DOUT({nc156, 
        nc157, nc158, nc159, nc160, nc161, nc162, nc163, nc164, nc165, 
        nc166, nc167, nc168, nc169, nc170, nc171, nc172, nc173, nc174, 
        \R_DATA_TEMPR2[21] }), .B_DOUT({nc175, nc176, nc177, nc178, 
        nc179, nc180, nc181, nc182, nc183, nc184, nc185, nc186, nc187, 
        nc188, nc189, nc190, nc191, nc192, nc193, nc194}), .DB_DETECT(
        \DB_DETECT[2][21] ), .SB_CORRECT(\SB_CORRECT[2][21] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[2][21] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, R_ADDR[15], 
        \BLKY0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        W_ADDR[15], \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[21]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[21]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%34%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C34 (.A_DOUT({nc195, 
        nc196, nc197, nc198, nc199, nc200, nc201, nc202, nc203, nc204, 
        nc205, nc206, nc207, nc208, nc209, nc210, nc211, nc212, nc213, 
        \R_DATA_TEMPR2[34] }), .B_DOUT({nc214, nc215, nc216, nc217, 
        nc218, nc219, nc220, nc221, nc222, nc223, nc224, nc225, nc226, 
        nc227, nc228, nc229, nc230, nc231, nc232, nc233}), .DB_DETECT(
        \DB_DETECT[2][34] ), .SB_CORRECT(\SB_CORRECT[2][34] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[2][34] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, R_ADDR[15], 
        \BLKY0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        W_ADDR[15], \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[34]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[34]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[30]  (.A(\R_DATA_TEMPR0[30] ), .B(
        \R_DATA_TEMPR1[30] ), .C(\R_DATA_TEMPR2[30] ), .D(
        \R_DATA_TEMPR3[30] ), .Y(R_DATA[30]));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%30%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C30 (.A_DOUT({nc234, 
        nc235, nc236, nc237, nc238, nc239, nc240, nc241, nc242, nc243, 
        nc244, nc245, nc246, nc247, nc248, nc249, nc250, nc251, nc252, 
        \R_DATA_TEMPR3[30] }), .B_DOUT({nc253, nc254, nc255, nc256, 
        nc257, nc258, nc259, nc260, nc261, nc262, nc263, nc264, nc265, 
        nc266, nc267, nc268, nc269, nc270, nc271, nc272}), .DB_DETECT(
        \DB_DETECT[3][30] ), .SB_CORRECT(\SB_CORRECT[3][30] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[3][30] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, R_ADDR[15], 
        R_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        W_ADDR[15], W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[30]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[30]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%23%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C23 (.A_DOUT({nc273, 
        nc274, nc275, nc276, nc277, nc278, nc279, nc280, nc281, nc282, 
        nc283, nc284, nc285, nc286, nc287, nc288, nc289, nc290, nc291, 
        \R_DATA_TEMPR0[23] }), .B_DOUT({nc292, nc293, nc294, nc295, 
        nc296, nc297, nc298, nc299, nc300, nc301, nc302, nc303, nc304, 
        nc305, nc306, nc307, nc308, nc309, nc310, nc311}), .DB_DETECT(
        \DB_DETECT[0][23] ), .SB_CORRECT(\SB_CORRECT[0][23] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][23] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, \BLKY1[0] , 
        \BLKY0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        \BLKX1[0] , \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[23]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[23]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[10]  (.A(\R_DATA_TEMPR0[10] ), .B(
        \R_DATA_TEMPR1[10] ), .C(\R_DATA_TEMPR2[10] ), .D(
        \R_DATA_TEMPR3[10] ), .Y(R_DATA[10]));
    OR4 \OR4_R_DATA[24]  (.A(\R_DATA_TEMPR0[24] ), .B(
        \R_DATA_TEMPR1[24] ), .C(\R_DATA_TEMPR2[24] ), .D(
        \R_DATA_TEMPR3[24] ), .Y(R_DATA[24]));
    OR4 \OR4_R_DATA[23]  (.A(\R_DATA_TEMPR0[23] ), .B(
        \R_DATA_TEMPR1[23] ), .C(\R_DATA_TEMPR2[23] ), .D(
        \R_DATA_TEMPR3[23] ), .Y(R_DATA[23]));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%18%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C18 (.A_DOUT({nc312, 
        nc313, nc314, nc315, nc316, nc317, nc318, nc319, nc320, nc321, 
        nc322, nc323, nc324, nc325, nc326, nc327, nc328, nc329, nc330, 
        \R_DATA_TEMPR2[18] }), .B_DOUT({nc331, nc332, nc333, nc334, 
        nc335, nc336, nc337, nc338, nc339, nc340, nc341, nc342, nc343, 
        nc344, nc345, nc346, nc347, nc348, nc349, nc350}), .DB_DETECT(
        \DB_DETECT[2][18] ), .SB_CORRECT(\SB_CORRECT[2][18] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[2][18] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, R_ADDR[15], 
        \BLKY0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        W_ADDR[15], \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[18]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[18]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%19%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C19 (.A_DOUT({nc351, 
        nc352, nc353, nc354, nc355, nc356, nc357, nc358, nc359, nc360, 
        nc361, nc362, nc363, nc364, nc365, nc366, nc367, nc368, nc369, 
        \R_DATA_TEMPR2[19] }), .B_DOUT({nc370, nc371, nc372, nc373, 
        nc374, nc375, nc376, nc377, nc378, nc379, nc380, nc381, nc382, 
        nc383, nc384, nc385, nc386, nc387, nc388, nc389}), .DB_DETECT(
        \DB_DETECT[2][19] ), .SB_CORRECT(\SB_CORRECT[2][19] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[2][19] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, R_ADDR[15], 
        \BLKY0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        W_ADDR[15], \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[19]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[19]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%25%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C25 (.A_DOUT({nc390, 
        nc391, nc392, nc393, nc394, nc395, nc396, nc397, nc398, nc399, 
        nc400, nc401, nc402, nc403, nc404, nc405, nc406, nc407, nc408, 
        \R_DATA_TEMPR3[25] }), .B_DOUT({nc409, nc410, nc411, nc412, 
        nc413, nc414, nc415, nc416, nc417, nc418, nc419, nc420, nc421, 
        nc422, nc423, nc424, nc425, nc426, nc427, nc428}), .DB_DETECT(
        \DB_DETECT[3][25] ), .SB_CORRECT(\SB_CORRECT[3][25] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[3][25] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, R_ADDR[15], 
        R_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        W_ADDR[15], W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[25]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[25]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[25]  (.A(\R_DATA_TEMPR0[25] ), .B(
        \R_DATA_TEMPR1[25] ), .C(\R_DATA_TEMPR2[25] ), .D(
        \R_DATA_TEMPR3[25] ), .Y(R_DATA[25]));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%20%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C20 (.A_DOUT({nc429, 
        nc430, nc431, nc432, nc433, nc434, nc435, nc436, nc437, nc438, 
        nc439, nc440, nc441, nc442, nc443, nc444, nc445, nc446, nc447, 
        \R_DATA_TEMPR0[20] }), .B_DOUT({nc448, nc449, nc450, nc451, 
        nc452, nc453, nc454, nc455, nc456, nc457, nc458, nc459, nc460, 
        nc461, nc462, nc463, nc464, nc465, nc466, nc467}), .DB_DETECT(
        \DB_DETECT[0][20] ), .SB_CORRECT(\SB_CORRECT[0][20] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][20] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, \BLKY1[0] , 
        \BLKY0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        \BLKX1[0] , \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[20]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[20]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[7]  (.A(\R_DATA_TEMPR0[7] ), .B(\R_DATA_TEMPR1[7] )
        , .C(\R_DATA_TEMPR2[7] ), .D(\R_DATA_TEMPR3[7] ), .Y(R_DATA[7])
        );
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%4%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C4 (.A_DOUT({nc468, 
        nc469, nc470, nc471, nc472, nc473, nc474, nc475, nc476, nc477, 
        nc478, nc479, nc480, nc481, nc482, nc483, nc484, nc485, nc486, 
        \R_DATA_TEMPR0[4] }), .B_DOUT({nc487, nc488, nc489, nc490, 
        nc491, nc492, nc493, nc494, nc495, nc496, nc497, nc498, nc499, 
        nc500, nc501, nc502, nc503, nc504, nc505, nc506}), .DB_DETECT(
        \DB_DETECT[0][4] ), .SB_CORRECT(\SB_CORRECT[0][4] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][4] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, \BLKY1[0] , 
        \BLKY0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        \BLKX1[0] , \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[4]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[4]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%5%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C5 (.A_DOUT({nc507, 
        nc508, nc509, nc510, nc511, nc512, nc513, nc514, nc515, nc516, 
        nc517, nc518, nc519, nc520, nc521, nc522, nc523, nc524, nc525, 
        \R_DATA_TEMPR2[5] }), .B_DOUT({nc526, nc527, nc528, nc529, 
        nc530, nc531, nc532, nc533, nc534, nc535, nc536, nc537, nc538, 
        nc539, nc540, nc541, nc542, nc543, nc544, nc545}), .DB_DETECT(
        \DB_DETECT[2][5] ), .SB_CORRECT(\SB_CORRECT[2][5] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[2][5] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, R_ADDR[15], 
        \BLKY0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        W_ADDR[15], \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[5]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[5]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%11%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C11 (.A_DOUT({nc546, 
        nc547, nc548, nc549, nc550, nc551, nc552, nc553, nc554, nc555, 
        nc556, nc557, nc558, nc559, nc560, nc561, nc562, nc563, nc564, 
        \R_DATA_TEMPR2[11] }), .B_DOUT({nc565, nc566, nc567, nc568, 
        nc569, nc570, nc571, nc572, nc573, nc574, nc575, nc576, nc577, 
        nc578, nc579, nc580, nc581, nc582, nc583, nc584}), .DB_DETECT(
        \DB_DETECT[2][11] ), .SB_CORRECT(\SB_CORRECT[2][11] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[2][11] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, R_ADDR[15], 
        \BLKY0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        W_ADDR[15], \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[11]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[11]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%32%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C32 (.A_DOUT({nc585, 
        nc586, nc587, nc588, nc589, nc590, nc591, nc592, nc593, nc594, 
        nc595, nc596, nc597, nc598, nc599, nc600, nc601, nc602, nc603, 
        \R_DATA_TEMPR1[32] }), .B_DOUT({nc604, nc605, nc606, nc607, 
        nc608, nc609, nc610, nc611, nc612, nc613, nc614, nc615, nc616, 
        nc617, nc618, nc619, nc620, nc621, nc622, nc623}), .DB_DETECT(
        \DB_DETECT[1][32] ), .SB_CORRECT(\SB_CORRECT[1][32] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[1][32] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, \BLKY1[0] , 
        R_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        \BLKX1[0] , W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[32]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[32]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%9%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C9 (.A_DOUT({nc624, 
        nc625, nc626, nc627, nc628, nc629, nc630, nc631, nc632, nc633, 
        nc634, nc635, nc636, nc637, nc638, nc639, nc640, nc641, nc642, 
        \R_DATA_TEMPR0[9] }), .B_DOUT({nc643, nc644, nc645, nc646, 
        nc647, nc648, nc649, nc650, nc651, nc652, nc653, nc654, nc655, 
        nc656, nc657, nc658, nc659, nc660, nc661, nc662}), .DB_DETECT(
        \DB_DETECT[0][9] ), .SB_CORRECT(\SB_CORRECT[0][9] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][9] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, \BLKY1[0] , 
        \BLKY0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        \BLKX1[0] , \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[9]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[9]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%18%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C18 (.A_DOUT({nc663, 
        nc664, nc665, nc666, nc667, nc668, nc669, nc670, nc671, nc672, 
        nc673, nc674, nc675, nc676, nc677, nc678, nc679, nc680, nc681, 
        \R_DATA_TEMPR3[18] }), .B_DOUT({nc682, nc683, nc684, nc685, 
        nc686, nc687, nc688, nc689, nc690, nc691, nc692, nc693, nc694, 
        nc695, nc696, nc697, nc698, nc699, nc700, nc701}), .DB_DETECT(
        \DB_DETECT[3][18] ), .SB_CORRECT(\SB_CORRECT[3][18] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[3][18] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, R_ADDR[15], 
        R_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        W_ADDR[15], W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[18]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[18]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[22]  (.A(\R_DATA_TEMPR0[22] ), .B(
        \R_DATA_TEMPR1[22] ), .C(\R_DATA_TEMPR2[22] ), .D(
        \R_DATA_TEMPR3[22] ), .Y(R_DATA[22]));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%19%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C19 (.A_DOUT({nc702, 
        nc703, nc704, nc705, nc706, nc707, nc708, nc709, nc710, nc711, 
        nc712, nc713, nc714, nc715, nc716, nc717, nc718, nc719, nc720, 
        \R_DATA_TEMPR3[19] }), .B_DOUT({nc721, nc722, nc723, nc724, 
        nc725, nc726, nc727, nc728, nc729, nc730, nc731, nc732, nc733, 
        nc734, nc735, nc736, nc737, nc738, nc739, nc740}), .DB_DETECT(
        \DB_DETECT[3][19] ), .SB_CORRECT(\SB_CORRECT[3][19] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[3][19] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, R_ADDR[15], 
        R_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        W_ADDR[15], W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[19]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[19]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%38%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C38 (.A_DOUT({nc741, 
        nc742, nc743, nc744, nc745, nc746, nc747, nc748, nc749, nc750, 
        nc751, nc752, nc753, nc754, nc755, nc756, nc757, nc758, nc759, 
        \R_DATA_TEMPR0[38] }), .B_DOUT({nc760, nc761, nc762, nc763, 
        nc764, nc765, nc766, nc767, nc768, nc769, nc770, nc771, nc772, 
        nc773, nc774, nc775, nc776, nc777, nc778, nc779}), .DB_DETECT(
        \DB_DETECT[0][38] ), .SB_CORRECT(\SB_CORRECT[0][38] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][38] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, \BLKY1[0] , 
        \BLKY0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        \BLKX1[0] , \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[38]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[38]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%39%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C39 (.A_DOUT({nc780, 
        nc781, nc782, nc783, nc784, nc785, nc786, nc787, nc788, nc789, 
        nc790, nc791, nc792, nc793, nc794, nc795, nc796, nc797, nc798, 
        \R_DATA_TEMPR0[39] }), .B_DOUT({nc799, nc800, nc801, nc802, 
        nc803, nc804, nc805, nc806, nc807, nc808, nc809, nc810, nc811, 
        nc812, nc813, nc814, nc815, nc816, nc817, nc818}), .DB_DETECT(
        \DB_DETECT[0][39] ), .SB_CORRECT(\SB_CORRECT[0][39] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][39] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, \BLKY1[0] , 
        \BLKY0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        \BLKX1[0] , \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[39]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[39]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%22%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C22 (.A_DOUT({nc819, 
        nc820, nc821, nc822, nc823, nc824, nc825, nc826, nc827, nc828, 
        nc829, nc830, nc831, nc832, nc833, nc834, nc835, nc836, nc837, 
        \R_DATA_TEMPR2[22] }), .B_DOUT({nc838, nc839, nc840, nc841, 
        nc842, nc843, nc844, nc845, nc846, nc847, nc848, nc849, nc850, 
        nc851, nc852, nc853, nc854, nc855, nc856, nc857}), .DB_DETECT(
        \DB_DETECT[2][22] ), .SB_CORRECT(\SB_CORRECT[2][22] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[2][22] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, R_ADDR[15], 
        \BLKY0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        W_ADDR[15], \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[22]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[22]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%11%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C11 (.A_DOUT({nc858, 
        nc859, nc860, nc861, nc862, nc863, nc864, nc865, nc866, nc867, 
        nc868, nc869, nc870, nc871, nc872, nc873, nc874, nc875, nc876, 
        \R_DATA_TEMPR3[11] }), .B_DOUT({nc877, nc878, nc879, nc880, 
        nc881, nc882, nc883, nc884, nc885, nc886, nc887, nc888, nc889, 
        nc890, nc891, nc892, nc893, nc894, nc895, nc896}), .DB_DETECT(
        \DB_DETECT[3][11] ), .SB_CORRECT(\SB_CORRECT[3][11] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[3][11] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, R_ADDR[15], 
        R_ADDR[14]}), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        W_ADDR[15], W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[11]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[11]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%31%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C31 (.A_DOUT({nc897, 
        nc898, nc899, nc900, nc901, nc902, nc903, nc904, nc905, nc906, 
        nc907, nc908, nc909, nc910, nc911, nc912, nc913, nc914, nc915, 
        \R_DATA_TEMPR0[31] }), .B_DOUT({nc916, nc917, nc918, nc919, 
        nc920, nc921, nc922, nc923, nc924, nc925, nc926, nc927, nc928, 
        nc929, nc930, nc931, nc932, nc933, nc934, nc935}), .DB_DETECT(
        \DB_DETECT[0][31] ), .SB_CORRECT(\SB_CORRECT[0][31] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][31] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, \BLKY1[0] , 
        \BLKY0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        \BLKX1[0] , \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[31]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[31]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%5%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C5 (.A_DOUT({nc936, 
        nc937, nc938, nc939, nc940, nc941, nc942, nc943, nc944, nc945, 
        nc946, nc947, nc948, nc949, nc950, nc951, nc952, nc953, nc954, 
        \R_DATA_TEMPR0[5] }), .B_DOUT({nc955, nc956, nc957, nc958, 
        nc959, nc960, nc961, nc962, nc963, nc964, nc965, nc966, nc967, 
        nc968, nc969, nc970, nc971, nc972, nc973, nc974}), .DB_DETECT(
        \DB_DETECT[0][5] ), .SB_CORRECT(\SB_CORRECT[0][5] ), 
        .ACCESS_BUSY(\ACCESS_BUSY[0][5] ), .A_ADDR({R_ADDR[13], 
        R_ADDR[12], R_ADDR[11], R_ADDR[10], R_ADDR[9], R_ADDR[8], 
        R_ADDR[7], R_ADDR[6], R_ADDR[5], R_ADDR[4], R_ADDR[3], 
        R_ADDR[2], R_ADDR[1], R_ADDR[0]}), .A_BLK_EN({R_EN, \BLKY1[0] , 
        \BLKY0[0] }), .A_CLK(CLK), .A_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND}), .A_REN(VCC), .A_WEN({GND, GND}), .A_DOUT_EN(
        VCC), .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({
        W_ADDR[13], W_ADDR[12], W_ADDR[11], W_ADDR[10], W_ADDR[9], 
        W_ADDR[8], W_ADDR[7], W_ADDR[6], W_ADDR[5], W_ADDR[4], 
        W_ADDR[3], W_ADDR[2], W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, 
        \BLKX1[0] , \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, W_DATA[5]}), .B_REN(VCC), .B_WEN({GND, 
        WBYTE_EN[5]}), .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), 
        .B_DOUT_SRST_N(VCC), .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({
        GND, GND, GND}), .A_WMODE({GND, GND}), .A_BYPASS(VCC), 
        .B_WIDTH({GND, GND, GND}), .B_WMODE({GND, GND}), .B_BYPASS(VCC)
        , .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%28%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C28 (.A_DOUT({nc975, 
        nc976, nc977, nc978, nc979, nc980, nc981, nc982, nc983, nc984, 
        nc985, nc986, nc987, nc988, nc989, nc990, nc991, nc992, nc993, 
        \R_DATA_TEMPR1[28] }), .B_DOUT({nc994, nc995, nc996, nc997, 
        nc998, nc999, nc1000, nc1001, nc1002, nc1003, nc1004, nc1005, 
        nc1006, nc1007, nc1008, nc1009, nc1010, nc1011, nc1012, nc1013})
        , .DB_DETECT(\DB_DETECT[1][28] ), .SB_CORRECT(
        \SB_CORRECT[1][28] ), .ACCESS_BUSY(\ACCESS_BUSY[1][28] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[28]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[28]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%15%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C15 (.A_DOUT({nc1014, 
        nc1015, nc1016, nc1017, nc1018, nc1019, nc1020, nc1021, nc1022, 
        nc1023, nc1024, nc1025, nc1026, nc1027, nc1028, nc1029, nc1030, 
        nc1031, nc1032, \R_DATA_TEMPR1[15] }), .B_DOUT({nc1033, nc1034, 
        nc1035, nc1036, nc1037, nc1038, nc1039, nc1040, nc1041, nc1042, 
        nc1043, nc1044, nc1045, nc1046, nc1047, nc1048, nc1049, nc1050, 
        nc1051, nc1052}), .DB_DETECT(\DB_DETECT[1][15] ), .SB_CORRECT(
        \SB_CORRECT[1][15] ), .ACCESS_BUSY(\ACCESS_BUSY[1][15] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[15]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[15]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[6]  (.A(\R_DATA_TEMPR0[6] ), .B(\R_DATA_TEMPR1[6] )
        , .C(\R_DATA_TEMPR2[6] ), .D(\R_DATA_TEMPR3[6] ), .Y(R_DATA[6])
        );
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%5%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C5 (.A_DOUT({nc1053, 
        nc1054, nc1055, nc1056, nc1057, nc1058, nc1059, nc1060, nc1061, 
        nc1062, nc1063, nc1064, nc1065, nc1066, nc1067, nc1068, nc1069, 
        nc1070, nc1071, \R_DATA_TEMPR1[5] }), .B_DOUT({nc1072, nc1073, 
        nc1074, nc1075, nc1076, nc1077, nc1078, nc1079, nc1080, nc1081, 
        nc1082, nc1083, nc1084, nc1085, nc1086, nc1087, nc1088, nc1089, 
        nc1090, nc1091}), .DB_DETECT(\DB_DETECT[1][5] ), .SB_CORRECT(
        \SB_CORRECT[1][5] ), .ACCESS_BUSY(\ACCESS_BUSY[1][5] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[5]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[5]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%27%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C27 (.A_DOUT({nc1092, 
        nc1093, nc1094, nc1095, nc1096, nc1097, nc1098, nc1099, nc1100, 
        nc1101, nc1102, nc1103, nc1104, nc1105, nc1106, nc1107, nc1108, 
        nc1109, nc1110, \R_DATA_TEMPR3[27] }), .B_DOUT({nc1111, nc1112, 
        nc1113, nc1114, nc1115, nc1116, nc1117, nc1118, nc1119, nc1120, 
        nc1121, nc1122, nc1123, nc1124, nc1125, nc1126, nc1127, nc1128, 
        nc1129, nc1130}), .DB_DETECT(\DB_DETECT[3][27] ), .SB_CORRECT(
        \SB_CORRECT[3][27] ), .ACCESS_BUSY(\ACCESS_BUSY[3][27] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[27]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[27]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%29%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C29 (.A_DOUT({nc1131, 
        nc1132, nc1133, nc1134, nc1135, nc1136, nc1137, nc1138, nc1139, 
        nc1140, nc1141, nc1142, nc1143, nc1144, nc1145, nc1146, nc1147, 
        nc1148, nc1149, \R_DATA_TEMPR1[29] }), .B_DOUT({nc1150, nc1151, 
        nc1152, nc1153, nc1154, nc1155, nc1156, nc1157, nc1158, nc1159, 
        nc1160, nc1161, nc1162, nc1163, nc1164, nc1165, nc1166, nc1167, 
        nc1168, nc1169}), .DB_DETECT(\DB_DETECT[1][29] ), .SB_CORRECT(
        \SB_CORRECT[1][29] ), .ACCESS_BUSY(\ACCESS_BUSY[1][29] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[29]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[29]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%34%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C34 (.A_DOUT({nc1170, 
        nc1171, nc1172, nc1173, nc1174, nc1175, nc1176, nc1177, nc1178, 
        nc1179, nc1180, nc1181, nc1182, nc1183, nc1184, nc1185, nc1186, 
        nc1187, nc1188, \R_DATA_TEMPR1[34] }), .B_DOUT({nc1189, nc1190, 
        nc1191, nc1192, nc1193, nc1194, nc1195, nc1196, nc1197, nc1198, 
        nc1199, nc1200, nc1201, nc1202, nc1203, nc1204, nc1205, nc1206, 
        nc1207, nc1208}), .DB_DETECT(\DB_DETECT[1][34] ), .SB_CORRECT(
        \SB_CORRECT[1][34] ), .ACCESS_BUSY(\ACCESS_BUSY[1][34] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[34]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[34]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%15%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C15 (.A_DOUT({nc1209, 
        nc1210, nc1211, nc1212, nc1213, nc1214, nc1215, nc1216, nc1217, 
        nc1218, nc1219, nc1220, nc1221, nc1222, nc1223, nc1224, nc1225, 
        nc1226, nc1227, \R_DATA_TEMPR0[15] }), .B_DOUT({nc1228, nc1229, 
        nc1230, nc1231, nc1232, nc1233, nc1234, nc1235, nc1236, nc1237, 
        nc1238, nc1239, nc1240, nc1241, nc1242, nc1243, nc1244, nc1245, 
        nc1246, nc1247}), .DB_DETECT(\DB_DETECT[0][15] ), .SB_CORRECT(
        \SB_CORRECT[0][15] ), .ACCESS_BUSY(\ACCESS_BUSY[0][15] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[15]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[15]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[38]  (.A(\R_DATA_TEMPR0[38] ), .B(
        \R_DATA_TEMPR1[38] ), .C(\R_DATA_TEMPR2[38] ), .D(
        \R_DATA_TEMPR3[38] ), .Y(R_DATA[38]));
    OR4 \OR4_R_DATA[36]  (.A(\R_DATA_TEMPR0[36] ), .B(
        \R_DATA_TEMPR1[36] ), .C(\R_DATA_TEMPR2[36] ), .D(
        \R_DATA_TEMPR3[36] ), .Y(R_DATA[36]));
    OR4 \OR4_R_DATA[18]  (.A(\R_DATA_TEMPR0[18] ), .B(
        \R_DATA_TEMPR1[18] ), .C(\R_DATA_TEMPR2[18] ), .D(
        \R_DATA_TEMPR3[18] ), .Y(R_DATA[18]));
    OR4 \OR4_R_DATA[16]  (.A(\R_DATA_TEMPR0[16] ), .B(
        \R_DATA_TEMPR1[16] ), .C(\R_DATA_TEMPR2[16] ), .D(
        \R_DATA_TEMPR3[16] ), .Y(R_DATA[16]));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%26%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C26 (.A_DOUT({nc1248, 
        nc1249, nc1250, nc1251, nc1252, nc1253, nc1254, nc1255, nc1256, 
        nc1257, nc1258, nc1259, nc1260, nc1261, nc1262, nc1263, nc1264, 
        nc1265, nc1266, \R_DATA_TEMPR3[26] }), .B_DOUT({nc1267, nc1268, 
        nc1269, nc1270, nc1271, nc1272, nc1273, nc1274, nc1275, nc1276, 
        nc1277, nc1278, nc1279, nc1280, nc1281, nc1282, nc1283, nc1284, 
        nc1285, nc1286}), .DB_DETECT(\DB_DETECT[3][26] ), .SB_CORRECT(
        \SB_CORRECT[3][26] ), .ACCESS_BUSY(\ACCESS_BUSY[3][26] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[26]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[26]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%24%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C24 (.A_DOUT({nc1287, 
        nc1288, nc1289, nc1290, nc1291, nc1292, nc1293, nc1294, nc1295, 
        nc1296, nc1297, nc1298, nc1299, nc1300, nc1301, nc1302, nc1303, 
        nc1304, nc1305, \R_DATA_TEMPR2[24] }), .B_DOUT({nc1306, nc1307, 
        nc1308, nc1309, nc1310, nc1311, nc1312, nc1313, nc1314, nc1315, 
        nc1316, nc1317, nc1318, nc1319, nc1320, nc1321, nc1322, nc1323, 
        nc1324, nc1325}), .DB_DETECT(\DB_DETECT[2][24] ), .SB_CORRECT(
        \SB_CORRECT[2][24] ), .ACCESS_BUSY(\ACCESS_BUSY[2][24] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[24]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[24]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%21%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C21 (.A_DOUT({nc1326, 
        nc1327, nc1328, nc1329, nc1330, nc1331, nc1332, nc1333, nc1334, 
        nc1335, nc1336, nc1337, nc1338, nc1339, nc1340, nc1341, nc1342, 
        nc1343, nc1344, \R_DATA_TEMPR1[21] }), .B_DOUT({nc1345, nc1346, 
        nc1347, nc1348, nc1349, nc1350, nc1351, nc1352, nc1353, nc1354, 
        nc1355, nc1356, nc1357, nc1358, nc1359, nc1360, nc1361, nc1362, 
        nc1363, nc1364}), .DB_DETECT(\DB_DETECT[1][21] ), .SB_CORRECT(
        \SB_CORRECT[1][21] ), .ACCESS_BUSY(\ACCESS_BUSY[1][21] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[21]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[21]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%38%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C38 (.A_DOUT({nc1365, 
        nc1366, nc1367, nc1368, nc1369, nc1370, nc1371, nc1372, nc1373, 
        nc1374, nc1375, nc1376, nc1377, nc1378, nc1379, nc1380, nc1381, 
        nc1382, nc1383, \R_DATA_TEMPR3[38] }), .B_DOUT({nc1384, nc1385, 
        nc1386, nc1387, nc1388, nc1389, nc1390, nc1391, nc1392, nc1393, 
        nc1394, nc1395, nc1396, nc1397, nc1398, nc1399, nc1400, nc1401, 
        nc1402, nc1403}), .DB_DETECT(\DB_DETECT[3][38] ), .SB_CORRECT(
        \SB_CORRECT[3][38] ), .ACCESS_BUSY(\ACCESS_BUSY[3][38] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[38]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[38]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%39%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C39 (.A_DOUT({nc1404, 
        nc1405, nc1406, nc1407, nc1408, nc1409, nc1410, nc1411, nc1412, 
        nc1413, nc1414, nc1415, nc1416, nc1417, nc1418, nc1419, nc1420, 
        nc1421, nc1422, \R_DATA_TEMPR3[39] }), .B_DOUT({nc1423, nc1424, 
        nc1425, nc1426, nc1427, nc1428, nc1429, nc1430, nc1431, nc1432, 
        nc1433, nc1434, nc1435, nc1436, nc1437, nc1438, nc1439, nc1440, 
        nc1441, nc1442}), .DB_DETECT(\DB_DETECT[3][39] ), .SB_CORRECT(
        \SB_CORRECT[3][39] ), .ACCESS_BUSY(\ACCESS_BUSY[3][39] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[39]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[39]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%2%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C2 (.A_DOUT({nc1443, 
        nc1444, nc1445, nc1446, nc1447, nc1448, nc1449, nc1450, nc1451, 
        nc1452, nc1453, nc1454, nc1455, nc1456, nc1457, nc1458, nc1459, 
        nc1460, nc1461, \R_DATA_TEMPR3[2] }), .B_DOUT({nc1462, nc1463, 
        nc1464, nc1465, nc1466, nc1467, nc1468, nc1469, nc1470, nc1471, 
        nc1472, nc1473, nc1474, nc1475, nc1476, nc1477, nc1478, nc1479, 
        nc1480, nc1481}), .DB_DETECT(\DB_DETECT[3][2] ), .SB_CORRECT(
        \SB_CORRECT[3][2] ), .ACCESS_BUSY(\ACCESS_BUSY[3][2] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[2]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[2]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%12%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C12 (.A_DOUT({nc1482, 
        nc1483, nc1484, nc1485, nc1486, nc1487, nc1488, nc1489, nc1490, 
        nc1491, nc1492, nc1493, nc1494, nc1495, nc1496, nc1497, nc1498, 
        nc1499, nc1500, \R_DATA_TEMPR2[12] }), .B_DOUT({nc1501, nc1502, 
        nc1503, nc1504, nc1505, nc1506, nc1507, nc1508, nc1509, nc1510, 
        nc1511, nc1512, nc1513, nc1514, nc1515, nc1516, nc1517, nc1518, 
        nc1519, nc1520}), .DB_DETECT(\DB_DETECT[2][12] ), .SB_CORRECT(
        \SB_CORRECT[2][12] ), .ACCESS_BUSY(\ACCESS_BUSY[2][12] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[12]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[12]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[5]  (.A(\R_DATA_TEMPR0[5] ), .B(\R_DATA_TEMPR1[5] )
        , .C(\R_DATA_TEMPR2[5] ), .D(\R_DATA_TEMPR3[5] ), .Y(R_DATA[5])
        );
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%35%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C35 (.A_DOUT({nc1521, 
        nc1522, nc1523, nc1524, nc1525, nc1526, nc1527, nc1528, nc1529, 
        nc1530, nc1531, nc1532, nc1533, nc1534, nc1535, nc1536, nc1537, 
        nc1538, nc1539, \R_DATA_TEMPR2[35] }), .B_DOUT({nc1540, nc1541, 
        nc1542, nc1543, nc1544, nc1545, nc1546, nc1547, nc1548, nc1549, 
        nc1550, nc1551, nc1552, nc1553, nc1554, nc1555, nc1556, nc1557, 
        nc1558, nc1559}), .DB_DETECT(\DB_DETECT[2][35] ), .SB_CORRECT(
        \SB_CORRECT[2][35] ), .ACCESS_BUSY(\ACCESS_BUSY[2][35] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[35]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[35]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%31%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C31 (.A_DOUT({nc1560, 
        nc1561, nc1562, nc1563, nc1564, nc1565, nc1566, nc1567, nc1568, 
        nc1569, nc1570, nc1571, nc1572, nc1573, nc1574, nc1575, nc1576, 
        nc1577, nc1578, \R_DATA_TEMPR3[31] }), .B_DOUT({nc1579, nc1580, 
        nc1581, nc1582, nc1583, nc1584, nc1585, nc1586, nc1587, nc1588, 
        nc1589, nc1590, nc1591, nc1592, nc1593, nc1594, nc1595, nc1596, 
        nc1597, nc1598}), .DB_DETECT(\DB_DETECT[3][31] ), .SB_CORRECT(
        \SB_CORRECT[3][31] ), .ACCESS_BUSY(\ACCESS_BUSY[3][31] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[31]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[31]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%7%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C7 (.A_DOUT({nc1599, 
        nc1600, nc1601, nc1602, nc1603, nc1604, nc1605, nc1606, nc1607, 
        nc1608, nc1609, nc1610, nc1611, nc1612, nc1613, nc1614, nc1615, 
        nc1616, nc1617, \R_DATA_TEMPR3[7] }), .B_DOUT({nc1618, nc1619, 
        nc1620, nc1621, nc1622, nc1623, nc1624, nc1625, nc1626, nc1627, 
        nc1628, nc1629, nc1630, nc1631, nc1632, nc1633, nc1634, nc1635, 
        nc1636, nc1637}), .DB_DETECT(\DB_DETECT[3][7] ), .SB_CORRECT(
        \SB_CORRECT[3][7] ), .ACCESS_BUSY(\ACCESS_BUSY[3][7] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[7]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[7]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%4%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C4 (.A_DOUT({nc1638, 
        nc1639, nc1640, nc1641, nc1642, nc1643, nc1644, nc1645, nc1646, 
        nc1647, nc1648, nc1649, nc1650, nc1651, nc1652, nc1653, nc1654, 
        nc1655, nc1656, \R_DATA_TEMPR2[4] }), .B_DOUT({nc1657, nc1658, 
        nc1659, nc1660, nc1661, nc1662, nc1663, nc1664, nc1665, nc1666, 
        nc1667, nc1668, nc1669, nc1670, nc1671, nc1672, nc1673, nc1674, 
        nc1675, nc1676}), .DB_DETECT(\DB_DETECT[2][4] ), .SB_CORRECT(
        \SB_CORRECT[2][4] ), .ACCESS_BUSY(\ACCESS_BUSY[2][4] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[4]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[4]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%17%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C17 (.A_DOUT({nc1677, 
        nc1678, nc1679, nc1680, nc1681, nc1682, nc1683, nc1684, nc1685, 
        nc1686, nc1687, nc1688, nc1689, nc1690, nc1691, nc1692, nc1693, 
        nc1694, nc1695, \R_DATA_TEMPR1[17] }), .B_DOUT({nc1696, nc1697, 
        nc1698, nc1699, nc1700, nc1701, nc1702, nc1703, nc1704, nc1705, 
        nc1706, nc1707, nc1708, nc1709, nc1710, nc1711, nc1712, nc1713, 
        nc1714, nc1715}), .DB_DETECT(\DB_DETECT[1][17] ), .SB_CORRECT(
        \SB_CORRECT[1][17] ), .ACCESS_BUSY(\ACCESS_BUSY[1][17] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[17]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[17]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%28%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C28 (.A_DOUT({nc1716, 
        nc1717, nc1718, nc1719, nc1720, nc1721, nc1722, nc1723, nc1724, 
        nc1725, nc1726, nc1727, nc1728, nc1729, nc1730, nc1731, nc1732, 
        nc1733, nc1734, \R_DATA_TEMPR0[28] }), .B_DOUT({nc1735, nc1736, 
        nc1737, nc1738, nc1739, nc1740, nc1741, nc1742, nc1743, nc1744, 
        nc1745, nc1746, nc1747, nc1748, nc1749, nc1750, nc1751, nc1752, 
        nc1753, nc1754}), .DB_DETECT(\DB_DETECT[0][28] ), .SB_CORRECT(
        \SB_CORRECT[0][28] ), .ACCESS_BUSY(\ACCESS_BUSY[0][28] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[28]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[28]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[9]  (.A(\R_DATA_TEMPR0[9] ), .B(\R_DATA_TEMPR1[9] )
        , .C(\R_DATA_TEMPR2[9] ), .D(\R_DATA_TEMPR3[9] ), .Y(R_DATA[9])
        );
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%17%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C17 (.A_DOUT({nc1755, 
        nc1756, nc1757, nc1758, nc1759, nc1760, nc1761, nc1762, nc1763, 
        nc1764, nc1765, nc1766, nc1767, nc1768, nc1769, nc1770, nc1771, 
        nc1772, nc1773, \R_DATA_TEMPR0[17] }), .B_DOUT({nc1774, nc1775, 
        nc1776, nc1777, nc1778, nc1779, nc1780, nc1781, nc1782, nc1783, 
        nc1784, nc1785, nc1786, nc1787, nc1788, nc1789, nc1790, nc1791, 
        nc1792, nc1793}), .DB_DETECT(\DB_DETECT[0][17] ), .SB_CORRECT(
        \SB_CORRECT[0][17] ), .ACCESS_BUSY(\ACCESS_BUSY[0][17] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[17]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[17]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%29%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C29 (.A_DOUT({nc1794, 
        nc1795, nc1796, nc1797, nc1798, nc1799, nc1800, nc1801, nc1802, 
        nc1803, nc1804, nc1805, nc1806, nc1807, nc1808, nc1809, nc1810, 
        nc1811, nc1812, \R_DATA_TEMPR0[29] }), .B_DOUT({nc1813, nc1814, 
        nc1815, nc1816, nc1817, nc1818, nc1819, nc1820, nc1821, nc1822, 
        nc1823, nc1824, nc1825, nc1826, nc1827, nc1828, nc1829, nc1830, 
        nc1831, nc1832}), .DB_DETECT(\DB_DETECT[0][29] ), .SB_CORRECT(
        \SB_CORRECT[0][29] ), .ACCESS_BUSY(\ACCESS_BUSY[0][29] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[29]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[29]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%12%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C12 (.A_DOUT({nc1833, 
        nc1834, nc1835, nc1836, nc1837, nc1838, nc1839, nc1840, nc1841, 
        nc1842, nc1843, nc1844, nc1845, nc1846, nc1847, nc1848, nc1849, 
        nc1850, nc1851, \R_DATA_TEMPR3[12] }), .B_DOUT({nc1852, nc1853, 
        nc1854, nc1855, nc1856, nc1857, nc1858, nc1859, nc1860, nc1861, 
        nc1862, nc1863, nc1864, nc1865, nc1866, nc1867, nc1868, nc1869, 
        nc1870, nc1871}), .DB_DETECT(\DB_DETECT[3][12] ), .SB_CORRECT(
        \SB_CORRECT[3][12] ), .ACCESS_BUSY(\ACCESS_BUSY[3][12] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[12]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[12]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%23%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C23 (.A_DOUT({nc1872, 
        nc1873, nc1874, nc1875, nc1876, nc1877, nc1878, nc1879, nc1880, 
        nc1881, nc1882, nc1883, nc1884, nc1885, nc1886, nc1887, nc1888, 
        nc1889, nc1890, \R_DATA_TEMPR3[23] }), .B_DOUT({nc1891, nc1892, 
        nc1893, nc1894, nc1895, nc1896, nc1897, nc1898, nc1899, nc1900, 
        nc1901, nc1902, nc1903, nc1904, nc1905, nc1906, nc1907, nc1908, 
        nc1909, nc1910}), .DB_DETECT(\DB_DETECT[3][23] ), .SB_CORRECT(
        \SB_CORRECT[3][23] ), .ACCESS_BUSY(\ACCESS_BUSY[3][23] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[23]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[23]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%32%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C32 (.A_DOUT({nc1911, 
        nc1912, nc1913, nc1914, nc1915, nc1916, nc1917, nc1918, nc1919, 
        nc1920, nc1921, nc1922, nc1923, nc1924, nc1925, nc1926, nc1927, 
        nc1928, nc1929, \R_DATA_TEMPR0[32] }), .B_DOUT({nc1930, nc1931, 
        nc1932, nc1933, nc1934, nc1935, nc1936, nc1937, nc1938, nc1939, 
        nc1940, nc1941, nc1942, nc1943, nc1944, nc1945, nc1946, nc1947, 
        nc1948, nc1949}), .DB_DETECT(\DB_DETECT[0][32] ), .SB_CORRECT(
        \SB_CORRECT[0][32] ), .ACCESS_BUSY(\ACCESS_BUSY[0][32] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[32]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[32]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%16%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C16 (.A_DOUT({nc1950, 
        nc1951, nc1952, nc1953, nc1954, nc1955, nc1956, nc1957, nc1958, 
        nc1959, nc1960, nc1961, nc1962, nc1963, nc1964, nc1965, nc1966, 
        nc1967, nc1968, \R_DATA_TEMPR1[16] }), .B_DOUT({nc1969, nc1970, 
        nc1971, nc1972, nc1973, nc1974, nc1975, nc1976, nc1977, nc1978, 
        nc1979, nc1980, nc1981, nc1982, nc1983, nc1984, nc1985, nc1986, 
        nc1987, nc1988}), .DB_DETECT(\DB_DETECT[1][16] ), .SB_CORRECT(
        \SB_CORRECT[1][16] ), .ACCESS_BUSY(\ACCESS_BUSY[1][16] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[16]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[16]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%16%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C16 (.A_DOUT({nc1989, 
        nc1990, nc1991, nc1992, nc1993, nc1994, nc1995, nc1996, nc1997, 
        nc1998, nc1999, nc2000, nc2001, nc2002, nc2003, nc2004, nc2005, 
        nc2006, nc2007, \R_DATA_TEMPR0[16] }), .B_DOUT({nc2008, nc2009, 
        nc2010, nc2011, nc2012, nc2013, nc2014, nc2015, nc2016, nc2017, 
        nc2018, nc2019, nc2020, nc2021, nc2022, nc2023, nc2024, nc2025, 
        nc2026, nc2027}), .DB_DETECT(\DB_DETECT[0][16] ), .SB_CORRECT(
        \SB_CORRECT[0][16] ), .ACCESS_BUSY(\ACCESS_BUSY[0][16] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[16]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[16]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%14%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C14 (.A_DOUT({nc2028, 
        nc2029, nc2030, nc2031, nc2032, nc2033, nc2034, nc2035, nc2036, 
        nc2037, nc2038, nc2039, nc2040, nc2041, nc2042, nc2043, nc2044, 
        nc2045, nc2046, \R_DATA_TEMPR2[14] }), .B_DOUT({nc2047, nc2048, 
        nc2049, nc2050, nc2051, nc2052, nc2053, nc2054, nc2055, nc2056, 
        nc2057, nc2058, nc2059, nc2060, nc2061, nc2062, nc2063, nc2064, 
        nc2065, nc2066}), .DB_DETECT(\DB_DETECT[2][14] ), .SB_CORRECT(
        \SB_CORRECT[2][14] ), .ACCESS_BUSY(\ACCESS_BUSY[2][14] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[14]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[14]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%21%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C21 (.A_DOUT({nc2067, 
        nc2068, nc2069, nc2070, nc2071, nc2072, nc2073, nc2074, nc2075, 
        nc2076, nc2077, nc2078, nc2079, nc2080, nc2081, nc2082, nc2083, 
        nc2084, nc2085, \R_DATA_TEMPR0[21] }), .B_DOUT({nc2086, nc2087, 
        nc2088, nc2089, nc2090, nc2091, nc2092, nc2093, nc2094, nc2095, 
        nc2096, nc2097, nc2098, nc2099, nc2100, nc2101, nc2102, nc2103, 
        nc2104, nc2105}), .DB_DETECT(\DB_DETECT[0][21] ), .SB_CORRECT(
        \SB_CORRECT[0][21] ), .ACCESS_BUSY(\ACCESS_BUSY[0][21] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[21]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[21]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%1%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C1 (.A_DOUT({nc2106, 
        nc2107, nc2108, nc2109, nc2110, nc2111, nc2112, nc2113, nc2114, 
        nc2115, nc2116, nc2117, nc2118, nc2119, nc2120, nc2121, nc2122, 
        nc2123, nc2124, \R_DATA_TEMPR1[1] }), .B_DOUT({nc2125, nc2126, 
        nc2127, nc2128, nc2129, nc2130, nc2131, nc2132, nc2133, nc2134, 
        nc2135, nc2136, nc2137, nc2138, nc2139, nc2140, nc2141, nc2142, 
        nc2143, nc2144}), .DB_DETECT(\DB_DETECT[1][1] ), .SB_CORRECT(
        \SB_CORRECT[1][1] ), .ACCESS_BUSY(\ACCESS_BUSY[1][1] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[1]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[1]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%0%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C0 (.A_DOUT({nc2145, 
        nc2146, nc2147, nc2148, nc2149, nc2150, nc2151, nc2152, nc2153, 
        nc2154, nc2155, nc2156, nc2157, nc2158, nc2159, nc2160, nc2161, 
        nc2162, nc2163, \R_DATA_TEMPR0[0] }), .B_DOUT({nc2164, nc2165, 
        nc2166, nc2167, nc2168, nc2169, nc2170, nc2171, nc2172, nc2173, 
        nc2174, nc2175, nc2176, nc2177, nc2178, nc2179, nc2180, nc2181, 
        nc2182, nc2183}), .DB_DETECT(\DB_DETECT[0][0] ), .SB_CORRECT(
        \SB_CORRECT[0][0] ), .ACCESS_BUSY(\ACCESS_BUSY[0][0] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[0]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[0]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%4%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C4 (.A_DOUT({nc2184, 
        nc2185, nc2186, nc2187, nc2188, nc2189, nc2190, nc2191, nc2192, 
        nc2193, nc2194, nc2195, nc2196, nc2197, nc2198, nc2199, nc2200, 
        nc2201, nc2202, \R_DATA_TEMPR1[4] }), .B_DOUT({nc2203, nc2204, 
        nc2205, nc2206, nc2207, nc2208, nc2209, nc2210, nc2211, nc2212, 
        nc2213, nc2214, nc2215, nc2216, nc2217, nc2218, nc2219, nc2220, 
        nc2221, nc2222}), .DB_DETECT(\DB_DETECT[1][4] ), .SB_CORRECT(
        \SB_CORRECT[1][4] ), .ACCESS_BUSY(\ACCESS_BUSY[1][4] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[4]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[4]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%6%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C6 (.A_DOUT({nc2223, 
        nc2224, nc2225, nc2226, nc2227, nc2228, nc2229, nc2230, nc2231, 
        nc2232, nc2233, nc2234, nc2235, nc2236, nc2237, nc2238, nc2239, 
        nc2240, nc2241, \R_DATA_TEMPR1[6] }), .B_DOUT({nc2242, nc2243, 
        nc2244, nc2245, nc2246, nc2247, nc2248, nc2249, nc2250, nc2251, 
        nc2252, nc2253, nc2254, nc2255, nc2256, nc2257, nc2258, nc2259, 
        nc2260, nc2261}), .DB_DETECT(\DB_DETECT[1][6] ), .SB_CORRECT(
        \SB_CORRECT[1][6] ), .ACCESS_BUSY(\ACCESS_BUSY[1][6] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[6]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[6]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%1%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C1 (.A_DOUT({nc2262, 
        nc2263, nc2264, nc2265, nc2266, nc2267, nc2268, nc2269, nc2270, 
        nc2271, nc2272, nc2273, nc2274, nc2275, nc2276, nc2277, nc2278, 
        nc2279, nc2280, \R_DATA_TEMPR0[1] }), .B_DOUT({nc2281, nc2282, 
        nc2283, nc2284, nc2285, nc2286, nc2287, nc2288, nc2289, nc2290, 
        nc2291, nc2292, nc2293, nc2294, nc2295, nc2296, nc2297, nc2298, 
        nc2299, nc2300}), .DB_DETECT(\DB_DETECT[0][1] ), .SB_CORRECT(
        \SB_CORRECT[0][1] ), .ACCESS_BUSY(\ACCESS_BUSY[0][1] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[1]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[1]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%20%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C20 (.A_DOUT({nc2301, 
        nc2302, nc2303, nc2304, nc2305, nc2306, nc2307, nc2308, nc2309, 
        nc2310, nc2311, nc2312, nc2313, nc2314, nc2315, nc2316, nc2317, 
        nc2318, nc2319, \R_DATA_TEMPR3[20] }), .B_DOUT({nc2320, nc2321, 
        nc2322, nc2323, nc2324, nc2325, nc2326, nc2327, nc2328, nc2329, 
        nc2330, nc2331, nc2332, nc2333, nc2334, nc2335, nc2336, nc2337, 
        nc2338, nc2339}), .DB_DETECT(\DB_DETECT[3][20] ), .SB_CORRECT(
        \SB_CORRECT[3][20] ), .ACCESS_BUSY(\ACCESS_BUSY[3][20] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[20]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[20]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%22%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C22 (.A_DOUT({nc2340, 
        nc2341, nc2342, nc2343, nc2344, nc2345, nc2346, nc2347, nc2348, 
        nc2349, nc2350, nc2351, nc2352, nc2353, nc2354, nc2355, nc2356, 
        nc2357, nc2358, \R_DATA_TEMPR1[22] }), .B_DOUT({nc2359, nc2360, 
        nc2361, nc2362, nc2363, nc2364, nc2365, nc2366, nc2367, nc2368, 
        nc2369, nc2370, nc2371, nc2372, nc2373, nc2374, nc2375, nc2376, 
        nc2377, nc2378}), .DB_DETECT(\DB_DETECT[1][22] ), .SB_CORRECT(
        \SB_CORRECT[1][22] ), .ACCESS_BUSY(\ACCESS_BUSY[1][22] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[22]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[22]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%0%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C0 (.A_DOUT({nc2379, 
        nc2380, nc2381, nc2382, nc2383, nc2384, nc2385, nc2386, nc2387, 
        nc2388, nc2389, nc2390, nc2391, nc2392, nc2393, nc2394, nc2395, 
        nc2396, nc2397, \R_DATA_TEMPR3[0] }), .B_DOUT({nc2398, nc2399, 
        nc2400, nc2401, nc2402, nc2403, nc2404, nc2405, nc2406, nc2407, 
        nc2408, nc2409, nc2410, nc2411, nc2412, nc2413, nc2414, nc2415, 
        nc2416, nc2417}), .DB_DETECT(\DB_DETECT[3][0] ), .SB_CORRECT(
        \SB_CORRECT[3][0] ), .ACCESS_BUSY(\ACCESS_BUSY[3][0] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[0]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[0]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%37%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C37 (.A_DOUT({nc2418, 
        nc2419, nc2420, nc2421, nc2422, nc2423, nc2424, nc2425, nc2426, 
        nc2427, nc2428, nc2429, nc2430, nc2431, nc2432, nc2433, nc2434, 
        nc2435, nc2436, \R_DATA_TEMPR2[37] }), .B_DOUT({nc2437, nc2438, 
        nc2439, nc2440, nc2441, nc2442, nc2443, nc2444, nc2445, nc2446, 
        nc2447, nc2448, nc2449, nc2450, nc2451, nc2452, nc2453, nc2454, 
        nc2455, nc2456}), .DB_DETECT(\DB_DETECT[2][37] ), .SB_CORRECT(
        \SB_CORRECT[2][37] ), .ACCESS_BUSY(\ACCESS_BUSY[2][37] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[37]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[37]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%14%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C14 (.A_DOUT({nc2457, 
        nc2458, nc2459, nc2460, nc2461, nc2462, nc2463, nc2464, nc2465, 
        nc2466, nc2467, nc2468, nc2469, nc2470, nc2471, nc2472, nc2473, 
        nc2474, nc2475, \R_DATA_TEMPR3[14] }), .B_DOUT({nc2476, nc2477, 
        nc2478, nc2479, nc2480, nc2481, nc2482, nc2483, nc2484, nc2485, 
        nc2486, nc2487, nc2488, nc2489, nc2490, nc2491, nc2492, nc2493, 
        nc2494, nc2495}), .DB_DETECT(\DB_DETECT[3][14] ), .SB_CORRECT(
        \SB_CORRECT[3][14] ), .ACCESS_BUSY(\ACCESS_BUSY[3][14] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[14]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[14]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%9%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C9 (.A_DOUT({nc2496, 
        nc2497, nc2498, nc2499, nc2500, nc2501, nc2502, nc2503, nc2504, 
        nc2505, nc2506, nc2507, nc2508, nc2509, nc2510, nc2511, nc2512, 
        nc2513, nc2514, \R_DATA_TEMPR1[9] }), .B_DOUT({nc2515, nc2516, 
        nc2517, nc2518, nc2519, nc2520, nc2521, nc2522, nc2523, nc2524, 
        nc2525, nc2526, nc2527, nc2528, nc2529, nc2530, nc2531, nc2532, 
        nc2533, nc2534}), .DB_DETECT(\DB_DETECT[1][9] ), .SB_CORRECT(
        \SB_CORRECT[1][9] ), .ACCESS_BUSY(\ACCESS_BUSY[1][9] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[9]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[9]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%8%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C8 (.A_DOUT({nc2535, 
        nc2536, nc2537, nc2538, nc2539, nc2540, nc2541, nc2542, nc2543, 
        nc2544, nc2545, nc2546, nc2547, nc2548, nc2549, nc2550, nc2551, 
        nc2552, nc2553, \R_DATA_TEMPR3[8] }), .B_DOUT({nc2554, nc2555, 
        nc2556, nc2557, nc2558, nc2559, nc2560, nc2561, nc2562, nc2563, 
        nc2564, nc2565, nc2566, nc2567, nc2568, nc2569, nc2570, nc2571, 
        nc2572, nc2573}), .DB_DETECT(\DB_DETECT[3][8] ), .SB_CORRECT(
        \SB_CORRECT[3][8] ), .ACCESS_BUSY(\ACCESS_BUSY[3][8] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[8]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[8]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%34%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C34 (.A_DOUT({nc2574, 
        nc2575, nc2576, nc2577, nc2578, nc2579, nc2580, nc2581, nc2582, 
        nc2583, nc2584, nc2585, nc2586, nc2587, nc2588, nc2589, nc2590, 
        nc2591, nc2592, \R_DATA_TEMPR0[34] }), .B_DOUT({nc2593, nc2594, 
        nc2595, nc2596, nc2597, nc2598, nc2599, nc2600, nc2601, nc2602, 
        nc2603, nc2604, nc2605, nc2606, nc2607, nc2608, nc2609, nc2610, 
        nc2611, nc2612}), .DB_DETECT(\DB_DETECT[0][34] ), .SB_CORRECT(
        \SB_CORRECT[0][34] ), .ACCESS_BUSY(\ACCESS_BUSY[0][34] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[34]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[34]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%36%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C36 (.A_DOUT({nc2613, 
        nc2614, nc2615, nc2616, nc2617, nc2618, nc2619, nc2620, nc2621, 
        nc2622, nc2623, nc2624, nc2625, nc2626, nc2627, nc2628, nc2629, 
        nc2630, nc2631, \R_DATA_TEMPR2[36] }), .B_DOUT({nc2632, nc2633, 
        nc2634, nc2635, nc2636, nc2637, nc2638, nc2639, nc2640, nc2641, 
        nc2642, nc2643, nc2644, nc2645, nc2646, nc2647, nc2648, nc2649, 
        nc2650, nc2651}), .DB_DETECT(\DB_DETECT[2][36] ), .SB_CORRECT(
        \SB_CORRECT[2][36] ), .ACCESS_BUSY(\ACCESS_BUSY[2][36] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[36]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[36]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%13%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C13 (.A_DOUT({nc2652, 
        nc2653, nc2654, nc2655, nc2656, nc2657, nc2658, nc2659, nc2660, 
        nc2661, nc2662, nc2663, nc2664, nc2665, nc2666, nc2667, nc2668, 
        nc2669, nc2670, \R_DATA_TEMPR1[13] }), .B_DOUT({nc2671, nc2672, 
        nc2673, nc2674, nc2675, nc2676, nc2677, nc2678, nc2679, nc2680, 
        nc2681, nc2682, nc2683, nc2684, nc2685, nc2686, nc2687, nc2688, 
        nc2689, nc2690}), .DB_DETECT(\DB_DETECT[1][13] ), .SB_CORRECT(
        \SB_CORRECT[1][13] ), .ACCESS_BUSY(\ACCESS_BUSY[1][13] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[13]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[13]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%32%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C32 (.A_DOUT({nc2691, 
        nc2692, nc2693, nc2694, nc2695, nc2696, nc2697, nc2698, nc2699, 
        nc2700, nc2701, nc2702, nc2703, nc2704, nc2705, nc2706, nc2707, 
        nc2708, nc2709, \R_DATA_TEMPR3[32] }), .B_DOUT({nc2710, nc2711, 
        nc2712, nc2713, nc2714, nc2715, nc2716, nc2717, nc2718, nc2719, 
        nc2720, nc2721, nc2722, nc2723, nc2724, nc2725, nc2726, nc2727, 
        nc2728, nc2729}), .DB_DETECT(\DB_DETECT[3][32] ), .SB_CORRECT(
        \SB_CORRECT[3][32] ), .ACCESS_BUSY(\ACCESS_BUSY[3][32] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[32]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[32]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[31]  (.A(\R_DATA_TEMPR0[31] ), .B(
        \R_DATA_TEMPR1[31] ), .C(\R_DATA_TEMPR2[31] ), .D(
        \R_DATA_TEMPR3[31] ), .Y(R_DATA[31]));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%13%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C13 (.A_DOUT({nc2730, 
        nc2731, nc2732, nc2733, nc2734, nc2735, nc2736, nc2737, nc2738, 
        nc2739, nc2740, nc2741, nc2742, nc2743, nc2744, nc2745, nc2746, 
        nc2747, nc2748, \R_DATA_TEMPR0[13] }), .B_DOUT({nc2749, nc2750, 
        nc2751, nc2752, nc2753, nc2754, nc2755, nc2756, nc2757, nc2758, 
        nc2759, nc2760, nc2761, nc2762, nc2763, nc2764, nc2765, nc2766, 
        nc2767, nc2768}), .DB_DETECT(\DB_DETECT[0][13] ), .SB_CORRECT(
        \SB_CORRECT[0][13] ), .ACCESS_BUSY(\ACCESS_BUSY[0][13] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[13]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[13]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[11]  (.A(\R_DATA_TEMPR0[11] ), .B(
        \R_DATA_TEMPR1[11] ), .C(\R_DATA_TEMPR2[11] ), .D(
        \R_DATA_TEMPR3[11] ), .Y(R_DATA[11]));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%3%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C3 (.A_DOUT({nc2769, 
        nc2770, nc2771, nc2772, nc2773, nc2774, nc2775, nc2776, nc2777, 
        nc2778, nc2779, nc2780, nc2781, nc2782, nc2783, nc2784, nc2785, 
        nc2786, nc2787, \R_DATA_TEMPR2[3] }), .B_DOUT({nc2788, nc2789, 
        nc2790, nc2791, nc2792, nc2793, nc2794, nc2795, nc2796, nc2797, 
        nc2798, nc2799, nc2800, nc2801, nc2802, nc2803, nc2804, nc2805, 
        nc2806, nc2807}), .DB_DETECT(\DB_DETECT[2][3] ), .SB_CORRECT(
        \SB_CORRECT[2][3] ), .ACCESS_BUSY(\ACCESS_BUSY[2][3] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[3]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[3]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%5%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C5 (.A_DOUT({nc2808, 
        nc2809, nc2810, nc2811, nc2812, nc2813, nc2814, nc2815, nc2816, 
        nc2817, nc2818, nc2819, nc2820, nc2821, nc2822, nc2823, nc2824, 
        nc2825, nc2826, \R_DATA_TEMPR3[5] }), .B_DOUT({nc2827, nc2828, 
        nc2829, nc2830, nc2831, nc2832, nc2833, nc2834, nc2835, nc2836, 
        nc2837, nc2838, nc2839, nc2840, nc2841, nc2842, nc2843, nc2844, 
        nc2845, nc2846}), .DB_DETECT(\DB_DETECT[3][5] ), .SB_CORRECT(
        \SB_CORRECT[3][5] ), .ACCESS_BUSY(\ACCESS_BUSY[3][5] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[5]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[5]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[29]  (.A(\R_DATA_TEMPR0[29] ), .B(
        \R_DATA_TEMPR1[29] ), .C(\R_DATA_TEMPR2[29] ), .D(
        \R_DATA_TEMPR3[29] ), .Y(R_DATA[29]));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%24%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C24 (.A_DOUT({nc2847, 
        nc2848, nc2849, nc2850, nc2851, nc2852, nc2853, nc2854, nc2855, 
        nc2856, nc2857, nc2858, nc2859, nc2860, nc2861, nc2862, nc2863, 
        nc2864, nc2865, \R_DATA_TEMPR1[24] }), .B_DOUT({nc2866, nc2867, 
        nc2868, nc2869, nc2870, nc2871, nc2872, nc2873, nc2874, nc2875, 
        nc2876, nc2877, nc2878, nc2879, nc2880, nc2881, nc2882, nc2883, 
        nc2884, nc2885}), .DB_DETECT(\DB_DETECT[1][24] ), .SB_CORRECT(
        \SB_CORRECT[1][24] ), .ACCESS_BUSY(\ACCESS_BUSY[1][24] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[24]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[24]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%35%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C35 (.A_DOUT({nc2886, 
        nc2887, nc2888, nc2889, nc2890, nc2891, nc2892, nc2893, nc2894, 
        nc2895, nc2896, nc2897, nc2898, nc2899, nc2900, nc2901, nc2902, 
        nc2903, nc2904, \R_DATA_TEMPR1[35] }), .B_DOUT({nc2905, nc2906, 
        nc2907, nc2908, nc2909, nc2910, nc2911, nc2912, nc2913, nc2914, 
        nc2915, nc2916, nc2917, nc2918, nc2919, nc2920, nc2921, nc2922, 
        nc2923, nc2924}), .DB_DETECT(\DB_DETECT[1][35] ), .SB_CORRECT(
        \SB_CORRECT[1][35] ), .ACCESS_BUSY(\ACCESS_BUSY[1][35] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[35]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[35]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%10%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C10 (.A_DOUT({nc2925, 
        nc2926, nc2927, nc2928, nc2929, nc2930, nc2931, nc2932, nc2933, 
        nc2934, nc2935, nc2936, nc2937, nc2938, nc2939, nc2940, nc2941, 
        nc2942, nc2943, \R_DATA_TEMPR1[10] }), .B_DOUT({nc2944, nc2945, 
        nc2946, nc2947, nc2948, nc2949, nc2950, nc2951, nc2952, nc2953, 
        nc2954, nc2955, nc2956, nc2957, nc2958, nc2959, nc2960, nc2961, 
        nc2962, nc2963}), .DB_DETECT(\DB_DETECT[1][10] ), .SB_CORRECT(
        \SB_CORRECT[1][10] ), .ACCESS_BUSY(\ACCESS_BUSY[1][10] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[10]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[10]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%25%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C25 (.A_DOUT({nc2964, 
        nc2965, nc2966, nc2967, nc2968, nc2969, nc2970, nc2971, nc2972, 
        nc2973, nc2974, nc2975, nc2976, nc2977, nc2978, nc2979, nc2980, 
        nc2981, nc2982, \R_DATA_TEMPR2[25] }), .B_DOUT({nc2983, nc2984, 
        nc2985, nc2986, nc2987, nc2988, nc2989, nc2990, nc2991, nc2992, 
        nc2993, nc2994, nc2995, nc2996, nc2997, nc2998, nc2999, nc3000, 
        nc3001, nc3002}), .DB_DETECT(\DB_DETECT[2][25] ), .SB_CORRECT(
        \SB_CORRECT[2][25] ), .ACCESS_BUSY(\ACCESS_BUSY[2][25] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[25]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[25]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%22%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C22 (.A_DOUT({nc3003, 
        nc3004, nc3005, nc3006, nc3007, nc3008, nc3009, nc3010, nc3011, 
        nc3012, nc3013, nc3014, nc3015, nc3016, nc3017, nc3018, nc3019, 
        nc3020, nc3021, \R_DATA_TEMPR0[22] }), .B_DOUT({nc3022, nc3023, 
        nc3024, nc3025, nc3026, nc3027, nc3028, nc3029, nc3030, nc3031, 
        nc3032, nc3033, nc3034, nc3035, nc3036, nc3037, nc3038, nc3039, 
        nc3040, nc3041}), .DB_DETECT(\DB_DETECT[0][22] ), .SB_CORRECT(
        \SB_CORRECT[0][22] ), .ACCESS_BUSY(\ACCESS_BUSY[0][22] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[22]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[22]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%10%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C10 (.A_DOUT({nc3042, 
        nc3043, nc3044, nc3045, nc3046, nc3047, nc3048, nc3049, nc3050, 
        nc3051, nc3052, nc3053, nc3054, nc3055, nc3056, nc3057, nc3058, 
        nc3059, nc3060, \R_DATA_TEMPR0[10] }), .B_DOUT({nc3061, nc3062, 
        nc3063, nc3064, nc3065, nc3066, nc3067, nc3068, nc3069, nc3070, 
        nc3071, nc3072, nc3073, nc3074, nc3075, nc3076, nc3077, nc3078, 
        nc3079, nc3080}), .DB_DETECT(\DB_DETECT[0][10] ), .SB_CORRECT(
        \SB_CORRECT[0][10] ), .ACCESS_BUSY(\ACCESS_BUSY[0][10] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[10]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[10]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%33%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C33 (.A_DOUT({nc3081, 
        nc3082, nc3083, nc3084, nc3085, nc3086, nc3087, nc3088, nc3089, 
        nc3090, nc3091, nc3092, nc3093, nc3094, nc3095, nc3096, nc3097, 
        nc3098, nc3099, \R_DATA_TEMPR2[33] }), .B_DOUT({nc3100, nc3101, 
        nc3102, nc3103, nc3104, nc3105, nc3106, nc3107, nc3108, nc3109, 
        nc3110, nc3111, nc3112, nc3113, nc3114, nc3115, nc3116, nc3117, 
        nc3118, nc3119}), .DB_DETECT(\DB_DETECT[2][33] ), .SB_CORRECT(
        \SB_CORRECT[2][33] ), .ACCESS_BUSY(\ACCESS_BUSY[2][33] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[33]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[33]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%8%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C8 (.A_DOUT({nc3120, 
        nc3121, nc3122, nc3123, nc3124, nc3125, nc3126, nc3127, nc3128, 
        nc3129, nc3130, nc3131, nc3132, nc3133, nc3134, nc3135, nc3136, 
        nc3137, nc3138, \R_DATA_TEMPR1[8] }), .B_DOUT({nc3139, nc3140, 
        nc3141, nc3142, nc3143, nc3144, nc3145, nc3146, nc3147, nc3148, 
        nc3149, nc3150, nc3151, nc3152, nc3153, nc3154, nc3155, nc3156, 
        nc3157, nc3158}), .DB_DETECT(\DB_DETECT[1][8] ), .SB_CORRECT(
        \SB_CORRECT[1][8] ), .ACCESS_BUSY(\ACCESS_BUSY[1][8] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[8]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[8]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%34%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C34 (.A_DOUT({nc3159, 
        nc3160, nc3161, nc3162, nc3163, nc3164, nc3165, nc3166, nc3167, 
        nc3168, nc3169, nc3170, nc3171, nc3172, nc3173, nc3174, nc3175, 
        nc3176, nc3177, \R_DATA_TEMPR3[34] }), .B_DOUT({nc3178, nc3179, 
        nc3180, nc3181, nc3182, nc3183, nc3184, nc3185, nc3186, nc3187, 
        nc3188, nc3189, nc3190, nc3191, nc3192, nc3193, nc3194, nc3195, 
        nc3196, nc3197}), .DB_DETECT(\DB_DETECT[3][34] ), .SB_CORRECT(
        \SB_CORRECT[3][34] ), .ACCESS_BUSY(\ACCESS_BUSY[3][34] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[34]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[34]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[34]  (.A(\R_DATA_TEMPR0[34] ), .B(
        \R_DATA_TEMPR1[34] ), .C(\R_DATA_TEMPR2[34] ), .D(
        \R_DATA_TEMPR3[34] ), .Y(R_DATA[34]));
    OR4 \OR4_R_DATA[14]  (.A(\R_DATA_TEMPR0[14] ), .B(
        \R_DATA_TEMPR1[14] ), .C(\R_DATA_TEMPR2[14] ), .D(
        \R_DATA_TEMPR3[14] ), .Y(R_DATA[14]));
    OR4 \OR4_R_DATA[33]  (.A(\R_DATA_TEMPR0[33] ), .B(
        \R_DATA_TEMPR1[33] ), .C(\R_DATA_TEMPR2[33] ), .D(
        \R_DATA_TEMPR3[33] ), .Y(R_DATA[33]));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%7%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C7 (.A_DOUT({nc3198, 
        nc3199, nc3200, nc3201, nc3202, nc3203, nc3204, nc3205, nc3206, 
        nc3207, nc3208, nc3209, nc3210, nc3211, nc3212, nc3213, nc3214, 
        nc3215, nc3216, \R_DATA_TEMPR1[7] }), .B_DOUT({nc3217, nc3218, 
        nc3219, nc3220, nc3221, nc3222, nc3223, nc3224, nc3225, nc3226, 
        nc3227, nc3228, nc3229, nc3230, nc3231, nc3232, nc3233, nc3234, 
        nc3235, nc3236}), .DB_DETECT(\DB_DETECT[1][7] ), .SB_CORRECT(
        \SB_CORRECT[1][7] ), .ACCESS_BUSY(\ACCESS_BUSY[1][7] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[7]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[7]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[13]  (.A(\R_DATA_TEMPR0[13] ), .B(
        \R_DATA_TEMPR1[13] ), .C(\R_DATA_TEMPR2[13] ), .D(
        \R_DATA_TEMPR3[13] ), .Y(R_DATA[13]));
    OR4 \OR4_R_DATA[35]  (.A(\R_DATA_TEMPR0[35] ), .B(
        \R_DATA_TEMPR1[35] ), .C(\R_DATA_TEMPR2[35] ), .D(
        \R_DATA_TEMPR3[35] ), .Y(R_DATA[35]));
    OR4 \OR4_R_DATA[15]  (.A(\R_DATA_TEMPR0[15] ), .B(
        \R_DATA_TEMPR1[15] ), .C(\R_DATA_TEMPR2[15] ), .D(
        \R_DATA_TEMPR3[15] ), .Y(R_DATA[15]));
    OR4 \OR4_R_DATA[27]  (.A(\R_DATA_TEMPR0[27] ), .B(
        \R_DATA_TEMPR1[27] ), .C(\R_DATA_TEMPR2[27] ), .D(
        \R_DATA_TEMPR3[27] ), .Y(R_DATA[27]));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%30%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C30 (.A_DOUT({nc3237, 
        nc3238, nc3239, nc3240, nc3241, nc3242, nc3243, nc3244, nc3245, 
        nc3246, nc3247, nc3248, nc3249, nc3250, nc3251, nc3252, nc3253, 
        nc3254, nc3255, \R_DATA_TEMPR2[30] }), .B_DOUT({nc3256, nc3257, 
        nc3258, nc3259, nc3260, nc3261, nc3262, nc3263, nc3264, nc3265, 
        nc3266, nc3267, nc3268, nc3269, nc3270, nc3271, nc3272, nc3273, 
        nc3274, nc3275}), .DB_DETECT(\DB_DETECT[2][30] ), .SB_CORRECT(
        \SB_CORRECT[2][30] ), .ACCESS_BUSY(\ACCESS_BUSY[2][30] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[30]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[30]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%6%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C6 (.A_DOUT({nc3276, 
        nc3277, nc3278, nc3279, nc3280, nc3281, nc3282, nc3283, nc3284, 
        nc3285, nc3286, nc3287, nc3288, nc3289, nc3290, nc3291, nc3292, 
        nc3293, nc3294, \R_DATA_TEMPR0[6] }), .B_DOUT({nc3295, nc3296, 
        nc3297, nc3298, nc3299, nc3300, nc3301, nc3302, nc3303, nc3304, 
        nc3305, nc3306, nc3307, nc3308, nc3309, nc3310, nc3311, nc3312, 
        nc3313, nc3314}), .DB_DETECT(\DB_DETECT[0][6] ), .SB_CORRECT(
        \SB_CORRECT[0][6] ), .ACCESS_BUSY(\ACCESS_BUSY[0][6] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[6]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[6]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%37%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C37 (.A_DOUT({nc3315, 
        nc3316, nc3317, nc3318, nc3319, nc3320, nc3321, nc3322, nc3323, 
        nc3324, nc3325, nc3326, nc3327, nc3328, nc3329, nc3330, nc3331, 
        nc3332, nc3333, \R_DATA_TEMPR1[37] }), .B_DOUT({nc3334, nc3335, 
        nc3336, nc3337, nc3338, nc3339, nc3340, nc3341, nc3342, nc3343, 
        nc3344, nc3345, nc3346, nc3347, nc3348, nc3349, nc3350, nc3351, 
        nc3352, nc3353}), .DB_DETECT(\DB_DETECT[1][37] ), .SB_CORRECT(
        \SB_CORRECT[1][37] ), .ACCESS_BUSY(\ACCESS_BUSY[1][37] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[37]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[37]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%24%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C24 (.A_DOUT({nc3354, 
        nc3355, nc3356, nc3357, nc3358, nc3359, nc3360, nc3361, nc3362, 
        nc3363, nc3364, nc3365, nc3366, nc3367, nc3368, nc3369, nc3370, 
        nc3371, nc3372, \R_DATA_TEMPR0[24] }), .B_DOUT({nc3373, nc3374, 
        nc3375, nc3376, nc3377, nc3378, nc3379, nc3380, nc3381, nc3382, 
        nc3383, nc3384, nc3385, nc3386, nc3387, nc3388, nc3389, nc3390, 
        nc3391, nc3392}), .DB_DETECT(\DB_DETECT[0][24] ), .SB_CORRECT(
        \SB_CORRECT[0][24] ), .ACCESS_BUSY(\ACCESS_BUSY[0][24] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[24]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[24]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[32]  (.A(\R_DATA_TEMPR0[32] ), .B(
        \R_DATA_TEMPR1[32] ), .C(\R_DATA_TEMPR2[32] ), .D(
        \R_DATA_TEMPR3[32] ), .Y(R_DATA[32]));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%28%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C28 (.A_DOUT({nc3393, 
        nc3394, nc3395, nc3396, nc3397, nc3398, nc3399, nc3400, nc3401, 
        nc3402, nc3403, nc3404, nc3405, nc3406, nc3407, nc3408, nc3409, 
        nc3410, nc3411, \R_DATA_TEMPR3[28] }), .B_DOUT({nc3412, nc3413, 
        nc3414, nc3415, nc3416, nc3417, nc3418, nc3419, nc3420, nc3421, 
        nc3422, nc3423, nc3424, nc3425, nc3426, nc3427, nc3428, nc3429, 
        nc3430, nc3431}), .DB_DETECT(\DB_DETECT[3][28] ), .SB_CORRECT(
        \SB_CORRECT[3][28] ), .ACCESS_BUSY(\ACCESS_BUSY[3][28] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[28]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[28]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%36%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C36 (.A_DOUT({nc3432, 
        nc3433, nc3434, nc3435, nc3436, nc3437, nc3438, nc3439, nc3440, 
        nc3441, nc3442, nc3443, nc3444, nc3445, nc3446, nc3447, nc3448, 
        nc3449, nc3450, \R_DATA_TEMPR1[36] }), .B_DOUT({nc3451, nc3452, 
        nc3453, nc3454, nc3455, nc3456, nc3457, nc3458, nc3459, nc3460, 
        nc3461, nc3462, nc3463, nc3464, nc3465, nc3466, nc3467, nc3468, 
        nc3469, nc3470}), .DB_DETECT(\DB_DETECT[1][36] ), .SB_CORRECT(
        \SB_CORRECT[1][36] ), .ACCESS_BUSY(\ACCESS_BUSY[1][36] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[36]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[36]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[12]  (.A(\R_DATA_TEMPR0[12] ), .B(
        \R_DATA_TEMPR1[12] ), .C(\R_DATA_TEMPR2[12] ), .D(
        \R_DATA_TEMPR3[12] ), .Y(R_DATA[12]));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%29%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C29 (.A_DOUT({nc3471, 
        nc3472, nc3473, nc3474, nc3475, nc3476, nc3477, nc3478, nc3479, 
        nc3480, nc3481, nc3482, nc3483, nc3484, nc3485, nc3486, nc3487, 
        nc3488, nc3489, \R_DATA_TEMPR3[29] }), .B_DOUT({nc3490, nc3491, 
        nc3492, nc3493, nc3494, nc3495, nc3496, nc3497, nc3498, nc3499, 
        nc3500, nc3501, nc3502, nc3503, nc3504, nc3505, nc3506, nc3507, 
        nc3508, nc3509}), .DB_DETECT(\DB_DETECT[3][29] ), .SB_CORRECT(
        \SB_CORRECT[3][29] ), .ACCESS_BUSY(\ACCESS_BUSY[3][29] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[29]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[29]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%27%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C27 (.A_DOUT({nc3510, 
        nc3511, nc3512, nc3513, nc3514, nc3515, nc3516, nc3517, nc3518, 
        nc3519, nc3520, nc3521, nc3522, nc3523, nc3524, nc3525, nc3526, 
        nc3527, nc3528, \R_DATA_TEMPR2[27] }), .B_DOUT({nc3529, nc3530, 
        nc3531, nc3532, nc3533, nc3534, nc3535, nc3536, nc3537, nc3538, 
        nc3539, nc3540, nc3541, nc3542, nc3543, nc3544, nc3545, nc3546, 
        nc3547, nc3548}), .DB_DETECT(\DB_DETECT[2][27] ), .SB_CORRECT(
        \SB_CORRECT[2][27] ), .ACCESS_BUSY(\ACCESS_BUSY[2][27] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[27]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[27]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%15%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C15 (.A_DOUT({nc3549, 
        nc3550, nc3551, nc3552, nc3553, nc3554, nc3555, nc3556, nc3557, 
        nc3558, nc3559, nc3560, nc3561, nc3562, nc3563, nc3564, nc3565, 
        nc3566, nc3567, \R_DATA_TEMPR2[15] }), .B_DOUT({nc3568, nc3569, 
        nc3570, nc3571, nc3572, nc3573, nc3574, nc3575, nc3576, nc3577, 
        nc3578, nc3579, nc3580, nc3581, nc3582, nc3583, nc3584, nc3585, 
        nc3586, nc3587}), .DB_DETECT(\DB_DETECT[2][15] ), .SB_CORRECT(
        \SB_CORRECT[2][15] ), .ACCESS_BUSY(\ACCESS_BUSY[2][15] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[15]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[15]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[20]  (.A(\R_DATA_TEMPR0[20] ), .B(
        \R_DATA_TEMPR1[20] ), .C(\R_DATA_TEMPR2[20] ), .D(
        \R_DATA_TEMPR3[20] ), .Y(R_DATA[20]));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%8%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C8 (.A_DOUT({nc3588, 
        nc3589, nc3590, nc3591, nc3592, nc3593, nc3594, nc3595, nc3596, 
        nc3597, nc3598, nc3599, nc3600, nc3601, nc3602, nc3603, nc3604, 
        nc3605, nc3606, \R_DATA_TEMPR0[8] }), .B_DOUT({nc3607, nc3608, 
        nc3609, nc3610, nc3611, nc3612, nc3613, nc3614, nc3615, nc3616, 
        nc3617, nc3618, nc3619, nc3620, nc3621, nc3622, nc3623, nc3624, 
        nc3625, nc3626}), .DB_DETECT(\DB_DETECT[0][8] ), .SB_CORRECT(
        \SB_CORRECT[0][8] ), .ACCESS_BUSY(\ACCESS_BUSY[0][8] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[8]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[8]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%7%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C7 (.A_DOUT({nc3627, 
        nc3628, nc3629, nc3630, nc3631, nc3632, nc3633, nc3634, nc3635, 
        nc3636, nc3637, nc3638, nc3639, nc3640, nc3641, nc3642, nc3643, 
        nc3644, nc3645, \R_DATA_TEMPR0[7] }), .B_DOUT({nc3646, nc3647, 
        nc3648, nc3649, nc3650, nc3651, nc3652, nc3653, nc3654, nc3655, 
        nc3656, nc3657, nc3658, nc3659, nc3660, nc3661, nc3662, nc3663, 
        nc3664, nc3665}), .DB_DETECT(\DB_DETECT[0][7] ), .SB_CORRECT(
        \SB_CORRECT[0][7] ), .ACCESS_BUSY(\ACCESS_BUSY[0][7] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[7]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[7]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%6%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C6 (.A_DOUT({nc3666, 
        nc3667, nc3668, nc3669, nc3670, nc3671, nc3672, nc3673, nc3674, 
        nc3675, nc3676, nc3677, nc3678, nc3679, nc3680, nc3681, nc3682, 
        nc3683, nc3684, \R_DATA_TEMPR2[6] }), .B_DOUT({nc3685, nc3686, 
        nc3687, nc3688, nc3689, nc3690, nc3691, nc3692, nc3693, nc3694, 
        nc3695, nc3696, nc3697, nc3698, nc3699, nc3700, nc3701, nc3702, 
        nc3703, nc3704}), .DB_DETECT(\DB_DETECT[2][6] ), .SB_CORRECT(
        \SB_CORRECT[2][6] ), .ACCESS_BUSY(\ACCESS_BUSY[2][6] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[6]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[6]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%6%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C6 (.A_DOUT({nc3705, 
        nc3706, nc3707, nc3708, nc3709, nc3710, nc3711, nc3712, nc3713, 
        nc3714, nc3715, nc3716, nc3717, nc3718, nc3719, nc3720, nc3721, 
        nc3722, nc3723, \R_DATA_TEMPR3[6] }), .B_DOUT({nc3724, nc3725, 
        nc3726, nc3727, nc3728, nc3729, nc3730, nc3731, nc3732, nc3733, 
        nc3734, nc3735, nc3736, nc3737, nc3738, nc3739, nc3740, nc3741, 
        nc3742, nc3743}), .DB_DETECT(\DB_DETECT[3][6] ), .SB_CORRECT(
        \SB_CORRECT[3][6] ), .ACCESS_BUSY(\ACCESS_BUSY[3][6] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[6]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[6]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%26%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C26 (.A_DOUT({nc3744, 
        nc3745, nc3746, nc3747, nc3748, nc3749, nc3750, nc3751, nc3752, 
        nc3753, nc3754, nc3755, nc3756, nc3757, nc3758, nc3759, nc3760, 
        nc3761, nc3762, \R_DATA_TEMPR2[26] }), .B_DOUT({nc3763, nc3764, 
        nc3765, nc3766, nc3767, nc3768, nc3769, nc3770, nc3771, nc3772, 
        nc3773, nc3774, nc3775, nc3776, nc3777, nc3778, nc3779, nc3780, 
        nc3781, nc3782}), .DB_DETECT(\DB_DETECT[2][26] ), .SB_CORRECT(
        \SB_CORRECT[2][26] ), .ACCESS_BUSY(\ACCESS_BUSY[2][26] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[26]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[26]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%3%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C3 (.A_DOUT({nc3783, 
        nc3784, nc3785, nc3786, nc3787, nc3788, nc3789, nc3790, nc3791, 
        nc3792, nc3793, nc3794, nc3795, nc3796, nc3797, nc3798, nc3799, 
        nc3800, nc3801, \R_DATA_TEMPR1[3] }), .B_DOUT({nc3802, nc3803, 
        nc3804, nc3805, nc3806, nc3807, nc3808, nc3809, nc3810, nc3811, 
        nc3812, nc3813, nc3814, nc3815, nc3816, nc3817, nc3818, nc3819, 
        nc3820, nc3821}), .DB_DETECT(\DB_DETECT[1][3] ), .SB_CORRECT(
        \SB_CORRECT[1][3] ), .ACCESS_BUSY(\ACCESS_BUSY[1][3] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[3]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[3]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%21%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C21 (.A_DOUT({nc3822, 
        nc3823, nc3824, nc3825, nc3826, nc3827, nc3828, nc3829, nc3830, 
        nc3831, nc3832, nc3833, nc3834, nc3835, nc3836, nc3837, nc3838, 
        nc3839, nc3840, \R_DATA_TEMPR3[21] }), .B_DOUT({nc3841, nc3842, 
        nc3843, nc3844, nc3845, nc3846, nc3847, nc3848, nc3849, nc3850, 
        nc3851, nc3852, nc3853, nc3854, nc3855, nc3856, nc3857, nc3858, 
        nc3859, nc3860}), .DB_DETECT(\DB_DETECT[3][21] ), .SB_CORRECT(
        \SB_CORRECT[3][21] ), .ACCESS_BUSY(\ACCESS_BUSY[3][21] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[21]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[21]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[1]  (.A(\R_DATA_TEMPR0[1] ), .B(\R_DATA_TEMPR1[1] )
        , .C(\R_DATA_TEMPR2[1] ), .D(\R_DATA_TEMPR3[1] ), .Y(R_DATA[1])
        );
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%15%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C15 (.A_DOUT({nc3861, 
        nc3862, nc3863, nc3864, nc3865, nc3866, nc3867, nc3868, nc3869, 
        nc3870, nc3871, nc3872, nc3873, nc3874, nc3875, nc3876, nc3877, 
        nc3878, nc3879, \R_DATA_TEMPR3[15] }), .B_DOUT({nc3880, nc3881, 
        nc3882, nc3883, nc3884, nc3885, nc3886, nc3887, nc3888, nc3889, 
        nc3890, nc3891, nc3892, nc3893, nc3894, nc3895, nc3896, nc3897, 
        nc3898, nc3899}), .DB_DETECT(\DB_DETECT[3][15] ), .SB_CORRECT(
        \SB_CORRECT[3][15] ), .ACCESS_BUSY(\ACCESS_BUSY[3][15] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[15]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[15]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%2%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C2 (.A_DOUT({nc3900, 
        nc3901, nc3902, nc3903, nc3904, nc3905, nc3906, nc3907, nc3908, 
        nc3909, nc3910, nc3911, nc3912, nc3913, nc3914, nc3915, nc3916, 
        nc3917, nc3918, \R_DATA_TEMPR2[2] }), .B_DOUT({nc3919, nc3920, 
        nc3921, nc3922, nc3923, nc3924, nc3925, nc3926, nc3927, nc3928, 
        nc3929, nc3930, nc3931, nc3932, nc3933, nc3934, nc3935, nc3936, 
        nc3937, nc3938}), .DB_DETECT(\DB_DETECT[2][2] ), .SB_CORRECT(
        \SB_CORRECT[2][2] ), .ACCESS_BUSY(\ACCESS_BUSY[2][2] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[2]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[2]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[8]  (.A(\R_DATA_TEMPR0[8] ), .B(\R_DATA_TEMPR1[8] )
        , .C(\R_DATA_TEMPR2[8] ), .D(\R_DATA_TEMPR3[8] ), .Y(R_DATA[8])
        );
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%35%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C35 (.A_DOUT({nc3939, 
        nc3940, nc3941, nc3942, nc3943, nc3944, nc3945, nc3946, nc3947, 
        nc3948, nc3949, nc3950, nc3951, nc3952, nc3953, nc3954, nc3955, 
        nc3956, nc3957, \R_DATA_TEMPR0[35] }), .B_DOUT({nc3958, nc3959, 
        nc3960, nc3961, nc3962, nc3963, nc3964, nc3965, nc3966, nc3967, 
        nc3968, nc3969, nc3970, nc3971, nc3972, nc3973, nc3974, nc3975, 
        nc3976, nc3977}), .DB_DETECT(\DB_DETECT[0][35] ), .SB_CORRECT(
        \SB_CORRECT[0][35] ), .ACCESS_BUSY(\ACCESS_BUSY[0][35] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[35]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[35]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%33%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C33 (.A_DOUT({nc3978, 
        nc3979, nc3980, nc3981, nc3982, nc3983, nc3984, nc3985, nc3986, 
        nc3987, nc3988, nc3989, nc3990, nc3991, nc3992, nc3993, nc3994, 
        nc3995, nc3996, \R_DATA_TEMPR1[33] }), .B_DOUT({nc3997, nc3998, 
        nc3999, nc4000, nc4001, nc4002, nc4003, nc4004, nc4005, nc4006, 
        nc4007, nc4008, nc4009, nc4010, nc4011, nc4012, nc4013, nc4014, 
        nc4015, nc4016}), .DB_DETECT(\DB_DETECT[1][33] ), .SB_CORRECT(
        \SB_CORRECT[1][33] ), .ACCESS_BUSY(\ACCESS_BUSY[1][33] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[33]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[33]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%18%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C18 (.A_DOUT({nc4017, 
        nc4018, nc4019, nc4020, nc4021, nc4022, nc4023, nc4024, nc4025, 
        nc4026, nc4027, nc4028, nc4029, nc4030, nc4031, nc4032, nc4033, 
        nc4034, nc4035, \R_DATA_TEMPR1[18] }), .B_DOUT({nc4036, nc4037, 
        nc4038, nc4039, nc4040, nc4041, nc4042, nc4043, nc4044, nc4045, 
        nc4046, nc4047, nc4048, nc4049, nc4050, nc4051, nc4052, nc4053, 
        nc4054, nc4055}), .DB_DETECT(\DB_DETECT[1][18] ), .SB_CORRECT(
        \SB_CORRECT[1][18] ), .ACCESS_BUSY(\ACCESS_BUSY[1][18] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[18]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[18]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%0%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C0 (.A_DOUT({nc4056, 
        nc4057, nc4058, nc4059, nc4060, nc4061, nc4062, nc4063, nc4064, 
        nc4065, nc4066, nc4067, nc4068, nc4069, nc4070, nc4071, nc4072, 
        nc4073, nc4074, \R_DATA_TEMPR1[0] }), .B_DOUT({nc4075, nc4076, 
        nc4077, nc4078, nc4079, nc4080, nc4081, nc4082, nc4083, nc4084, 
        nc4085, nc4086, nc4087, nc4088, nc4089, nc4090, nc4091, nc4092, 
        nc4093, nc4094}), .DB_DETECT(\DB_DETECT[1][0] ), .SB_CORRECT(
        \SB_CORRECT[1][0] ), .ACCESS_BUSY(\ACCESS_BUSY[1][0] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[0]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[0]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%19%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C19 (.A_DOUT({nc4095, 
        nc4096, nc4097, nc4098, nc4099, nc4100, nc4101, nc4102, nc4103, 
        nc4104, nc4105, nc4106, nc4107, nc4108, nc4109, nc4110, nc4111, 
        nc4112, nc4113, \R_DATA_TEMPR1[19] }), .B_DOUT({nc4114, nc4115, 
        nc4116, nc4117, nc4118, nc4119, nc4120, nc4121, nc4122, nc4123, 
        nc4124, nc4125, nc4126, nc4127, nc4128, nc4129, nc4130, nc4131, 
        nc4132, nc4133}), .DB_DETECT(\DB_DETECT[1][19] ), .SB_CORRECT(
        \SB_CORRECT[1][19] ), .ACCESS_BUSY(\ACCESS_BUSY[1][19] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[19]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[19]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%18%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C18 (.A_DOUT({nc4134, 
        nc4135, nc4136, nc4137, nc4138, nc4139, nc4140, nc4141, nc4142, 
        nc4143, nc4144, nc4145, nc4146, nc4147, nc4148, nc4149, nc4150, 
        nc4151, nc4152, \R_DATA_TEMPR0[18] }), .B_DOUT({nc4153, nc4154, 
        nc4155, nc4156, nc4157, nc4158, nc4159, nc4160, nc4161, nc4162, 
        nc4163, nc4164, nc4165, nc4166, nc4167, nc4168, nc4169, nc4170, 
        nc4171, nc4172}), .DB_DETECT(\DB_DETECT[0][18] ), .SB_CORRECT(
        \SB_CORRECT[0][18] ), .ACCESS_BUSY(\ACCESS_BUSY[0][18] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[18]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[18]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%7%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C7 (.A_DOUT({nc4173, 
        nc4174, nc4175, nc4176, nc4177, nc4178, nc4179, nc4180, nc4181, 
        nc4182, nc4183, nc4184, nc4185, nc4186, nc4187, nc4188, nc4189, 
        nc4190, nc4191, \R_DATA_TEMPR2[7] }), .B_DOUT({nc4192, nc4193, 
        nc4194, nc4195, nc4196, nc4197, nc4198, nc4199, nc4200, nc4201, 
        nc4202, nc4203, nc4204, nc4205, nc4206, nc4207, nc4208, nc4209, 
        nc4210, nc4211}), .DB_DETECT(\DB_DETECT[2][7] ), .SB_CORRECT(
        \SB_CORRECT[2][7] ), .ACCESS_BUSY(\ACCESS_BUSY[2][7] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[7]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[7]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    INV \INVBLKX0[0]  (.A(W_ADDR[14]), .Y(\BLKX0[0] ));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%19%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C19 (.A_DOUT({nc4212, 
        nc4213, nc4214, nc4215, nc4216, nc4217, nc4218, nc4219, nc4220, 
        nc4221, nc4222, nc4223, nc4224, nc4225, nc4226, nc4227, nc4228, 
        nc4229, nc4230, \R_DATA_TEMPR0[19] }), .B_DOUT({nc4231, nc4232, 
        nc4233, nc4234, nc4235, nc4236, nc4237, nc4238, nc4239, nc4240, 
        nc4241, nc4242, nc4243, nc4244, nc4245, nc4246, nc4247, nc4248, 
        nc4249, nc4250}), .DB_DETECT(\DB_DETECT[0][19] ), .SB_CORRECT(
        \SB_CORRECT[0][19] ), .ACCESS_BUSY(\ACCESS_BUSY[0][19] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[19]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[19]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%17%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C17 (.A_DOUT({nc4251, 
        nc4252, nc4253, nc4254, nc4255, nc4256, nc4257, nc4258, nc4259, 
        nc4260, nc4261, nc4262, nc4263, nc4264, nc4265, nc4266, nc4267, 
        nc4268, nc4269, \R_DATA_TEMPR2[17] }), .B_DOUT({nc4270, nc4271, 
        nc4272, nc4273, nc4274, nc4275, nc4276, nc4277, nc4278, nc4279, 
        nc4280, nc4281, nc4282, nc4283, nc4284, nc4285, nc4286, nc4287, 
        nc4288, nc4289}), .DB_DETECT(\DB_DETECT[2][17] ), .SB_CORRECT(
        \SB_CORRECT[2][17] ), .ACCESS_BUSY(\ACCESS_BUSY[2][17] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[17]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[17]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%23%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C23 (.A_DOUT({nc4290, 
        nc4291, nc4292, nc4293, nc4294, nc4295, nc4296, nc4297, nc4298, 
        nc4299, nc4300, nc4301, nc4302, nc4303, nc4304, nc4305, nc4306, 
        nc4307, nc4308, \R_DATA_TEMPR2[23] }), .B_DOUT({nc4309, nc4310, 
        nc4311, nc4312, nc4313, nc4314, nc4315, nc4316, nc4317, nc4318, 
        nc4319, nc4320, nc4321, nc4322, nc4323, nc4324, nc4325, nc4326, 
        nc4327, nc4328}), .DB_DETECT(\DB_DETECT[2][23] ), .SB_CORRECT(
        \SB_CORRECT[2][23] ), .ACCESS_BUSY(\ACCESS_BUSY[2][23] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[23]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[23]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%25%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C25 (.A_DOUT({nc4329, 
        nc4330, nc4331, nc4332, nc4333, nc4334, nc4335, nc4336, nc4337, 
        nc4338, nc4339, nc4340, nc4341, nc4342, nc4343, nc4344, nc4345, 
        nc4346, nc4347, \R_DATA_TEMPR1[25] }), .B_DOUT({nc4348, nc4349, 
        nc4350, nc4351, nc4352, nc4353, nc4354, nc4355, nc4356, nc4357, 
        nc4358, nc4359, nc4360, nc4361, nc4362, nc4363, nc4364, nc4365, 
        nc4366, nc4367}), .DB_DETECT(\DB_DETECT[1][25] ), .SB_CORRECT(
        \SB_CORRECT[1][25] ), .ACCESS_BUSY(\ACCESS_BUSY[1][25] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[25]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[25]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%4%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C4 (.A_DOUT({nc4368, 
        nc4369, nc4370, nc4371, nc4372, nc4373, nc4374, nc4375, nc4376, 
        nc4377, nc4378, nc4379, nc4380, nc4381, nc4382, nc4383, nc4384, 
        nc4385, nc4386, \R_DATA_TEMPR3[4] }), .B_DOUT({nc4387, nc4388, 
        nc4389, nc4390, nc4391, nc4392, nc4393, nc4394, nc4395, nc4396, 
        nc4397, nc4398, nc4399, nc4400, nc4401, nc4402, nc4403, nc4404, 
        nc4405, nc4406}), .DB_DETECT(\DB_DETECT[3][4] ), .SB_CORRECT(
        \SB_CORRECT[3][4] ), .ACCESS_BUSY(\ACCESS_BUSY[3][4] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[4]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[4]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%11%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C11 (.A_DOUT({nc4407, 
        nc4408, nc4409, nc4410, nc4411, nc4412, nc4413, nc4414, nc4415, 
        nc4416, nc4417, nc4418, nc4419, nc4420, nc4421, nc4422, nc4423, 
        nc4424, nc4425, \R_DATA_TEMPR1[11] }), .B_DOUT({nc4426, nc4427, 
        nc4428, nc4429, nc4430, nc4431, nc4432, nc4433, nc4434, nc4435, 
        nc4436, nc4437, nc4438, nc4439, nc4440, nc4441, nc4442, nc4443, 
        nc4444, nc4445}), .DB_DETECT(\DB_DETECT[1][11] ), .SB_CORRECT(
        \SB_CORRECT[1][11] ), .ACCESS_BUSY(\ACCESS_BUSY[1][11] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[11]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[11]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%16%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C16 (.A_DOUT({nc4446, 
        nc4447, nc4448, nc4449, nc4450, nc4451, nc4452, nc4453, nc4454, 
        nc4455, nc4456, nc4457, nc4458, nc4459, nc4460, nc4461, nc4462, 
        nc4463, nc4464, \R_DATA_TEMPR2[16] }), .B_DOUT({nc4465, nc4466, 
        nc4467, nc4468, nc4469, nc4470, nc4471, nc4472, nc4473, nc4474, 
        nc4475, nc4476, nc4477, nc4478, nc4479, nc4480, nc4481, nc4482, 
        nc4483, nc4484}), .DB_DETECT(\DB_DETECT[2][16] ), .SB_CORRECT(
        \SB_CORRECT[2][16] ), .ACCESS_BUSY(\ACCESS_BUSY[2][16] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[16]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[16]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%11%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C11 (.A_DOUT({nc4485, 
        nc4486, nc4487, nc4488, nc4489, nc4490, nc4491, nc4492, nc4493, 
        nc4494, nc4495, nc4496, nc4497, nc4498, nc4499, nc4500, nc4501, 
        nc4502, nc4503, \R_DATA_TEMPR0[11] }), .B_DOUT({nc4504, nc4505, 
        nc4506, nc4507, nc4508, nc4509, nc4510, nc4511, nc4512, nc4513, 
        nc4514, nc4515, nc4516, nc4517, nc4518, nc4519, nc4520, nc4521, 
        nc4522, nc4523}), .DB_DETECT(\DB_DETECT[0][11] ), .SB_CORRECT(
        \SB_CORRECT[0][11] ), .ACCESS_BUSY(\ACCESS_BUSY[0][11] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[11]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[11]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%30%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C30 (.A_DOUT({nc4524, 
        nc4525, nc4526, nc4527, nc4528, nc4529, nc4530, nc4531, nc4532, 
        nc4533, nc4534, nc4535, nc4536, nc4537, nc4538, nc4539, nc4540, 
        nc4541, nc4542, \R_DATA_TEMPR1[30] }), .B_DOUT({nc4543, nc4544, 
        nc4545, nc4546, nc4547, nc4548, nc4549, nc4550, nc4551, nc4552, 
        nc4553, nc4554, nc4555, nc4556, nc4557, nc4558, nc4559, nc4560, 
        nc4561, nc4562}), .DB_DETECT(\DB_DETECT[1][30] ), .SB_CORRECT(
        \SB_CORRECT[1][30] ), .ACCESS_BUSY(\ACCESS_BUSY[1][30] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[30]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[30]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[4]  (.A(\R_DATA_TEMPR0[4] ), .B(\R_DATA_TEMPR1[4] )
        , .C(\R_DATA_TEMPR2[4] ), .D(\R_DATA_TEMPR3[4] ), .Y(R_DATA[4])
        );
    INV \INVBLKX1[0]  (.A(W_ADDR[15]), .Y(\BLKX1[0] ));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%17%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C17 (.A_DOUT({nc4563, 
        nc4564, nc4565, nc4566, nc4567, nc4568, nc4569, nc4570, nc4571, 
        nc4572, nc4573, nc4574, nc4575, nc4576, nc4577, nc4578, nc4579, 
        nc4580, nc4581, \R_DATA_TEMPR3[17] }), .B_DOUT({nc4582, nc4583, 
        nc4584, nc4585, nc4586, nc4587, nc4588, nc4589, nc4590, nc4591, 
        nc4592, nc4593, nc4594, nc4595, nc4596, nc4597, nc4598, nc4599, 
        nc4600, nc4601}), .DB_DETECT(\DB_DETECT[3][17] ), .SB_CORRECT(
        \SB_CORRECT[3][17] ), .ACCESS_BUSY(\ACCESS_BUSY[3][17] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[17]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[17]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    INV \INVBLKY0[0]  (.A(R_ADDR[14]), .Y(\BLKY0[0] ));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%35%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C35 (.A_DOUT({nc4602, 
        nc4603, nc4604, nc4605, nc4606, nc4607, nc4608, nc4609, nc4610, 
        nc4611, nc4612, nc4613, nc4614, nc4615, nc4616, nc4617, nc4618, 
        nc4619, nc4620, \R_DATA_TEMPR3[35] }), .B_DOUT({nc4621, nc4622, 
        nc4623, nc4624, nc4625, nc4626, nc4627, nc4628, nc4629, nc4630, 
        nc4631, nc4632, nc4633, nc4634, nc4635, nc4636, nc4637, nc4638, 
        nc4639, nc4640}), .DB_DETECT(\DB_DETECT[3][35] ), .SB_CORRECT(
        \SB_CORRECT[3][35] ), .ACCESS_BUSY(\ACCESS_BUSY[3][35] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[35]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[35]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%37%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C37 (.A_DOUT({nc4641, 
        nc4642, nc4643, nc4644, nc4645, nc4646, nc4647, nc4648, nc4649, 
        nc4650, nc4651, nc4652, nc4653, nc4654, nc4655, nc4656, nc4657, 
        nc4658, nc4659, \R_DATA_TEMPR0[37] }), .B_DOUT({nc4660, nc4661, 
        nc4662, nc4663, nc4664, nc4665, nc4666, nc4667, nc4668, nc4669, 
        nc4670, nc4671, nc4672, nc4673, nc4674, nc4675, nc4676, nc4677, 
        nc4678, nc4679}), .DB_DETECT(\DB_DETECT[0][37] ), .SB_CORRECT(
        \SB_CORRECT[0][37] ), .ACCESS_BUSY(\ACCESS_BUSY[0][37] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[37]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[37]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%1%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C1 (.A_DOUT({nc4680, 
        nc4681, nc4682, nc4683, nc4684, nc4685, nc4686, nc4687, nc4688, 
        nc4689, nc4690, nc4691, nc4692, nc4693, nc4694, nc4695, nc4696, 
        nc4697, nc4698, \R_DATA_TEMPR2[1] }), .B_DOUT({nc4699, nc4700, 
        nc4701, nc4702, nc4703, nc4704, nc4705, nc4706, nc4707, nc4708, 
        nc4709, nc4710, nc4711, nc4712, nc4713, nc4714, nc4715, nc4716, 
        nc4717, nc4718}), .DB_DETECT(\DB_DETECT[2][1] ), .SB_CORRECT(
        \SB_CORRECT[2][1] ), .ACCESS_BUSY(\ACCESS_BUSY[2][1] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[1]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[1]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%38%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C38 (.A_DOUT({nc4719, 
        nc4720, nc4721, nc4722, nc4723, nc4724, nc4725, nc4726, nc4727, 
        nc4728, nc4729, nc4730, nc4731, nc4732, nc4733, nc4734, nc4735, 
        nc4736, nc4737, \R_DATA_TEMPR2[38] }), .B_DOUT({nc4738, nc4739, 
        nc4740, nc4741, nc4742, nc4743, nc4744, nc4745, nc4746, nc4747, 
        nc4748, nc4749, nc4750, nc4751, nc4752, nc4753, nc4754, nc4755, 
        nc4756, nc4757}), .DB_DETECT(\DB_DETECT[2][38] ), .SB_CORRECT(
        \SB_CORRECT[2][38] ), .ACCESS_BUSY(\ACCESS_BUSY[2][38] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[38]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[38]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%22%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C22 (.A_DOUT({nc4758, 
        nc4759, nc4760, nc4761, nc4762, nc4763, nc4764, nc4765, nc4766, 
        nc4767, nc4768, nc4769, nc4770, nc4771, nc4772, nc4773, nc4774, 
        nc4775, nc4776, \R_DATA_TEMPR3[22] }), .B_DOUT({nc4777, nc4778, 
        nc4779, nc4780, nc4781, nc4782, nc4783, nc4784, nc4785, nc4786, 
        nc4787, nc4788, nc4789, nc4790, nc4791, nc4792, nc4793, nc4794, 
        nc4795, nc4796}), .DB_DETECT(\DB_DETECT[3][22] ), .SB_CORRECT(
        \SB_CORRECT[3][22] ), .ACCESS_BUSY(\ACCESS_BUSY[3][22] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[22]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[22]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%20%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C20 (.A_DOUT({nc4797, 
        nc4798, nc4799, nc4800, nc4801, nc4802, nc4803, nc4804, nc4805, 
        nc4806, nc4807, nc4808, nc4809, nc4810, nc4811, nc4812, nc4813, 
        nc4814, nc4815, \R_DATA_TEMPR2[20] }), .B_DOUT({nc4816, nc4817, 
        nc4818, nc4819, nc4820, nc4821, nc4822, nc4823, nc4824, nc4825, 
        nc4826, nc4827, nc4828, nc4829, nc4830, nc4831, nc4832, nc4833, 
        nc4834, nc4835}), .DB_DETECT(\DB_DETECT[2][20] ), .SB_CORRECT(
        \SB_CORRECT[2][20] ), .ACCESS_BUSY(\ACCESS_BUSY[2][20] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[20]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[20]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%39%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C39 (.A_DOUT({nc4836, 
        nc4837, nc4838, nc4839, nc4840, nc4841, nc4842, nc4843, nc4844, 
        nc4845, nc4846, nc4847, nc4848, nc4849, nc4850, nc4851, nc4852, 
        nc4853, nc4854, \R_DATA_TEMPR2[39] }), .B_DOUT({nc4855, nc4856, 
        nc4857, nc4858, nc4859, nc4860, nc4861, nc4862, nc4863, nc4864, 
        nc4865, nc4866, nc4867, nc4868, nc4869, nc4870, nc4871, nc4872, 
        nc4873, nc4874}), .DB_DETECT(\DB_DETECT[2][39] ), .SB_CORRECT(
        \SB_CORRECT[2][39] ), .ACCESS_BUSY(\ACCESS_BUSY[2][39] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[39]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[39]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[28]  (.A(\R_DATA_TEMPR0[28] ), .B(
        \R_DATA_TEMPR1[28] ), .C(\R_DATA_TEMPR2[28] ), .D(
        \R_DATA_TEMPR3[28] ), .Y(R_DATA[28]));
    OR4 \OR4_R_DATA[26]  (.A(\R_DATA_TEMPR0[26] ), .B(
        \R_DATA_TEMPR1[26] ), .C(\R_DATA_TEMPR2[26] ), .D(
        \R_DATA_TEMPR3[26] ), .Y(R_DATA[26]));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%16%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C16 (.A_DOUT({nc4875, 
        nc4876, nc4877, nc4878, nc4879, nc4880, nc4881, nc4882, nc4883, 
        nc4884, nc4885, nc4886, nc4887, nc4888, nc4889, nc4890, nc4891, 
        nc4892, nc4893, \R_DATA_TEMPR3[16] }), .B_DOUT({nc4894, nc4895, 
        nc4896, nc4897, nc4898, nc4899, nc4900, nc4901, nc4902, nc4903, 
        nc4904, nc4905, nc4906, nc4907, nc4908, nc4909, nc4910, nc4911, 
        nc4912, nc4913}), .DB_DETECT(\DB_DETECT[3][16] ), .SB_CORRECT(
        \SB_CORRECT[3][16] ), .ACCESS_BUSY(\ACCESS_BUSY[3][16] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[16]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[16]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%36%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C36 (.A_DOUT({nc4914, 
        nc4915, nc4916, nc4917, nc4918, nc4919, nc4920, nc4921, nc4922, 
        nc4923, nc4924, nc4925, nc4926, nc4927, nc4928, nc4929, nc4930, 
        nc4931, nc4932, \R_DATA_TEMPR0[36] }), .B_DOUT({nc4933, nc4934, 
        nc4935, nc4936, nc4937, nc4938, nc4939, nc4940, nc4941, nc4942, 
        nc4943, nc4944, nc4945, nc4946, nc4947, nc4948, nc4949, nc4950, 
        nc4951, nc4952}), .DB_DETECT(\DB_DETECT[0][36] ), .SB_CORRECT(
        \SB_CORRECT[0][36] ), .ACCESS_BUSY(\ACCESS_BUSY[0][36] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[36]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[36]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    INV \INVBLKY1[0]  (.A(R_ADDR[15]), .Y(\BLKY1[0] ));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%31%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C31 (.A_DOUT({nc4953, 
        nc4954, nc4955, nc4956, nc4957, nc4958, nc4959, nc4960, nc4961, 
        nc4962, nc4963, nc4964, nc4965, nc4966, nc4967, nc4968, nc4969, 
        nc4970, nc4971, \R_DATA_TEMPR2[31] }), .B_DOUT({nc4972, nc4973, 
        nc4974, nc4975, nc4976, nc4977, nc4978, nc4979, nc4980, nc4981, 
        nc4982, nc4983, nc4984, nc4985, nc4986, nc4987, nc4988, nc4989, 
        nc4990, nc4991}), .DB_DETECT(\DB_DETECT[2][31] ), .SB_CORRECT(
        \SB_CORRECT[2][31] ), .ACCESS_BUSY(\ACCESS_BUSY[2][31] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[31]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[31]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%1%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C1 (.A_DOUT({nc4992, 
        nc4993, nc4994, nc4995, nc4996, nc4997, nc4998, nc4999, nc5000, 
        nc5001, nc5002, nc5003, nc5004, nc5005, nc5006, nc5007, nc5008, 
        nc5009, nc5010, \R_DATA_TEMPR3[1] }), .B_DOUT({nc5011, nc5012, 
        nc5013, nc5014, nc5015, nc5016, nc5017, nc5018, nc5019, nc5020, 
        nc5021, nc5022, nc5023, nc5024, nc5025, nc5026, nc5027, nc5028, 
        nc5029, nc5030}), .DB_DETECT(\DB_DETECT[3][1] ), .SB_CORRECT(
        \SB_CORRECT[3][1] ), .ACCESS_BUSY(\ACCESS_BUSY[3][1] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[1]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[1]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%27%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C27 (.A_DOUT({nc5031, 
        nc5032, nc5033, nc5034, nc5035, nc5036, nc5037, nc5038, nc5039, 
        nc5040, nc5041, nc5042, nc5043, nc5044, nc5045, nc5046, nc5047, 
        nc5048, nc5049, \R_DATA_TEMPR1[27] }), .B_DOUT({nc5050, nc5051, 
        nc5052, nc5053, nc5054, nc5055, nc5056, nc5057, nc5058, nc5059, 
        nc5060, nc5061, nc5062, nc5063, nc5064, nc5065, nc5066, nc5067, 
        nc5068, nc5069}), .DB_DETECT(\DB_DETECT[1][27] ), .SB_CORRECT(
        \SB_CORRECT[1][27] ), .ACCESS_BUSY(\ACCESS_BUSY[1][27] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[27]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[27]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%13%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C13 (.A_DOUT({nc5070, 
        nc5071, nc5072, nc5073, nc5074, nc5075, nc5076, nc5077, nc5078, 
        nc5079, nc5080, nc5081, nc5082, nc5083, nc5084, nc5085, nc5086, 
        nc5087, nc5088, \R_DATA_TEMPR2[13] }), .B_DOUT({nc5089, nc5090, 
        nc5091, nc5092, nc5093, nc5094, nc5095, nc5096, nc5097, nc5098, 
        nc5099, nc5100, nc5101, nc5102, nc5103, nc5104, nc5105, nc5106, 
        nc5107, nc5108}), .DB_DETECT(\DB_DETECT[2][13] ), .SB_CORRECT(
        \SB_CORRECT[2][13] ), .ACCESS_BUSY(\ACCESS_BUSY[2][13] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[13]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[13]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%25%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C25 (.A_DOUT({nc5109, 
        nc5110, nc5111, nc5112, nc5113, nc5114, nc5115, nc5116, nc5117, 
        nc5118, nc5119, nc5120, nc5121, nc5122, nc5123, nc5124, nc5125, 
        nc5126, nc5127, \R_DATA_TEMPR0[25] }), .B_DOUT({nc5128, nc5129, 
        nc5130, nc5131, nc5132, nc5133, nc5134, nc5135, nc5136, nc5137, 
        nc5138, nc5139, nc5140, nc5141, nc5142, nc5143, nc5144, nc5145, 
        nc5146, nc5147}), .DB_DETECT(\DB_DETECT[0][25] ), .SB_CORRECT(
        \SB_CORRECT[0][25] ), .ACCESS_BUSY(\ACCESS_BUSY[0][25] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[25]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[25]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%3%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C3 (.A_DOUT({nc5148, 
        nc5149, nc5150, nc5151, nc5152, nc5153, nc5154, nc5155, nc5156, 
        nc5157, nc5158, nc5159, nc5160, nc5161, nc5162, nc5163, nc5164, 
        nc5165, nc5166, \R_DATA_TEMPR0[3] }), .B_DOUT({nc5167, nc5168, 
        nc5169, nc5170, nc5171, nc5172, nc5173, nc5174, nc5175, nc5176, 
        nc5177, nc5178, nc5179, nc5180, nc5181, nc5182, nc5183, nc5184, 
        nc5185, nc5186}), .DB_DETECT(\DB_DETECT[0][3] ), .SB_CORRECT(
        \SB_CORRECT[0][3] ), .ACCESS_BUSY(\ACCESS_BUSY[0][3] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[3]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[3]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%26%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C26 (.A_DOUT({nc5187, 
        nc5188, nc5189, nc5190, nc5191, nc5192, nc5193, nc5194, nc5195, 
        nc5196, nc5197, nc5198, nc5199, nc5200, nc5201, nc5202, nc5203, 
        nc5204, nc5205, \R_DATA_TEMPR1[26] }), .B_DOUT({nc5206, nc5207, 
        nc5208, nc5209, nc5210, nc5211, nc5212, nc5213, nc5214, nc5215, 
        nc5216, nc5217, nc5218, nc5219, nc5220, nc5221, nc5222, nc5223, 
        nc5224, nc5225}), .DB_DETECT(\DB_DETECT[1][26] ), .SB_CORRECT(
        \SB_CORRECT[1][26] ), .ACCESS_BUSY(\ACCESS_BUSY[1][26] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[26]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[26]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%24%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C24 (.A_DOUT({nc5226, 
        nc5227, nc5228, nc5229, nc5230, nc5231, nc5232, nc5233, nc5234, 
        nc5235, nc5236, nc5237, nc5238, nc5239, nc5240, nc5241, nc5242, 
        nc5243, nc5244, \R_DATA_TEMPR3[24] }), .B_DOUT({nc5245, nc5246, 
        nc5247, nc5248, nc5249, nc5250, nc5251, nc5252, nc5253, nc5254, 
        nc5255, nc5256, nc5257, nc5258, nc5259, nc5260, nc5261, nc5262, 
        nc5263, nc5264}), .DB_DETECT(\DB_DETECT[3][24] ), .SB_CORRECT(
        \SB_CORRECT[3][24] ), .ACCESS_BUSY(\ACCESS_BUSY[3][24] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[24]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[24]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%37%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C37 (.A_DOUT({nc5265, 
        nc5266, nc5267, nc5268, nc5269, nc5270, nc5271, nc5272, nc5273, 
        nc5274, nc5275, nc5276, nc5277, nc5278, nc5279, nc5280, nc5281, 
        nc5282, nc5283, \R_DATA_TEMPR3[37] }), .B_DOUT({nc5284, nc5285, 
        nc5286, nc5287, nc5288, nc5289, nc5290, nc5291, nc5292, nc5293, 
        nc5294, nc5295, nc5296, nc5297, nc5298, nc5299, nc5300, nc5301, 
        nc5302, nc5303}), .DB_DETECT(\DB_DETECT[3][37] ), .SB_CORRECT(
        \SB_CORRECT[3][37] ), .ACCESS_BUSY(\ACCESS_BUSY[3][37] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[37]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[37]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%12%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C12 (.A_DOUT({nc5304, 
        nc5305, nc5306, nc5307, nc5308, nc5309, nc5310, nc5311, nc5312, 
        nc5313, nc5314, nc5315, nc5316, nc5317, nc5318, nc5319, nc5320, 
        nc5321, nc5322, \R_DATA_TEMPR1[12] }), .B_DOUT({nc5323, nc5324, 
        nc5325, nc5326, nc5327, nc5328, nc5329, nc5330, nc5331, nc5332, 
        nc5333, nc5334, nc5335, nc5336, nc5337, nc5338, nc5339, nc5340, 
        nc5341, nc5342}), .DB_DETECT(\DB_DETECT[1][12] ), .SB_CORRECT(
        \SB_CORRECT[1][12] ), .ACCESS_BUSY(\ACCESS_BUSY[1][12] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[12]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[12]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%13%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C13 (.A_DOUT({nc5343, 
        nc5344, nc5345, nc5346, nc5347, nc5348, nc5349, nc5350, nc5351, 
        nc5352, nc5353, nc5354, nc5355, nc5356, nc5357, nc5358, nc5359, 
        nc5360, nc5361, \R_DATA_TEMPR3[13] }), .B_DOUT({nc5362, nc5363, 
        nc5364, nc5365, nc5366, nc5367, nc5368, nc5369, nc5370, nc5371, 
        nc5372, nc5373, nc5374, nc5375, nc5376, nc5377, nc5378, nc5379, 
        nc5380, nc5381}), .DB_DETECT(\DB_DETECT[3][13] ), .SB_CORRECT(
        \SB_CORRECT[3][13] ), .ACCESS_BUSY(\ACCESS_BUSY[3][13] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[13]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[13]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%9%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C9 (.A_DOUT({nc5382, 
        nc5383, nc5384, nc5385, nc5386, nc5387, nc5388, nc5389, nc5390, 
        nc5391, nc5392, nc5393, nc5394, nc5395, nc5396, nc5397, nc5398, 
        nc5399, nc5400, \R_DATA_TEMPR3[9] }), .B_DOUT({nc5401, nc5402, 
        nc5403, nc5404, nc5405, nc5406, nc5407, nc5408, nc5409, nc5410, 
        nc5411, nc5412, nc5413, nc5414, nc5415, nc5416, nc5417, nc5418, 
        nc5419, nc5420}), .DB_DETECT(\DB_DETECT[3][9] ), .SB_CORRECT(
        \SB_CORRECT[3][9] ), .ACCESS_BUSY(\ACCESS_BUSY[3][9] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[9]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[9]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%12%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C12 (.A_DOUT({nc5421, 
        nc5422, nc5423, nc5424, nc5425, nc5426, nc5427, nc5428, nc5429, 
        nc5430, nc5431, nc5432, nc5433, nc5434, nc5435, nc5436, nc5437, 
        nc5438, nc5439, \R_DATA_TEMPR0[12] }), .B_DOUT({nc5440, nc5441, 
        nc5442, nc5443, nc5444, nc5445, nc5446, nc5447, nc5448, nc5449, 
        nc5450, nc5451, nc5452, nc5453, nc5454, nc5455, nc5456, nc5457, 
        nc5458, nc5459}), .DB_DETECT(\DB_DETECT[0][12] ), .SB_CORRECT(
        \SB_CORRECT[0][12] ), .ACCESS_BUSY(\ACCESS_BUSY[0][12] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[12]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[12]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%2%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C2 (.A_DOUT({nc5460, 
        nc5461, nc5462, nc5463, nc5464, nc5465, nc5466, nc5467, nc5468, 
        nc5469, nc5470, nc5471, nc5472, nc5473, nc5474, nc5475, nc5476, 
        nc5477, nc5478, \R_DATA_TEMPR1[2] }), .B_DOUT({nc5479, nc5480, 
        nc5481, nc5482, nc5483, nc5484, nc5485, nc5486, nc5487, nc5488, 
        nc5489, nc5490, nc5491, nc5492, nc5493, nc5494, nc5495, nc5496, 
        nc5497, nc5498}), .DB_DETECT(\DB_DETECT[1][2] ), .SB_CORRECT(
        \SB_CORRECT[1][2] ), .ACCESS_BUSY(\ACCESS_BUSY[1][2] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[2]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[2]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%33%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C33 (.A_DOUT({nc5499, 
        nc5500, nc5501, nc5502, nc5503, nc5504, nc5505, nc5506, nc5507, 
        nc5508, nc5509, nc5510, nc5511, nc5512, nc5513, nc5514, nc5515, 
        nc5516, nc5517, \R_DATA_TEMPR0[33] }), .B_DOUT({nc5518, nc5519, 
        nc5520, nc5521, nc5522, nc5523, nc5524, nc5525, nc5526, nc5527, 
        nc5528, nc5529, nc5530, nc5531, nc5532, nc5533, nc5534, nc5535, 
        nc5536, nc5537}), .DB_DETECT(\DB_DETECT[0][33] ), .SB_CORRECT(
        \SB_CORRECT[0][33] ), .ACCESS_BUSY(\ACCESS_BUSY[0][33] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[33]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[33]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%10%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C10 (.A_DOUT({nc5538, 
        nc5539, nc5540, nc5541, nc5542, nc5543, nc5544, nc5545, nc5546, 
        nc5547, nc5548, nc5549, nc5550, nc5551, nc5552, nc5553, nc5554, 
        nc5555, nc5556, \R_DATA_TEMPR2[10] }), .B_DOUT({nc5557, nc5558, 
        nc5559, nc5560, nc5561, nc5562, nc5563, nc5564, nc5565, nc5566, 
        nc5567, nc5568, nc5569, nc5570, nc5571, nc5572, nc5573, nc5574, 
        nc5575, nc5576}), .DB_DETECT(\DB_DETECT[2][10] ), .SB_CORRECT(
        \SB_CORRECT[2][10] ), .ACCESS_BUSY(\ACCESS_BUSY[2][10] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[10]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[10]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%9%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C9 (.A_DOUT({nc5577, 
        nc5578, nc5579, nc5580, nc5581, nc5582, nc5583, nc5584, nc5585, 
        nc5586, nc5587, nc5588, nc5589, nc5590, nc5591, nc5592, nc5593, 
        nc5594, nc5595, \R_DATA_TEMPR2[9] }), .B_DOUT({nc5596, nc5597, 
        nc5598, nc5599, nc5600, nc5601, nc5602, nc5603, nc5604, nc5605, 
        nc5606, nc5607, nc5608, nc5609, nc5610, nc5611, nc5612, nc5613, 
        nc5614, nc5615}), .DB_DETECT(\DB_DETECT[2][9] ), .SB_CORRECT(
        \SB_CORRECT[2][9] ), .ACCESS_BUSY(\ACCESS_BUSY[2][9] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[9]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[9]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%36%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C36 (.A_DOUT({nc5616, 
        nc5617, nc5618, nc5619, nc5620, nc5621, nc5622, nc5623, nc5624, 
        nc5625, nc5626, nc5627, nc5628, nc5629, nc5630, nc5631, nc5632, 
        nc5633, nc5634, \R_DATA_TEMPR3[36] }), .B_DOUT({nc5635, nc5636, 
        nc5637, nc5638, nc5639, nc5640, nc5641, nc5642, nc5643, nc5644, 
        nc5645, nc5646, nc5647, nc5648, nc5649, nc5650, nc5651, nc5652, 
        nc5653, nc5654}), .DB_DETECT(\DB_DETECT[3][36] ), .SB_CORRECT(
        \SB_CORRECT[3][36] ), .ACCESS_BUSY(\ACCESS_BUSY[3][36] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[36]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[36]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[39]  (.A(\R_DATA_TEMPR0[39] ), .B(
        \R_DATA_TEMPR1[39] ), .C(\R_DATA_TEMPR2[39] ), .D(
        \R_DATA_TEMPR3[39] ), .Y(R_DATA[39]));
    OR4 \OR4_R_DATA[0]  (.A(\R_DATA_TEMPR0[0] ), .B(\R_DATA_TEMPR1[0] )
        , .C(\R_DATA_TEMPR2[0] ), .D(\R_DATA_TEMPR3[0] ), .Y(R_DATA[0])
        );
    OR4 \OR4_R_DATA[19]  (.A(\R_DATA_TEMPR0[19] ), .B(
        \R_DATA_TEMPR1[19] ), .C(\R_DATA_TEMPR2[19] ), .D(
        \R_DATA_TEMPR3[19] ), .Y(R_DATA[19]));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%3%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C3 (.A_DOUT({nc5655, 
        nc5656, nc5657, nc5658, nc5659, nc5660, nc5661, nc5662, nc5663, 
        nc5664, nc5665, nc5666, nc5667, nc5668, nc5669, nc5670, nc5671, 
        nc5672, nc5673, \R_DATA_TEMPR3[3] }), .B_DOUT({nc5674, nc5675, 
        nc5676, nc5677, nc5678, nc5679, nc5680, nc5681, nc5682, nc5683, 
        nc5684, nc5685, nc5686, nc5687, nc5688, nc5689, nc5690, nc5691, 
        nc5692, nc5693}), .DB_DETECT(\DB_DETECT[3][3] ), .SB_CORRECT(
        \SB_CORRECT[3][3] ), .ACCESS_BUSY(\ACCESS_BUSY[3][3] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[3]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[3]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%27%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C27 (.A_DOUT({nc5694, 
        nc5695, nc5696, nc5697, nc5698, nc5699, nc5700, nc5701, nc5702, 
        nc5703, nc5704, nc5705, nc5706, nc5707, nc5708, nc5709, nc5710, 
        nc5711, nc5712, \R_DATA_TEMPR0[27] }), .B_DOUT({nc5713, nc5714, 
        nc5715, nc5716, nc5717, nc5718, nc5719, nc5720, nc5721, nc5722, 
        nc5723, nc5724, nc5725, nc5726, nc5727, nc5728, nc5729, nc5730, 
        nc5731, nc5732}), .DB_DETECT(\DB_DETECT[0][27] ), .SB_CORRECT(
        \SB_CORRECT[0][27] ), .ACCESS_BUSY(\ACCESS_BUSY[0][27] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[27]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[27]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%10%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C10 (.A_DOUT({nc5733, 
        nc5734, nc5735, nc5736, nc5737, nc5738, nc5739, nc5740, nc5741, 
        nc5742, nc5743, nc5744, nc5745, nc5746, nc5747, nc5748, nc5749, 
        nc5750, nc5751, \R_DATA_TEMPR3[10] }), .B_DOUT({nc5752, nc5753, 
        nc5754, nc5755, nc5756, nc5757, nc5758, nc5759, nc5760, nc5761, 
        nc5762, nc5763, nc5764, nc5765, nc5766, nc5767, nc5768, nc5769, 
        nc5770, nc5771}), .DB_DETECT(\DB_DETECT[3][10] ), .SB_CORRECT(
        \SB_CORRECT[3][10] ), .ACCESS_BUSY(\ACCESS_BUSY[3][10] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[10]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[10]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%23%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C23 (.A_DOUT({nc5772, 
        nc5773, nc5774, nc5775, nc5776, nc5777, nc5778, nc5779, nc5780, 
        nc5781, nc5782, nc5783, nc5784, nc5785, nc5786, nc5787, nc5788, 
        nc5789, nc5790, \R_DATA_TEMPR1[23] }), .B_DOUT({nc5791, nc5792, 
        nc5793, nc5794, nc5795, nc5796, nc5797, nc5798, nc5799, nc5800, 
        nc5801, nc5802, nc5803, nc5804, nc5805, nc5806, nc5807, nc5808, 
        nc5809, nc5810}), .DB_DETECT(\DB_DETECT[1][23] ), .SB_CORRECT(
        \SB_CORRECT[1][23] ), .ACCESS_BUSY(\ACCESS_BUSY[1][23] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[23]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[23]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%30%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C30 (.A_DOUT({nc5811, 
        nc5812, nc5813, nc5814, nc5815, nc5816, nc5817, nc5818, nc5819, 
        nc5820, nc5821, nc5822, nc5823, nc5824, nc5825, nc5826, nc5827, 
        nc5828, nc5829, \R_DATA_TEMPR0[30] }), .B_DOUT({nc5830, nc5831, 
        nc5832, nc5833, nc5834, nc5835, nc5836, nc5837, nc5838, nc5839, 
        nc5840, nc5841, nc5842, nc5843, nc5844, nc5845, nc5846, nc5847, 
        nc5848, nc5849}), .DB_DETECT(\DB_DETECT[0][30] ), .SB_CORRECT(
        \SB_CORRECT[0][30] ), .ACCESS_BUSY(\ACCESS_BUSY[0][30] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[30]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[30]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%38%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C38 (.A_DOUT({nc5850, 
        nc5851, nc5852, nc5853, nc5854, nc5855, nc5856, nc5857, nc5858, 
        nc5859, nc5860, nc5861, nc5862, nc5863, nc5864, nc5865, nc5866, 
        nc5867, nc5868, \R_DATA_TEMPR1[38] }), .B_DOUT({nc5869, nc5870, 
        nc5871, nc5872, nc5873, nc5874, nc5875, nc5876, nc5877, nc5878, 
        nc5879, nc5880, nc5881, nc5882, nc5883, nc5884, nc5885, nc5886, 
        nc5887, nc5888}), .DB_DETECT(\DB_DETECT[1][38] ), .SB_CORRECT(
        \SB_CORRECT[1][38] ), .ACCESS_BUSY(\ACCESS_BUSY[1][38] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[38]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[38]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%14%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C14 (.A_DOUT({nc5889, 
        nc5890, nc5891, nc5892, nc5893, nc5894, nc5895, nc5896, nc5897, 
        nc5898, nc5899, nc5900, nc5901, nc5902, nc5903, nc5904, nc5905, 
        nc5906, nc5907, \R_DATA_TEMPR1[14] }), .B_DOUT({nc5908, nc5909, 
        nc5910, nc5911, nc5912, nc5913, nc5914, nc5915, nc5916, nc5917, 
        nc5918, nc5919, nc5920, nc5921, nc5922, nc5923, nc5924, nc5925, 
        nc5926, nc5927}), .DB_DETECT(\DB_DETECT[1][14] ), .SB_CORRECT(
        \SB_CORRECT[1][14] ), .ACCESS_BUSY(\ACCESS_BUSY[1][14] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[14]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[14]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%32%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C32 (.A_DOUT({nc5928, 
        nc5929, nc5930, nc5931, nc5932, nc5933, nc5934, nc5935, nc5936, 
        nc5937, nc5938, nc5939, nc5940, nc5941, nc5942, nc5943, nc5944, 
        nc5945, nc5946, \R_DATA_TEMPR2[32] }), .B_DOUT({nc5947, nc5948, 
        nc5949, nc5950, nc5951, nc5952, nc5953, nc5954, nc5955, nc5956, 
        nc5957, nc5958, nc5959, nc5960, nc5961, nc5962, nc5963, nc5964, 
        nc5965, nc5966}), .DB_DETECT(\DB_DETECT[2][32] ), .SB_CORRECT(
        \SB_CORRECT[2][32] ), .ACCESS_BUSY(\ACCESS_BUSY[2][32] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[32]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[32]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%26%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C26 (.A_DOUT({nc5967, 
        nc5968, nc5969, nc5970, nc5971, nc5972, nc5973, nc5974, nc5975, 
        nc5976, nc5977, nc5978, nc5979, nc5980, nc5981, nc5982, nc5983, 
        nc5984, nc5985, \R_DATA_TEMPR0[26] }), .B_DOUT({nc5986, nc5987, 
        nc5988, nc5989, nc5990, nc5991, nc5992, nc5993, nc5994, nc5995, 
        nc5996, nc5997, nc5998, nc5999, nc6000, nc6001, nc6002, nc6003, 
        nc6004, nc6005}), .DB_DETECT(\DB_DETECT[0][26] ), .SB_CORRECT(
        \SB_CORRECT[0][26] ), .ACCESS_BUSY(\ACCESS_BUSY[0][26] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[26]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[26]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%39%1%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R1C39 (.A_DOUT({nc6006, 
        nc6007, nc6008, nc6009, nc6010, nc6011, nc6012, nc6013, nc6014, 
        nc6015, nc6016, nc6017, nc6018, nc6019, nc6020, nc6021, nc6022, 
        nc6023, nc6024, \R_DATA_TEMPR1[39] }), .B_DOUT({nc6025, nc6026, 
        nc6027, nc6028, nc6029, nc6030, nc6031, nc6032, nc6033, nc6034, 
        nc6035, nc6036, nc6037, nc6038, nc6039, nc6040, nc6041, nc6042, 
        nc6043, nc6044}), .DB_DETECT(\DB_DETECT[1][39] ), .SB_CORRECT(
        \SB_CORRECT[1][39] ), .ACCESS_BUSY(\ACCESS_BUSY[1][39] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[39]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[39]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%0%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C0 (.A_DOUT({nc6045, 
        nc6046, nc6047, nc6048, nc6049, nc6050, nc6051, nc6052, nc6053, 
        nc6054, nc6055, nc6056, nc6057, nc6058, nc6059, nc6060, nc6061, 
        nc6062, nc6063, \R_DATA_TEMPR2[0] }), .B_DOUT({nc6064, nc6065, 
        nc6066, nc6067, nc6068, nc6069, nc6070, nc6071, nc6072, nc6073, 
        nc6074, nc6075, nc6076, nc6077, nc6078, nc6079, nc6080, nc6081, 
        nc6082, nc6083}), .DB_DETECT(\DB_DETECT[2][0] ), .SB_CORRECT(
        \SB_CORRECT[2][0] ), .ACCESS_BUSY(\ACCESS_BUSY[2][0] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[0]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[0]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%8%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C8 (.A_DOUT({nc6084, 
        nc6085, nc6086, nc6087, nc6088, nc6089, nc6090, nc6091, nc6092, 
        nc6093, nc6094, nc6095, nc6096, nc6097, nc6098, nc6099, nc6100, 
        nc6101, nc6102, \R_DATA_TEMPR2[8] }), .B_DOUT({nc6103, nc6104, 
        nc6105, nc6106, nc6107, nc6108, nc6109, nc6110, nc6111, nc6112, 
        nc6113, nc6114, nc6115, nc6116, nc6117, nc6118, nc6119, nc6120, 
        nc6121, nc6122}), .DB_DETECT(\DB_DETECT[2][8] ), .SB_CORRECT(
        \SB_CORRECT[2][8] ), .ACCESS_BUSY(\ACCESS_BUSY[2][8] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[8]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[8]}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%14%0%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R0C14 (.A_DOUT({nc6123, 
        nc6124, nc6125, nc6126, nc6127, nc6128, nc6129, nc6130, nc6131, 
        nc6132, nc6133, nc6134, nc6135, nc6136, nc6137, nc6138, nc6139, 
        nc6140, nc6141, \R_DATA_TEMPR0[14] }), .B_DOUT({nc6142, nc6143, 
        nc6144, nc6145, nc6146, nc6147, nc6148, nc6149, nc6150, nc6151, 
        nc6152, nc6153, nc6154, nc6155, nc6156, nc6157, nc6158, nc6159, 
        nc6160, nc6161}), .DB_DETECT(\DB_DETECT[0][14] ), .SB_CORRECT(
        \SB_CORRECT[0][14] ), .ACCESS_BUSY(\ACCESS_BUSY[0][14] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, \BLKY1[0] , \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, \BLKX1[0] , 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[14]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[14]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    OR4 \OR4_R_DATA[2]  (.A(\R_DATA_TEMPR0[2] ), .B(\R_DATA_TEMPR1[2] )
        , .C(\R_DATA_TEMPR2[2] ), .D(\R_DATA_TEMPR3[2] ), .Y(R_DATA[2])
        );
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%28%2%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R2C28 (.A_DOUT({nc6162, 
        nc6163, nc6164, nc6165, nc6166, nc6167, nc6168, nc6169, nc6170, 
        nc6171, nc6172, nc6173, nc6174, nc6175, nc6176, nc6177, nc6178, 
        nc6179, nc6180, \R_DATA_TEMPR2[28] }), .B_DOUT({nc6181, nc6182, 
        nc6183, nc6184, nc6185, nc6186, nc6187, nc6188, nc6189, nc6190, 
        nc6191, nc6192, nc6193, nc6194, nc6195, nc6196, nc6197, nc6198, 
        nc6199, nc6200}), .DB_DETECT(\DB_DETECT[2][28] ), .SB_CORRECT(
        \SB_CORRECT[2][28] ), .ACCESS_BUSY(\ACCESS_BUSY[2][28] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], \BLKY0[0] }), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        \BLKX0[0] }), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[28]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[28]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    RAM1K20 #( .RAMINDEX("LSRAM%65536-65536%40-40%SPEED%33%3%TWO-PORT")
         )  LSRAM_PF_TPSRAM_AHB_AXI_0_PF_TPSRAM_R3C33 (.A_DOUT({nc6201, 
        nc6202, nc6203, nc6204, nc6205, nc6206, nc6207, nc6208, nc6209, 
        nc6210, nc6211, nc6212, nc6213, nc6214, nc6215, nc6216, nc6217, 
        nc6218, nc6219, \R_DATA_TEMPR3[33] }), .B_DOUT({nc6220, nc6221, 
        nc6222, nc6223, nc6224, nc6225, nc6226, nc6227, nc6228, nc6229, 
        nc6230, nc6231, nc6232, nc6233, nc6234, nc6235, nc6236, nc6237, 
        nc6238, nc6239}), .DB_DETECT(\DB_DETECT[3][33] ), .SB_CORRECT(
        \SB_CORRECT[3][33] ), .ACCESS_BUSY(\ACCESS_BUSY[3][33] ), 
        .A_ADDR({R_ADDR[13], R_ADDR[12], R_ADDR[11], R_ADDR[10], 
        R_ADDR[9], R_ADDR[8], R_ADDR[7], R_ADDR[6], R_ADDR[5], 
        R_ADDR[4], R_ADDR[3], R_ADDR[2], R_ADDR[1], R_ADDR[0]}), 
        .A_BLK_EN({R_EN, R_ADDR[15], R_ADDR[14]}), .A_CLK(CLK), .A_DIN({
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND}), .A_REN(VCC), .A_WEN({
        GND, GND}), .A_DOUT_EN(VCC), .A_DOUT_ARST_N(VCC), 
        .A_DOUT_SRST_N(VCC), .B_ADDR({W_ADDR[13], W_ADDR[12], 
        W_ADDR[11], W_ADDR[10], W_ADDR[9], W_ADDR[8], W_ADDR[7], 
        W_ADDR[6], W_ADDR[5], W_ADDR[4], W_ADDR[3], W_ADDR[2], 
        W_ADDR[1], W_ADDR[0]}), .B_BLK_EN({W_EN, W_ADDR[15], 
        W_ADDR[14]}), .B_CLK(CLK), .B_DIN({GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, W_DATA[33]}), .B_REN(VCC), .B_WEN({GND, WBYTE_EN[33]})
        , .B_DOUT_EN(VCC), .B_DOUT_ARST_N(GND), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(GND), .BUSY_FB(GND), .A_WIDTH({GND, GND, GND}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({GND, GND, GND})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(GND));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
