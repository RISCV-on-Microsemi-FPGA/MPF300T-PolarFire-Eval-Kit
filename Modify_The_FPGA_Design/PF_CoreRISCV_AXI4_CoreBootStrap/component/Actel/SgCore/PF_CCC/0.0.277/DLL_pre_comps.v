`timescale 1 ns/100 ps
// Version: 


module DLL(
       POWERDOWN_N,
       DIR,
       CLK_MOVE,
       CODE_MOVE,
       ALU_HOLD,
       CODE_UPDATE,
       PHASE_LOAD,
       CLK_MOVE_DONE,
       CODE_MOVE_DONE,
       LOCK,
       DELAY_DIFF,
       CODE,
       REF_CLK,
       FB_CLK,
       CLK_0,
       CLK_1,
       DRI_CLK,
       DRI_CTRL,
       DRI_WDATA,
       DRI_ARST_N,
       DRI_RDATA,
       DRI_INTERRUPT
    )
/* synthesis black_box

pragma attribute DLL ment_tpd0 FB_CLK->CLK_0+1.384
pragma attribute DLL ment_tpd1 FB_CLK->CLK_1+1.384
pragma attribute DLL ment_tpd2 REF_CLK->CLK_0+1.384
pragma attribute DLL ment_tpd3 REF_CLK->CLK_1+1.384
*/
/* synthesis black_box black_box_pad ="" */
 ;
input  POWERDOWN_N;
input  DIR;
input  CLK_MOVE;
input  CODE_MOVE;
input  ALU_HOLD;
input  CODE_UPDATE;
input  PHASE_LOAD;
output CLK_MOVE_DONE;
output CODE_MOVE_DONE;
output LOCK;
output DELAY_DIFF;
output [7:0] CODE;
input  REF_CLK;
input  FB_CLK;
output CLK_0;
output CLK_1;
input  DRI_CLK;
input  [10:0] DRI_CTRL;
input  [32:0] DRI_WDATA;
input  DRI_ARST_N;
output [32:0] DRI_RDATA;
output DRI_INTERRUPT;
parameter DATA_RATE = 0.0;
parameter FORMAL_NAME = "";
parameter INTERFACE_NAME = "";
parameter INTERFACE_LEVEL = 'h0;
parameter SOFTRESET = 'h0;
parameter PRIMARY_PHASE = 'h0;
parameter SECONDARY_PHASE = 'h0;
parameter PRIMARY_CLK_SEL = 'h0;
parameter SECONDARY_CLK_SEL = 'h0;
parameter REF_SEL = 'h0;
parameter FB_SEL = 'h0;
parameter DIV_SEL = 'h0;
parameter SECONDARY_FINE_PHASE = 'h0;
parameter ALU_UPDATE = 'h0;
parameter PHASE_CODE_SEL = 'h0;
parameter LOCK_TOLERANCE = 'h0;
parameter LOCK_HIGH = 'h0;
parameter LOCK_LOW = 'h0;
parameter SET_ALU = 'h0;
parameter ADJ_DEL4 = 'h0;
parameter RESERVED_0 = 'h0;
parameter ADJ_CODE = 'h0;
parameter INIT_CODE = 'h0;
parameter FAST_RELOCK = 'h0;
parameter POWERDOWN_EN = 'h0;
parameter RESET = 'h0;
parameter SOFT_ALU_HOLD = 'h0;
parameter SOFT_CODE_UPDATE = 'h0;
parameter SOFT_LOCK_DBG = 'h0;
parameter SOFT_LOCK_FRC = 'h0;
parameter SOFT_PHASE_DIRECTION = 'h0;
parameter SOFT_PHASE_LOAD = 'h0;
parameter SOFT_PHASE_MOVE_CLK = 'h0;
parameter SOFT_MOVE_CODE = 'h0;
parameter TEST_RING = 'h0;
parameter DELAY_DIFF_RANGE = 'h0;
parameter DRI_EN = 'h0;

endmodule
