//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Jun 27 15:47:48 2017
// Version: PolarFire v1.1SP1 12.100.9.13
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// RISCV_TOP
module RISCV_TOP(
    // Inputs
    CLK_50MHZ,
    FF_NONTIMED_ENTRY,
    FF_TIMED_ENTRY,
    TCK,
    TDI,
    TMS,
    TRSTB,
    UART_RX,
    USER_RESET,
    // Outputs
    CLK_LED4,
    TDO,
    UART_TX,
    USR_BUSY,
    USR_CMD_ERROR,
    USR_RDVLD
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  CLK_50MHZ;
input  FF_NONTIMED_ENTRY;
input  FF_TIMED_ENTRY;
input  TCK;
input  TDI;
input  TMS;
input  TRSTB;
input  UART_RX;
input  USER_RESET;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output CLK_LED4;
output TDO;
output UART_TX;
output USR_BUSY;
output USR_CMD_ERROR;
output USR_RDVLD;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   AND2_0_Y;
wire   CLK_50MHZ;
wire   CLK_LED4_net_0;
wire   FF_NONTIMED_ENTRY;
wire   FF_TIMED_ENTRY;
wire   INBUF_0_Y;
wire   PF_CCC_0_OUT0_FABCLK_0;
wire   reset_synchronizer_1_reset_sync;
wire   TCK;
wire   TDI;
wire   TDO_net_0;
wire   TMS;
wire   TRSTB;
wire   UART_RX;
wire   UART_TX_net_0;
wire   USER_RESET;
wire   USR_BUSY_net_0;
wire   USR_CMD_ERROR_net_0;
wire   USR_RDVLD_net_0;
wire   TDO_net_1;
wire   UART_TX_net_1;
wire   CLK_LED4_net_1;
wire   USR_RDVLD_net_1;
wire   USR_CMD_ERROR_net_1;
wire   USR_BUSY_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   VCC_net;
wire   GND_net;
wire   [10:0]DRI_CTRL_0_const_net_0;
wire   [32:0]DRI_WDATA_0_const_net_0;
wire   [10:0]DRI_CTRL_1_const_net_0;
wire   [32:0]DRI_WDATA_1_const_net_0;
wire   [10:0]DLL_DRI_CTRL_const_net_0;
wire   [32:0]DLL_DRI_WDATA_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net                   = 1'b1;
assign GND_net                   = 1'b0;
assign DRI_CTRL_0_const_net_0    = 11'h000;
assign DRI_WDATA_0_const_net_0   = 33'h000000000;
assign DRI_CTRL_1_const_net_0    = 11'h000;
assign DRI_WDATA_1_const_net_0   = 33'h000000000;
assign DLL_DRI_CTRL_const_net_0  = 11'h000;
assign DLL_DRI_WDATA_const_net_0 = 33'h000000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TDO_net_1           = TDO_net_0;
assign TDO                 = TDO_net_1;
assign UART_TX_net_1       = UART_TX_net_0;
assign UART_TX             = UART_TX_net_1;
assign CLK_LED4_net_1      = CLK_LED4_net_0;
assign CLK_LED4            = CLK_LED4_net_1;
assign USR_RDVLD_net_1     = USR_RDVLD_net_0;
assign USR_RDVLD           = USR_RDVLD_net_1;
assign USR_CMD_ERROR_net_1 = USR_CMD_ERROR_net_0;
assign USR_CMD_ERROR       = USR_CMD_ERROR_net_1;
assign USR_BUSY_net_1      = USR_BUSY_net_0;
assign USR_BUSY            = USR_BUSY_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AND2
AND2 AND2_0(
        // Inputs
        .A ( USER_RESET ),
        .B ( VCC_net ),
        // Outputs
        .Y ( AND2_0_Y ) 
        );

//--------INBUF
INBUF INBUF_0(
        // Inputs
        .PAD ( CLK_50MHZ ),
        // Outputs
        .Y   ( INBUF_0_Y ) 
        );

//--------led_blink
led_blink led_blink_0(
        // Inputs
        .clock ( INBUF_0_Y ),
        .reset ( reset_synchronizer_1_reset_sync ),
        // Outputs
        .led   ( CLK_LED4_net_0 ) 
        );

//--------RISCV_TOP_PF_CCC_0_PF_CCC   -   Actel:SgCore:PF_CCC:1.0.107
RISCV_TOP_PF_CCC_0_PF_CCC PF_CCC_0(
        // Inputs
        .REF_CLK_0     ( INBUF_0_Y ),
        // Outputs
        .OUT0_FABCLK_0 ( PF_CCC_0_OUT0_FABCLK_0 ),
        .OUT1_FABCLK_0 (  ),
        .PLL_LOCK_0    (  ) 
        );

//--------PROC_SUBSYSTEM
PROC_SUBSYSTEM PROC_SUBSYSTEM_0(
        // Inputs
        .RX                ( UART_RX ),
        .TDI               ( TDI ),
        .TCK               ( TCK ),
        .TMS               ( TMS ),
        .TRSTB             ( TRSTB ),
        .PCLK              ( PF_CCC_0_OUT0_FABCLK_0 ),
        .reset             ( reset_synchronizer_1_reset_sync ),
        .FF_TIMED_ENTRY    ( FF_TIMED_ENTRY ),
        .FF_NONTIMED_ENTRY ( FF_NONTIMED_ENTRY ),
        // Outputs
        .TX                ( UART_TX_net_0 ),
        .TDO               ( TDO_net_0 ),
        .APB_CLK           (  ),
        .APB_Reset         (  ),
        .USR_BUSY          ( USR_BUSY_net_0 ),
        .USR_CMD_ERROR     ( USR_CMD_ERROR_net_0 ),
        .USR_RDVLD         ( USR_RDVLD_net_0 ) 
        );

//--------reset_synchronizer
reset_synchronizer reset_synchronizer_1(
        // Inputs
        .clock      ( PF_CCC_0_OUT0_FABCLK_0 ),
        .reset      ( AND2_0_Y ),
        // Outputs
        .reset_sync ( reset_synchronizer_1_reset_sync ) 
        );


endmodule
