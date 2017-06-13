
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
// SVN $Revision: 27884 $
// SVN $Date: 2016-11-18 02:07:27 +0000 (Fri, 18 Nov 2016) $
//
// Resolved SARs
// SAR      Date     Who   Description
// Notes:
//
//
// *********************************************************************/

/// Header_End <<<---


/// I/O_Start --->>>

// 1. Using 3 reset signals, create a sync. stretched reset for the AHB and internal core, called HRESETn.
// 2. Copies executable code from the SPI chip to the processor memory via AHB.
// 3. Implement an optional checksum feature that will halt release of the processor's reset if an error is seen.
// 4. Releases the reset line for processor when done.
// 5. After reset, let CoreSPI take control of the SPI chip.

module COREBOOTSTRAP ( HOST_SCK,
                       HOST_SDI,
                       HOST_SDO,
                       HOST_SS,
                       FLASH_SCK,
                       FLASH_SDI,
                       FLASH_SDO,
                       FLASH_SS,
                       HADDR,
                       HBURST,
                       HCLK,
                       HRDATA,
                       HREADY,
                       HRESETN,
                       HRESP,
                       HSIZE,
                       HTRANS,
                       HWDATA,
                       HWRITE,
                       AHB_ERR,
                       CKSUM_ERR,
                       EXT_RESETN,
                       PO_RESETN,
                       SW_DEBUG_MODE,
                       PROC_SYS_RESETN,
                       SYS_RESET_REQ );

parameter READ_4BYTE_ADDR = 0; // Indicates that the SPI_chip to be read is large enough that a 4 byte read command should be used.
parameter SPI_CLK_RATIO = 6; // Number of HCLKs in an SPI_CLK period.
parameter SW_RESET_TYPE = 01; // Indicates what type of software reset scheme to be used with a particular SPI_chip.
parameter SS_DESELECT_DURATION = 8'd5; // The deselect duration in HCLKs for the SPI chip's SS (Slave Select) pin between commands.
parameter RST_RECOVERY_DURATION = 8; // Number of HCLKs following a hardware or software reset before enabling polling the SPI chip. This ranges from under 50ns to over 100us.
parameter RST_POR_DURATION = 1000; // Number of clock periods to wait on reset, before releasing of HRESETN for a Power ON reset signals.
parameter RST_EXTPROC_DURATION = 100; // Number of clock periods to wait on reset, before releasing of HRESETN for a non Power ON reset signal.
parameter SPI_SRC_ADDR = 0; // Address of where to start reading bootcode from, on the SPI_chip.
parameter DATA_WORD_CNT = 100; // Number of 32-bit words to copy from SPI. (The size of the bootcode).
parameter AHB_DST_ADDR = 0; // Address of where to start writing bootcode to.
parameter BIG_ENDIAN_EN = 0; // If set, will store the data in big-endian format. Otherwise little-endian.
parameter READ_STATUS_TYPE = 0; // If set, will change the status opcode to be used in reading a read status command, position of busy bit and whether active_high or active_low. (Most chips use the setting 0).


// Port: CoreSPI_IF

input          HOST_SCK;       // SPI clock from the host CPU to be sent to the SPI flash chip after CoreBootStrap completes its tasks.
output         HOST_SDI;
input          HOST_SDO;       // Serial data out from the host CPU to be sent to the SPI flash chip after CoreBootStrap completes its tasks.
input          HOST_SS;        // Slave Select active low out from the host CPU to be sent to the SPI flash chip after CoreBootStrap completes its tasks.

// Port: SPIFlash_IF

output         FLASH_SCK;      // SPI clock sent to the SPI flash chip.
input          FLASH_SDI;      // Serial data in received from the SPI flash chip.
output         FLASH_SDO;      // Serial data out sent to the SPI flash chip.
output         FLASH_SS;       // Slave Select (active low) sent to the SPI flash chip.

// Port: AHB_IF

output [31:0]  HADDR;          // AHB address
output [2:0]   HBURST;         // AHB burst.  Always 000 from CoreBootStrap to indicate a single cycle burst.
input          HCLK;           // AHB clock input - must be free-running after reset.
input [31:0]   HRDATA;         // AHB 32-bit read data
input          HREADY;         // AHB ready signal from the AHB RAM block to indicate successful read or write.
output         HRESETN;        // AHB reset output, active low.  May be used as a general system reset.
input          HRESP;          // AHM 
output [2:0]   HSIZE;          // AHB data transfer size, i.e. bus width. Always 010 from CoreBootStrap to indicate a 32-bit bus size.
output [1:0]   HTRANS;         // AHB Transfer type.  Always 
output [31:0]  HWDATA;         // AHB 32-bit write data
output         HWRITE;         // AHB write indication: high by default from CoreBootStrap (even when idle). Low when a read-back of a RAM location is performed.

// Port: SYS_IF

output [1:0]   AHB_ERR;        // AHB error, due to receiving a
output         CKSUM_ERR;
input          EXT_RESETN;     // External reset, active low. Need not be synchronous to HCLK (synchronised in CoreBootStrap)
input          PO_RESETN;      // Power-on reset, active low. Need not be synchronous to HCLK (synchronised in CoreBootStrap)
input          SW_DEBUG_MODE;  // Control signal used to allow software debugging. It will set up the CoreBootStrap bypass the copying of the executable memory from SPI into the processor memory.

