//--------------------------------------------------
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
//--------------------------------------------------
 
 
module COREBOOTSTRAP_AHB_WRITER (
                   //  input ports
                   HCLK,
                   HRESETN,
                   SW_DEBUG_MODE,
                   CKSUM_ERR,
                   rd_all_done,
                   rd_data_avail,
                   HRDATA,
                   HREADY,
                   HRESP,
                   rd_data,
                   cksum_done,
 
                   //  output ports
                   AHB_ERR,
                   sel_host,
                   PROC_SYS_RESETN,
                   HWRITE,
                   HWDATA,
                   HADDR,
                   HBURST,
                   HSIZE,
                   HTRANS
                   );
 
   parameter        AHB_DST_ADDR      = 32'b0;       //  Starting address for where to write bootcode, using AHB.
//  input ports
   input            HCLK;
   wire             HCLK;
   input            HRESETN;
   wire             HRESETN;
   input            SW_DEBUG_MODE;
   wire             SW_DEBUG_MODE;
   input            CKSUM_ERR;
   wire             CKSUM_ERR;
   input            rd_all_done;
   wire             rd_all_done;
   input            rd_data_avail;
   wire             rd_data_avail;
   input     [31:0] HRDATA;
   wire      [31:0] HRDATA;
   input            HREADY;
   wire             HREADY;
   input            HRESP;
   wire             HRESP;
   input     [31:0] rd_data;
   wire      [31:0] rd_data;
   input            cksum_done;
   wire             cksum_done;
//  output ports
   output    [1:0]  AHB_ERR;
   reg       [1:0]  AHB_ERR;
   output           sel_host;
   reg              sel_host;
   output           PROC_SYS_RESETN;
   reg              PROC_SYS_RESETN;
   output           HWRITE;
   reg              HWRITE;
   output    [31:0] HWDATA;
   wire      [31:0] HWDATA;
   output    [31:0] HADDR;
   reg       [31:0] HADDR;
   output    [2:0]  HBURST;
   wire      [2:0]  HBURST;
   output    [2:0]  HSIZE;
   wire      [2:0]  HSIZE;
   output    [1:0]  HTRANS;
   reg       [1:0]  HTRANS;
