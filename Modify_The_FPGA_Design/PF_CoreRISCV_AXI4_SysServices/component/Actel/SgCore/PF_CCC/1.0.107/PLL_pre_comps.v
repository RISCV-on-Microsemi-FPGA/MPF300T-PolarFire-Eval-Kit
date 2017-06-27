`timescale 1 ns/100 ps
// Version: 


module PLL(
       POWERDOWN_N,
       OUT0_EN,
       OUT1_EN,
       OUT2_EN,
       OUT3_EN,
       REF_CLK_SEL,
       BYPASS_EN_N,
       LOAD_PHASE_N,
       SSCG_WAVE_TABLE,
       PHASE_DIRECTION,
       PHASE_ROTATE,
       PHASE_OUT0_SEL,
       PHASE_OUT1_SEL,
       PHASE_OUT2_SEL,
       PHASE_OUT3_SEL,
       DELAY_LINE_MOVE,
       DELAY_LINE_DIRECTION,
       DELAY_LINE_WIDE,
       DELAY_LINE_LOAD,
       LOCK,
       SSCG_WAVE_TABLE_ADDR,
       DELAY_LINE_OUT_OF_RANGE,
       REFCLK_SYNC_EN,
       REF_CLK_0,
       REF_CLK_1,
       FB_CLK,
       OUT0,
       OUT1,
       OUT2,
       OUT3,
       DRI_CLK,
       DRI_CTRL,
       DRI_WDATA,
       DRI_ARST_N,
       DRI_RDATA,
       DRI_INTERRUPT
    )
/* synthesis black_box

pragma attribute PLL ment_tco0 REF_CLK_0->OUT0+1.384
pragma attribute PLL ment_tco1 REF_CLK_0->OUT1+1.384
pragma attribute PLL ment_tco2 REF_CLK_0->OUT2+1.384
pragma attribute PLL ment_tco3 REF_CLK_0->OUT3+1.384
pragma attribute PLL ment_tco4 REF_CLK_1->OUT0+1.384
pragma attribute PLL ment_tco5 REF_CLK_1->OUT1+1.384
pragma attribute PLL ment_tco6 REF_CLK_1->OUT2+1.384
pragma attribute PLL ment_tco7 REF_CLK_1->OUT3+1.384
*/
/* synthesis black_box black_box_pad ="" */
 ;
input  POWERDOWN_N;
input  OUT0_EN;
input  OUT1_EN;
input  OUT2_EN;
input  OUT3_EN;
input  REF_CLK_SEL;
input  BYPASS_EN_N;
input  LOAD_PHASE_N;
input  [7:0] SSCG_WAVE_TABLE;
input  PHASE_DIRECTION;
input  PHASE_ROTATE;
input  PHASE_OUT0_SEL;
input  PHASE_OUT1_SEL;
input  PHASE_OUT2_SEL;
input  PHASE_OUT3_SEL;
input  DELAY_LINE_MOVE;
input  DELAY_LINE_DIRECTION;
input  DELAY_LINE_WIDE;
input  DELAY_LINE_LOAD;
output LOCK;
output [7:0] SSCG_WAVE_TABLE_ADDR;
output DELAY_LINE_OUT_OF_RANGE;
input  REFCLK_SYNC_EN;
input  REF_CLK_0;
input  REF_CLK_1;
input  FB_CLK;
output OUT0;
output OUT1;
output OUT2;
output OUT3;
input  DRI_CLK;
input  [10:0] DRI_CTRL;
input  [32:0] DRI_WDATA;
input  DRI_ARST_N;
output [32:0] DRI_RDATA;
output DRI_INTERRUPT;
parameter VCOFREQUENCY = 0.0;
parameter DELAY_LINE_SIMULATION_MODE = "";
parameter DATA_RATE = 0.0;
parameter FORMAL_NAME = "";
parameter INTERFACE_NAME = "";
parameter INTERFACE_LEVEL = 'h0;
parameter SOFTRESET = 'h0;
parameter SOFT_POWERDOWN_N = 'h0;
parameter RFDIV_EN = 'h0;
parameter OUT0_DIV_EN = 'h0;
parameter OUT1_DIV_EN = 'h0;
parameter OUT2_DIV_EN = 'h0;
parameter OUT3_DIV_EN = 'h0;
parameter SOFT_REF_CLK_SEL = 'h0;
parameter RESET_ON_LOCK = 'h0;
parameter BYPASS_CLK_SEL = 'h0;
parameter BYPASS_GO_EN_N = 'h0;
parameter BYPASS_PLL = 'h0;
parameter BYPASS_OUT_DIVIDER = 'h0;
parameter FF_REQUIRES_LOCK = 'h0;
parameter FSE_N = 'h0;
parameter FB_CLK_SEL_0 = 'h0;
parameter FB_CLK_SEL_1 = 'h0;
parameter RFDIV = 'h0;
parameter FRAC_EN = 'h0;
parameter FRAC_DAC_EN = 'h0;
parameter DIV0_RST_DELAY = 'h0;
parameter DIV0_VAL = 'h0;
parameter DIV1_RST_DELAY = 'h0;
parameter DIV1_VAL = 'h0;
parameter DIV2_RST_DELAY = 'h0;
parameter DIV2_VAL = 'h0;
parameter DIV3_RST_DELAY = 'h0;
parameter DIV3_VAL = 'h0;
parameter DIV3_CLK_SEL = 'h0;
parameter BW_INT_CTRL = 'h0;
parameter BW_PROP_CTRL = 'h0;
parameter IREF_EN = 'h0;
parameter IREF_TOGGLE = 'h0;
parameter LOCK_CNT = 'h0;
parameter DESKEW_CAL_CNT = 'h0;
parameter DESKEW_CAL_EN = 'h0;
parameter DESKEW_CAL_BYPASS = 'h0;
parameter SYNC_REF_DIV_EN = 'h0;
parameter SYNC_REF_DIV_EN_2 = 'h0;
parameter OUT0_PHASE_SEL = 'h0;
parameter OUT1_PHASE_SEL = 'h0;
parameter OUT2_PHASE_SEL = 'h0;
parameter OUT3_PHASE_SEL = 'h0;
parameter SOFT_LOAD_PHASE_N = 'h0;
parameter SSM_DIV_VAL = 'h0;
parameter FB_FRAC_VAL = 'h0;
parameter SSM_SPREAD_MODE = 'h0;
parameter SSM_MODULATION = 'h0;
parameter FB_INT_VAL = 'h0;
parameter SSM_EN_N = 'h0;
parameter SSM_EXT_WAVE_EN = 'h0;
parameter SSM_EXT_WAVE_MAX_ADDR = 'h0;
parameter SSM_RANDOM_EN = 'h0;
parameter SSM_RANDOM_PATTERN_SEL = 'h0;
parameter CDMUX0_SEL = 'h0;
parameter CDMUX1_SEL = 'h0;
parameter CDMUX2_SEL = 'h0;
parameter CDELAY0_SEL = 'h0;
parameter CDELAY0_EN = 'h0;
parameter DRI_EN = 'h0;

endmodule
