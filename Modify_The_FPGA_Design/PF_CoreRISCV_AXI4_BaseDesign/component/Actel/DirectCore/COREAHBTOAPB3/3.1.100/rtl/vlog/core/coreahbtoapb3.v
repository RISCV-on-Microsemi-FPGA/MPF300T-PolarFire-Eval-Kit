// ********************************************************************/
// Actel Corporation Proprietary and Confidential
// Copyright 2009 Actel Corporation. All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description: AHB to APB Bridge
//
// Revision Information:
// Date     Description
// 26Oct09  Initial version.
//
// SVN Revision Information:
// SVN $Revision: $
// SVN $Date: $
//
// Resolved SARs:
// SAR      Date    Who Description
// Notes:
//
// *********************************************************************/

module COREAHBTOAPB3 (
    // AHBL interface
    input   wire            HCLK,
    input   wire            HRESETN,
    input   wire            HSEL,
    input   wire    [31:0]  HADDR,
    input   wire            HWRITE,
    input   wire            HREADY,
    input   wire    [1:0]   HTRANS,
    input   wire    [31:0]  HWDATA,
    output  wire            HREADYOUT,
    output  wire    [1:0]   HRESP,
    output  wire    [31:0]  HRDATA,
    // APB interface
    output  wire    [31:0]  PADDR,
    output  wire            PWRITE,
    output  wire            PENABLE,
    output  wire    [31:0]  PWDATA,
    output  wire            PSEL,
    input   wire            PREADY,
    input   wire            PSLVERR,
    input   wire    [31:0]  PRDATA
    );

   // ---------------------------------------------------------------------
  // Parameters
  // ---------------------------------------------------------------------
 // Device Family parameter
  parameter  FAMILY           = 17;
  parameter SYNC_RESET = (FAMILY == 25) ? 1 : 0;
    //-----------------------------------------------------------------
    // Signals
    //-----------------------------------------------------------------
    wire            setPenable;
    wire            clrPenable;
    wire            latchAddr;
    wire            latchWrData;
    wire            latchRdData;
    wire            latchNextAddr;
    wire            selNextAddr;

    //-----------------------------------------------------------------
    // Main body of code
    //-----------------------------------------------------------------

    // Main state machine
    CoreAHBtoAPB3_AhbToApbSM #(.SYNC_RESET(SYNC_RESET)) U_AhbToApbSM (
        .HCLK           (HCLK),
        .HRESETN        (HRESETN),
        .HSEL           (HSEL),
        .HTRANS1        (HTRANS[1]),
        .HWRITE         (HWRITE),
        .HREADY         (HREADY),
        .HRESP          (HRESP),
        .HREADYOUT      (HREADYOUT),
        .PREADY         (PREADY),
        .PSLVERR        (PSLVERR),
        .PENABLE        (PENABLE),
        .PWRITE         (PWRITE),
        .PSEL           (PSEL),
        .latchAddr      (latchAddr),
        .latchWrData    (latchWrData),
        .latchRdData    (latchRdData),
        .latchNextAddr  (latchNextAddr),
        .selNextAddr    (selNextAddr),
        .setPenable     (setPenable),
        .clrPenable     (clrPenable)
    );

    // Scheduler for PENABLE signal
    CoreAHBtoAPB3_PenableScheduler #(.SYNC_RESET(SYNC_RESET)) U_PenableScheduler (
        .HCLK           (HCLK),
        .HRESETN        (HRESETN),
        .setPenable     (setPenable),
        .clrPenable     (clrPenable),
        .PENABLE        (PENABLE)
    );

    // Block which registers address and data information
    CoreAHBtoAPB3_ApbAddrData #(.SYNC_RESET(SYNC_RESET)) 
    U_ApbAddrData (
        .HCLK           (HCLK),
        .HRESETN        (HRESETN),
        .latchAddr      (latchAddr),
        .latchWrData    (latchWrData),
        .latchRdData    (latchRdData),
        .latchNextAddr  (latchNextAddr),
        .selNextAddr    (selNextAddr),
        .HADDR          (HADDR[31:0]),
        .HWDATA         (HWDATA[31:0]),
        .HRDATA         (HRDATA[31:0]),
        .PADDR          (PADDR[31:0]),
        .PWDATA         (PWDATA[31:0]),
        .PRDATA        (PRDATA[31:0])
    );

endmodule
