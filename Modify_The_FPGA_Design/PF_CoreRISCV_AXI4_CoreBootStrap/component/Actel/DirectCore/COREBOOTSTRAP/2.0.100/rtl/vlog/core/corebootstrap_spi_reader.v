
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
// SVN $Revision: 27883 $
// SVN $Date: 2016-11-18 02:04:23 +0000 (Fri, 18 Nov 2016) $
//
// Resolved SARs
// SAR      Date     Who   Description
// Notes:
//
//
// *********************************************************************/

/// Header_End <<<---


/// I/O_Start --->>>

// - Reads executable memory from SPI chip after reset
// -- It reads 4 bytes at a time and places it our rd_data bus, indicating to AHB_WRITER when available.
// -- It continues until all words are transferred.
// - Create an SPI timebase.
// - Create an SPI clock.
// - Perform a checksum (if required).

module COREBOOTSTRAP_SPI_READER( boot_sck,
                   boot_sdi,
                   boot_sdo,
                   boot_ss,
                   HRESETN,
                   rd_all_done,
                   rd_data,
                   rd_data_avail,
                   SW_DEBUG_MODE,
                   CKSUM_ERR,
                   HCLK,
                   cksum_done );

parameter SPI_CLK_RATIO = 6; // Number of HCLKs in an SPI_CLK period.
parameter RST_RECOVERY_DURATION = 8; // Number of HCLKs following a hardware or software reset before enabling polling the SPI chip. This ranges from under 50ns to over 100us.
parameter CKSUM_EN = 0; // Whether a checksum is to be calculated, based on copied bootcode, and compared against stored checksum.
parameter SPI_SRC_ADDR = 0; // Address of where to start reading bootcode from, on the SPI_chip.
parameter DATA_WORD_CNT = 100; // Number of 32-bit words to copy from SPI. (The size of the bootcode).
parameter CKSUM_SPI_ADDR = 0; // Address of cksum field on SPI_chip (if enabled).
parameter SW_RESET_TYPE = 01; // Indicates what type of software reset scheme to be used with a particular SPI_chip.
parameter READ_4BYTE_ADDR = 0; // Indicates that the SPI_chip to be read is large enough that a 4 byte read command should be used.
parameter SS_DESELECT_DURATION = 8'd5; // The deselect duration in HCLKs for the SPI chip's SS (Slave Select) pin between commands.
parameter BIG_ENDIAN_EN = 0; // If set, will store the data in big-endian format. Otherwise little-endian.
parameter READ_STATUS_TYPE = 0; // If set, will change the status opcode to be used in reading a read status command, position of busy bit and whether active_high or active_low. (Most chips use the setting 0).


// Port: SPI_SEL_IF

output         boot_sck;
input          boot_sdi;
output         boot_sdo;
output         boot_ss;

// Port: BOOT_RESET_IF

input          HRESETN;        // AHB reset output, active low.  May be used as a general system reset.

// Port: AHB_WRITER_IF

output         rd_all_done;
output [31:0]  rd_data;
output         rd_data_avail;

// Port: SYS_IF

input          SW_DEBUG_MODE;  // Control signal used to allow software debugging. It will set up the CoreBootStrap bypass the copying of the executable memory from SPI into the processor memory.

// Port: SYS_AHB_IF

output         CKSUM_ERR;      // Checksum error resulting from the checksum read from SPI flash not matching a checksum of the data read from SPI. Checksum not supported in initial release.
input          HCLK;           // AHB clock input - must be free-running after reset.
output         cksum_done;

wire [31:0]    cks_data;
wire           latch_sdi;



/// I/O_End <<<---






/// Components_Start --->>>

// - Read exec code from SPI and transfer to AHB_WRITER.
// - Latch cksum_data at appropriate point and signal to cksum to check (if setup).
// File: corebootstrap_spi_ctrl.v

COREBOOTSTRAP_SPI_CTRL #(
                   .SPI_CLK_RATIO           (SPI_CLK_RATIO),
                   .RST_RECOVERY_DURATION   (RST_RECOVERY_DURATION),
                   .SPI_SRC_ADDR            (SPI_SRC_ADDR),
                   .DATA_WORD_CNT           (DATA_WORD_CNT),
                   .CKSUM_SPI_ADDR          (CKSUM_SPI_ADDR),
                   .SW_RESET_TYPE           (SW_RESET_TYPE),
                   .SS_DESELECT_DURATION    (SS_DESELECT_DURATION),
                   .READ_4BYTE_ADDR         (READ_4BYTE_ADDR),
                   .BIG_ENDIAN_EN           (BIG_ENDIAN_EN),
                   .READ_STATUS_TYPE        (READ_STATUS_TYPE)
) SPI_CTRL ( .boot_sck(boot_sck),
                   .boot_sdi(boot_sdi),
                   .boot_sdo(boot_sdo),
                   .boot_ss(boot_ss),
                   .HCLK(HCLK),
                   .cks_data(cks_data),
                   .latch_sdi(latch_sdi),
                   .HRESETN(HRESETN),
                   .rd_all_done(rd_all_done),
                   .rd_data(rd_data),
                   .rd_data_avail(rd_data_avail),
                   .SW_DEBUG_MODE(SW_DEBUG_MODE) );

// - Initialise cksum on HRSETN.
// - Modify cksum as SDI data comes in.
// - Check cksum against cks_data when asked, and generate error as appropriate.
// File: corebootstrap_cksum_ctrl.v


COREBOOTSTRAP_CKSUM_CTRL #(
                       .CKSUM_EN            (CKSUM_EN)
) CKSUM_CTRL ( .HCLK(HCLK),
                       .cks_data(cks_data),
                       .cksum_done(cksum_done),
                       .latch_sdi(latch_sdi),
                       .HRESETN(HRESETN),
                       .CKSUM_ERR(CKSUM_ERR),
                       .boot_sdi(boot_sdi),
                       .rd_all_done(rd_all_done) );




/// Components_End <<<---


endmodule

