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
// SVN $Date: 2008-11-27 17:48:48 +0530 (Thu, 13 APR 2013) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ********************************************************************/

`timescale 1ns/100ps

module AHBL_SRAM_COREAHBLSRAM_PF_0_COREAHBLSRAM_PF (
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
                     HRESP,
		     // To fabric SRAM memory
		     mem_rdata,
		     // To fabric SRAM memory
		     mem_ren,
		     mem_wen,
                     mem_addr,
		     mem_byteen,
		     mem_wdata

                     );

////////////////////////////////////////////////////////////////////////////////
// Parameter Declarations
////////////////////////////////////////////////////////////////////////////////
   parameter FAMILY = 26;
   //parameter AHB_DWIDTH = 32;
   //parameter AHB_AWIDTH = 32;
   parameter MEM_DEPTH = 512;
   parameter SEL_SRAM_TYPE = 1;
   parameter SYNC_RESET = (FAMILY == 25) ? 1 : 0;



////////////////////////////////////////////////////////////////////////////////
//   Function to calculate  the ceiling value //////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

      function [31:0] ceil_log2;
	input integer x;
	integer tmp, res;
	begin
		tmp = 1;
		res = 0;
		while(tmp < x) begin
			tmp = tmp * 2;
			res = res + 1;
		end
		ceil_log2 = res;
	end
     endfunction
     

////////////////////////////////////////////////////////////////////////////////
// Local declarations
////////////////////////////////////////////////////////////////////////////////
   localparam MEM_AWIDTH = (SEL_SRAM_TYPE == 0) ? ceil_log2(MEM_DEPTH) : ceil_log2(MEM_DEPTH); 
   localparam AHB_DWIDTH = 32;
   localparam AHB_AWIDTH = 32;
////////////////////////////////////////////////////////////////////////////////


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
   input [39:0]             mem_rdata;
   // Outputs
   output [AHB_DWIDTH - 1:0] HRDATA;
   output [1:0]              HRESP;
   output                    HREADYOUT;
   // To fabric SRAM Memory
   output        mem_ren;
   output        mem_wen;
   output [MEM_AWIDTH-1:0] mem_addr;
   output [3:0]  mem_byteen;
   output [39:0] mem_wdata; 
////////////////////////////////////////////////////////////////////////////////
// Register Declarations
////////////////////////////////////////////////////////////////////////////////
   wire [AHB_AWIDTH-1:0]     HADDR_cal;
   
////////////////////////////////////////////////////////////////////////////////
// Wire Declarations
////////////////////////////////////////////////////////////////////////////////
   wire                      mem_ren;
   wire                      mem_wen;
   wire [MEM_AWIDTH-1:0]     mem_addr;
   wire [3:0]                mem_byteen;
   wire [39:0]               mem_wdata;

////////////////////////////////////////////////////////////////////////////////
// Constant declarations
////////////////////////////////////////////////////////////////////////////////

   
////////////////////////////////////////////////////////////////////////////////
// Code starts here
////////////////////////////////////////////////////////////////////////////////

  assign  HADDR_cal = HADDR[AHB_AWIDTH-1:0];

   
////////////////////////////////////////////////////////////////////////////////
// Instantiations
////////////////////////////////////////////////////////////////////////////////

// AHBL Interface
AHBL_SRAM_COREAHBLSRAM_PF_0_CoreAHBLSRAM_AHBLSramIf  #( .SYNC_RESET(SYNC_RESET),
                          .MEM_AWIDTH(MEM_AWIDTH)
                        ) U_AHBL_SRAM_COREAHBLSRAM_PF_0_AHBLSramIf (
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

                         // outputs
                         .HREADYOUT     (HREADYOUT),
                         .HRESP         (HRESP),
                         .ahbsram_write (mem_wen),
                         .ahbsram_read  (mem_ren),
                         .ahbsram_wdata (mem_wdata),
                         .ahbsram_addr  (mem_addr),
                         .ahbsram_byteen(mem_byteen),
                         .ahbsram_rdata (mem_rdata),
                         .ahb_rdata     (HRDATA),
                         .BUSY          (BUSY)
                         );


endmodule // CoreAHBLSRAM

////////////////////////////////////////////////////////////////////////////////
//                            End-of-file
////////////////////////////////////////////////////////////////////////////////
