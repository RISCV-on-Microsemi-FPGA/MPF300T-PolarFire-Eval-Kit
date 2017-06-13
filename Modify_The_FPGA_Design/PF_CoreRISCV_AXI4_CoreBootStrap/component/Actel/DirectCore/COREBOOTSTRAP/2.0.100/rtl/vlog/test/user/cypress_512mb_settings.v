
/// Header_Start --->>>
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
// Notes:         Overwriting particular parameters to 
//                set up the test environment and DUT  
//                for the Spansion/Cypress 512MB SPI 
//                chip.
//
//                Commented out defparams indicate 
//                parameters where the default values 
//                are fine.
//
//
// *********************************************************************/

/// Header_End <<<---

defparam READ_4BYTE_ADDR = 1; // Indicates that the SPI_chip to be read is large enough that a 4 byte read command should be used.
// defparam SPI_CLK_RATIO = 6; // Number of HCLKs in an SPI_CLK period.
defparam SW_RESET_TYPE = 2'b11; // Indicates what type of software reset scheme to be used with a particular SPI_chip.
// defparam SS_DESELECT_DURATION = 8'd5; // The deselect duration in HCLKs for the SPI chip's SS (Slave Select) pin between commands.
// defparam RST_RECOVERY_DURATION = 8; // Number of HCLKs following a hardware or software reset before enabling polling the SPI chip. This ranges from under 50ns to over 100us.
defparam RST_POR_DURATION = 30_000; // Number of clock periods to wait on reset, before releasing of HRESETN for a Power ON reset signals.
defparam RST_EXTPROC_DURATION = 1_000; // Number of clock periods to wait on reset, before releasing of HRESETN for a non Power ON reset signal.
// defparam SPI_SRC_ADDR = 0; // Address of where to start reading bootcode from, on the SPI_chip.
// defparam DATA_WORD_CNT = 20; // Number of 32-bit words to copy from SPI. (The size of the bootcode).
// defparam AHB_DST_ADDR = 0; // Address of where to start writing bootcode to.
// defparam BIG_ENDIAN_EN = 0; // If set, will store the data in big-endian format. Otherwise little-endian.
// defparam READ_STATUS_TYPE = 0; // If set, will change the status opcode to be used in reading a read status command, position of busy bit and whether active_high or active_low. (Most chips use the setting 0).

parameter SR_CMD = 8'h05; //
parameter FSR_CMD = 8'h05; //
parameter WR_CMD = 8'h02; //
parameter SKIP_WR_EN = 1'b0; //
