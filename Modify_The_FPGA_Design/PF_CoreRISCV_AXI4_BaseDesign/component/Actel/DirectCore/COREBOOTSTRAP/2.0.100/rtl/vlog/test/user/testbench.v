// ********************************************************************/
// Microsemi Corporation Proprietary and Confidential
// Copyright 2016 Microsemi Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// SVN Revision Information:
// SVN $Revision: 27882 $
// SVN $Date: 2016-11-18 01:18:12 +0000 (Fri, 18 Nov 2016) $
//
// Resolved SARs
// SAR      Date     Who   Description
// Notes:           Bootstrap top level testbench
//
//
// *********************************************************************/

`timescale 1ns / 1ps

module testbench;

// `include "../../../design/BOOTSTRAP_PARAMETERS.v"
`include "../../../../coreparameters.v"


parameter HCLK_PERIOD = 10000;     // Period for 100 MHz clock.

reg reset_n;
reg EXT_RESETN, PO_RESETN, host_rstn;
reg SYS_RESET_REQ;
reg HCLK;

wire [31:0] HRDATA;
wire [31:0] HWDATA;
wire [31:0] HADDR;
wire [2:0] HBURST;
wire [2:0] HSIZE;
wire [1:0] HTRANS;
wire HREADY;
wire HWRITE;
wire HRESETN;
wire [1:0] HRESP;

wire [1:0] AHB_ERR;
wire SPI_SS;

wire PROC_SYS_RESETN;
wire CKSUM_ERR;

reg SW_DEBUG_MODE;

wire rd_all_done;



always #(HCLK_PERIOD/2) HCLK = ~HCLK;   // Clock generation.

// Inclusion of a file that will override the default parameter values for a particular SPI chip.
// `ifdef MICRON_1GB
//   `include "../tests/micron_1gb_settings.v"
// `elsif CYPRESS_512MB
//   `include "../tests/cypress_512mb_settings.v"
// `elsif ADESTO_32MB
//   `include "../tests/adesto_32mb_settings.v"
// `elsif MACRONIX_1GB
//   `include "../tests/macronix_1gb_settings.v"
// `elsif ONSEMI_16MB
//   `include "../tests/onsemi_16mb_settings.v"
// `elsif GIGADEVICE_512MB
//   `include "../tests/gigadevice_512mb_settings.v"
// `endif

`include "cypress_512mb_settings.v"


// Inclusion of a file holding the different tests available. Selection of a test via a `define.
// `include "../tests/testlist.v"

`include "incr_data.v"



// `ifdef MICRON_1GB	
// 
//   N25QxxxTop SPI_chip (
//     .S(SPI_SS), 
//     .C(SPI_SCK), 
//     .HOLD_DQ3(1'b1), 
//     .DQ0(SPI_SDO), 
//     .DQ1(SPI_SDI), 
//     .Vcc(32'hbb8), //taken from reference tb
//     .Vpp_W_DQ2(1'b1)
//   );
//   
// `elsif CYPRESS_512MB

  s25fl512s #(
    .UserPreload(0),
    .mem_file_name("s25fl512s.mem"),
    .otp_file_name("s25fl512sOTP.mem"),
    .TimingModel("DefaultTimingModel")
  ) SPI_chip (
		// Data Inputs/Outputs
		.SI(SPI_SDO),
		.SO(SPI_SDI),
		// Controls
		.SCK(SPI_SCK),
		.CSNeg(SPI_SS),
		.RSTNeg(PO_RESETN),
		.WPNeg(),
		.HOLDNeg()
  );
    
// `elsif ADESTO_32MB
// 
//   AT45DQXXX SPI_chip (
//     .CSB(SPI_SS), 
//     .SCK(SPI_SCK), 
//     .SI(SPI_SDO), 
//     .WPB(), 
//     .RESETB(), 
//     .SO(SPI_SDI)
//   );
//       
// `elsif MACRONIX_1GB
// 
//   MX66L1G45G SPI_chip( 
//     .SCLK(SPI_SCK), 
//     .CS(SPI_SS), 
//     .SI(SPI_SDO), 
//     .SO(SPI_SDI),
//     .WP(), 
//     .RESET(PO_RESETN),
//     .SIO3()
//   );
//   
// `elsif ONSEMI_16MB
// 
//   LE25S161 SPI_chip(
//     .SI(SPI_SDO),
//     .SO(SPI_SDI),
//     .SCK(SPI_SCK),
//     .CS_L(SPI_SS),
//     .WP_L(1'b1),
//     .HOLD_L(1'b1)
//   );
//   
//  `elsif GIGADEVICE_512MB
//  
//   GD25Q512 SPI_chip(
//     .sclk(SPI_SCK),
//     .si(SPI_SDO),
//     .cs(SPI_SS),
//     .wp(),
//     .hold(),
//     .so(SPI_SDI)
//   );
//   
// `endif   


