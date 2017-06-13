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
 
 
module COREBOOTSTRAP_BOOT_RESET (
                   //  input ports
                   HCLK,
                   PO_RESETN,
                   EXT_RESETN,
                   SYS_RESET_REQ,
 
                   //  output ports
                   HRESETN
                   );
 
   parameter        RST_POR_DURATION = 100;
   parameter        RST_EXTPROC_DURATION = 1000;
//  input ports
   input            HCLK;
   wire             HCLK;
   input            PO_RESETN;
   wire             PO_RESETN;
   input            EXT_RESETN;
   wire             EXT_RESETN;
   input     [0:0]  SYS_RESET_REQ;
   wire      [0:0]  SYS_RESET_REQ;
//  output ports
   output           HRESETN;
   reg              HRESETN;
//  local signals
   reg              clr_por;
   reg              rst_by_por;
   reg       [31:0] rst_count;
   wire             async_resetn;
 
 
   always
      @( posedge HCLK or negedge async_resetn )
   begin   :RESET_COUNTER
 
      if (async_resetn == 0)
      begin
         HRESETN <= 1'b0;
         rst_count <= 32'b0;
         clr_por <= 1'b0;
      end
      else
      begin
         if (HRESETN == 0)
         begin
            if (rst_by_por)
            begin
               if (rst_count == RST_POR_DURATION)
               begin
                  HRESETN <= 1'b1;
                  clr_por <= 1'b1;
               end
               else
               begin
                  rst_count <= rst_count + 1;
               end
            end
            else
            begin
               if (rst_count == RST_EXTPROC_DURATION)
               begin
                  HRESETN <= 1'b1;
                  clr_por <= 1'b1;
               end
               else
               begin
                  rst_count <= rst_count + 1;
               end
            end
         end
         else
         begin
            clr_por <= 1'b0;
         end
      end
   end
 
 
 
   always
      @( posedge HCLK or negedge PO_RESETN )
   begin   :PO_RESET_REC
 
      if (PO_RESETN == 0)
      begin
         rst_by_por <= 1'b1;
      end
      else
      begin
         if (clr_por)
         begin
            rst_by_por <= 1'b0;
         end
      end
   end
 
   assign sys_reset_reqn = !(SYS_RESET_REQ); //Inverting for active low, similar to other resets.
   assign async_resetn = PO_RESETN & EXT_RESETN & sys_reset_reqn;
 
 
endmodule

