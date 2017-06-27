// ****************************************************************************/    
// Actel Corporation Proprietary and Confidential    
// Copyright 2010 Actel Corporation.  All rights reserved.    
//    
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN    
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED    
// IN ADVANCE IN WRITING.    
//    
// Description: MBXIF
//              This is Mailbox Interface macro.
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

 
module CoreSysServices_PF_MBXIF (    
                                     CLK
                                     ,RESETN
                                     // From Backend Signals
                                     ,BKIF_ABORT
                                     ,BKIF_MBXWRREQ_DONE
                                     ,BKIF_MBXWDATA_NXTREQ
                                     ,BKIF_MBXRDATA_NXTREQ
                                     ,BKIF_MBXRDREQ_DONE
                                     ,BKIF_MBXWR_INIT
                                     ,BKIF_MBXRD_INIT
                                     // Optional Backend Output Signals, 
                                     // Required for System Services IP
                                     // For Mailbox  --
                                     // From backend
                                     ,BKIF_MBXWRADDR
                                     ,BKIF_MBXWDATA
                                     ,BKIF_MBXRDADDR                  
                                     // To backend
                                     ,BKIF_HOLD_READY
                                     ,BKIF_MBX_REN
                                     ,BKIF_MBX_WEN
                                     ,BKIF_MBXRDATA
                                     ,BKIF_MBXECC
                                     ,BKIF_MBXWDATA_CLRREQ
                                     ,BKIF_MBXRDATA_CLRREQ
                                     ,BKIF_MBXWR_DONE
                                     ,BKIF_MBXRD_DONE                  
                                     // Signals to MBX interface
                                     ,MBX_WRITE
                                     ,MBX_READ
                                     ,MBX_ADDR
                                     ,MBX_WDATA
                                     // Signals from MBX interface
                                     ,MBX_RDATA
                                     ,MBX_ECC
                                     );
   
   //------------------------------------------------------------------------------    
   // Parameter declarations    
   //------------------------------------------------------------------------------    
   localparam MBX_IDLE          = 4'b0000;
   localparam MBXWR_LD_PHASE    = 4'b0001;
   localparam MBXWR_PHASE       = 4'b0010;
   localparam MBXWR_DONE_PHASE  = 4'b0011;
   localparam MBXRD_LD_PHASE    = 4'b0100;
   localparam MBXRD_PHASE       = 4'b0101;
   localparam MBXRD_WAIT_PHASE1 = 4'b0110;
   localparam MBXRD_WAIT_PHASE2 = 4'b0111;
   localparam MBXRD_WAIT_PHASE3 = 4'b1000;
   localparam MBXRD_WAIT_PHASE4 = 4'b1001;
   localparam MBXRD_DONEWAIT_PHASE  = 4'b1010;   
   localparam MBXRD_DONE_PHASE  = 4'b1011;

   //------------------------------------------------------------------------------    
   // Port declarations    
   //------------------------------------------------------------------------------    
    
   // -----------    
   // Inputs    
   // -----------    
   input         CLK;    
   input         RESETN;  
        
   // Backend Signals (Must)
   input         BKIF_MBXWR_INIT;        // Initiate write request 
   input         BKIF_MBXRD_INIT;        // Initiate read request   
   input         BKIF_ABORT;             // Abort Mailbox transaction
   input         BKIF_MBXWRREQ_DONE;     // Input to indicate that all the write requests are done
   input         BKIF_MBXWDATA_NXTREQ;   // Request for next write
   input         BKIF_MBXRDATA_NXTREQ;   // Request for next read    
   input         BKIF_MBXRDREQ_DONE;     // Input to indicate that all the read requests are done   
   input [8:0]   BKIF_MBXWRADDR;         // Mailbox write address
   input [8:0]   BKIF_MBXRDADDR;         // Mailbox read address
   input [31:0]  BKIF_MBXWDATA;          // Mailbox write data
   
   // Inputs from MBX interface
   input [31:0]  MBX_RDATA;              // Mailbox read data   
   input [1:0]   MBX_ECC;                // Mailbox ECC
   
   // -----------    
   // Outputs    
   // -----------    
   // Signals to MBX interface
   output        MBX_WRITE;              // Mailbox write
   output        MBX_READ;               // Mailbox read
   output [8:0]  MBX_ADDR;               // Mailbox address
   output [31:0] MBX_WDATA;              // Mailbox write data
   
   // Backend Output Signals
   output        BKIF_MBXWDATA_CLRREQ;   // Mailbox write request clear
   output        BKIF_MBXRDATA_CLRREQ;   // Mailbox read request clear //ca_clrmbxrdata_upd
   output        BKIF_MBXWR_DONE;        // Mailbox write transactions complete
   output        BKIF_MBXRD_DONE;        // Mailbox read transactions complete   

   // Optionals but required for System Services IP
   output        BKIF_HOLD_READY;        // Hold ready low //mbx_hold_pready
   output        BKIF_MBX_REN;           // Read enable to read APB registers
   output        BKIF_MBX_WEN;           // Write enable to write APB registers

   // Must signals
   output [31:0] BKIF_MBXRDATA;          // Mailbox read data to backend registers //ca_reg_mbxrdata
   output [1:0]  BKIF_MBXECC;            // Mailbox ecc to backend registers //ca_reg_mbxecc   

   //------------------------------------------------------------------------------    
   // Internal Signals
   //------------------------------------------------------------------------------    
   reg [3:0]  mbx_curr_state;
   reg [3:0]  mbx_next_state;
   reg        MBX_WRITE;     
   reg        MBX_READ;      
   reg [8:0]  MBX_ADDR;      
   reg [31:0] MBX_WDATA;     
   reg        cm_write; 
   reg        cm_read;  
   reg [8:0]  cm_addr;  
   reg [8:0]  cm_addr_r;
   reg [31:0] cm_wdata; 
   reg        mbx_wrhold_ready;
   reg        mbx_rdhold_ready;  
   reg        mbx_wrinprog;
   reg        mbx_rdinprog;
   reg        mbx_ren;
   reg        mbx_wen;
   reg        mbxwdata_clrreq;
   reg        mbxrdata_clrreq;   
   reg        mbxwr_active_r;
   reg        mbxrd_active_r;
   reg [31:0] BKIF_MBXRDATA; 
   reg [1:0]  BKIF_MBXECC;   
   reg        BKIF_RDHOLD_READY;
   reg        BKIF_WRHOLD_READY;
   reg        BKIF_MBXWDATA_CLRREQ;
   reg        BKIF_MBXRDATA_CLRREQ;
   reg        BKIF_MBXWR_DONE;
   reg        BKIF_MBXRD_DONE;
   reg        BKIF_MBX_REN;
   reg        BKIF_MBX_WEN;   
   reg        BKIF_MBXWDATA_NXTREQ_r;
   reg        BKIF_MBXRDATA_NXTREQ_r;   

   wire       BKIF_HOLD_READY;
   wire       BKIF_MBXWR_INIT_pedge;
   wire       BKIF_MBXRD_INIT_pedge;
   wire       BKIF_MBXWDATA_NXTREQ_pedge;
   wire       BKIF_MBXRDATA_NXTREQ_pedge;

   /////////////////////////////////////////////////////////////////////////////   
   //                           Start-of-Code                                 //   
   /////////////////////////////////////////////////////////////////////////////   

   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   //        ||\  /|| ||||| |\  //            |||||| |||||| ||\  /||          //
   //        ||\\//|| || ||  \\//             ||     ||     ||\\//||          //
   //        || \/ || |||||   //        ==    ||||   |||||| || \/ ||          //
   //        ||    || || ||  //\\             ||         || ||    ||          //
   //        ||    || ||||| //  \\            ||     |||||| ||    ||          //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////

   // ==================================================================
   // Mailbox State Machine
   // This State Machine performs transactions to/from the Mailbox 
   // Interface
   // ==================================================================
   always @(posedge CLK or negedge RESETN) begin
      if(RESETN == 1'b0) begin
         mbx_curr_state <= MBX_IDLE;
      end
      else begin
         mbx_curr_state <= mbx_next_state;
      end
   end

   // ==================================================================
   // Main State Machine: Next state and output decoder
   // ==================================================================
   always @(*) begin
      mbx_next_state   = mbx_curr_state;
      BKIF_MBXWR_DONE  = 1'b0;
      BKIF_MBXRD_DONE  = 1'b0;
      BKIF_MBXRDATA    = 'h0;  
      BKIF_MBXECC      = 'h0;  

      cm_write         = 1'b0;
      cm_read          = 1'b0;
      cm_addr          = cm_addr_r;
      cm_wdata         = 'h0;

      mbx_wrhold_ready = 1'b0;
      mbx_rdhold_ready = 1'b0;
      mbxwdata_clrreq  = 1'b0;
      mbxrdata_clrreq  = 1'b0;
      mbx_ren          = 1'b0;
      mbx_wen          = 1'b0;
      mbx_wrinprog     = 1'b0;
      mbx_rdinprog     = 1'b0;
      
      case(mbx_curr_state)
        // Initiate write or read mailbox transaction
        // on receiving init from the Controller.
        MBX_IDLE: begin
           mbx_wrinprog      = 1'b0;

           mbx_wrhold_ready = 1'b1;
           mbx_rdhold_ready = 1'b1;
           
           if(BKIF_MBXWR_INIT_pedge == 1'b1) begin
              mbx_next_state = MBXWR_LD_PHASE;
           end
           else if(BKIF_MBXRD_INIT_pedge == 1'b1) begin
              mbx_next_state   = MBXRD_LD_PHASE;
              mbx_rdinprog     = 1'b1;
              mbx_rdhold_ready = 1'b1;
           end
        end

        // Prepare for write load 
        MBXWR_LD_PHASE: begin
           mbx_next_state = MBXWR_PHASE; 

           // Output
           mbx_wrhold_ready  = 1'b1;
           mbx_wrinprog      = 1'b1;
           
        end

        MBXWR_PHASE: begin  
           mbx_wrinprog      = 1'b1;                   

           // Move to write done phase when all the
           // mailbox writes are done from the controller
           // BKIF_MBXWRREQ_DONE is generated from the
           // controller when the number of writes configured in
           // mailbox write count APB register matches the number of
           // actual mailbox writes performed.
           if(BKIF_MBXWRREQ_DONE) begin
              mbx_next_state   = MBXWR_DONE_PHASE; 

              // Output
              cm_write         = 1'b0;
              cm_addr          = BKIF_MBXWRADDR;
              cm_wdata         = 'h0;

              mbxwdata_clrreq  = 1'b0;
              mbx_wrhold_ready = 1'b0;
           end
           // For Service with MBX write issue
           // Once data is written in MBX_WDATA APB register, 
           // it has to be updated on the Mailbox interface 
           // until all the writes are complete.
           // BKIF_MBXWDATA_NXTREQ indicates that the write 
           // is initiated from the backend.
           // Upon receiving BKIF_MBXWDATA_NXTREQ, the mailbox 
           // interface's write control and data information is 
           // sent over the mailbox interface.
           // Also, mbxwdata_clrreq is asserted and output to the
           // controller (backend) which in turn de-asserts the 
           // BKIF_MBXWDATA_NXTREQ signal. 
           // This works like valid-ready handshake mechanism 
           // between the mailbox and the backend controller.
           //else if(BKIF_MBXWDATA_NXTREQ_pedge) begin
           else if(BKIF_MBXWDATA_NXTREQ && !BKIF_MBXWDATA_CLRREQ) begin
              // Output
              cm_write         = 1'b1;
              cm_addr          = BKIF_MBXWRADDR;
              cm_wdata         = BKIF_MBXWDATA; 

              mbxwdata_clrreq  = 1'b1;
              mbx_wrhold_ready = 1'b0;
              mbx_wen          = 1'b1;              
           end
           else begin
              // Output
              cm_write         = 1'b0;
              cm_addr          = cm_addr_r;
              cm_wdata         = 'h0;

              mbxwdata_clrreq  = 1'b0;
              mbx_wrhold_ready = 1'b1;
           end
        end

        // Indicates that all the write transactions are done and 
        // it moves to the idle state.
        MBXWR_DONE_PHASE: begin
           mbx_next_state   = MBX_IDLE;
           mbx_wrhold_ready = 1'b0; 
           // Output
           BKIF_MBXWR_DONE  = 1'b1;
           mbx_wrinprog     = 1'b1;
        end

        // Prepare for read load 
        MBXRD_LD_PHASE: begin

           mbx_next_state   = MBXRD_PHASE; 
           mbx_rdinprog     = 1'b1;

           // Output
           mbx_rdhold_ready = 1'b1;
        end

        // In this state, the mailbox read is issued along 
        // with the mailbox address.
        MBXRD_PHASE: begin
           mbx_next_state   = MBXRD_WAIT_PHASE1;
           
           // Output
           cm_read          = 1'b1;
           cm_addr          = BKIF_MBXRDADDR;

           mbx_rdinprog     = 1'b1;
           mbx_rdhold_ready = 1'b1;
           mbx_ren          = 1'b1;
        end

        // After the issual of mailbox read, it takes
        // 4 cycles for the mailbox interface to fetch 
        // the read data.
        MBXRD_WAIT_PHASE1: begin
           mbx_next_state   = MBXRD_WAIT_PHASE2; 

           // Output
           mbx_rdhold_ready = 1'b1;           
           mbx_rdinprog     = 1'b1;
        end

        MBXRD_WAIT_PHASE2: begin
           mbx_next_state   = MBXRD_WAIT_PHASE3; 

           // Output
           mbx_rdhold_ready = 1'b1;           
           mbx_rdinprog     = 1'b1;
           
        end

        MBXRD_WAIT_PHASE3: begin
           mbx_next_state   = MBXRD_WAIT_PHASE4; 

           // Output
           mbx_rdhold_ready = 1'b1;
           mbx_rdinprog     = 1'b1;
        end

        // The mailbox read data is available in this state.
        MBXRD_WAIT_PHASE4: begin
           mbx_rdinprog = 1'b1;
           
           // Move to read done phase when all the
           // mailbox reads are done from the controller
           // The mailbox read data is read and passed to 
           // the backend interface. During this time the 
           // mbxrdata_clrreq is asserted. It is de-asserted 
           // only when the backend controller reads the read data.
           // The backend controller then asserts the BKIF_MBXRDATA_NXTREQ
           // to indicate that it has read the data.
           // Based on how many reads needs to be done, the FSM 
           // initiates subsequent read to the mailbox interface.
           // BKIF_MBXRDREQ_DONE is generated from the
           // controller when the number of reads configured in
           // mailbox read count APB register matches the number of
           // actual mailbox reads performed.
           mbxrdata_clrreq     = 1'b1;
           if(BKIF_MBXRDREQ_DONE) begin
              if(!BKIF_MBXRDATA_NXTREQ && BKIF_MBXRDATA_NXTREQ_r) begin
                 mbx_next_state   = MBXRD_DONEWAIT_PHASE;

                 // Output
                 mbxrdata_clrreq  = 1'b0;
                 mbx_rdhold_ready = 1'b1;
              end

              // Output
              BKIF_MBXRDATA       = MBX_RDATA;
              BKIF_MBXECC         = MBX_ECC;
              
           end
           else begin
              mbxrdata_clrreq     = 1'b1;
              mbx_rdhold_ready    = 1'b0;
              if(!BKIF_MBXRDATA_NXTREQ && BKIF_MBXRDATA_NXTREQ_r) begin
                 mbx_next_state   = MBXRD_PHASE;
                 // Output
                 mbxrdata_clrreq  = 1'b0;
                 mbx_rdhold_ready = 1'b1;
              end
              // Output
              BKIF_MBXRDATA       = MBX_RDATA;
              BKIF_MBXECC         = MBX_ECC;
           end
        end
        
        MBXRD_DONEWAIT_PHASE: begin
           mbx_next_state   = MBXRD_DONE_PHASE;
           
           // Output
           BKIF_MBXRD_DONE  = 1'b1;
           mbx_rdhold_ready = 1'b1;
           mbx_rdinprog     = 1'b1;
        end
        
        // This state indicates that all the mailbox 
        // reads are performed.
        MBXRD_DONE_PHASE: begin
           mbx_next_state   = MBX_IDLE;

           // Output
           mbx_rdhold_ready = 1'b0;
           mbx_rdinprog     = 1'b1;
        end

        default : mbx_next_state = MBX_IDLE;
        
      endcase // case (mbx_curr_state)      
   end // always @ (*)

   // ==================================================================
   // Registered Signals   
   // ==================================================================
   always @(posedge CLK or negedge RESETN) begin
      if(RESETN == 1'b0) begin
         cm_addr_r              <= 'h0;
         BKIF_MBX_REN           <= 1'b0;
         BKIF_MBX_WEN           <= 1'b0;
         BKIF_MBXWDATA_NXTREQ_r <= 1'b0;
         BKIF_MBXRDATA_NXTREQ_r <= 1'b0;         
         BKIF_MBXRDATA_CLRREQ   <= 1'b0;         
         BKIF_MBXWDATA_CLRREQ   <= 1'b0;
         BKIF_RDHOLD_READY      <= 1'b1;         
      end
      else begin
         cm_addr_r              <= cm_addr;
         BKIF_MBX_REN           <= mbx_ren;
         BKIF_MBX_WEN           <= mbx_wen;   
         BKIF_MBXWDATA_NXTREQ_r <= BKIF_MBXWDATA_NXTREQ;      
         BKIF_MBXRDATA_NXTREQ_r <= BKIF_MBXRDATA_NXTREQ;  
         BKIF_MBXRDATA_CLRREQ   <= mbxrdata_clrreq;
         BKIF_MBXWDATA_CLRREQ   <= mbxwdata_clrreq;
         BKIF_RDHOLD_READY      <= mbx_rdhold_ready;
         
      end
   end

   // ==================================================================
   // Posedge pulse on backend write data request.
   // ==================================================================
   assign BKIF_MBXWDATA_NXTREQ_pedge = BKIF_MBXWDATA_NXTREQ & 
                                       !BKIF_MBXWDATA_NXTREQ_r;
   // ==================================================================
   // Posedge pulse on backend read data request.
   // ==================================================================
   assign BKIF_MBXRDATA_NXTREQ_pedge = BKIF_MBXRDATA_NXTREQ & 
                                       !BKIF_MBXRDATA_NXTREQ_r;
   // ==================================================================
   // Ready signal generation to useful to control the access to 
   // registers through the APB interface.
   // ==================================================================
   assign BKIF_HOLD_READY = mbx_rdinprog ? BKIF_RDHOLD_READY : 
                            (mbx_wrinprog ? !mbx_wrhold_ready : 1'b0);

   // ==================================================================
   // This indicates that whenever the write request 
   // to the mailbox interface is placed, the ready is held low.
   // When the mailbox write is done (indicated by BKIF_MBXWDATA_CLRREQ), 
   // the ready is asserted back. 
   // This allows for further write access to the registers through 
   // APB interface in the backend controller.
   // This is flow control mechanism.
   // ==================================================================
   always @(posedge CLK or negedge RESETN) begin
      if(RESETN == 1'b0) begin
         BKIF_WRHOLD_READY <= 1'b0;         
      end
      else begin
         if(BKIF_MBXWDATA_CLRREQ) begin
            BKIF_WRHOLD_READY   <= 1'b0;            
         end
         else if(BKIF_MBXWDATA_NXTREQ_pedge) begin
            BKIF_WRHOLD_READY   <= 1'b1;            
         end
      end
   end
   
   // ==================================================================
   // Registered signals
   // ==================================================================
   always @(posedge CLK or negedge RESETN) begin
      if(RESETN == 1'b0) begin
         mbxwr_active_r     <= 1'b0;
         mbxrd_active_r     <= 1'b0;
      end
      else begin
         mbxwr_active_r     <= BKIF_MBXWR_INIT;
         mbxrd_active_r     <= BKIF_MBXRD_INIT;
      end
   end
   
   assign BKIF_MBXWR_INIT_pedge = BKIF_MBXWR_INIT & !mbxwr_active_r;
   assign BKIF_MBXRD_INIT_pedge = BKIF_MBXRD_INIT & !mbxrd_active_r;

   // ==================================================================
   // Registered Mailbox Interface Signals
   // These are the mailbox write, read control and data signals
   // to the mailbox interface.
   // ==================================================================
   always @(posedge CLK or negedge RESETN) begin
      if(RESETN == 1'b0) begin
         MBX_WRITE  <= 1'b0;
         MBX_READ   <= 1'b0;
         MBX_ADDR   <= 'h0;         
         MBX_WDATA  <= 'h0;         
      end
      else begin
         MBX_WRITE  <= cm_write;
         MBX_READ   <= cm_read;
         MBX_ADDR   <= cm_addr;
         MBX_WDATA  <= cm_wdata;
      end
   end



endmodule // CoreSysServices_PF_MBXIF



   