//CoreBootStrap, reads bootcode from SPI chip and writes to RAM block.
  COREBOOTSTRAP #(
    .READ_4BYTE_ADDR(READ_4BYTE_ADDR),
    .SPI_CLK_RATIO(SPI_CLK_RATIO),
    .SW_RESET_TYPE(SW_RESET_TYPE),
    .SS_DESELECT_DURATION(SS_DESELECT_DURATION),
    .RST_RECOVERY_DURATION(RST_RECOVERY_DURATION),
    .RST_POR_DURATION(RST_POR_DURATION), 
    .RST_EXTPROC_DURATION(RST_EXTPROC_DURATION), 
    .SPI_SRC_ADDR(SPI_SRC_ADDR),
    .DATA_WORD_CNT(DATA_WORD_CNT),
    .AHB_DST_ADDR(AHB_DST_ADDR),		
    .BIG_ENDIAN_EN(BIG_ENDIAN_EN),
    .READ_STATUS_TYPE(READ_STATUS_TYPE)
  ) CORE_BOOTSTRAP( 
    .HOST_SCK(HOST_SCK),
    .HOST_SDI(HOST_SDI),
    .HOST_SDO(HOST_SDO),
    .HOST_SS(HOST_SS),
    .FLASH_SCK(SPI_SCK),
    .FLASH_SDI(SPI_SDI),
    .FLASH_SDO(SPI_SDO),
    .FLASH_SS(SPI_SS),
    .HADDR(HADDR),
    .HBURST(HBURST),
    .HCLK(HCLK),
    .HRDATA(HRDATA),
    .HREADY(HREADY),
    .HRESETN(HRESETN),
    .HRESP(HRESP[0]),
    .HSIZE(HSIZE),
    .HTRANS(HTRANS),
    .HWDATA(HWDATA),
    .HWRITE(HWRITE),
    .AHB_ERR(AHB_ERR),
    .CKSUM_ERR(CKSUM_ERR),
    .EXT_RESETN(EXT_RESETN),
    .PO_RESETN(PO_RESETN),
    .SW_DEBUG_MODE(SW_DEBUG_MODE),
    .PROC_SYS_RESETN(PROC_SYS_RESETN),
    .SYS_RESET_REQ(SYS_RESET_REQ) 
  );
  
  // Ram block used to store bootcode for processor.
  COREAHBLSRAM AHBLSRAM (
    .HCLK(HCLK),
    .HRESETN(PO_RESETN),
    .HSEL(1'b1),
    .HREADYIN(1'b1),
    .HSIZE(HSIZE),
    .HTRANS(HTRANS),
    .HBURST(HBURST),
    .HADDR(HADDR),
    .HWRITE(HWRITE),
    .HWDATA(HWDATA),
    .HREADYOUT(HREADY),
    .HRDATA(HRDATA),
    .HRESP(HRESP)
  );

//SPI Host Model, based on SPI_CTRL. Writes increasing byte data to the chip
  SPI_HOST_MODEL #(
    .READ_4BYTE_ADDR(READ_4BYTE_ADDR),
    .SPI_CLK_RATIO(SPI_CLK_RATIO),
    .SPI_SRC_ADDR(SPI_SRC_ADDR),
    .DATA_WORD_CNT(DATA_WORD_CNT),
    .CKSUM_SPI_ADDR('b0),
    .SW_RESET_TYPE(SW_RESET_TYPE),
    .RESET_DESELECT_CYCLES(SS_DESELECT_DURATION),
    .SR_CMD(SR_CMD),
    .SKIP_WR_EN(SKIP_WR_EN)
  ) SPI_HOST_MODEL (
    // input ports
    .HCLK(HCLK),
    .HRESETN(HRESETN),
    .boot_sdi(SPI_SDI), // output from the micron chip is shared
    .SW_DEBUG_MODE(1'b0),
    .input_data(input_data),
    .start_spi_host(start_spi_host),
    // output ports
    .new_data_req_host(new_data_req_host),
    .boot_sdo(HOST_SDO),
    .boot_sck(HOST_SCK),
    .boot_ss(HOST_SS),
    .rd_data_avail(),
    .rd_all_done(rd_all_done),
    .rd_data(),
    .latch_sdi(),
    .cks_data()
  );


// initial begin
//   $vcdplusfile("waves_ms_bootstrap.vpd");
//   $vcdpluson(0, tb_top);
// end


endmodule