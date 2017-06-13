// ********************************************************************/
// Actel Corporation Proprietary and Confidential
//  Copyright 2011 Actel Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description:  CoreAHBLSRAM
//               The Core IP provides AHB interface to embedded Large/micro SRAM.
//
//
// Revision Information:
// Date     Description
//
// SVN Revision Information:
// SVN $Revision: 4805 $
// SVN $Date: 2008-11-27 17:48:48 +0530 (Thu, 27 Nov 2008) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ********************************************************************/

`timescale 1ns/100ps

module COREAHBLSRAM (
                     HCLK,
                     HRESETN,
                     HSEL,
                     HREADYIN,
                     HSIZE,
                     HTRANS,
                     HBURST,
                     HADDR,
                     HWRITE,
                     HWDATA,
                     HREADYOUT,
                     HRDATA,
                     HRESP
                     );

////////////////////////////////////////////////////////////////////////////////
// Parameter Declarations
////////////////////////////////////////////////////////////////////////////////
   parameter FAMILY = 19;
   parameter AHB_DWIDTH = 32;
   parameter AHB_AWIDTH = 32;
   parameter LSRAM_NUM_LOCATIONS_DWIDTH32 = 512;
   parameter USRAM_NUM_LOCATIONS_DWIDTH32 = 128;

   parameter SEL_SRAM_TYPE = 1;
   parameter SYNC_RESET = (FAMILY == 25) ? 1 : 0;

////////////////////////////////////////////////////////////////////////////////
// I/O Declarations
////////////////////////////////////////////////////////////////////////////////
   // Inputs
   input     HCLK;
   input     HRESETN;
   input     HSEL;
   input     HREADYIN;
   input [1:0] HTRANS;
   input [2:0] HBURST;
   input [2:0] HSIZE;
   input [AHB_DWIDTH - 1:0] HWDATA;
   input [AHB_AWIDTH - 1:0] HADDR;
   input                    HWRITE;
   // Outputs
   output [AHB_DWIDTH - 1:0] HRDATA;
   output [1:0]              HRESP;
   output                    HREADYOUT;

////////////////////////////////////////////////////////////////////////////////
// Register Declarations
////////////////////////////////////////////////////////////////////////////////
   wire [19:0]                HADDR_cal;
   
////////////////////////////////////////////////////////////////////////////////
// Wire Declarations
////////////////////////////////////////////////////////////////////////////////
   wire [2:0]                ahbsram_size;
   wire [19:0]               ahbsram_addr;
   wire [31:0]               ahbsram_wdata;
   wire [31:0]               ahbsram_wdata_usram;
   wire                      ahbsram_write;
   wire [31:0]               sramahb_rdata;
   
////////////////////////////////////////////////////////////////////////////////
// Constant declarations
////////////////////////////////////////////////////////////////////////////////

   
////////////////////////////////////////////////////////////////////////////////
// Code starts here
////////////////////////////////////////////////////////////////////////////////

  assign  HADDR_cal = HADDR[19:0];

   
////////////////////////////////////////////////////////////////////////////////
// Instantiations
////////////////////////////////////////////////////////////////////////////////

// AHBL Interface
AHBLSramIf  #( .SYNC_RESET(SYNC_RESET)) U_AHBLSramIf (
                         .HCLK          (HCLK),
                         .HRESETN       (HRESETN),
                         .HSEL          (HSEL),
                         .HTRANS        (HTRANS),
                         .HBURST        (HBURST),
                         .HWRITE        (HWRITE),
                         .HWDATA        (HWDATA),
                         .HSIZE         (HSIZE),
                         .HADDR         (HADDR_cal),
                         .HREADYIN      (HREADYIN),

                         // From SRAM Control signals
                         .sramahb_ack   (sramahb_ack),
                         .sramahb_rdata (sramahb_rdata),
                         // outputs
                         .HREADYOUT     (HREADYOUT),
                         .HRESP         (HRESP),
                         // To SRAM Control signals
                         .ahbsram_req   (ahbsram_req),
                         .ahbsram_write (ahbsram_write),
                         .ahbsram_wdata (ahbsram_wdata),
                         .ahbsram_wdata_usram (ahbsram_wdata_usram),
                         .ahbsram_size  (ahbsram_size),
                         .ahbsram_addr  (ahbsram_addr),
                         .HRDATA        (HRDATA),
                         .BUSY          (BUSY)
                         );


   
   SramCtrlIf #(
                .LSRAM_NUM_LOCATIONS_DWIDTH32(LSRAM_NUM_LOCATIONS_DWIDTH32),
                .USRAM_NUM_LOCATIONS_DWIDTH32(USRAM_NUM_LOCATIONS_DWIDTH32),
                .SEL_SRAM_TYPE(SEL_SRAM_TYPE),
                .SYNC_RESET(SYNC_RESET)
                )U_SramCtrlIf (
                               .HCLK          (HCLK),
                               .HRESETN       (HRESETN),
                               // From AHB Interface signals
                               .ahbsram_req   (ahbsram_req),
                               .ahbsram_write (ahbsram_write),
                               .ahbsram_wdata (ahbsram_wdata),
                               .ahbsram_wdata_usram (ahbsram_wdata_usram),
                               .ahbsram_size  (ahbsram_size),
                               .ahbsram_addr  (ahbsram_addr),
                               // Outputs
                               // To AHB Interface signals
                               .sramahb_ack   (sramahb_ack),
                               .sramahb_rdata (sramahb_rdata),
                               .BUSY          (BUSY)
                               );


   
endmodule // CoreAHBLSRAM

////////////////////////////////////////////////////////////////////////////////
//                            End-of-file
////////////////////////////////////////////////////////////////////////////////
