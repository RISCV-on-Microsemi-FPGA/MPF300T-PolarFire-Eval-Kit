// ********************************************************************/
// Actel Corporation Proprietary and Confidential
//  Copyright 2011 Actel Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description:  sram_0_COREAHBLSRAM_PF_0_AHBLSramIf
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

module SRAM_COREAHBLSRAM_PF_0_CoreAHBLSRAM_AHBLSramIf (
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
                   // Outputs
                   HRESP,
                   HREADYOUT,
                   ahbsram_write,
                   ahbsram_read,
                   ahbsram_wdata,
                   ahbsram_rdata,
                   ahbsram_addr,
                   ahbsram_byteen,
		   ahb_rdata,
                   BUSY
                         
                   );

   

////////////////////////////////////////////////////////////////////////////////
// Parameter Declarations
////////////////////////////////////////////////////////////////////////////////

   parameter SYNC_RESET = 0;
   parameter MEM_AWIDTH = 19;

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
// Local declarations
////////////////////////////////////////////////////////////////////////////////   
   localparam AHB_DWIDTH = 32;
   localparam AHB_AWIDTH = 32;
   
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
   input [AHB_AWIDTH-1:0]   HADDR;
   input [AHB_DWIDTH - 1:0] HWDATA;
   input                    HWRITE;
   input                    BUSY;
   
// Outputs
   output                    HREADYOUT;
   output [1:0]              HRESP;
   
   output                    ahbsram_write;
   output                    ahbsram_read;
   output [AHB_DWIDTH - 1:0] ahbsram_wdata;
   input [AHB_DWIDTH - 1:0]  ahbsram_rdata;
   
   output [MEM_AWIDTH-1:0]   ahbsram_addr;
   output [3:0]              ahbsram_byteen;
   output [AHB_DWIDTH - 1:0] ahb_rdata;
   
////////////////////////////////////////////////////////////////////////////////
// Register Declarations
////////////////////////////////////////////////////////////////////////////////
   reg [1:0] HTRANS_d;
   reg [2:0] HBURST_d;
   reg [2:0] HSIZE_d;
   reg [AHB_AWIDTH-1:0]   HADDR_d;
   reg [AHB_DWIDTH - 1:0] HWDATA_d;
   reg                    HWRITE_d;
   reg                    HSEL_d;
   reg                    HREADYIN_d;
   reg [AHB_DWIDTH - 1:0] HWDATA_cal;
   reg [4:0]              burst_count;
   reg [4:0]              burst_count_reg;
   reg [4:0]              count;
   reg [AHB_DWIDTH - 1:0] ahb_rdata;
   reg [AHB_DWIDTH - 1:0] ahb_rdata_r;
   reg                    HREADYOUT;
   reg                    ahbsram_write;
   reg                    ahbsram_read;
   reg  [MEM_AWIDTH-1:0]  ahbsram_addr;
   reg  [MEM_AWIDTH-1:0]  ahbsram_addr_r;
   reg                    mem_ren_pulse_r;
   reg                    mem_ren_r;
   reg [3:0]              sram_wen_mem;

////////////////////////////////////////////////////////////////////////////////
// Wire Declarations
////////////////////////////////////////////////////////////////////////////////
   wire [AHB_DWIDTH - 1:0] ahbsram_wdata;
   wire                   ahbsram_req;
   wire [1:0]             HRESP;
   wire [2:0]             ahbsram_size;
   wire                   aresetn;
   wire                   sresetn; 
   wire                   ready_en;
   wire                   mem_ren_pulse;
   wire                   sram_wen; 

   assign aresetn = (SYNC_RESET==1) ? 1'b1 : HRESETN;
   assign sresetn = (SYNC_RESET==1) ? HRESETN : 1'b1;

////////////////////////////////////////////////////////////////////////////////
// Main body of code
////////////////////////////////////////////////////////////////////////////////


// Generation of HRESP
   assign HRESP = RESP_OKAY;

   always @(*) begin
      HWDATA_cal = HWDATA;
   end
   
   
