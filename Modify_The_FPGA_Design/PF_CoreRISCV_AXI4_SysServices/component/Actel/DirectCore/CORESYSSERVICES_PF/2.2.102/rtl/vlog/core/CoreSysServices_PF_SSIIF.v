// ****************************************************************************/    
// Actel Corporation Proprietary and Confidential    
// Copyright 2010 Actel Corporation.  All rights reserved.    
//    
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN    
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED    
// IN ADVANCE IN WRITING.    
//    
// Description: CoreSysServices_PF_SSIIF
//              This is an SSI Interface macro.
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
// Notes:    
// 1.     
//    
// ****************************************************************************/    
`timescale 1 ns/10 ps    

 
module CoreSysServices_PF_SSIIF (    
                                     CLK
                                     ,RESETN
                                     // Backend Input Signals
                                     ,BKIF_REQ
                                     ,BKIF_CMD
                                     ,BKIF_INIT
                                     // Optional Backend Output Signals, 
                                     // Required for System Services IP
                                     ,BKIF_REG_WEN
                                     ,BKIF_REG_STATUS
                                     ,BKIF_STATUS_WEN
                                     ,BKIF_REG_ACK
                                     ,BKIF_SSITRANS_DONE
                                     // Signals from SSI interface
                                     ,SS_ACK
                                     ,SS_BUSY
                                     ,SS_STATUS
                                     // Signals to SSI interface
                                     ,SS_CMD
                                     ,SS_ABORT
                                     ,SS_REQ                                     
                                     );   

   //------------------------------------------------------------------------------    
   // Parameter declarations    
   //------------------------------------------------------------------------------    
   localparam SSI_IDLE       = 3'b000;
   localparam SSI_CMD_PHASE  = 3'b001;
   localparam SSI_REQ_PHASE  = 3'b010;
   localparam SSI_ACK_WAIT   = 3'b011;
   localparam SSI_RESP_PHASE = 3'b100;
   localparam SSI_RESP_WAIT  = 3'b101;

   //------------------------------------------------------------------------------    
   // Port declarations    
   //------------------------------------------------------------------------------    
    
   // -----------    
   // Inputs    
   // -----------    
   input      CLK;    
   input      RESETN;  
        
   // Signals from SSI interface
   input        BKIF_REQ;
   input [15:0] BKIF_CMD;   
   input        BKIF_INIT;

   // Signals from SSI interface
   input        SS_ACK;                // SSI::Service Request Ack
   input        SS_BUSY;               // SSI::Service Request Busy
                                        // Indicates controller is busy processing request.
   input [15:0] SS_STATUS;             // SSI::Service Request Status

   // -----------    
   // Outputs    
   // -----------    
   // Signals to SSI interface (from SSI FSM)
   output [15:0] SS_CMD;                // SSI::Service Request Command/Data
   output        SS_ABORT;              // SSI::Service Request Abort
   output        SS_REQ;                // SSI::Service Request
   // Optionals but required for System Services IP
   output        BKIF_STATUS_WEN;
   output [15:0] BKIF_REG_STATUS;
   output        BKIF_REG_ACK;
   output        BKIF_REG_WEN;
   output        BKIF_SSITRANS_DONE;   

   //------------------------------------------------------------------------------    
   // Internal Signals
   //------------------------------------------------------------------------------    
   reg [2:0]  ssi_curr_state;
   reg [2:0]  ssi_next_state;

   reg        cs_req;
   reg [15:0] cs_cmd;
   reg        cs_abort;   
   reg [15:0] cs_cmd_r;
   reg        cs_req_r;   
   reg        BKIF_STATUS_WEN;   
   reg [15:0] BKIF_REG_STATUS;
   reg [15:0] BKIF_REG_STATUS_r;
   reg        BKIF_REG_ACK;
   reg        BKIF_REG_WEN;
   reg        BKIF_SSITRANS_DONE;
   reg        BKIF_INIT_r;
   reg        SS_BUSY_r;   
   reg [15:0] SS_CMD;  
   reg        SS_ABORT;
   reg        SS_REQ;  

   wire       BKIF_INIT_pulse;
   wire       SS_BUSY_falledge;   

   //////////////////////////////////////////////////////////////////////////////   
   //                           Start-of-Code                                  //   
   //////////////////////////////////////////////////////////////////////////////   


   // --------------------------------------------------------------------------
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   //        |||||  |||||  ||||||          |||||| |||||| ||\  /||             //
   //        ||     ||       ||            ||     ||     ||\\//||             //
   //        |||||  |||||    ||     ==     ||||   |||||| || \/ ||             //
   //           ||     ||    ||            ||         || ||    ||             //
   //        |||||  |||||  ||||||          ||     |||||| ||    ||             //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   // --------------------------------------------------------------------------    

   // --------------------------------------------------------------------------
   // SSI State Machine
   // --------------------------------------------------------------------------
   always @(posedge CLK or negedge RESETN) begin
      if(RESETN == 1'b0) begin
         ssi_curr_state <= SSI_IDLE;
      end
      else begin
         ssi_curr_state <= ssi_next_state;
      end
   end

   // --------------------------------------------------------------------------
   // Request Phase: Next state and output decoder
   // --------------------------------------------------------------------------
   // The Backend signals BKIF_REG_STATUS, BKIF_REG_WEN, BKIF_REG_ACK and
   // BKIF_STATUS_WEN are optional signals, but are MUST to be used when the
   // SSIIF macro is used with CoreSysServices_PF IP.
   // BKIF_REG_STATUS - Provides the status received from the System controller
   //                    on the SS_STATUS interface.
   // BKIF_STATUS_WEN - The status received is validated with the status write
   //                    enable signal.
   //                    It is used to provide write enable to the 
   //                    CoreSysServices_PF IP for writing the APB Status register.
   // BKIF_REG_WEN    - It is used to provide write enable to the
   //                    CoreSysServices_PF IP for writing the APB register.
   // BKIF_REG_ACK    - Provides the acknowledgement received on the SSI IF on
   //                    SS_ACK signal.
   // BKIF_SSITRANS_DONE - Indicates that the SSI transaction is done on the 
   //                       SSI IF.
   // --------------------------------------------------------------------------
   // --------------------------------------------------------------------------
   always @(*) begin
      ssi_next_state       = ssi_curr_state;
      cs_cmd               = cs_cmd_r;
      cs_req               = cs_req_r;
      cs_abort             = 1'b0;
      BKIF_REG_STATUS     = BKIF_REG_STATUS_r;
      BKIF_REG_WEN        = 1'b0;
      BKIF_REG_ACK        = 1'b0;
      BKIF_STATUS_WEN     = 1'b0;
      BKIF_SSITRANS_DONE  = 1'b0;
      case(ssi_curr_state)
        SSI_IDLE: begin
           // Enable the SSI FSM
           if(BKIF_INIT_pulse) begin  
              ssi_next_state = SSI_CMD_PHASE;
           end
        end

        SSI_CMD_PHASE: begin
           // Check if the busy is low, that is,
           // check that there is no other service in progress.
           if(SS_BUSY == 1'b0 && BKIF_REQ == 1'b1) begin
              cs_cmd         = BKIF_CMD[15:0];
              ssi_next_state = SSI_ACK_WAIT;
              cs_req         = 1'b1;

           end           
        end

        SSI_ACK_WAIT: begin
           // Outputs
           // Maintain the SSI request until the ack is received 
           // from the System Controller.
           cs_req          = 1'b1;

           // Wait for acknowledgement from the System Controller
           // Upon reception of the ack, de-assert the SSI request.
           if(SS_ACK == 1'b1) begin
              ssi_next_state = SSI_RESP_PHASE;     

              // Drive request low on receiving the ack.
              cs_req         = 1'b0;

              BKIF_REG_WEN  = 1'b1;
              BKIF_REG_ACK  = 1'b1;              
           end

        end

        SSI_RESP_PHASE: begin
           // Generate the write enable to CoreSysServices IP
           // indicating that status is available.
           // Also, provide the status available on the ssi status
           // signal.
           if(SS_BUSY_falledge == 1'b1) begin
              ssi_next_state = SSI_RESP_WAIT;

              BKIF_REG_STATUS   = SS_STATUS[15:0];
              BKIF_STATUS_WEN   = 1'b1;
           end
        end

        SSI_RESP_WAIT: begin

           ssi_next_state = SSI_IDLE;

           // Outputs
           // Indicates that the SSI transaction is done.
           BKIF_SSITRANS_DONE  = 1'b1;
        end

        default: ssi_next_state = SSI_IDLE;

      endcase // case (ssi_curr_state)
   end // always @ (*)


   assign BKIF_INIT_pulse = BKIF_INIT & !BKIF_INIT_r;


   always @(posedge CLK or negedge RESETN) begin
      if(RESETN == 1'b0) begin
         cs_cmd_r          <= 'h0;
         cs_req_r          <= 1'b0;         
         SS_BUSY_r         <= 1'b0;
         BKIF_INIT_r       <= 1'b0;
         BKIF_REG_STATUS_r <= 'h0;         
      end
      else begin
         cs_cmd_r          <= cs_cmd;
         cs_req_r          <= cs_req;         
         SS_BUSY_r         <= SS_BUSY;
         BKIF_INIT_r       <= BKIF_INIT;
         BKIF_REG_STATUS_r <= BKIF_REG_STATUS;         
      end
   end

   assign SS_BUSY_falledge = SS_BUSY_r & !SS_BUSY;
   
   // --------------------------------------------------------------------------
   // SSI Interface signal generation
   // Signals are driven from SSI Interface.
   // --------------------------------------------------------------------------
   always @(posedge CLK or negedge RESETN) begin
      if(RESETN == 1'b0) begin
         SS_REQ    <= 1'b0;
         SS_CMD    <= 'h0;         
         SS_ABORT  <= 'h0;         
      end
      else begin
         SS_REQ    <= cs_req;
         SS_CMD    <= cs_cmd;
         SS_ABORT  <= cs_abort;
      end
   end


endmodule // CoreSysServices_PF_SSIIF


   