// Port: Processor_IF

output         PROC_SYS_RESETN; // Active low reset output to the host CPU held active until after the CoreBootStrap copy functions complete.
input          SYS_RESET_REQ;

wire           boot_sck;
wire           boot_sdi;
wire           boot_sdo;
wire           boot_ss;
wire           cksum_done;
wire           rd_all_done;
wire [31:0]    rd_data;
wire           rd_data_avail;
wire           sel_host;



/// I/O_End <<<---






/// Components_Start --->>>

// - Reads executable memory from SPI chip after reset
// -- It reads 4 bytes at a time and places it our rd_data bus, indicating to AHB_WRITER when available.
// -- It continues until all words are transferred.
// - Create an SPI timebase.
// - Create an SPI clock.
// - Perform a checksum (if required).
// File: corebootstrap_spi_reader.v
COREBOOTSTRAP_SPI_READER  #(
                       .SPI_CLK_RATIO               (SPI_CLK_RATIO),
                       .RST_RECOVERY_DURATION       (RST_RECOVERY_DURATION),
                       .CKSUM_EN                    (0),
                       .SPI_SRC_ADDR                (SPI_SRC_ADDR),
                       .DATA_WORD_CNT               (DATA_WORD_CNT),
                       .CKSUM_SPI_ADDR              (0),
                       .SW_RESET_TYPE               (SW_RESET_TYPE),
                       .READ_4BYTE_ADDR             (READ_4BYTE_ADDR),
                       .SS_DESELECT_DURATION        (SS_DESELECT_DURATION),
                       .BIG_ENDIAN_EN               (BIG_ENDIAN_EN),
                       .READ_STATUS_TYPE            (READ_STATUS_TYPE)
) SPI_READER ( .boot_sck(boot_sck),
                       .boot_sdi(boot_sdi),
                       .boot_sdo(boot_sdo),
                       .boot_ss(boot_ss),
                       .HRESETN(HRESETN),
                       .rd_all_done(rd_all_done),
                       .rd_data(rd_data),
                       .rd_data_avail(rd_data_avail),
                       .SW_DEBUG_MODE(SW_DEBUG_MODE),
                       .CKSUM_ERR(CKSUM_ERR),
                       .HCLK(HCLK),
                       .cksum_done(cksum_done) );

// - Waits on reset signals to start bootstrap operation.
// - Asserts HRESETN asynchronously on any reset.
// - Remove HRESETN after a time VTP_CLKS for PO_RESETN, or time RESET_CLKS for all other resets.
// File: corebootstrap_boot_reset.v


COREBOOTSTRAP_BOOT_RESET #(
                       .RST_POR_DURATION            (RST_POR_DURATION),
                       .RST_EXTPROC_DURATION        (RST_EXTPROC_DURATION)
) BOOT_RESET ( .EXT_RESETN(EXT_RESETN),
                       .PO_RESETN(PO_RESETN),
                       .SYS_RESET_REQ(SYS_RESET_REQ),
                       .HRESETN(HRESETN),
                       .HCLK(HCLK) );

// - Asserts and desasserts PROC_SYS_RESETN as required (asserts on HRESETN and desasserts when all data done and no error).
// - Performs write operations on receiving 'rd_data_avail' pulses
// - On receiving 'rd_all_done', do a read operation and check whether the cksum_err is set.
// - Pass control of the SPI_chip back to external SPI controller.
// File: corebootstrap_ahb_writer.v

COREBOOTSTRAP_AHB_WRITER #(
                       .AHB_DST_ADDR                (AHB_DST_ADDR)
) AHB_WRITER ( .PROC_SYS_RESETN(PROC_SYS_RESETN),
                       .rd_all_done(rd_all_done),
                       .rd_data(rd_data),
                       .rd_data_avail(rd_data_avail),
                       .sel_host(sel_host),
                       .AHB_ERR(AHB_ERR),
                       .SW_DEBUG_MODE(SW_DEBUG_MODE),
                       .cksum_done(cksum_done),
                       .HADDR(HADDR),
                       .HBURST(HBURST),
                       .HRDATA(HRDATA[31:0]),
                       .HREADY(HREADY),
                       .HRESP(HRESP),
                       .HSIZE(HSIZE),
                       .HTRANS(HTRANS),
                       .HWDATA(HWDATA[31:0]),
                       .HWRITE(HWRITE),
                       .CKSUM_ERR(),
                       .HRESETN(HRESETN),
                       .HCLK(HCLK) );

// Determines who is talking to the SPI chip.
// File: corebootstrap_spi_sel.v

COREBOOTSTRAP_SPI_SEL SPI_SEL( .HOST_SCK(HOST_SCK),
                 .HOST_SDI(HOST_SDI),
                 .HOST_SDO(HOST_SDO),
                 .HOST_SS(HOST_SS),
                 .FLASH_SCK(FLASH_SCK),
                 .FLASH_SDI(FLASH_SDI),
                 .FLASH_SDO(FLASH_SDO),
                 .FLASH_SS(FLASH_SS),
                 .PROC_SYS_RESETN(PROC_SYS_RESETN),
                 .boot_sck(boot_sck),
                 .boot_sdi(boot_sdi),
                 .boot_sdo(boot_sdo),
                 .boot_ss(boot_ss),
                 .sel_host(sel_host) );




/// Components_End <<<---


endmodule