// Latch all the AHB signals
   always @(posedge HCLK or negedge aresetn) begin
      if((aresetn == 1'b0) || (sresetn == 1'b0)) begin
         HADDR_d    <= {AHB_AWIDTH{1'b0}};
         HWDATA_d   <= {AHB_DWIDTH{1'b0}};
         HTRANS_d   <= 2'b00;
         HSIZE_d    <= 2'b00;
         HBURST_d   <= 3'b000;
         HWRITE_d   <= 1'b0;
         HSEL_d     <= 1'b0;
         HREADYIN_d <= 1'b0;
      end
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


////////////////////////////////////////////////////////////////////////////
/////////// LOGIC FOR BURST COUNT //////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////

always@(*) begin
    burst_count = burst_count_reg;
    if (HSEL == 1'b1  && (HTRANS == TRN_NONSEQ || HTRANS == TRN_SEQ) && HREADYIN == 1'b1 && HREADYOUT == 1'b1 ) begin
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
        end else if ((HSEL == 1'b1  && (HTRANS == TRN_NONSEQ || HTRANS == TRN_SEQ) && HREADYIN == 1'b1 && HREADYOUT == 1'b1 ) == 1'b1) begin
            count <= count + 1'b1;
        end else begin
            count <= count;
        end
    end
end

   
// HREADY Generation
   assign ready_en = (HSEL & (HTRANS == TRN_NONSEQ | HTRANS == TRN_SEQ | HTRANS == TRN_IDLE  | HTRANS == TRN_BUSY)) | (HSEL_d & (HTRANS_d == TRN_NONSEQ | HTRANS_d == TRN_SEQ | HTRANS == TRN_IDLE  | HTRANS == TRN_BUSY) & mem_ren_pulse_r);

   always @(posedge HCLK or negedge aresetn) begin
      if((aresetn == 1'b0) || (sresetn == 1'b0)) begin
         HREADYOUT <= 1'b0;
      end
      else begin
	 if(ready_en && !mem_ren_pulse) begin
            HREADYOUT <= 1'b1;
         end
	 else begin
            HREADYOUT <= 1'b0;
         end
      end
   end

   always @(posedge HCLK or negedge aresetn) begin
      if((aresetn == 1'b0) || (sresetn == 1'b0)) begin
         mem_ren_r <= 1'b0;
      end
      else begin
         mem_ren_r <= ahbsram_read;
      end
   end
   assign mem_ren_pulse = ahbsram_read & !mem_ren_r;

    always @(posedge HCLK or negedge aresetn) begin
      if((aresetn == 1'b0) || (sresetn == 1'b0)) begin
         mem_ren_pulse_r <= 1'b0;
         ahbsram_addr_r <= 'h0;
      end
      else begin
         mem_ren_pulse_r <= mem_ren_pulse;
         ahbsram_addr_r <= ahbsram_addr;
      end
   end

// Generation of signals required for SRAM
// Memory write
   always @(posedge HCLK or negedge aresetn) begin
      if((aresetn == 1'b0) || (sresetn == 1'b0)) begin
         ahbsram_write <= 1'b0;
      end
      else begin
	 if((HSEL && (HTRANS == TRN_NONSEQ || HTRANS == TRN_SEQ) && HWRITE && HREADYOUT) == 1'b1) begin
            ahbsram_write <= 1'b1;
         end
	 else begin
            ahbsram_write <= 1'b0;
         end
      end
   end

  // Memory read
  always @(*) begin
       ahbsram_read = (HSEL & (HTRANS == TRN_NONSEQ | HTRANS == TRN_SEQ) & !HWRITE & HREADYOUT) ;
   end

  // Memory write data
  assign ahbsram_wdata = HWDATA;

  // Memory address generation
  always @(*) begin
	 if((HSEL && (HTRANS == TRN_NONSEQ || HTRANS == TRN_SEQ) && !HWRITE && HREADYOUT) == 1'b1) begin // SAR#88647
            //ahbsram_addr <= {2'b00,HADDR[AHB_AWIDTH-1:2]};
            ahbsram_addr <= {2'b00,HADDR[MEM_AWIDTH-1:2]}; // v2.3
         end
	 else if((HSEL_d && (HTRANS_d == TRN_NONSEQ || HTRANS_d == TRN_SEQ) && HWRITE_d && HREADYOUT) == 1'b1) begin
            //ahbsram_addr <= {2'b00,HADDR_d[AHB_AWIDTH-1:2]};
            ahbsram_addr <= {2'b00,HADDR_d[MEM_AWIDTH-1:2]}; // v2.3
         end
	 else begin
            ahbsram_addr <= ahbsram_addr_r;
	 end
   end	

   assign ahbsram_size = (HSEL)  ? HSIZE_d : HSIZE_d; 



////////////////////////////////////////////////////////////////////////////////
///////////////Write Data for USRAMS////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

   assign sram_wen = ahbsram_write;

   always @(*) begin
      sram_wen_mem = 4'b0000;
      if(ahbsram_size == 3'b010) begin
         sram_wen_mem = {4{sram_wen}};
      end
      else if(ahbsram_size == 3'b001) begin
         case(HADDR_d[1])
           1'b0: begin
              sram_wen_mem[0] = sram_wen;
              sram_wen_mem[1] = sram_wen;
              sram_wen_mem[2] = 1'b0;
              sram_wen_mem[3] = 1'b0;
           end
           1'b1: begin
              sram_wen_mem[0] = 1'b0;
              sram_wen_mem[1] = 1'b0;
              sram_wen_mem[2] = sram_wen;
              sram_wen_mem[3] = sram_wen;
           end
         endcase // case (ahbsram_addr[1])         
      end // if (ahbsram_size == 3'b001)      
      else if(ahbsram_size == 3'b000) begin
         case(HADDR_d[1:0])
           2'b00: begin
              sram_wen_mem[0] = sram_wen;
              sram_wen_mem[1] = 1'b0;
              sram_wen_mem[2] = 1'b0;
              sram_wen_mem[3] = 1'b0;
           end
           2'b01: begin
              sram_wen_mem[0] = 1'b0;
              sram_wen_mem[1] = sram_wen;
              sram_wen_mem[2] = 1'b0;
              sram_wen_mem[3] = 1'b0;
           end
           2'b10: begin
              sram_wen_mem[0] = 1'b0;
              sram_wen_mem[1] = 1'b0;
              sram_wen_mem[2] = sram_wen;
              sram_wen_mem[3] = 1'b0;
           end
           2'b11: begin
              sram_wen_mem[0] = 1'b0;
              sram_wen_mem[1] = 1'b0;
              sram_wen_mem[2] = 1'b0;
              sram_wen_mem[3] = sram_wen;
           end
         endcase // case (ahbsram_addr[1:0])         
      end // else: !if(ahbsram_size == 3'b000)
      else begin
         sram_wen_mem = {4{sram_wen}};
      end             
   end // always @ (*)


   assign ahbsram_byteen = sram_wen_mem;


   // Memory Read data
   always@(posedge HCLK or negedge aresetn) begin
     if((aresetn == 1'b0) || (sresetn == 1'b0)) begin
         ahb_rdata_r <= 'h0;
     end
     else begin
         ahb_rdata_r <= ahb_rdata;
     end
   end

   // HRDATA generation   
   always @(*) begin
      ahb_rdata =  mem_ren_r ? ahbsram_rdata : ahb_rdata_r;
   end
   
   
endmodule 


