//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Nov 27 10:08:55 2017
// Version: PolarFire v2.0 12.200.0.20
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// CoreTimer1
module CoreTimer1(
    // Inputs
    PADDR,
    PCLK,
    PENABLE,
    PRESETn,
    PSEL,
    PWDATA,
    PWRITE,
    // Outputs
    PRDATA,
    TIMINT
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [4:2]  PADDR;
input         PCLK;
input         PENABLE;
input         PRESETn;
input         PSEL;
input  [31:0] PWDATA;
input         PWRITE;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] PRDATA;
output        TIMINT;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [4:2]  PADDR;
wire          PENABLE;
wire   [31:0] APBslave_PRDATA;
wire          PSEL;
wire   [31:0] PWDATA;
wire          PWRITE;
wire          PCLK;
wire          PRESETn;
wire          TIMINT_net_0;
wire          TIMINT_net_1;
wire   [31:0] APBslave_PRDATA_net_0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TIMINT_net_1          = TIMINT_net_0;
assign TIMINT                = TIMINT_net_1;
assign APBslave_PRDATA_net_0 = APBslave_PRDATA;
assign PRDATA[31:0]          = APBslave_PRDATA_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CoreTimer   -   Actel:DirectCore:CoreTimer:2.0.103
CoreTimer #( 
        .FAMILY     ( 19 ),
        .INTACTIVEH ( 1 ),
        .WIDTH      ( 32 ) )
CoreTimer1_0(
        // Inputs
        .PCLK    ( PCLK ),
        .PRESETn ( PRESETn ),
        .PSEL    ( PSEL ),
        .PADDR   ( PADDR ),
        .PWRITE  ( PWRITE ),
        .PENABLE ( PENABLE ),
        .PWDATA  ( PWDATA ),
        // Outputs
        .PRDATA  ( APBslave_PRDATA ),
        .TIMINT  ( TIMINT_net_0 ) 
        );


endmodule
