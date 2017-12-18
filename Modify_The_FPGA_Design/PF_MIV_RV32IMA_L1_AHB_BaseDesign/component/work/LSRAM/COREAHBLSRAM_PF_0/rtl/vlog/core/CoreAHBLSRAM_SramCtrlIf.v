// ********************************************************************/
// Actel Corporation Proprietary and Confidential
//  Copyright 2011 Actel Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description:  SramCtrlIf
//               Provides interface to embedded Large/micro SRAM.
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

module LSRAM_COREAHBLSRAM_PF_0_CoreAHBLSRAM_SramCtrlIf (
                   // inputs
                   HCLK,
                   HRESETN,

                   // SRAM Control signals
                   ahbsram_req,
                   ahbsram_write,
                   ahbsram_wdata,
                   ahbsram_wdata_usram,
                   ahbsram_size,
                   ahbsram_addr,

                   // outputs 
		   // To AHBL IF
                   sramahb_ack,
                   sramahb_rdata,
                   BUSY,
		   // To TOP
                   mem_wen,      
                   mem_ren,      
                   mem_wdata,      
                   mem_addr,      
                   mem_byteen,      
                   mem_rdata      
                   );

////////////////////////////////////////////////////////////////////////////////
// Parameter Declarations
////////////////////////////////////////////////////////////////////////////////
   parameter SEL_SRAM_TYPE = 1;
   //parameter ECC = 0;
   parameter MEM_DEPTH = 512;
   parameter MEM_AWIDTH = 19;
   parameter SYNC_RESET = 0;
   
   localparam AHB_DWIDTH = 32;
   // State Machine parameters
   localparam S_IDLE = 2'b00;
   localparam S_WR = 2'b01;
   localparam S_RD = 2'b10;


// I/O Declarations
////////////////////////////////////////////////////////////////////////////////
// Inputs
   input                     HCLK;
   input                     HRESETN;

   input                     ahbsram_req;
   input                     ahbsram_write;
   input [2:0]               ahbsram_size;
   input [MEM_AWIDTH - 1:0]      ahbsram_addr;
   input [AHB_DWIDTH - 1:0]  ahbsram_wdata;
   input [AHB_DWIDTH - 1:0]  ahbsram_wdata_usram;

   // From Top
   input [AHB_DWIDTH - 1:0]    mem_rdata;   
// Outputs
   // To AHBL IF 
   output                      sramahb_ack;
   output [AHB_DWIDTH - 1 : 0] sramahb_rdata;
   output                      BUSY;
   // To Top
   output                      mem_ren;
   output                      mem_wen;
   output [MEM_AWIDTH-1:0]     mem_addr;
   output [3:0]                mem_byteen;
   output [AHB_DWIDTH - 1:0]   mem_wdata;  

////////////////////////////////////////////////////////////////////////////////
// Register Declarations
////////////////////////////////////////////////////////////////////////////////
   reg [3:0]                   sram_wen_mem;
   reg [1:0]                   sramcurr_state;
   reg [1:0]                   sramnext_state;
   reg                         sram_wen;
   reg                         sram_ren;
   reg                         sramahb_ack_int;
   reg                         sram_ren_d;
   reg                         sram_done;   
   reg [AHB_DWIDTH - 1 : 0]    sramahb_rdata;

   reg [AHB_DWIDTH-1:0]        ahbsram_wdata_upd_r;
   reg [AHB_DWIDTH-1:0]        u_ahbsram_wdata_upd_r;

