// ********************************************************************/
// Actel Corporation Proprietary and Confidential
//  Copyright 2011 Actel Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description:  AHBLSramIf
//               Provides AHB interface to embedded Large SRAM.
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

module AHBLSramIf (
                   HCLK,
                   HRESETN,
                   HSEL,
                   HTRANS,
                   HBURST,
                   HWRITE,
                   HSIZE,
                   HADDR,
                   HWDATA,
                   HREADYIN,
                   // SRAM Control signals
                   sramahb_ack,
                   sramahb_rdata,
                   // Outputs
                   HRESP,
                   HREADYOUT,
                   HRDATA,
                   // SRAM Control signals
                   ahbsram_req,
                   ahbsram_write,
                   ahbsram_wdata,
                   ahbsram_wdata_usram,
                   ahbsram_size,
                   ahbsram_addr,
                   BUSY
                         
                   );

   

////////////////////////////////////////////////////////////////////////////////
// Parameter Declarations
////////////////////////////////////////////////////////////////////////////////

   parameter SYNC_RESET = 0;
   // State Machine parameters
   localparam IDLE = 2'b00;
   localparam AHB_WR = 2'b01;
   localparam AHB_RD = 2'b10;

   parameter AHB_DWIDTH = 32;
   parameter AHB_AWIDTH = 32;
   
   parameter RESP_OKAY = 2'b00;
   parameter RESP_ERROR = 2'b01;

   // AHB HTRANS definition
   parameter TRN_IDLE = 2'b00;
   parameter TRN_BUSY = 2'b01;
   parameter TRN_SEQ  = 2'b11;
   parameter TRN_NONSEQ = 2'b10;

   parameter SINGLE = 3'b000;
   parameter INCR = 3'b001;
   parameter WRAP4 = 3'b010;
   parameter INCR4 = 3'b011;
   parameter WRAP8 = 3'b100;
   parameter INCR8 = 3'b101;
   parameter WRAP16 = 3'b110;
   parameter INCR16 = 3'b111;
   
   
////////////////////////////////////////////////////////////////////////////////
// I/O Declarations
////////////////////////////////////////////////////////////////////////////////
// Inputs
   input HCLK;
   input HRESETN;
   input HSEL;
   input HREADYIN;
   input [1:0] HTRANS;
   input [2:0] HBURST;
   input [2:0] HSIZE;
   input [19:0] HADDR;
   input [AHB_DWIDTH - 1:0] HWDATA;
   input                    HWRITE;
   input                    sramahb_ack;
   input [AHB_DWIDTH - 1:0] sramahb_rdata;
   input                    BUSY;
   
// Outputs
   output                    HREADYOUT;
   output [1:0]              HRESP;
   output [AHB_DWIDTH - 1:0] HRDATA;
   
   output                    ahbsram_req;
   output                    ahbsram_write;
   output [AHB_DWIDTH - 1:0] ahbsram_wdata_usram;
   output [AHB_AWIDTH - 1:0] ahbsram_wdata;
   
   output [2:0]              ahbsram_size;
   output [19:0]             ahbsram_addr;
   
////////////////////////////////////////////////////////////////////////////////
// Register Declarations
////////////////////////////////////////////////////////////////////////////////
   reg [1:0] HTRANS_d;
   reg [2:0] HBURST_d;
   reg [2:0] HSIZE_d;
   reg [19:0] HADDR_d;
   reg [AHB_DWIDTH - 1:0] HWDATA_d;
   reg                    HWRITE_d;
   reg                    HSEL_d;
   reg                    HREADYIN_d;
   reg [1:0]              ahbcurr_state;
   reg [1:0]              ahbnext_state;

   reg                    latchahbcmd;
   reg                    ahbsram_req_int;
   reg                    ahbsram_req_d1;   
   reg [AHB_DWIDTH - 1:0] HWDATA_cal;
   reg [AHB_DWIDTH - 1:0] HRDATA;
   reg [AHB_DWIDTH - 1:0]      ahbsram_wdata_usram;
   reg [AHB_DWIDTH - 1:0]      ahbsram_wdata_usram_d;

   reg [4:0]  burst_count;
   reg [4:0]  burst_count_reg;
   reg [4:0]  count;
   reg [4:0]  sramahb_ack_cnt;
////////////////////////////////////////////////////////////////////////////////
// Wire Declarations
////////////////////////////////////////////////////////////////////////////////
   wire                   HREADYOUT;
   //reg                    HREADYOUT;
   wire                   ahbsram_req;
   wire                   validahbcmd;
   wire [1:0]             HRESP;
   wire                   ahbsram_write;
   wire [2:0]             ahbsram_size;
   wire [19:0]            ahbsram_addr;
   wire                   aresetn;
   wire                   sresetn; 
   
   assign aresetn = (SYNC_RESET==1) ? 1'b1 : HRESETN;
   assign sresetn = (SYNC_RESET==1) ? HRESETN : 1'b1;

