//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Jun 09 15:53:42 2017
// Version: PolarFire EAP4-SPA 12.100.8.13
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// LSRAM_0
module LSRAM_0(
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
wire   [10:0] COREAHBLSRAM_PF_0_mem_addr;
wire          COREAHBLSRAM_PF_0_mem_ren;
wire   [39:0] COREAHBLSRAM_PF_0_mem_wdata;
wire          COREAHBLSRAM_PF_0_mem_wen;
wire          HCLK;
wire          HRESETN;
wire   [3:0]  mem_byteen;
wire   [39:0] PF_URAM_0_R_DATA;
wire   [31:0] AHBSlaveInterface_HRDATA_net_0;
wire          AHBSlaveInterface_HREADYOUT_net_0;
wire   [1:0]  AHBSlaveInterface_HRESP_net_0;
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
// Component instances
//--------------------------------------------------------------------
//--------LSRAM_0_COREAHBLSRAM_PF_0_COREAHBLSRAM_PF   -   Actel:DirectCore:COREAHBLSRAM_PF:2.2.104
LSRAM_0_COREAHBLSRAM_PF_0_COREAHBLSRAM_PF #( 
        .FAMILY        ( 26 ),
        .MEM_DEPTH     ( 2048 ),
        .SEL_SRAM_TYPE ( 1 ) )
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
        .mem_rdata  ( PF_URAM_0_R_DATA ),
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

//--------LSRAM_0_PF_URAM_0_PF_URAM   -   Actel:SgCore:PF_URAM:1.1.106
LSRAM_0_PF_URAM_0_PF_URAM PF_URAM_0(
        // Inputs
        .W_DATA ( COREAHBLSRAM_PF_0_mem_wdata ),
        .R_ADDR ( COREAHBLSRAM_PF_0_mem_addr ),
        .W_ADDR ( COREAHBLSRAM_PF_0_mem_addr ),
        .BLK_EN ( COREAHBLSRAM_PF_0_mem_ren ),
        .W_EN   ( COREAHBLSRAM_PF_0_mem_wen ),
        .CLK    ( HCLK ),
        // Outputs
        .R_DATA ( PF_URAM_0_R_DATA ) 
        );


endmodule
