//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Apr 27 09:53:49 2017
// Version: PolarFire EAP4-SPA 12.100.8.13
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// AHBL_SRAM
module AHBL_SRAM(
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
wire   [31:0] HADDR;
wire   [2:0]  HBURST;
wire   [31:0] AHBSlaveInterface_HRDATA;
wire          HREADYIN;
wire          AHBSlaveInterface_HREADYOUT;
wire   [1:0]  AHBSlaveInterface_HRESP;
wire          HSEL;
wire   [2:0]  HSIZE;
wire   [1:0]  HTRANS;
wire   [31:0] HWDATA;
wire          HWRITE;
wire   [15:0] COREAHBLSRAM_PF_0_mem_addr;
wire   [0:0]  COREAHBLSRAM_PF_0_mem_byteen0to0;
wire   [1:1]  COREAHBLSRAM_PF_0_mem_byteen1to1;
wire   [2:2]  COREAHBLSRAM_PF_0_mem_byteen2to2;
wire   [3:3]  COREAHBLSRAM_PF_0_mem_byteen3to3;
wire          COREAHBLSRAM_PF_0_mem_ren;
wire   [39:0] COREAHBLSRAM_PF_0_mem_wdata;
wire          COREAHBLSRAM_PF_0_mem_wen;
wire          HCLK;
wire          HRESETN;
wire   [3:0]  mem_byteen;
wire   [39:0] PF_TPSRAM_0_R_DATA;
wire   [31:0] AHBSlaveInterface_HRDATA_net_0;
wire          AHBSlaveInterface_HREADYOUT_net_0;
wire   [1:0]  AHBSlaveInterface_HRESP_net_0;
wire   [39:0] WBYTE_EN_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net = 1'b0;
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
assign COREAHBLSRAM_PF_0_mem_byteen0to0[0] = mem_byteen[0:0];
assign COREAHBLSRAM_PF_0_mem_byteen1to1[1] = mem_byteen[1:1];
assign COREAHBLSRAM_PF_0_mem_byteen2to2[2] = mem_byteen[2:2];
assign COREAHBLSRAM_PF_0_mem_byteen3to3[3] = mem_byteen[3:3];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign WBYTE_EN_net_0 = { COREAHBLSRAM_PF_0_mem_byteen3to3[3] , COREAHBLSRAM_PF_0_mem_byteen3to3[3] , COREAHBLSRAM_PF_0_mem_byteen3to3[3] , COREAHBLSRAM_PF_0_mem_byteen3to3[3] , COREAHBLSRAM_PF_0_mem_byteen3to3[3] , COREAHBLSRAM_PF_0_mem_byteen3to3[3] , COREAHBLSRAM_PF_0_mem_byteen3to3[3] , COREAHBLSRAM_PF_0_mem_byteen3to3[3] , COREAHBLSRAM_PF_0_mem_byteen3to3[3] , COREAHBLSRAM_PF_0_mem_byteen3to3[3] , COREAHBLSRAM_PF_0_mem_byteen2to2[2] , COREAHBLSRAM_PF_0_mem_byteen2to2[2] , COREAHBLSRAM_PF_0_mem_byteen2to2[2] , COREAHBLSRAM_PF_0_mem_byteen2to2[2] , COREAHBLSRAM_PF_0_mem_byteen2to2[2] , COREAHBLSRAM_PF_0_mem_byteen2to2[2] , COREAHBLSRAM_PF_0_mem_byteen2to2[2] , COREAHBLSRAM_PF_0_mem_byteen2to2[2] , COREAHBLSRAM_PF_0_mem_byteen2to2[2] , COREAHBLSRAM_PF_0_mem_byteen2to2[2] , COREAHBLSRAM_PF_0_mem_byteen1to1[1] , COREAHBLSRAM_PF_0_mem_byteen1to1[1] , COREAHBLSRAM_PF_0_mem_byteen1to1[1] , COREAHBLSRAM_PF_0_mem_byteen1to1[1] , COREAHBLSRAM_PF_0_mem_byteen1to1[1] , COREAHBLSRAM_PF_0_mem_byteen1to1[1] , COREAHBLSRAM_PF_0_mem_byteen1to1[1] , COREAHBLSRAM_PF_0_mem_byteen1to1[1] , COREAHBLSRAM_PF_0_mem_byteen1to1[1] , COREAHBLSRAM_PF_0_mem_byteen1to1[1] , COREAHBLSRAM_PF_0_mem_byteen0to0[0] , COREAHBLSRAM_PF_0_mem_byteen0to0[0] , COREAHBLSRAM_PF_0_mem_byteen0to0[0] , COREAHBLSRAM_PF_0_mem_byteen0to0[0] , COREAHBLSRAM_PF_0_mem_byteen0to0[0] , COREAHBLSRAM_PF_0_mem_byteen0to0[0] , COREAHBLSRAM_PF_0_mem_byteen0to0[0] , COREAHBLSRAM_PF_0_mem_byteen0to0[0] , COREAHBLSRAM_PF_0_mem_byteen0to0[0] , COREAHBLSRAM_PF_0_mem_byteen0to0[0] };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AHBL_SRAM_COREAHBLSRAM_PF_0_COREAHBLSRAM_PF   -   Actel:DirectCore:COREAHBLSRAM_PF:2.2.104
AHBL_SRAM_COREAHBLSRAM_PF_0_COREAHBLSRAM_PF #( 
        .FAMILY        ( 26 ),
        .MEM_DEPTH     ( 65536 ),
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
        .mem_rdata  ( PF_TPSRAM_0_R_DATA ),
        // Outputs
        .HREADYOUT  ( AHBSlaveInterface_HREADYOUT ),
        .HRDATA     ( AHBSlaveInterface_HRDATA ),
        .HRESP      ( AHBSlaveInterface_HRESP ),
        .mem_wen    ( COREAHBLSRAM_PF_0_mem_wen ),
        .mem_ren    ( COREAHBLSRAM_PF_0_mem_ren ),
        .mem_addr   ( COREAHBLSRAM_PF_0_mem_addr ),
        .mem_byteen ( mem_byteen ),
        .mem_wdata  ( COREAHBLSRAM_PF_0_mem_wdata ) 
        );

//--------AHBL_SRAM_PF_TPSRAM_0_PF_TPSRAM   -   Actel:SgCore:PF_TPSRAM:1.1.107
AHBL_SRAM_PF_TPSRAM_0_PF_TPSRAM PF_TPSRAM_0(
        // Inputs
        .W_DATA   ( COREAHBLSRAM_PF_0_mem_wdata ),
        .W_ADDR   ( COREAHBLSRAM_PF_0_mem_addr ),
        .R_ADDR   ( COREAHBLSRAM_PF_0_mem_addr ),
        .WBYTE_EN ( WBYTE_EN_net_0 ),
        .W_EN     ( COREAHBLSRAM_PF_0_mem_wen ),
        .R_EN     ( COREAHBLSRAM_PF_0_mem_ren ),
        .CLK      ( HCLK ),
        // Outputs
        .R_DATA   ( PF_TPSRAM_0_R_DATA ) 
        );


endmodule
