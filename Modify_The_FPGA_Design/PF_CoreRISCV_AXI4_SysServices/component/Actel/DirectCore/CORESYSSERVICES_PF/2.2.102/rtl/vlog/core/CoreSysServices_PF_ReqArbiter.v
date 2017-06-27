// ****************************************************************************/    
// Actel Corporation Proprietary and Confidential    
// Copyright 2010 Actel Corporation.  All rights reserved.    
//    
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN    
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED    
// IN ADVANCE IN WRITING.    
//    
// Description: CoreSysServices_PF_ReqArbite - Arbiter between AMBA-FF requests
//    
// Revision Information:    
// Date            Description    
// ----            -----------------------------------------    
// 16May13         Inital. Ports and Parameters declaration    
//    
// SVN Revision Information:    
// SVN $Revision: 11146 $    
// SVN $Date: 2009-11-21 11:44:53 -0800 (Sat, 21 Nov 2009) $    
//    
// Resolved SARs    
// SAR      Date     Who   Description    
//     
// 86863  08/Feb/2017  IP  Resolved unrecognized service issue in ucvalid_cmd
//                         logic.  
//                         ca_unrecog_cmd not required.
//
// Notes:    
// 1. v2.1.6 08/Feb/2017  ca_unrecog_cmd not used to move the arbitration FSM
//                        to Idle.
//                        sysserv_req_inprog logic changed and not dependent on
//                        ca_unrecog_cmd since the service request needs to go
//                        to System Controller.
//                        
// ****************************************************************************/    
`timescale 1 ns/10 ps    
 
 
module CoreSysServices_PF_ReqArbiter (    
                                          ,CLK
                                          ,RESETN
                                          // Request from AMBA interface
                                          ,ARB_SYSSERV_REQ
                                          ,ARB_FFNONTIMED_REQ
                                          ,ARB_FFTIMED_REQ  
                                          ,ARB_SYSSERV_BUSY
                                          ,ARB_FF_BUSY  
                                          ,ARB_SYSSERVREQ_INPROG
                                          ,ARB_FFNONTIMEDREQ_INPROG
                                          ,ARB_FFTIMEDREQ_INPROG
                                          // Request from non-AMBA FF interface
                                          // SAR#86863 - Commented
                                          //,ca_unrecog_cmd 
                                          );
   


   //------------------------------------------------------------------------------    
   // Parameter declarations    
   //------------------------------------------------------------------------------    
   parameter FAMILY                 = 26;
   parameter SNSERVICE              = 0;
   parameter UCSERVICE              = 0;
   parameter DVSERVICE              = 0;
   parameter DCSERVICE              = 0;
   parameter RDDIGEST               = 0;
   parameter QUERYSECSERVICE        = 0; 
   parameter RDDEBUGINFO            = 0;
   parameter AUTHBITSTREAM          = 0;
   parameter AUTHIAPIMG             = 0;
   
   parameter DIGSIGSERVICE          = 0;
   parameter SECNVMWR               = 0;
   parameter SECNVMRD               = 0;
   parameter PUFEMSERVICE           = 0;
   parameter NONCESERVICE           = 0;
    
   parameter FFSERVICE              = 0;
   parameter DIGESTCHECK            = 0;
   parameter IAPSERVICE             = 0;
   parameter IAPAUTOUPD             = 0;

   // Local parameters - FSM   
   localparam ARB_IDLE_ST           = 3'b000;
   localparam ARB_FFNONTIMED_ST     = 3'b001;
   localparam ARB_FFTIMED_ST        = 3'b010;
   localparam ARB_SYSSERV_ST        = 3'b011;
   localparam ARB_DONE_ST           = 3'b100;

   //------------------------------------------------------------------------------    
   // Port declarations    
   //------------------------------------------------------------------------------    
    
   // -----------    
   // Inputs    
   // -----------    
   input      CLK;    
   input      RESETN;  

   input      ARB_SYSSERV_BUSY;   
   input      ARB_FF_BUSY;
   input      ARB_SYSSERV_REQ;
   input      ARB_FFNONTIMED_REQ;
   input      ARB_FFTIMED_REQ;
   //input      ca_unrecog_cmd;
   
   // -----------   
   // Outputs   
   // -----------   
   output     ARB_SYSSERVREQ_INPROG;
   output     ARB_FFNONTIMEDREQ_INPROG;
   output     ARB_FFTIMEDREQ_INPROG;


   //------------------------------------------------------------------------------    
   // Internal Signals
   //------------------------------------------------------------------------------    
   reg [2:0]  arb_curr_state;
   reg [2:0]  arb_next_state;

   reg        sysserv_req_inprog;
   reg        ffnontimed_req_inprog;
   reg        fftimed_req_inprog;
   reg        ARB_SYSSERV_BUSY_r;
   reg        ARB_FF_BUSY_r;
   reg        ARB_SYSSERVREQ_INPROG;
   reg        ARB_FFNONTIMEDREQ_INPROG;
   reg        ARB_FFTIMEDREQ_INPROG;

   //////////////////////////////////////////////////////////////////////////////   
   //                           Start-of-Code                                  //   
   //////////////////////////////////////////////////////////////////////////////   

   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         arb_curr_state <= ARB_IDLE_ST;
      end
      //else if(ca_unrecog_cmd) begin
      //   arb_curr_state <= ARB_IDLE_ST;
      //end
      else begin
         arb_curr_state <= arb_next_state;         
      end
   end

   always @(*) begin
      sysserv_req_inprog    = 1'b0;
      ffnontimed_req_inprog = 1'b0;
      fftimed_req_inprog    = 1'b0;
      arb_next_state        = arb_curr_state;
      
      case(arb_curr_state)
        ARB_IDLE_ST: begin
           if(!ARB_SYSSERV_BUSY && !ARB_FFTIMEDREQ_INPROG && !ARB_FFNONTIMEDREQ_INPROG && ARB_FFNONTIMED_REQ) begin
              arb_next_state        = ARB_FFNONTIMED_ST;
              ffnontimed_req_inprog = 1'b1;
              fftimed_req_inprog    = 1'b0;
           end
           else if(!ARB_SYSSERV_BUSY && !ARB_FFTIMEDREQ_INPROG && !ARB_FFNONTIMEDREQ_INPROG && ARB_FFTIMED_REQ) begin
              arb_next_state        = ARB_FFTIMED_ST;
              ffnontimed_req_inprog = 1'b0;
              fftimed_req_inprog    = 1'b1;
           end
           else if(!ARB_SYSSERV_BUSY && !ARB_FFTIMEDREQ_INPROG && !ARB_FFNONTIMEDREQ_INPROG && ARB_SYSSERV_REQ) begin
              arb_next_state     = ARB_SYSSERV_ST;
              //sysserv_req_inprog = 1'b1 & !ca_unrecog_cmd;
              sysserv_req_inprog = 1'b1;
           end
        end

        ARB_FFNONTIMED_ST: begin
           sysserv_req_inprog    = 1'b0;
           ffnontimed_req_inprog = 1'b1;           

           if(!ARB_FF_BUSY && ARB_FF_BUSY_r) begin
              arb_next_state = ARB_DONE_ST;
           end
        end

        ARB_FFTIMED_ST: begin
           sysserv_req_inprog = 1'b0;
           fftimed_req_inprog = 1'b1;           

           if(!ARB_FF_BUSY && ARB_FF_BUSY_r) begin
              arb_next_state = ARB_DONE_ST;
           end
        end

        ARB_SYSSERV_ST: begin
           sysserv_req_inprog    = 1'b1;
           ffnontimed_req_inprog = 1'b0;
           fftimed_req_inprog    = 1'b0;

           if(!ARB_SYSSERV_BUSY && ARB_SYSSERV_BUSY_r) begin
              arb_next_state = ARB_DONE_ST;
           end
        end        
        
        ARB_DONE_ST: begin
           arb_next_state = ARB_IDLE_ST;
        end

        default: arb_next_state = ARB_IDLE_ST;
      endcase
   end

   // Registered signals
   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         ARB_SYSSERV_BUSY_r <= 1'b0;
         ARB_FF_BUSY_r      <= 1'b0;
      end
      else begin
         ARB_SYSSERV_BUSY_r <= ARB_SYSSERV_BUSY;
         ARB_FF_BUSY_r      <= ARB_FF_BUSY;
      end
   end

   // Registered grant outputs
   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         ARB_SYSSERVREQ_INPROG    <= 1'b0;
         ARB_FFNONTIMEDREQ_INPROG <= 1'b0;
         ARB_FFTIMEDREQ_INPROG    <= 1'b0;
      end
      else begin
         ARB_SYSSERVREQ_INPROG    <= sysserv_req_inprog;
         ARB_FFNONTIMEDREQ_INPROG <= ffnontimed_req_inprog;
         ARB_FFTIMEDREQ_INPROG    <= fftimed_req_inprog;
      end
   end

endmodule // CoreSysServices_PF_ReqArbiter