////////////////////////////////////////////////////////////////////////////////
// Main body of code
////////////////////////////////////////////////////////////////////////////////


// Generation of valid AHB Command which triggers the AHB Slave State Machine
   assign validahbcmd = HREADYIN & HSEL & (HTRANS == TRN_NONSEQ);


// Generation of HRESP
   assign HRESP = RESP_OKAY;

   always @(*) begin
      HWDATA_cal = HWDATA;
   end
   
   
// Latch all the AHB signals
   always @(posedge HCLK or negedge aresetn) begin
      if((aresetn == 1'b0) || (sresetn == 1'b0)) begin
         HADDR_d    <= {20{1'b0}};
         HWDATA_d   <= {32{1'b0}};
         HTRANS_d   <= 2'b00;
         HSIZE_d    <= 2'b00;
         HBURST_d   <= 3'b000;
         HWRITE_d   <= 1'b0;
         HSEL_d     <= 1'b0;
         HREADYIN_d <= 1'b0;
      end
      //else if(latchahbcmd == 1'b1) begin
      else if(HREADYIN == 1'b1 & HSEL == 1'b1 & HREADYOUT == 1'b1) begin
         HADDR_d    <= HADDR;
         HTRANS_d   <= HTRANS;
         HSIZE_d    <= HSIZE;
         HBURST_d   <= HBURST;
         HWRITE_d   <= HWRITE;
         HWDATA_d   <= HWDATA_cal;         
         HSEL_d     <= HSEL;
         HREADYIN_d <= HREADYIN;
      end
    end
   
// Current State generation
   always @(posedge HCLK or negedge aresetn) begin
      if((aresetn == 1'b0) || (sresetn == 1'b0)) begin
         ahbcurr_state <= IDLE;
      end
      else begin
         ahbcurr_state <= ahbnext_state;
      end
   end
   
// Next State and output decoder logic
   always @(*) begin
      latchahbcmd = 1'b0;
      ahbsram_req_int = 1'b0;
      ahbnext_state = ahbcurr_state;
      
      case (ahbcurr_state)
        IDLE : begin
          //if(validahbcmd == 1'b1) begin
         if(HREADYIN == 1'b1 && HSEL == 1'b1 && ((HTRANS == TRN_NONSEQ) || HTRANS == TRN_SEQ)  ) begin
             latchahbcmd = 1'b1;
             if(HWRITE == 1'b1) begin
                ahbnext_state = AHB_WR;           
             end else begin
                ahbnext_state = AHB_RD;           
             end
         end else begin
                ahbnext_state = IDLE;           
         end

       end

        AHB_WR : begin
           latchahbcmd = 1'b0;
           ahbsram_req_int = 1'b1;
           
            if (sramahb_ack == 1'b1 ) begin
                if (count == burst_count_reg) begin
                  ahbnext_state = IDLE;
                end else begin
                  ahbsram_req_int = 1'b0;
                end
            end

        end
        
        AHB_RD : begin
           latchahbcmd = 1'b0;
           ahbsram_req_int = 1'b1;
             if (sramahb_ack == 1'b1 ) begin
                   ahbnext_state = IDLE;
             end
        end

        default : begin
           ahbnext_state = IDLE;
        end
      endcase // case (ahbcurr_state)
      
   end


////////////////////////////////////////////////////////////////////////////
/////////// LOGIC FOR SRAMACK COUNTER FOR NON_SEQ //////////////////////////
////////////////////////////////////////////////////////////////////////////

/*
always@(posedge HCLK or negedge aresetn) begin
    if ((aresetn == 1'b0) || (sresetn == 1'b0)) begin
        sramahb_ack_cnt <= 5'b00000;
    end else begin
       //if( HTRANS == TRN_NONSEQ && HREADYOUT == 1'b1 && HREADYIN == 1'b1 ) begin
       if( (HTRANS == TRN_NONSEQ && HREADYOUT == 1'b1 && HREADYIN == 1'b1 && sramahb_ack_cnt >= burst_count_reg) || sramahb_ack_cnt == burst_count_reg) begin
          sramahb_ack_cnt <= 5'b00000;
       end else if( HTRANS == TRN_NONSEQ && HREADYOUT == 1'b1 && HREADYIN == 1'b1 && sramahb_ack_cnt < burst_count_reg) begin
          sramahb_ack_cnt <= sramahb_ack_cnt + 1;
       end else if( sramahb_ack == 1'b1) begin
          sramahb_ack_cnt <= sramahb_ack_cnt + 1;
       end else begin
          sramahb_ack_cnt <= sramahb_ack_cnt;
       end
    end
end
*/

////////////////////////////////////////////////////////////////////////////
/////////// LOGIC FOR BURST COUNT //////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////

always@(*) begin
    burst_count = burst_count_reg;
    if (HSEL == 1'b1  && HTRANS == TRN_NONSEQ && HREADYIN == 1'b1 && HREADYOUT == 1'b1 ) begin
           case (HBURST)
             SINGLE        : burst_count = 5'b00001;
             WRAP4,INCR4   : burst_count = 5'b00100;
             WRAP8,INCR8   : burst_count = 5'b01000;
             WRAP16,INCR16 : burst_count = 5'b10000;
             default  : burst_count = 4'b0001;
           endcase
    end
end

always@(posedge HCLK or negedge aresetn) begin
    if ((aresetn == 1'b0) || (sresetn == 1'b0)) begin
      burst_count_reg <= 'h0;
    end else begin
        burst_count_reg <= burst_count;
    end
end


always@(posedge HCLK or negedge aresetn) begin
    if((aresetn == 1'b0) || (sresetn == 1'b0)) begin
      count <= 5'h0;
    end else begin
        if (count == burst_count_reg ) begin
            count <= 5'h0;
        end else if (ahbsram_req == 1'b1) begin
            count <= count + 1'b1;
        end else begin
            count <= count;
        end
    end
end

   
// Changes to be done when BUSY signal from RAM is used to block UII transactions indicating that SII needs to access the RAMs   
   assign HREADYOUT = !ahbsram_req_int;
   
// Generation of signals required for SRAM
   assign ahbsram_write = ahbsram_req  ? HWRITE_d : 1'b0;   
   assign ahbsram_wdata = HWDATA;     
   assign ahbsram_addr = ahbsram_req  ? HADDR_d : HADDR_d;     
   assign ahbsram_size = ahbsram_req  ? HSIZE_d : HSIZE_d;  

   
   always @(posedge HCLK or negedge aresetn) begin
      if((aresetn == 1'b0) || (sresetn == 1'b0)) begin
         ahbsram_req_d1 <= 1'b0;
      end
      else begin
         ahbsram_req_d1 <= ahbsram_req_int;
      end
   end

// Generate the request to the SRAM contol logic when there is AHB read or write request
   assign ahbsram_req = ahbsram_req_int & !ahbsram_req_d1; 


////////////////////////////////////////////////////////////////////////////////
///////////////Write Data for USRAMS////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

always@(*) begin
 // ahbsram_wdata_usram = 'h0; 
  if(ahbsram_size == 3'b010) begin
    ahbsram_wdata_usram = ahbsram_wdata; 
  end else if(ahbsram_size == 3'b001) begin
      if (ahbsram_addr[1:0] == 2'b00) begin
          ahbsram_wdata_usram = {ahbsram_wdata_usram_d[31:16],ahbsram_wdata[15:0]};
      end else begin
          ahbsram_wdata_usram = {ahbsram_wdata[31:16],ahbsram_wdata_usram_d[15:0]};
      end
  end else if (ahbsram_size == 3'b000) begin
      if (ahbsram_addr[1:0] == 2'b00) begin
          ahbsram_wdata_usram = {ahbsram_wdata_usram_d[31:8],ahbsram_wdata[7:0]};
      end else if (ahbsram_addr[1:0] == 2'b01) begin
          ahbsram_wdata_usram = {ahbsram_wdata_usram_d[31:16],ahbsram_wdata[15:8],ahbsram_wdata_usram_d[7:0]};
      end else if (ahbsram_addr[1:0] == 2'b10) begin
          ahbsram_wdata_usram = {ahbsram_wdata_usram_d[31:24],ahbsram_wdata[23:16],ahbsram_wdata_usram_d[15:0]};
      end else begin
          ahbsram_wdata_usram = {ahbsram_wdata[31:24],ahbsram_wdata_usram_d[23:0]};
      end
  end else begin
    ahbsram_wdata_usram = ahbsram_wdata_usram_d; 
  end
end

////////////////////////////////////////////////////////////
//////////////////// Registered USRAM WRITE DATA////////////
////////////////////////////////////////////////////////////

always@(posedge HCLK or negedge aresetn) begin
    if((aresetn == 1'b0) || (sresetn == 1'b0)) begin
         ahbsram_wdata_usram_d <= 1'b0;
      end
      else if (HREADYOUT == 1'b1 && HREADYIN == 1'b1)begin
         ahbsram_wdata_usram_d <= ahbsram_wdata_usram;
      end
end

// HRDATA generation   
   always @(*) begin
      if(HREADYOUT && HREADYIN) begin
         HRDATA = sramahb_rdata;
      end  // if (HREADYOUT && HREADYIN)
      else begin
         HRDATA = sramahb_rdata;
      end
   end
   
   
endmodule // AHBLSramIf


