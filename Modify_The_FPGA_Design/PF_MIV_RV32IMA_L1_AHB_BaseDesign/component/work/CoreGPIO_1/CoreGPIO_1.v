//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Nov 27 10:07:44 2017
// Version: PolarFire v2.0 12.200.0.20
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// CoreGPIO_1
module CoreGPIO_1(
    // Inputs
    GPIO_IN,
    PADDR,
    PCLK,
    PENABLE,
    PRESETN,
    PSEL,
    PWDATA,
    PWRITE,
    // Outputs
    GPIO_OUT,
    INT,
    PRDATA,
    PREADY,
    PSLVERR
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [7:0]  GPIO_IN;
input  [7:0]  PADDR;
input         PCLK;
input         PENABLE;
input         PRESETN;
input         PSEL;
input  [31:0] PWDATA;
input         PWRITE;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [7:0]  GPIO_OUT;
output [7:0]  INT;
output [31:0] PRDATA;
output        PREADY;
output        PSLVERR;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [7:0]  PADDR;
wire          PENABLE;
wire   [31:0] APB_bif_PRDATA;
wire          APB_bif_PREADY;
wire          PSEL;
wire          APB_bif_PSLVERR;
wire   [31:0] PWDATA;
wire          PWRITE;
wire   [7:0]  GPIO_IN;
wire   [7:0]  GPIO_OUT_0;
wire   [7:0]  INT_0;
wire          PCLK;
wire          PRESETN;
wire   [31:0] APB_bif_PRDATA_net_0;
wire          APB_bif_PREADY_net_0;
wire          APB_bif_PSLVERR_net_0;
wire   [7:0]  INT_0_net_0;
wire   [7:0]  GPIO_OUT_0_net_0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign APB_bif_PRDATA_net_0  = APB_bif_PRDATA;
assign PRDATA[31:0]          = APB_bif_PRDATA_net_0;
assign APB_bif_PREADY_net_0  = APB_bif_PREADY;
assign PREADY                = APB_bif_PREADY_net_0;
assign APB_bif_PSLVERR_net_0 = APB_bif_PSLVERR;
assign PSLVERR               = APB_bif_PSLVERR_net_0;
assign INT_0_net_0           = INT_0;
assign INT[7:0]              = INT_0_net_0;
assign GPIO_OUT_0_net_0      = GPIO_OUT_0;
assign GPIO_OUT[7:0]         = GPIO_OUT_0_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CoreGPIO_1_CoreGPIO_1_0_CoreGPIO   -   Actel:DirectCore:CoreGPIO:3.2.102
CoreGPIO_1_CoreGPIO_1_0_CoreGPIO #( 
        .APB_WIDTH       ( 32 ),
        .FIXED_CONFIG_0  ( 1 ),
        .FIXED_CONFIG_1  ( 1 ),
        .FIXED_CONFIG_2  ( 1 ),
        .FIXED_CONFIG_3  ( 1 ),
        .FIXED_CONFIG_4  ( 1 ),
        .FIXED_CONFIG_5  ( 1 ),
        .FIXED_CONFIG_6  ( 1 ),
        .FIXED_CONFIG_7  ( 1 ),
        .FIXED_CONFIG_8  ( 0 ),
        .FIXED_CONFIG_9  ( 0 ),
        .FIXED_CONFIG_10 ( 0 ),
        .FIXED_CONFIG_11 ( 0 ),
        .FIXED_CONFIG_12 ( 0 ),
        .FIXED_CONFIG_13 ( 0 ),
        .FIXED_CONFIG_14 ( 0 ),
        .FIXED_CONFIG_15 ( 0 ),
        .FIXED_CONFIG_16 ( 0 ),
        .FIXED_CONFIG_17 ( 0 ),
        .FIXED_CONFIG_18 ( 0 ),
        .FIXED_CONFIG_19 ( 0 ),
        .FIXED_CONFIG_20 ( 0 ),
        .FIXED_CONFIG_21 ( 0 ),
        .FIXED_CONFIG_22 ( 0 ),
        .FIXED_CONFIG_23 ( 0 ),
        .FIXED_CONFIG_24 ( 0 ),
        .FIXED_CONFIG_25 ( 0 ),
        .FIXED_CONFIG_26 ( 0 ),
        .FIXED_CONFIG_27 ( 0 ),
        .FIXED_CONFIG_28 ( 0 ),
        .FIXED_CONFIG_29 ( 0 ),
        .FIXED_CONFIG_30 ( 0 ),
        .FIXED_CONFIG_31 ( 0 ),
        .INT_BUS         ( 0 ),
        .IO_INT_TYPE_0   ( 7 ),
        .IO_INT_TYPE_1   ( 7 ),
        .IO_INT_TYPE_2   ( 7 ),
        .IO_INT_TYPE_3   ( 7 ),
        .IO_INT_TYPE_4   ( 7 ),
        .IO_INT_TYPE_5   ( 7 ),
        .IO_INT_TYPE_6   ( 7 ),
        .IO_INT_TYPE_7   ( 7 ),
        .IO_INT_TYPE_8   ( 7 ),
        .IO_INT_TYPE_9   ( 7 ),
        .IO_INT_TYPE_10  ( 7 ),
        .IO_INT_TYPE_11  ( 7 ),
        .IO_INT_TYPE_12  ( 7 ),
        .IO_INT_TYPE_13  ( 7 ),
        .IO_INT_TYPE_14  ( 7 ),
        .IO_INT_TYPE_15  ( 7 ),
        .IO_INT_TYPE_16  ( 7 ),
        .IO_INT_TYPE_17  ( 7 ),
        .IO_INT_TYPE_18  ( 7 ),
        .IO_INT_TYPE_19  ( 7 ),
        .IO_INT_TYPE_20  ( 7 ),
        .IO_INT_TYPE_21  ( 7 ),
        .IO_INT_TYPE_22  ( 7 ),
        .IO_INT_TYPE_23  ( 7 ),
        .IO_INT_TYPE_24  ( 7 ),
        .IO_INT_TYPE_25  ( 7 ),
        .IO_INT_TYPE_26  ( 7 ),
        .IO_INT_TYPE_27  ( 7 ),
        .IO_INT_TYPE_28  ( 7 ),
        .IO_INT_TYPE_29  ( 7 ),
        .IO_INT_TYPE_30  ( 7 ),
        .IO_INT_TYPE_31  ( 7 ),
        .IO_NUM          ( 8 ),
        .IO_TYPE_0       ( 1 ),
        .IO_TYPE_1       ( 1 ),
        .IO_TYPE_2       ( 1 ),
        .IO_TYPE_3       ( 1 ),
        .IO_TYPE_4       ( 1 ),
        .IO_TYPE_5       ( 1 ),
        .IO_TYPE_6       ( 1 ),
        .IO_TYPE_7       ( 1 ),
        .IO_TYPE_8       ( 0 ),
        .IO_TYPE_9       ( 0 ),
        .IO_TYPE_10      ( 0 ),
        .IO_TYPE_11      ( 0 ),
        .IO_TYPE_12      ( 0 ),
        .IO_TYPE_13      ( 0 ),
        .IO_TYPE_14      ( 0 ),
        .IO_TYPE_15      ( 0 ),
        .IO_TYPE_16      ( 0 ),
        .IO_TYPE_17      ( 0 ),
        .IO_TYPE_18      ( 0 ),
        .IO_TYPE_19      ( 0 ),
        .IO_TYPE_20      ( 0 ),
        .IO_TYPE_21      ( 0 ),
        .IO_TYPE_22      ( 0 ),
        .IO_TYPE_23      ( 0 ),
        .IO_TYPE_24      ( 0 ),
        .IO_TYPE_25      ( 0 ),
        .IO_TYPE_26      ( 0 ),
        .IO_TYPE_27      ( 0 ),
        .IO_TYPE_28      ( 0 ),
        .IO_TYPE_29      ( 0 ),
        .IO_TYPE_30      ( 0 ),
        .IO_TYPE_31      ( 0 ),
        .IO_VAL_0        ( 0 ),
        .IO_VAL_1        ( 0 ),
        .IO_VAL_2        ( 0 ),
        .IO_VAL_3        ( 0 ),
        .IO_VAL_4        ( 0 ),
        .IO_VAL_5        ( 0 ),
        .IO_VAL_6        ( 0 ),
        .IO_VAL_7        ( 0 ),
        .IO_VAL_8        ( 0 ),
        .IO_VAL_9        ( 0 ),
        .IO_VAL_10       ( 0 ),
        .IO_VAL_11       ( 0 ),
        .IO_VAL_12       ( 0 ),
        .IO_VAL_13       ( 0 ),
        .IO_VAL_14       ( 0 ),
        .IO_VAL_15       ( 0 ),
        .IO_VAL_16       ( 0 ),
        .IO_VAL_17       ( 0 ),
        .IO_VAL_18       ( 0 ),
        .IO_VAL_19       ( 0 ),
        .IO_VAL_20       ( 0 ),
        .IO_VAL_21       ( 0 ),
        .IO_VAL_22       ( 0 ),
        .IO_VAL_23       ( 0 ),
        .IO_VAL_24       ( 0 ),
        .IO_VAL_25       ( 0 ),
        .IO_VAL_26       ( 0 ),
        .IO_VAL_27       ( 0 ),
        .IO_VAL_28       ( 0 ),
        .IO_VAL_29       ( 0 ),
        .IO_VAL_30       ( 0 ),
        .IO_VAL_31       ( 0 ),
        .OE_TYPE         ( 1 ) )
CoreGPIO_1_0(
        // Inputs
        .PRESETN  ( PRESETN ),
        .PCLK     ( PCLK ),
        .PSEL     ( PSEL ),
        .PENABLE  ( PENABLE ),
        .PWRITE   ( PWRITE ),
        .PADDR    ( PADDR ),
        .PWDATA   ( PWDATA ),
        .GPIO_IN  ( GPIO_IN ),
        // Outputs
        .PSLVERR  ( APB_bif_PSLVERR ),
        .PREADY   ( APB_bif_PREADY ),
        .PRDATA   ( APB_bif_PRDATA ),
        .INT      ( INT_0 ),
        .INT_OR   (  ),
        .GPIO_OUT ( GPIO_OUT_0 ),
        .GPIO_OE  (  ) 
        );


endmodule
