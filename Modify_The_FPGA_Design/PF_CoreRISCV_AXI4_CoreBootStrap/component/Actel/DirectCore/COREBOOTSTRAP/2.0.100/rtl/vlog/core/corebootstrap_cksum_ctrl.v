
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

// - Initialise cksum on HRSETN.
// - Modify cksum as SDI data comes in.
// - Check cksum against cks_data when asked, and generate error as appropriate.

module COREBOOTSTRAP_CKSUM_CTRL( HCLK,
                   cks_data,
                   cksum_done,
                   latch_sdi,
                   HRESETN,
                   CKSUM_ERR,
                   boot_sdi,
                   rd_all_done );

parameter CKSUM_EN = 0; // Whether a checksum is to be calculated, based on copied bootcode, and compared against stored checksum.


// Port: Port_1

input          HCLK;           // AHB clock input - must be free-running after reset.
input [31:0]   cks_data;
output         cksum_done;
input          latch_sdi;     // Used to indicate times when new data is available to be used in generation of checksum.
                              // As checksum field can be anywhere in the data to be copied, this signal will be supressed 
                              // when the checksum field is being passed in.

// Port: Port_2

input          HRESETN;        // AHB reset output, active low.  May be used as a general system reset.

// Port: Port_3

output         CKSUM_ERR;      // Checksum error resulting from the checksum read from SPI flash not matching a checksum of the data read from SPI. Checksum not supported in initial release.

// Port: Port_4

input          boot_sdi;
input          rd_all_done;



/// I/O_End <<<---


assign CKSUM_ERR = 1'b0;  // Defaulting to low for now. Used to indicate a CKSUM_ERR to AHB_WRITER.
assign cksum_done = 1'b1; // Defaulting high for now. Used to indicate to AHB_WRITER that checksum is now calculated.





endmodule

