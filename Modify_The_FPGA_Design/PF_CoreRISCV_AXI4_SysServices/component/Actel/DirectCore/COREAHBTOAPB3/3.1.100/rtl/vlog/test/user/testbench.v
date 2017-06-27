// ********************************************************************/
// Actel Corporation Proprietary and Confidential
// Copyright 2009 Actel Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description: COREAHBtoAPB3 Unit Testbench
//
// Revision Information:
// Date     Description
// 3Nov09  Initial Release
//
// SVN Revision Information:
// SVN $Revision: $
// SVN $Date:  $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// *********************************************************************/

`timescale 1ns/100ps

module testbench();

parameter SYSCLK_PERIOD = 10; // 100MHz
parameter MASTER_VECTFILE = "master.vec";
// propagation delay in ns
parameter TPD			= 3;

//`include "../../../../coreparameters.v"
`include "coreparameters.v"

        reg                             SYSCLK;
        reg                             SYSRSTN;

        wire                            HREADYIN;
        wire                            HREADYOUT;
        wire   [1:0]                    HRESP;
        wire   [31:0]                   HRDATA;
        wire   [1:0]                    HTRANS;
        wire                            HWRITE;
        wire   [31:0]                   HADDR;
        wire   [31:0]                   HWDATA;
        wire   [2:0]                    HBURST;
        wire   [2:0]                    HSIZE;
        wire   [3:0]                    HPROT;
        wire   [31:0]                   PRDATA;
        wire   [31:0]                   PWDATA;
        wire   [31:0]                   PADDR;

        wire                            FINISHED_master;
        wire   [15:0]                   HSEL;

initial
begin
    SYSCLK = 1'b0;
    SYSRSTN = 1'b0;

    // Release system reset
    #(SYSCLK_PERIOD * 4)
        SYSRSTN = 1'b1;

	// wait until both BFM's are finished
	while (!(FINISHED_master===1'b1))
	begin
		@ (posedge SYSCLK); #TPD;
	end
	#1;
	$stop;
end

assign HBURST = 3'b0;
assign HPROT = 4'b0;
assign #1 HREADYIN = HREADYOUT;

// SYSCLK signal
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2)
    SYSCLK <= !SYSCLK;

// Instantiate module to test
COREAHBTOAPB3 #(
  // parameters
  .FAMILY(FAMILY)
  )
   COREAHBTOAPB3(
    // AHB interface
        .HCLK(HCLK),
        .HRESETN(HRESETN),
        .HADDR(HADDR),
        .HTRANS(HTRANS),
        .HWRITE(HWRITE),
        .HWDATA(HWDATA),
        .HSEL(HSEL[0]),
        .HREADY(HREADYIN),
        .HRDATA(HRDATA),
        .HREADYOUT(HREADYOUT),
        .HRESP(HRESP),

    // APB interface
        .PRDATA(PRDATA),
        .PENABLE(PENABLE),
        .PWDATA(PWDATA),
        .PSEL(PSEL),
        .PADDR(PADDR),
        .PWRITE(PWRITE),
        .PREADY(PREADY),
        .PSLVERR(PSLVERR)

    );

    BFM_AHBL #(
	    .VECTFILE(MASTER_VECTFILE),
        // passing testbench parameters to BFM ARGVALUE* parameters
	    .ARGVALUE0(FAMILY),
	    .ARGVALUE1(1'b1)
    ) master (
    // Inputs
        .SYSCLK(SYSCLK),
        .SYSRSTN(SYSRSTN),
        .HREADY(HREADYIN),
        .HRESP(HRESP[0]),
        .HRDATA(HRDATA),
    // Outputs
        .HCLK(HCLK),
        .HRESETN(HRESETN),
        .HTRANS(HTRANS),
        .HBURST(),
        .HSEL(HSEL),
        .HPROT(),
        .HSIZE(HSIZE),
        .HWRITE(HWRITE),
        .HMASTLOCK(),
        .HADDR(HADDR),
        .HWDATA(HWDATA),
        .INTERRUPT(256'b0),
        .GP_OUT(),
        .GP_IN(32'b0),
        .EXT_WR(),
        .EXT_RD(),
        .EXT_ADDR(),
        .EXT_DATA(),
        .EXT_WAIT(1'b0),
        .FINISHED(FINISHED_master),
        .FAILED()
    );

  BFM_APBSLAVE slave (
	  // APB interface
	  .PCLK(HCLK),
	  .PRESETN(HRESETN),
	  .PENABLE(PENABLE),
	  .PWRITE(PWRITE),
	  .PSEL(PSEL),
      .PADDR(PADDR[15:0]),
	  .PWDATA(PWDATA),
	  .PRDATA(PRDATA),
	  .PREADY(PREADY),
	  .PSLVERR(PSLVERR));

endmodule
