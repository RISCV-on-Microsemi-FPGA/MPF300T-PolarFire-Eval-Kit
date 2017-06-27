///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: SYS_SERVICES_Mod.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::PolarFire> <Die::PA5M300> <Package::FCG1152>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//==================================================
// SYS_SERVICES
//==================================================
module SYS_SERVICES ( 
  ACK,
  BUSY,
  STATUS,
  MAILBOX_RDATA,
  MAILBOX_ECC,
  US_RESTORE,
  CMD,
  REQ,
  ABORT,
  MAILBOX_CLK,
  MAILBOX_WRITE,
  MAILBOX_READ,
  MAILBOX_ADDR,
  MAILBOX_WDATA );
/* synthesis syn_black_box */
/* synthesis syn_noprune=1 */

/* Output Ports */
output ACK;
output BUSY;
output [15:0] STATUS;
output [31:0] MAILBOX_RDATA;
output [1:0] MAILBOX_ECC;
output US_RESTORE;

/* Input Ports */
input  [15:0] CMD;
input  REQ;
input  ABORT;
input  MAILBOX_CLK;
input  MAILBOX_WRITE;
input  MAILBOX_READ;
input  [8:0] MAILBOX_ADDR;
input  [31:0] MAILBOX_WDATA;

/* Static Input Ports */

/* Hardwired Ports */


endmodule
