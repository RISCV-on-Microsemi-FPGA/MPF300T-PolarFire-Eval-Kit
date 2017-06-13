
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
// SVN $Revision: 27880 $
// SVN $Date: 2016-11-18 00:25:39 +0000 (Fri, 18 Nov 2016) $
//
// Resolved SARs
// SAR      Date     Who   Description
// Notes:
//
//
// *********************************************************************/

/// Header_End <<<---


/// I/O_Start --->>>

// Determines who is talking to the SPI chip.

module COREBOOTSTRAP_SPI_SEL( HOST_SCK,
                HOST_SDI,
                HOST_SDO,
                HOST_SS,
                FLASH_SCK,
                FLASH_SDI,
                FLASH_SDO,
                FLASH_SS,
                PROC_SYS_RESETN,
                boot_sck,
                boot_sdi,
                boot_sdo,
                boot_ss,
                sel_host );


// Port: CoreSPI_IF

input          HOST_SCK;       // SPI clock from the host CPU to be sent to the SPI flash chip after CoreBootStrap completes its tasks.
output         HOST_SDI;
input          HOST_SDO;       // Serial data out from the host CPU to be sent to the SPI flash chip after CoreBootStrap completes its tasks.
input          HOST_SS;        // Slave Select active low out from the host CPU to be sent to the SPI flash chip after CoreBootStrap completes its tasks.

// Port: Port_1

output         FLASH_SCK;      // SPI clock sent to the SPI flash chip.
input          FLASH_SDI;      // Serial data in received from the SPI flash chip.
output         FLASH_SDO;      // Serial data out sent to the SPI flash chip.
output         FLASH_SS;       // Slave Select (active low) sent to the SPI flash chip.
input          PROC_SYS_RESETN; // Active low reset output to the host CPU held active until after the CoreBootStrap copy functions complete.
input          boot_sck;
output         boot_sdi;
input          boot_sdo;
input          boot_ss;
input          sel_host;

wire host_ss_gated;


/// I/O_End <<<---

assign HOST_SDI = FLASH_SDI;
assign boot_sdi = FLASH_SDI;

assign FLASH_SDO = sel_host ? HOST_SDO : boot_sdo;
assign FLASH_SCK = sel_host ? HOST_SCK : boot_sck;

assign FLASH_SS = boot_ss && host_ss_gated;
assign host_ss_gated = (!PROC_SYS_RESETN) || HOST_SS;




endmodule

