`timescale 1 ns/100 ps
// Version: 


module CRYPTO(
       HCLK,
       HRESETN,
       M_HREADY,
       M_HRESP,
       M_HRDATA,
       S_HSEL,
       S_HADDR,
       S_HWDATA,
       S_HSIZE,
       S_HTRANS,
       S_HWRITE,
       S_HREADY,
       PURGE,
       START,
       TEST_CALIB_IN,
       TEST_CALIB_RESET_B,
       STALL,
       M_HADDR,
       M_HWDATA,
       M_HSIZE,
       M_HTRANS,
       M_HWRITE,
       M_HMASTLOCK,
       S_HREADYOUT,
       S_HRESP,
       S_HRDATA,
       BUSY,
       COMPLETE,
       ALARM,
       TEST_CALIB_OUT,
       TEST_DLL_LOCKED,
       BUS_ERROR,
       DRI_CLK,
       DRI_CTRL,
       DRI_WDATA,
       DRI_ARST_N,
       DRI_RDATA,
       DRI_INTERRUPT
    ) ;
/* synthesis syn_black_box

*/
/* synthesis black_box_pad_pin ="" */
input  HCLK;
input  HRESETN;
input  M_HREADY;
input  M_HRESP;
input  [31:0] M_HRDATA;
input  S_HSEL;
input  [16:0] S_HADDR;
input  [31:0] S_HWDATA;
input  [1:0] S_HSIZE;
input  [1:0] S_HTRANS;
input  S_HWRITE;
input  S_HREADY;
input  PURGE;
input  START;
input  TEST_CALIB_IN;
input  TEST_CALIB_RESET_B;
input  STALL;
output [31:0] M_HADDR;
output [31:0] M_HWDATA;
output [1:0] M_HSIZE;
output [1:0] M_HTRANS;
output M_HWRITE;
output M_HMASTLOCK;
output S_HREADYOUT;
output S_HRESP;
output [31:0] S_HRDATA;
output BUSY;
output COMPLETE;
output ALARM;
output TEST_CALIB_OUT;
output TEST_DLL_LOCKED;
output BUS_ERROR;
input  DRI_CLK;
input  [10:0] DRI_CTRL;
input  [32:0] DRI_WDATA;
input  DRI_ARST_N;
output [32:0] DRI_RDATA;
output DRI_INTERRUPT;
parameter SOFT_RESET_PERIPH = 'h0;
parameter DLL_CTRL0_PHASE_P = 'h0;
parameter DLL_CTRL0_PHASE_S = 'h0;
parameter DLL_CTRL0_SEL_P = 'h0;
parameter DLL_CTRL0_SEL_S = 'h0;
parameter DLL_CTRL0_REF_SEL = 'h0;
parameter DLL_CTRL0_FB_SEL = 'h0;
parameter DLL_CTRL0_DIV_SEL = 'h0;
parameter DLL_CTRL0_ALU_UPD = 'h0;
parameter DLL_CTRL0_LOCK_FRC = 'h0;
parameter DLL_CTRL0_LOCK_FLT = 'h0;
parameter DLL_CTRL0_LOCK_HIGH = 'h0;
parameter DLL_CTRL0_LOCK_LOW = 'h0;
parameter DLL_CTRL1_SET_ALU = 'h0;
parameter DLL_CTRL1_ADJ_DEL4 = 'h0;
parameter DLL_CTRL1_TEST_S = 'h0;
parameter DLL_CTRL1_TEST_RING = 'h0;
parameter DLL_CTRL1_INIT_CODE = 'h0;
parameter DLL_CTRL1_RELOCK_FAST = 'h0;
parameter DLL_STAT0_RESET = 'h0;
parameter DLL_STAT0_PHASE_MOVE_CLK = 'h0;
parameter CONTROL_USER_SCB_CONTROL = 'h0;
parameter CONTROL_USER_RESET = 'h0;
parameter CONTROL_USER_CLOCK_ENABLE = 'h0;
parameter CONTROL_USER_CLOCK_SELECT = 'h0;
parameter CONTROL_USER_RAMS_ON = 'h0;
parameter CONTROL_USER_DLL_ON = 'h0;
parameter CONTROL_USER_RING_OSC_ON = 'h0;
parameter CONTROL_USER_PURGE = 'h0;
parameter CONTROL_USER_GO = 'h0;
parameter INTERRUPT_ENABLE_COMPLETE = 'h0;
parameter INTERRUPT_ENABLE_ALARM = 'h0;
parameter INTERRUPT_ENABLE_BUSERROR = 'h0;
parameter MARGIN_RAM = 'h0;
parameter MARGIN_ROM = 'h0;

endmodule
