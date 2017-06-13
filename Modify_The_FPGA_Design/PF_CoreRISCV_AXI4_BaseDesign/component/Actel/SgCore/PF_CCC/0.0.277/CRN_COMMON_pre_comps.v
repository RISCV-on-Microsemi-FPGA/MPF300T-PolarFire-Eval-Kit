`timescale 1 ns/100 ps
// Version: 


module CRN_COMMON(
       REFCLK_SYNC_EN,
       CFM_CLKOUT,
       PLL0_REFCLK_SYNC_EN,
       PLL1_REFCLK_SYNC_EN
    )
/* synthesis black_box

*/
/* synthesis black_box black_box_pad ="" */
 ;
input  REFCLK_SYNC_EN;
output CFM_CLKOUT;
output PLL0_REFCLK_SYNC_EN;
output PLL1_REFCLK_SYNC_EN;
parameter PC_CIMUX_GEN0_SEL = 'h0;
parameter PC_CIMUX_GEN1_SEL = 'h0;
parameter PC_CIMUX_GEN2_SEL = 'h0;
parameter PC_CIMUX_GEN3_SEL = 'h0;
parameter PC_CIMUX_GEN4_SEL = 'h0;
parameter PC_CIMUX_GEN5_SEL = 'h0;
parameter PC_CIMUX_REF0_SEL = 'h0;
parameter PC_CIMUX_REF1_SEL = 'h0;
parameter PC_CIMUX_REF2_SEL = 'h0;
parameter PC_CIMUX_REF3_SEL = 'h0;
parameter PC_CIMUX_REF4_SEL = 'h0;
parameter PC_CIMUX_REF5_SEL = 'h0;
parameter PC_CIMUX_REF6_SEL = 'h0;
parameter PC_CIMUX_REF7_SEL = 'h0;
parameter PC_CIMUX_REF8_SEL = 'h0;
parameter PC_CIMUX_REF9_SEL = 'h0;
parameter PC_CDMUX6_SEL = 'h0;
parameter PC_COMUX0_SEL = 'h0;
parameter PC_COMUX1_SEL = 'h0;
parameter PC_COMUX2_SEL = 'h0;
parameter PC_COMUX3_SEL = 'h0;
parameter PC_COMUX4_SEL = 'h0;
parameter PC_COMUX5_SEL = 'h0;
parameter PC_COMUX6_SEL = 'h0;
parameter PC_COMUX7_SEL = 'h0;
parameter PC_SRMUX0_SEL = 'h0;
parameter PC_SRMUX1_SEL = 'h0;
parameter PC_CRNFDR_HORZ_EN = 'h0;
parameter PC_CRNFR_VERT_EN = 'h0;
parameter PC_SOFTRESET = 'h0;
parameter PC_DYN_EN = 'h0;

endmodule