////////////////////////////////////////////////////////////////////////////////
// Wire Declarations
////////////////////////////////////////////////////////////////////////////////
   wire [AHB_DWIDTH - 1:0]     ahbsram_wdata;
   wire [AHB_DWIDTH - 1:0]     ram_rdata;
   wire                        u_BUSY_all_0;
   wire                        u_BUSY_all_1;
   wire                        u_BUSY_all_2;
   wire                        u_BUSY_all_3;
   wire                        l_BUSY_all_0;
   wire                        l_BUSY_all_1;
   wire                        l_BUSY_all_2;
   wire                        l_BUSY_all_3;
   wire                        BUSY; 
   wire                        aresetn;
   wire                        sresetn;
   wire [AHB_DWIDTH - 1:0]     sram_wdata;
   
   assign aresetn    = (SYNC_RESET==1) ? 1'b1 : HRESETN;
   assign sresetn    = (SYNC_RESET==1) ? HRESETN : 1'b1;
   assign sram_wdata = ahbsram_wdata;
   assign ram_rdata  = mem_rdata; 

   // Assignments for Top outputs
   assign mem_ren    = sram_ren;
   assign mem_wen    = sram_wen;
   assign mem_wdata  = sram_wdata;
   assign mem_addr   = ({2'b00,ahbsram_addr[MEM_AWIDTH - 1 : 2]});
   assign mem_byteen = sram_wen_mem;

////////////////////////////////////////////////////////////////////////////////
// Main body of code
////////////////////////////////////////////////////////////////////////////////

// SRAM Control State Machine
// Current State generation
   always @(posedge HCLK or negedge aresetn) begin
      if((aresetn == 1'b0) || (sresetn == 1'b0)) begin
         sramcurr_state <= S_IDLE;
      end
      else begin
         sramcurr_state <= sramnext_state;
      end
   end
   
// Next State and output decoder logic
   always @(*) begin
      sramahb_ack_int = 1'b0;
      sram_wen = 1'b0;
      sram_ren = 1'b0;
      sramnext_state = sramcurr_state;
      case (sramcurr_state)
        S_IDLE : begin
           if(ahbsram_req == 1'b1) begin
              if(ahbsram_write == 1'b1) begin
                 sramnext_state = S_WR;           
                 sram_wen = 1'b1;
              end
              else begin
                 sram_ren = 1'b1;
                 sramnext_state = S_RD;           
              end
           end
        end

        S_WR : begin
           
           if(sram_done == 1'b1) begin
              sramnext_state = S_IDLE;
              sramahb_ack_int = 1'b1;
           end

        end
        
        S_RD : begin
           
           if(sram_done == 1'b1) begin
              sramnext_state = S_IDLE;
              sramahb_ack_int = 1'b1;
           end

        end

        default : begin
           sramnext_state = S_IDLE;
        end
      endcase // case (sramcurr_state)
      
   end
   
   always @(*) begin
      sram_wen_mem = 4'b0000;
      if(ahbsram_size == 3'b010) begin
         sram_wen_mem = {4{sram_wen}};
      end
      else if(ahbsram_size == 3'b001) begin
         case(ahbsram_addr[1])
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
         case(ahbsram_addr[1:0])
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


////////////////////////////////////////////////////////////////////////////////

   assign BUSY = SEL_SRAM_TYPE ? (u_BUSY_all_0 | u_BUSY_all_1 | u_BUSY_all_2 | u_BUSY_all_3)  : (l_BUSY_all_0 | l_BUSY_all_1 | l_BUSY_all_2 | l_BUSY_all_3);
   
   always @(posedge HCLK or negedge aresetn) begin
      if((aresetn == 1'b0) || (sresetn == 1'b0)) begin
         sramahb_rdata <= 32'h0;
      end
      else if(sram_ren_d == 1'b1) begin
         sramahb_rdata <= ram_rdata;
      end
      else begin
         sramahb_rdata <= sramahb_rdata;
      end
   end

   always @(posedge HCLK or negedge aresetn) begin
      if((aresetn == 1'b0) || (sresetn == 1'b0)) begin
         sram_ren_d <= 32'h0;
      end
      else begin
         sram_ren_d <= sram_ren;
      end
   end

   
// Generate the SRAM done when the SRAM wren/rden is done
   always @(posedge HCLK or negedge aresetn) begin
      if((aresetn == 1'b0) || (sresetn == 1'b0)) begin
         sram_done <= 1'b0;
      end
      else if(sram_wen || sram_ren) begin
         sram_done <= 1'b1;
      end
      else begin
         sram_done <= 1'b0;
      end
   end

// Generate the SRAM ack 
  assign sramahb_ack = sramahb_ack_int;
 
   
endmodule // CoreAHBLSRAM_SramCtrlIf

