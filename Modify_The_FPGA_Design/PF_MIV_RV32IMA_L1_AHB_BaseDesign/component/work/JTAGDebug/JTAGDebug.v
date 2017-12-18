//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Nov 27 09:56:52 2017
// Version: PolarFire v2.0 12.200.0.20
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// JTAGDebug
module JTAGDebug(
    // Inputs
    TCK,
    TDI,
    TGT_TDO,
    TMS,
    TRSTB,
    UTDODRV_0,
    UTDODRV_1,
    UTDODRV_2,
    UTDODRV_3,
    UTDO_IN_0,
    UTDO_IN_1,
    UTDO_IN_2,
    UTDO_IN_3,
    // Outputs
    TDO,
    TGT_TCK,
    TGT_TDI,
    TGT_TMS,
    TGT_TRST,
    UDRCAP_OUT,
    UDRCK_OUT,
    UDRSH_OUT,
    UDRUPD_OUT,
    UIREG_OUT,
    URSTB_OUT,
    UTDI_OUT
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        TCK;
input        TDI;
input        TGT_TDO;
input        TMS;
input        TRSTB;
input        UTDODRV_0;
input        UTDODRV_1;
input        UTDODRV_2;
input        UTDODRV_3;
input        UTDO_IN_0;
input        UTDO_IN_1;
input        UTDO_IN_2;
input        UTDO_IN_3;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       TDO;
output       TGT_TCK;
output       TGT_TDI;
output       TGT_TMS;
output       TGT_TRST;
output       UDRCAP_OUT;
output       UDRCK_OUT;
output       UDRSH_OUT;
output       UDRUPD_OUT;
output [7:0] UIREG_OUT;
output       URSTB_OUT;
output       UTDI_OUT;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         TCK;
wire         TDI;
wire         TDO_net_0;
wire         TGT_TCK_net_0;
wire         TGT_TDI_net_0;
wire         TGT_TDO;
wire         TGT_TMS_net_0;
wire         TGT_TRST_net_0;
wire         TMS;
wire         TRSTB;
wire         UDRCAP_OUT_net_0;
wire         UDRCK_OUT_net_0;
wire         UDRSH_OUT_net_0;
wire         UDRUPD_OUT_net_0;
wire   [7:0] UIREG_OUT_net_0;
wire         URSTB_OUT_net_0;
wire         UTDI_OUT_net_0;
wire         UTDO_IN_0;
wire         UTDO_IN_1;
wire         UTDO_IN_2;
wire         UTDO_IN_3;
wire         UTDODRV_0;
wire         UTDODRV_1;
wire         UTDODRV_2;
wire         UTDODRV_3;
wire         TDO_net_1;
wire         TGT_TCK_net_1;
wire         TGT_TRST_net_1;
wire         TGT_TMS_net_1;
wire         TGT_TDI_net_1;
wire         UDRCAP_OUT_net_1;
wire         UDRSH_OUT_net_1;
wire         UDRUPD_OUT_net_1;
wire   [7:0] UIREG_OUT_net_1;
wire         URSTB_OUT_net_1;
wire         UDRCK_OUT_net_1;
wire         UTDI_OUT_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         GND_net;
wire   [7:0] UIREG_IN_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net              = 1'b0;
assign UIREG_IN_const_net_0 = 8'h00;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TDO_net_1        = TDO_net_0;
assign TDO              = TDO_net_1;
assign TGT_TCK_net_1    = TGT_TCK_net_0;
assign TGT_TCK          = TGT_TCK_net_1;
assign TGT_TRST_net_1   = TGT_TRST_net_0;
assign TGT_TRST         = TGT_TRST_net_1;
assign TGT_TMS_net_1    = TGT_TMS_net_0;
assign TGT_TMS          = TGT_TMS_net_1;
assign TGT_TDI_net_1    = TGT_TDI_net_0;
assign TGT_TDI          = TGT_TDI_net_1;
assign UDRCAP_OUT_net_1 = UDRCAP_OUT_net_0;
assign UDRCAP_OUT       = UDRCAP_OUT_net_1;
assign UDRSH_OUT_net_1  = UDRSH_OUT_net_0;
assign UDRSH_OUT        = UDRSH_OUT_net_1;
assign UDRUPD_OUT_net_1 = UDRUPD_OUT_net_0;
assign UDRUPD_OUT       = UDRUPD_OUT_net_1;
assign UIREG_OUT_net_1  = UIREG_OUT_net_0;
assign UIREG_OUT[7:0]   = UIREG_OUT_net_1;
assign URSTB_OUT_net_1  = URSTB_OUT_net_0;
assign URSTB_OUT        = URSTB_OUT_net_1;
assign UDRCK_OUT_net_1  = UDRCK_OUT_net_0;
assign UDRCK_OUT        = UDRCK_OUT_net_1;
assign UTDI_OUT_net_1   = UTDI_OUT_net_0;
assign UTDI_OUT         = UTDI_OUT_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------COREJTAGDEBUG   -   Actel:DirectCore:COREJTAGDEBUG:2.0.100
COREJTAGDEBUG #( 
        .ACTIVE_HIGH_TGT_RESET ( 1 ),
        .IR_CODE               ( 'h55 ) )
JTAGDebug_0(
        // Inputs
        .TGT_TDO     ( TGT_TDO ),
        .TDI         ( TDI ),
        .TCK         ( TCK ),
        .TMS         ( TMS ),
        .TRSTB       ( TRSTB ),
        .UTDODRV_0   ( UTDODRV_0 ),
        .UTDODRV_1   ( UTDODRV_1 ),
        .UTDODRV_2   ( UTDODRV_2 ),
        .UTDODRV_3   ( UTDODRV_3 ),
        .UTDO_IN_0   ( UTDO_IN_0 ),
        .UTDO_IN_1   ( UTDO_IN_1 ),
        .UTDO_IN_2   ( UTDO_IN_2 ),
        .UTDO_IN_3   ( UTDO_IN_3 ),
        .UDRCAP_IN   ( GND_net ), // tied to 1'b0 from definition
        .UDRSH_IN    ( GND_net ), // tied to 1'b0 from definition
        .UDRUPD_IN   ( GND_net ), // tied to 1'b0 from definition
        .UIREG_IN    ( UIREG_IN_const_net_0 ), // tied to 8'h00 from definition
        .URSTB_IN    ( GND_net ), // tied to 1'b0 from definition
        .UDRCK_IN    ( GND_net ), // tied to 1'b0 from definition
        .UTDI_IN     ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .TGT_TCK     ( TGT_TCK_net_0 ),
        .TGT_TRST    ( TGT_TRST_net_0 ),
        .TGT_TMS     ( TGT_TMS_net_0 ),
        .TGT_TDI     ( TGT_TDI_net_0 ),
        .TDO         ( TDO_net_0 ),
        .UDRCAP_OUT  ( UDRCAP_OUT_net_0 ),
        .UDRSH_OUT   ( UDRSH_OUT_net_0 ),
        .UDRUPD_OUT  ( UDRUPD_OUT_net_0 ),
        .UIREG_OUT   ( UIREG_OUT_net_0 ),
        .URSTB_OUT   ( URSTB_OUT_net_0 ),
        .UDRCK_OUT   ( UDRCK_OUT_net_0 ),
        .UTDI_OUT    ( UTDI_OUT_net_0 ),
        .UTDODRV_OUT (  ),
        .UTDO_OUT    (  ) 
        );


endmodule