//  local signals
   reg       [31:0] first_data_word;
   reg              first_data_flag;
   reg       [31:0] pre_addr;
 
   parameter AHB_CKS_WAIT   = 4'b0000,
             AHB_FINISH_1   = 4'b0001,
             AHB_FINISH_2   = 4'b0010,
             AHB_RD_SETUP   = 4'b0011,
             AHB_RD_WAIT    = 4'b0100,
             AHB_SETUP      = 4'b0101,
             AHB_WRITE_1    = 4'b0110,
             AHB_WRITE_2    = 4'b0111,
             AHB_WRITE_PREP = 4'b1000;
 
 
   reg [3:0] visual_AHB_WRITER_current, visual_AHB_WRITER_next;
 
   reg       [1:0]  visual_AHB_ERR_next;
   reg              visual_sel_host_next;
   reg              visual_PROC_SYS_RESETN_next;
   reg              visual_HWRITE_next;
   reg       [31:0] visual_HADDR_next;
   reg       [1:0]  visual_HTRANS_next;
   reg       [31:0] visual_first_data_word_next;
   reg              visual_first_data_flag_next;
   reg       [31:0] visual_pre_addr_next;
 
 
   // Combinational process
   always  @(AHB_ERR or sel_host or PROC_SYS_RESETN or HWRITE or HADDR or HTRANS or first_data_word or first_data_flag or pre_addr or cksum_done or HREADY or HRESP or HRDATA or CKSUM_ERR or
             SW_DEBUG_MODE or rd_all_done or rd_data_avail or rd_data or visual_AHB_WRITER_current)
   begin : AHB_WRITER_comb
      visual_AHB_ERR_next <= AHB_ERR;
      visual_sel_host_next <= sel_host;
      visual_PROC_SYS_RESETN_next <= PROC_SYS_RESETN;
      visual_HWRITE_next <= HWRITE;
      visual_HADDR_next <= HADDR;
      visual_HTRANS_next <= HTRANS;
      visual_first_data_word_next <= first_data_word;
      visual_first_data_flag_next <= first_data_flag;
      visual_pre_addr_next <= pre_addr;
 
 
 
      case (visual_AHB_WRITER_current)
         AHB_CKS_WAIT:
            begin
               if (cksum_done)
               begin
                  visual_HADDR_next <= AHB_DST_ADDR;
                  visual_HTRANS_next <= 2'b10;
                  visual_HWRITE_next <= 1'b0;
                  visual_AHB_WRITER_next <= AHB_RD_SETUP;
               end
               else
               begin
                  visual_AHB_WRITER_next <= AHB_CKS_WAIT;
               end
            end
 
         AHB_FINISH_1:
            begin
               visual_PROC_SYS_RESETN_next <= 1'b1;
               visual_AHB_WRITER_next <= AHB_FINISH_2;
            end
 
         AHB_FINISH_2:
            begin
               visual_AHB_WRITER_next <= AHB_FINISH_2;
            end
 
         //  Wait here on finishing. Restart SM
         //  with async. HRESETN assertion.
         AHB_RD_SETUP:
            begin
               visual_HTRANS_next <= 2'b0;
               visual_AHB_WRITER_next <= AHB_RD_WAIT;
            end
 
         AHB_RD_WAIT:
            begin
               if (HREADY)
               begin
                  if (HRESP)
                  begin
                     visual_AHB_ERR_next[0] <= 1'b1;
                     visual_AHB_WRITER_next <= AHB_FINISH_2;
                  end
                  else if (first_data_word == HRDATA)
                  begin
                     if (CKSUM_ERR)
                     begin
                        visual_AHB_WRITER_next <= AHB_FINISH_2;
                     end
                     else
                     begin
                        visual_sel_host_next <= 1'b1;
                        visual_AHB_WRITER_next <= AHB_FINISH_1;
                     end
                  end
                  else
                  begin
                     visual_AHB_ERR_next[1] <= 1'b1;
                     visual_AHB_WRITER_next <= AHB_FINISH_2;
                  end
               end
               else
               begin
                  visual_HTRANS_next <= 2'b0;
                  visual_AHB_WRITER_next <= AHB_RD_WAIT;
               end
            end
 
         AHB_SETUP:
            begin
               if (SW_DEBUG_MODE)
               begin
                  if (CKSUM_ERR)
                  begin
                     visual_AHB_WRITER_next <= AHB_FINISH_2;
                  end
                  else
                  begin
                     visual_sel_host_next <= 1'b1;
                     visual_AHB_WRITER_next <= AHB_FINISH_1;
                  end
               end
               else
               begin
                  visual_AHB_WRITER_next <= AHB_WRITE_PREP;
               end
            end
 
         AHB_WRITE_1:
            begin
               visual_HTRANS_next <= 2'b0;
               visual_AHB_WRITER_next <= AHB_WRITE_2;
            end
 
         AHB_WRITE_2:
            begin
               if (HREADY)
               begin
                  if (HRESP)
                  begin
                     visual_AHB_ERR_next[0] <= 1'b1;
                     visual_AHB_WRITER_next <= AHB_FINISH_2;
                  end
                  else if (rd_all_done)
                  begin
                     visual_AHB_WRITER_next <= AHB_CKS_WAIT;
                  end
                  else
                  begin
                     visual_HADDR_next <= HADDR + 4;
                     visual_AHB_WRITER_next <= AHB_WRITE_PREP;
                  end
               end
               else
               begin
                  visual_HTRANS_next <= 2'b0;
                  visual_AHB_WRITER_next <= AHB_WRITE_2;
               end
            end
 
         AHB_WRITE_PREP:
            begin
               if (rd_data_avail)
               begin
                  if (first_data_flag)
                  begin
                     visual_first_data_flag_next <= 1'b0;
                     visual_first_data_word_next <= rd_data;
                     visual_HTRANS_next <= 2'b10;
                     visual_AHB_WRITER_next <= AHB_WRITE_1;
                  end
                  else
                  begin
                     visual_HTRANS_next <= 2'b10;
                     visual_AHB_WRITER_next <= AHB_WRITE_1;
                  end
               end
               else
               begin
                  visual_AHB_WRITER_next <= AHB_WRITE_PREP;
               end
            end
 
         default:
            begin
               visual_AHB_WRITER_next <= AHB_SETUP;
            end
      endcase
   end
 
   always  @(posedge HCLK or negedge HRESETN)
   begin : AHB_WRITER
 
      if (HRESETN == 0)
      begin
         HTRANS <= 2'b0;
         HWRITE <= 1'b1;
         HADDR <= AHB_DST_ADDR;
         AHB_ERR <= 2'b0;
         sel_host <= 1'b0;
         PROC_SYS_RESETN <= 1'b0;
         first_data_flag <= 1'b1;
         first_data_word <= 32'b0;
         pre_addr <= 'b0;
         visual_AHB_WRITER_current <= AHB_SETUP;
      end
      else
      begin
         AHB_ERR <= visual_AHB_ERR_next;
         sel_host <= visual_sel_host_next;
         PROC_SYS_RESETN <= visual_PROC_SYS_RESETN_next;
         HWRITE <= visual_HWRITE_next;
         HADDR <= visual_HADDR_next;
         HTRANS <= visual_HTRANS_next;
         first_data_word <= visual_first_data_word_next;
         first_data_flag <= visual_first_data_flag_next;
         pre_addr <= visual_pre_addr_next;
         visual_AHB_WRITER_current <= visual_AHB_WRITER_next;
      end
   end
 
   assign HSIZE = 3'b010; // Always sending 32-bit words.
   assign HBURST = 3'b000; // Always sending single transactions, no burst operations.
   assign HWDATA = rd_data; // Passing data directly to AHB interface (AHB data word matches size of data_words from SPI_CTRL).
 
 
endmodule

