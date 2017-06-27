// ****************************************************************************/    
// Actel Corporation Proprietary and Confidential    
// Copyright 2010 Actel Corporation.  All rights reserved.    
//    
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN    
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED    
// IN ADVANCE IN WRITING.    
//    
// Description: CoreSysServices_PF_Ctrl
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
// SAR      Date       Who Description    
//     
// 85797  17/Jan/2017  IP  Mailbox write/read should be incremented by '1'
//                         instead of '4'.
// 86863  08/Feb/2017  IP  Resolved unrecognized service issue in ucvalid_cmd
//                         logic.  
//                         Also, ca_unrecognized logic generation is based on 
//                         invalid_cmd signal
//                         Logic for invalid_cmd generation added.
// v2.2   15/Mar/2017  IP  Removed support for Services 24h and 25h.
//        23/Mar/2017  IP  Logic for invalid_cmd generation updated
//                         accordingly.
// 
// 
// Notes:    
// 
// 
// ****************************************************************************/    
`timescale 1 ns/10 ps    
 
 
module CoreSysServices_PF_Ctrl (    
                                    ,CLK
                                    ,RESETN
                                    // Signals from APBS register block
                                    ,ac_reg_cmd
                                    ,ac_reg_req
                                    ,ac_reg_wcnt
                                    ,ac_reg_rcnt
                                    ,ac_reg_mbxwdata
                                    ,ac_mbxwdata_upd
                                    ,ac_mbxrdata_upd
                                    ,ac_calc_mbxwraddr
                                    ,ac_calc_mbxrdaddr
                                    ,ac_sysserv_busy
                                    ,ac_status_rddone
                                    // Signals to APBS register block
                                    ,ca_reg_busy
                                    ,ca_reg_ack
                                    ,ca_reg_status
                                    ,ca_status_wen
                                    ,ca_reg_wen
                                    ,ca_reg_ren
                                    ,ca_main_reg_wen
                                    ,ca_reg_mbxrdata
                                    ,ca_reg_mbxecc
                                    ,ca_hold_pready
                                    ,ca_clrmbxwdata_upd
                                    ,ca_clrmbxrdata_upd
                                    ,ca_unrecog_cmd
                                    ,ca_mbx_ren
                                    ,ca_sysserv_inprog
                                    ,ca_ff_inprog
                                    ,ca_ss_busy
                                    // F*F Signals
                                    ,ff_timed_entry
                                    ,ff_nontimed_entry
                                    ,ff_exit_status
                                    ,ff_init_req
                                    // To USer Signals
                                    ,ss_busy
                                    ,ss_status // Added: for SAR#84774
                                    // Added for SVG support --
                                    ,ss_req    
                                    ,mbx_write
                                    ,mbx_read
                                    ,mbx_ecc
                                    //-------------------------
                                    ,sysserv_init_req
                                    ,ff_osc2mhz_on
				                    ,ff_us_restore
                                    );
   


   //------------------------------------------------------------------------------    
   // Parameter declarations    
   //------------------------------------------------------------------------------    
   parameter FAMILY                 = 19;
   parameter SNSERVICE              = 0;    
   parameter UCSERVICE              = 0;
   parameter DVSERVICE              = 0;
   parameter DCSERVICE              = 0;
   parameter RDDIGEST               = 0;
   parameter QUERYSECSERVICE        = 0; 
   parameter RDDEBUGINFO            = 0;
   parameter EXECUICSCRIPT          = 0;  
   parameter UICAUTHBITSTREAM       = 0;  
   parameter AUTHBITSTREAM          = 0;
   parameter AUTHIAPIMG             = 0;
   
   parameter DIGSIGSERVICE          = 0;
   parameter SECNVMWR               = 0;
   parameter SECNVMRD               = 0;
   parameter PUFEMSERVICE           = 0;
   parameter NONCESERVICE           = 0;
    
   parameter FFSERVICE              = 0;
   parameter FF_TIMEOUT_VAL         = 'ha;
   parameter FF_MAILBOX_ADDR        = 'h8;
   
   parameter DIGESTCHECK            = 0;
   parameter IAPSERVICE             = 0;
   parameter IAPAUTOUPD             = 0;
   parameter OSC_2MHZ_ON            = 0;
   
   // State Machine parameter definition
   localparam C_IDLE                = 3'b000;
   localparam C_MBXWR_PHASE         = 3'b001;
   localparam C_SSIREQ_PHASE        = 3'b010;
   localparam C_MBXRDWAIT_PHASE     = 3'b011;
   localparam C_MBXRD_PHASE         = 3'b100;
   localparam C_STATUS_PHASE        = 3'b101;
   
   //------------------------------------------------------------------------------    
   // Port declarations    
   //------------------------------------------------------------------------------    
    
   // -----------    
   // Inputs    
   // -----------    
   input      CLK;    
   input      RESETN;  
        
   // From APB Slave register block
   input [15:0] ac_reg_cmd;            // APBReg->Controller:: Command
   input [3:0 ] ac_reg_req;            // APBReg->Controller:: Request
   input [8:0]  ac_reg_wcnt;           // APBReg->Controller:: Write counter
   input [8:0]  ac_reg_rcnt;           // APBReg->Controller:: Read Counter
   input [31:0] ac_reg_mbxwdata;       // APBReg->Controller:: MBX Write Data
   input        ac_mbxwdata_upd;       // APBReg->Controller:: MBX Write Data register update
   input        ac_mbxrdata_upd;       // APBReg->Controller:: MBX Read Data register update
   input [31:0] ac_calc_mbxwraddr;     // APBReg->Controller:: MBX Write calculated address
   input [31:0] ac_calc_mbxrdaddr;     // APBReg->Controller:: MBX Read calculated address
   input        ac_sysserv_busy;       // APBReg->Controller:: System service busy from AMBA IF
   input        ac_status_rddone;
   // F*F Interface 
   input        ff_timed_entry;   
   input        ff_nontimed_entry;
   
   // -----------    
   // Outputs    
   // -----------    
   // From APB Slave register block
   output        ca_reg_busy;           // Controller->APBReg::Service Request busy.                                        
   output        ca_reg_ack;            // Controller->APBReg::Service Request Ack
   output [15:0] ca_reg_status;         // Controller->APBReg::Service Request Status
   output        ca_status_wen;         // Controller->APBReg::Service Request Status Write Enable
   output        ca_reg_wen;            // Controller->APBReg::Register Write Enable
   output        ca_reg_ren;            // Controller->APBReg::Register Read Enable
   output        ca_clrmbxwdata_upd;    // Controller->APBReg::MBX_WDATA update clear
   output        ca_clrmbxrdata_upd;    // Controller->APBReg::MBX_RDATA update clear
   output        ca_unrecog_cmd;        // Controller->APBReg::Unrecognized Command
   output        ca_mbx_ren;   
   output [31:0] ca_reg_mbxrdata;
   output [1:0]  ca_reg_mbxecc;   
   output        ca_hold_pready;        // Controller->APBReg::Hold PREADY when Service is in progress.
   output        ca_main_reg_wen;       // Controller->APBReg::Register Write Enable from main FSM
   output        ca_sysserv_inprog;   
   output        ca_ff_inprog;
   output        ca_ss_busy;   
   output [15:0] ff_exit_status;
   output        ff_init_req;  
   output        ss_busy;
   output        ss_req;   
   output        mbx_write;   
   output        mbx_read;
   output [1:0]  mbx_ecc;   
   output [15:0] ss_status;
   output        sysserv_init_req;
   output        ff_osc2mhz_on;
   output        ff_us_restore;
   
   //------------------------------------------------------------------------------    
   // Internal Signals
   //------------------------------------------------------------------------------    
   reg [2:0]   main_curr_state;
   reg [2:0]   main_next_state;
                            
   reg         ssireq_active;   
   reg         mbxwr_active;
   reg         mbxrd_active;
   reg         mbxwr_active_r;
   reg         mbxrd_active_r;
   reg [9:0]   mbxwr_cnt;
   reg [9:0]   mbxrd_cnt;
   reg         do_mbxwr;
   reg         do_mbxrd;
   reg         ucvalid_cmd;   
   reg         invalid_cmd;   
   reg         invalid_cmd_r;   
   reg [31:0]  burstlen_mbxrd;
   reg [31:0]  burstlen_mbxwr;
   reg         hold_pready;
   reg         ca_reg_busy;
   reg         ca_main_reg_wen;
   reg         ca_main_reg_ren;
   reg         ca_unrecog_cmd;
   reg         ac_mbxwdata_upd_r;
   reg         ac_mbxrdata_upd_r;
   reg         ucvalid_cmd_r;
   reg [31:0]  calc_mbxwraddr;
   reg [31:0]  calc_mbxrdaddr;
   reg         usr_ff_inprog;
   reg         usr_sysserv_inprog;   
   reg         ffnontimed_req_r;
   reg         fftimed_req_r;
   reg [15:0]  ff_exit_status;
   reg         ff_init_req;
   reg         ss_busy;
   reg         ss_req;
   reg         mbx_write;
   reg         mbx_read;
   reg [1:0]   mbx_ecc;   
   reg [15:0]  ss_status;
   reg         sysserv_init_req;
   reg         serv_req;
   reg         ff_usr_busy;
   reg         ff_mbxwdata_upd;
   reg         ff_osc2mhz_on;
   reg         ff_us_restore;

   wire        ssi_trans_done;
   wire        ssi_trans_done_pulse;   
   wire        ac_mbxwdata_riseupd;
   wire        ac_mbxrdata_riseupd;
   wire        ac_mbxrdata_fallupd;
   wire [31:0] ca_reg_mbxrdata;
   wire [1:0]  ca_reg_mbxecc;   
   wire        ca_status_wen;
   wire        ca_hold_pready;
   wire [15:0] ca_reg_status;
   wire        ca_reg_ack;   
   wire        ca_reg_wen;
   wire        ca_reg_ren;
   wire        ca_clrmbxwdata_upd;
   wire        ca_clrmbxrdata_upd;
   wire        ca_mbx_wen;
   wire        ca_mbx_ren;
   wire        ca_sysserv_inprog;   
   wire        ca_ff_inprog;
   wire        ca_ss_busy;
   wire        ssi_reg_wen;   
   wire        mbxwr_trans_done;
   wire        mbxwr_trans_done_pulse;
   wire        mbxwr_active_pulse;
   wire        mbxwr_done;
   wire        mbxrd_trans_done;      
   wire        mbxrd_active_pulse;
   wire        mbxrd_done;
   wire        REQ;
   wire [15:0] CMD;
   wire        ABORT;
   wire        MAILBOX_WRITE;
   wire        MAILBOX_READ; 
   wire [8:0]  MAILBOX_ADDR; 
   wire [31:0] MAILBOX_WDATA;
   wire [31:0] BKIF_MBXRDATA;
   wire [1:0]  BKIF_MBXECC;   
   wire        BKIF_MBXWDATA_CLRREQ;
   wire        BKIF_MBXRDATA_CLRREQ;
   wire        BKIF_MBXWR_DONE;
   wire        BKIF_MBXRD_DONE;
   wire        BKIF_MBX_REN;
   wire        BKIF_MBX_WEN;
   wire        BKIF_HOLD_READY;      
   wire        sysserv_inprog;   
   wire        ff_inprog;
   wire        ffnontimed_inprog;
   wire        fftimed_inprog;
   wire        ffnontimed_req;
   wire        fftimed_req;
   wire [8:0]  ff_mailbox_address;
   wire [15:0] command;
   wire [15:0] command_ff;
   wire        request;
   wire        sysserv_req;
   wire [31:0] sel_mbxwdata;
   wire        sel_mbxwdata_upd;
   wire        ACK_net_0;
   wire        BUSY_net_0;
   wire [1:0]  MAILBOX_ECC_net_0;
   wire [31:0] MAILBOX_RDATA_net_0;
   wire [15:0] STATUS_net_0;
   wire        US_RESTORE_net_0; 

   //////////////////////////////////////////////////////////////////////////////   
   //                           Start-of-Code                                  //   
   //////////////////////////////////////////////////////////////////////////////   

   // --------------------------------------------------------------------------
   /////////////////////////////////////////////////////////////////////////////
   //                                                                         //
   //        ||\  /|| ||||| || ||   ||         |||||| |||||| ||\  /||         //
   //        ||\\//|| || || || ||\  ||         ||     ||     ||\\//||         //
   //        || \/ || ||_|| || || \ ||   ==    ||||   |||||| || \/ ||         //
   //        ||    || || || || ||  \||         ||         || ||    ||         //
   //        ||    || || || || ||   \|         ||     |||||| ||    ||         //
   //                                                                         //
   /////////////////////////////////////////////////////////////////////////////
   // --------------------------------------------------------------------------

   // --------------------------------------------------------------------------
   // Main State Machine: Command Decoder 
   // This State Machine controls the two sub-state machines: Reqest FSM and
   // Response FSM
   // --------------------------------------------------------------------------
   always @(posedge CLK or negedge RESETN) begin
      if(RESETN == 1'b0) begin
         main_curr_state <= C_IDLE;
      end
      else begin
         main_curr_state <= main_next_state;
      end
   end

   // --------------------------------------------------------------------------
   // Main State Machine: Next state and output decoder
   // --------------------------------------------------------------------------
   always @(*) begin
      main_next_state = main_curr_state;
      mbxwr_active    = 1'b0;
      ssireq_active   = 1'b0;
      mbxrd_active    = 1'b0;
      hold_pready     = 1'b0;
      ca_reg_busy     = 1'b0;
      ca_main_reg_wen = 1'b0;
      ca_main_reg_ren = 1'b0;
      
      case(main_curr_state)
        C_IDLE: begin
           hold_pready     = (sysserv_req || ffnontimed_req_r || fftimed_req_r) ? 1'b1 : 1'b0;

           if(ucvalid_cmd == 1'b1 && do_mbxwr == 1'b1 && (sysserv_inprog || ff_inprog)) begin 
              main_next_state = C_MBXWR_PHASE;
              ca_main_reg_wen = 1'b1;              
              hold_pready     = 1'b1;
           end
           else if(ucvalid_cmd && (sysserv_inprog || ff_inprog)) begin
              main_next_state = C_SSIREQ_PHASE;
              ca_main_reg_wen = 1'b1;
           end

           if(sysserv_req == 1'b1) begin
              ca_reg_busy     = 1'b1;
           end
        end 
        
        
        C_MBXWR_PHASE: begin
           mbxwr_active = 1'b1;
           ca_reg_busy  = 1'b1;
           hold_pready  = 1'b0;
           if(mbxwr_trans_done == 1'b1) begin
              main_next_state = C_SSIREQ_PHASE; 
           end
        end

        C_SSIREQ_PHASE: begin
           ssireq_active = 1'b1;
           hold_pready   = 1'b1;
           ca_reg_busy   = 1'b1;

           if(ssi_trans_done == 1'b1) begin
              if (do_mbxrd == 1'b1) begin  
                 main_next_state = C_MBXRDWAIT_PHASE;
                 ca_main_reg_ren = 1'b1;
              end
              else begin
                 main_next_state = C_IDLE;
              end
           end
        end
        
        C_MBXRDWAIT_PHASE: begin
           mbxrd_active = 1'b1;
           ca_reg_busy  = 1'b1;
           hold_pready  = 1'b1;
           
           main_next_state = C_MBXRD_PHASE;
           
        end
        
        C_MBXRD_PHASE: begin
           mbxrd_active = 1'b1;
           ca_reg_busy  = 1'b1;

           if(mbxrd_trans_done == 1'b1) begin  
              main_next_state = C_IDLE;
           end
        end

        C_STATUS_PHASE: begin
           mbxrd_active = 1'b1;
           ca_reg_busy  = 1'b1;

           if(ac_status_rddone == 1'b1) begin  
              main_next_state = C_IDLE;
           end
        end

  
        default : main_next_state = C_IDLE;
        
      endcase // case (main_curr_state)      
   end // always @ (*)

   // Send the signal to hold the PREADY in the APB interface.
   assign ca_hold_pready = hold_pready | BKIF_HOLD_READY;
   
   // Generate write enable to register in APB slave
   assign ca_reg_wen = ssireq_active ? ssi_reg_wen : ca_main_reg_wen;
   assign ca_reg_ren = ca_main_reg_ren;
   

   // Calculate the next address to be sent on the mailbox interface.
   // This is done based on the count value in the read count register.
   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         calc_mbxrdaddr <= 'h0; 
      end
      else begin
         if(mbxrd_active && !mbxrd_active_r) begin // Load
            calc_mbxrdaddr <= ac_calc_mbxrdaddr;
         end
         else if(ca_mbx_ren) begin // Increment
            calc_mbxrdaddr <= calc_mbxrdaddr + 'h1; 
         end
      end
   end // always @ (posedge CLK or negedge RESETN)

   assign ca_mbx_ren = BKIF_MBX_REN;
   

   // Calculate the next address to be sent on the mailbox interface.
   // This is done based on the count value in the write count register.
   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         calc_mbxwraddr <= 'h0; 
      end
      else begin
         if(mbxwr_active && !mbxwr_active_r) begin  // Load
            if(sysserv_inprog) begin
               calc_mbxwraddr <= ac_calc_mbxwraddr;
            end
            else if(ff_inprog) begin
               calc_mbxwraddr <= FF_MAILBOX_ADDR;
            end
         end
         else if(ca_mbx_wen == 1'b1) begin  // Increment
            calc_mbxwraddr <= calc_mbxwraddr + 'h1;  
         end
      end
   end
   
   assign ca_mbx_wen   = BKIF_MBX_WEN;
   assign sel_mbxwdata = sysserv_inprog ? ac_reg_mbxwdata : (ff_inprog ? FF_TIMEOUT_VAL : 'h0);
   
   // Mailbox write counter
   // Load the counter with the mbx wcnt register value
   // Decrement the count whenever the mbxwdata register is updated.
   always @(posedge CLK or negedge RESETN) begin
      if(RESETN == 1'b0) begin
         mbxwr_cnt  <= 'h0;
      end
      else begin
         if(mbxwr_active_pulse) begin
            mbxwr_cnt  <= 'h0;
         end
         else if(ca_mbx_wen == 1'b1 && (((mbxwr_cnt != ac_reg_wcnt) && sysserv_inprog) || 
                                        ((mbxwr_cnt != 'h1        ) && ff_inprog     ))) begin
            mbxwr_cnt  <= mbxwr_cnt + 'h1;
         end
      end
   end
   
   // Determine whether the number of mailbox writes are complete/done.
   assign mbxwr_done = sysserv_inprog ? (mbxwr_cnt == ac_reg_wcnt) : 
                       (ff_inprog ? (mbxwr_cnt == 'h1) : 'h0);
   
   // Mailbox read counter
   // Load the counter with the mbx rcnt register value
   // Decrement the count.
   always @(posedge CLK or negedge RESETN) begin
      if(RESETN == 1'b0) begin
         mbxrd_cnt  <= 'h0;
      end
      else begin
         if(mbxrd_active_pulse) begin
            mbxrd_cnt  <= 'h0;
         end
         else if(ca_mbx_ren == 1'b1 && mbxrd_cnt != ac_reg_rcnt) begin
            mbxrd_cnt  <= mbxrd_cnt + 'h1;
         end
      end
   end

   // Determine whether the number of mailbox reads are complete/done.
   assign mbxrd_done = (mbxrd_cnt == ac_reg_rcnt);
   
   // Edge detection
   assign ac_mbxwdata_riseupd = ac_mbxwdata_upd & !ac_mbxwdata_upd_r;
   assign ac_mbxrdata_riseupd = ac_mbxrdata_upd & !ac_mbxrdata_upd_r;
   assign ac_mbxrdata_fallupd = !ac_mbxrdata_upd & ac_mbxrdata_upd_r;
   

   // Registered signals
   always @(posedge CLK or negedge RESETN) begin
      if(RESETN == 1'b0) begin
         ac_mbxwdata_upd_r  <= 1'b0;
         ac_mbxrdata_upd_r  <= 1'b0;
         mbxwr_active_r     <= 1'b0;
         mbxrd_active_r     <= 1'b0;
      end
      else begin
         ac_mbxwdata_upd_r  <= ac_mbxwdata_upd;
         ac_mbxrdata_upd_r  <= ac_mbxrdata_upd;
         mbxwr_active_r     <= mbxwr_active;
         mbxrd_active_r     <= mbxrd_active;
      end
   end

   assign mbxwr_active_pulse     = mbxwr_active     & !mbxwr_active_r;
   assign mbxrd_active_pulse     = mbxrd_active     & !mbxrd_active_r;
   assign ssi_trans_done_pulse   = ssi_trans_done;
   assign mbxwr_trans_done_pulse = mbxwr_trans_done;

   assign ff_mailbox_address = FF_MAILBOX_ADDR;
 
   // --------------------------------------------------------------------------
   // Select the command from either the APB interface or the FF interface
   // based on which requesting interface has been granted by the arbiter.
   // It is input to the SSI macro.
   // --------------------------------------------------------------------------
   // Drive the timed/non-timed FF command to request arbiter
   assign command_ff = ffnontimed_inprog ? 16'h0040 : 
                                           (fftimed_inprog ? {ff_mailbox_address,7'h41} : 'h0);

   assign command = sysserv_inprog ? ac_reg_cmd[15:0] : 
                                     (ff_inprog ? command_ff :'h0);


   
   // --------------------------------------------------------------------------
   // Select the request initiation from either the APB interface or the FF interface
   // based on which requesting interface has been granted by the arbiter.
   // It is input to the SSI macro.
   // --------------------------------------------------------------------------
   //assign request = sysserv_inprog ? ac_reg_req[0] : (ff_inprog ? ff_req : 1'b0);
   assign request = sysserv_inprog ? sysserv_req : 
                                     (ff_inprog ? (ffnontimed_req_r | fftimed_req_r) : 1'b0);
   
   // --------------------------------------------------------------------------
   // Determine whether the given service is valid or not.
   // --------------------------------------------------------------------------
   always @(*) begin
      if(request) begin
         ucvalid_cmd = 1'b0;
         invalid_cmd = 1'b0;
         case(command[6:0])
           // Device and Design Information services
           7'h00 : begin  // SN Service
              if(SNSERVICE == 1) begin
                 ucvalid_cmd = 1'b1;
              end
             end
           7'h01 : begin  // User Code Service
              if(UCSERVICE == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           7'h02 : begin  // DV Service
              if(DVSERVICE == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           7'h03 : begin  // DC Service
              if(DCSERVICE == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           7'h04 : begin  // Read Digest Service
              if(RDDIGEST == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           7'h05 : begin  // Query Security Service
              if(QUERYSECSERVICE == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           7'h06 : begin  // Read Debug Info Service
              if(RDDEBUGINFO == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           7'h22 : begin  // Bitstream Authentication Service
              if(AUTHBITSTREAM == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           7'h23 : begin  // IAP Image Authentication Service
              if(AUTHIAPIMG == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           // v2.2 - Removed
           //7'h24 : begin  // Execute UIC Script Service
           //   if(EXECUICSCRIPT == 1) begin
           //      ucvalid_cmd = 1'b1;
           //   end
           //end
           // v2.2 - Removed
           //7'h25 : begin  // UIC Bitstream Authentication Service
           //   if(UICAUTHBITSTREAM == 1) begin
           //      ucvalid_cmd = 1'b1;
           //   end
           //end
           7'h19, 7'h1A : begin  // Digital Signature Service
              if(DIGSIGSERVICE == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           7'h10, 7'h11, 7'h12 : begin  // Secure NVM Write Service
              if(SECNVMWR == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           7'h18 : begin  // Secure NVM Read Service
              if(SECNVMRD == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           7'h20 : begin  // PUF Emulation Service
              if(PUFEMSERVICE == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           7'h21 : begin  // Nonce Service
              if(NONCESERVICE == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           7'h40, 7'h41 : begin  // F*F Service
              if(FFSERVICE == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           7'h47 : begin  // Digest Check Service
              if(DIGESTCHECK == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           7'h42, 7'h44 : begin  // IAP Service
              if(IAPSERVICE == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           7'h43, 7'h45 : begin  // IAP Service
              if(IAPSERVICE == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           7'h46 : begin  // IAP Auto Update Service
              if(IAPAUTOUPD == 1) begin
                 ucvalid_cmd = 1'b1;
              end
           end
           default: begin
              //ucvalid_cmd = 1'b0;
              ucvalid_cmd = 1'b1;
              invalid_cmd = 1'b1;
           end
         endcase
      end
      else if(ca_reg_busy == 1'b0) begin
         ucvalid_cmd = 1'b0;
         invalid_cmd = 1'b0;
      end
      else begin
         ucvalid_cmd = ucvalid_cmd_r;
         invalid_cmd = invalid_cmd_r;
      end
   end // always @ (*)

   // registered Signals
   always @(posedge CLK or negedge RESETN) begin
      if(RESETN == 1'b0) begin
         ucvalid_cmd_r <= 1'b0;
         invalid_cmd_r <= 1'b0;
         serv_req      <= 1'b0;         
      end
      else begin
         ucvalid_cmd_r <= ucvalid_cmd;
         invalid_cmd_r <= invalid_cmd;
         serv_req      <= ac_reg_req[0];         
      end
   end

   // Generate unrecognized command indication to the user interface.
   always @(posedge CLK or negedge RESETN) begin
      if(RESETN == 1'b0) begin
         ca_unrecog_cmd   <= 1'b0;
      end
      else begin
         // SAR#86863 - commented
         //if(serv_req && !ucvalid_cmd && ca_reg_busy) begin
         if(serv_req && invalid_cmd && ca_reg_busy) begin
            ca_unrecog_cmd   <= 1'b1;
         end
         else begin
            ca_unrecog_cmd   <= 1'b0;
         end
      end
   end
   
   // --------------------------------------------------------------------------
   // Determine whether mailbox write or read is required for a given service.
   // For some services, data needs to be written into mailbox memory space at the
   // location pointed by the mailbox address pointer descriptor handle.
   // For some services, data needs to be read from the mailbox address pointer 
   // descriptor.
   // do_mbxwr = 1, write to MBX is required.
   // do_mbxrd = 1, read from MBX is required.
   // --------------------------------------------------------------------------
   always @(*) begin
      do_mbxwr = 1'b0;
      do_mbxrd = 1'b0;
      if(ucvalid_cmd == 1'b1) begin
         case(command[6:0])
           // Device and Design Information services  
           7'h00, 7'h01, 7'h02, 7'h03, 7'h04, 7'h05, 7'h06, 7'h21: begin  
              do_mbxwr = 1'b0;
              do_mbxrd = 1'b1;
           end
           7'h10, 7'h11, 7'h12, 7'h47, 7'h43, 7'h45, 7'h41, 7'h23, 7'h24, 7'h25: begin // Nov 30 - Added 0x24, 0x25 services
              do_mbxwr = 1'b1;
              do_mbxrd = 1'b0;
           end
           7'h22, 7'h42, 7'h44, 7'h46, 7'h40: begin
              do_mbxwr = 1'b0;
              do_mbxrd = 1'b0;
           end
            7'h18, 7'h20, 7'h19, 7'h1A : begin  // Nov 30 - Added, Digital signature (0x19, 0x1A) added as it performs both MBX wr and rd.
              do_mbxwr = 1'b1;
              do_mbxrd = 1'b1;
           end
           default: begin
              do_mbxwr = 1'b0;
              do_mbxrd = 1'b0;
           end
         endcase
      end          
   end

   // --------------------------------------------------------------------------
   // burstlen_mbxwr: Capture the burstlength for the required service
   // --------------------------------------------------------------------------
   always @(*) begin 
      burstlen_mbxwr = 'h0;
      if(ucvalid_cmd == 1'b1) begin
         burstlen_mbxwr = ac_reg_wcnt; //# of Word transfers
      end
   end

   // --------------------------------------------------------------------------
   // burstlen_mbxwr: Capture the burstlength for the required service
   // --------------------------------------------------------------------------
   always @(*) begin 
      burstlen_mbxrd = 'h0;
      if(ucvalid_cmd == 1'b1) begin
         burstlen_mbxrd = ac_reg_rcnt; //# of Word transfers
      end
   end
   
   // To top-level
   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         usr_sysserv_inprog <= 1'b0;         
      end
      else begin
         if(sysserv_inprog) begin
           usr_sysserv_inprog <= 1'b1;
         end
         else begin
            usr_sysserv_inprog <= 1'b0;
         end
      end
   end      

   // --------------------------------------------------------------------------
   // F*F related logic
   // --------------------------------------------------------------------------
   assign ffnontimed_req = ff_nontimed_entry;
   assign fftimed_req    = ff_timed_entry;

   // To top-level
   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         usr_ff_inprog <= 1'b0;         
      end
      else begin
         if(ff_inprog) begin
           usr_ff_inprog <= 1'b1;
         end
         else begin
            usr_ff_inprog <= 1'b0;
         end
      end
   end
   
   // System Service request
   assign sysserv_req = ac_reg_req[0];
   
   
   always @(posedge CLK or negedge RESETN) begin
      if(RESETN == 1'b0) begin
         ffnontimed_req_r  <= 1'b0;
         fftimed_req_r     <= 1'b0;
      end
      else begin
         ffnontimed_req_r  <= ffnontimed_req;
         fftimed_req_r     <= fftimed_req;
      end
   end
   
   assign     ff_inprog         = ffnontimed_inprog | fftimed_inprog;
   
   // To APB slave block
   assign     ca_sysserv_inprog = sysserv_inprog;
   assign     ca_ff_inprog      = ff_inprog;
   assign     ca_ss_busy        = BUSY_net_0;


   // --------------------------------------------------------------------------
   // RequestArbiter Instance
   // --------------------------------------------------------------------------
   CoreSysServices_PF_ReqArbiter u_ReqArbiter(    
                                                  .CLK                      (CLK              )
                                                  ,.RESETN                  (RESETN           )
                                                  ,.ARB_SYSSERV_REQ         (sysserv_req      )
                                                  ,.ARB_FFNONTIMED_REQ      (ffnontimed_req_r )
                                                  ,.ARB_FFTIMED_REQ         (fftimed_req_r    )
                                                  ,.ARB_SYSSERV_BUSY        (ac_sysserv_busy  )
                                                  ,.ARB_FF_BUSY             (BUSY_net_0       )
                                                  ,.ARB_SYSSERVREQ_INPROG   (sysserv_inprog   )
                                                  ,.ARB_FFNONTIMEDREQ_INPROG(ffnontimed_inprog)
                                                  ,.ARB_FFTIMEDREQ_INPROG   (fftimed_inprog   )
                                                  //SAR#86863 - commented
                                                  //,.ca_unrecog_cmd          (ca_unrecog_cmd   )
                                                  );
   
   // --------------------------------------------------------------------------
   // SSI Macro Instance
   // --------------------------------------------------------------------------
   CoreSysServices_PF_SSIIF u_SSIIF(    
                  .CLK                  (CLK            )
                  ,.RESETN              (RESETN         )
                  // Backend Input Signals
                  //,.BKIF_REQ            (ac_reg_req[0]  )
                  ,.BKIF_REQ            (request        ) 
                  //,.BKIF_CMD            (ac_reg_cmd     )
                  ,.BKIF_CMD            (command        ) 
                  ,.BKIF_INIT           (ssireq_active  )
                  // Optional Backend Output Signals
                  // Required for System Services IP
                  ,.BKIF_REG_WEN        (ssi_reg_wen    )
                  ,.BKIF_REG_STATUS     (ca_reg_status  )
                  ,.BKIF_STATUS_WEN     (ca_status_wen  )
                  ,.BKIF_REG_ACK        (ca_reg_ack     )
                  ,.BKIF_SSITRANS_DONE  (ssi_trans_done )
                  // Signals from SSI interface
                  ,.SS_ACK              (ACK_net_0      )
                  ,.SS_BUSY             (BUSY_net_0     )
                  ,.SS_STATUS           (STATUS_net_0   )
                  // Signals to SSI interface
                  ,.SS_CMD              (CMD            )
                  ,.SS_ABORT            (ABORT          )
                  ,.SS_REQ              (REQ            ) 

                  );

   
   // --------------------------------------------------------------------------
   // Mailbox Macro Instance
   // --------------------------------------------------------------------------
   CoreSysServices_PF_MBXIF u_MBXIF(    
                     .CLK                    (CLK                  )
                     ,.RESETN                (RESETN               )
                     // Backend Input Signals
                     ,.BKIF_ABORT            (ac_reg_req[1]        )  // Abort Mailbox write/read
                     ,.BKIF_MBXWRREQ_DONE    (mbxwr_done           )  // Indicates mailbox writes are done
                     ,.BKIF_MBXWDATA_NXTREQ  (sel_mbxwdata_upd     )  // ac_mbxwdata_upd
                     ,.BKIF_MBXRDATA_NXTREQ  (ac_mbxrdata_upd      )             
                     ,.BKIF_MBXRDREQ_DONE    (mbxrd_done           )

                     ,.BKIF_MBXWR_INIT       (mbxwr_active         )  // Initiate Mailbox write
                     ,.BKIF_MBXRD_INIT       (mbxrd_active         )  // Initiate Mailbox read
                     // Optional Backend Output Signals,. 
                     // Required for System Services IP
                     
                     // For Mailbox  --
                     // From backend
                     ,.BKIF_MBXWRADDR        (calc_mbxwraddr[8:0]  )
                     ,.BKIF_MBXRDADDR        (calc_mbxrdaddr[8:0]  )
                     ,.BKIF_MBXWDATA         (sel_mbxwdata         )  // ac_reg_mbxwdata
                                                                  
                     // To backend
                     ,.BKIF_HOLD_READY       (BKIF_HOLD_READY      )  //mbx_hold_pready
                     //,BKIF_MBX_RDEN

                     // Output
                     ,.BKIF_MBX_REN          (BKIF_MBX_REN         )
                     ,.BKIF_MBX_WEN          (BKIF_MBX_WEN         )
                     ,.BKIF_MBXRDATA         (BKIF_MBXRDATA        )
                     ,.BKIF_MBXECC           (BKIF_MBXECC          )
                     // Backend Outputs
                     ,.BKIF_MBXWDATA_CLRREQ  (BKIF_MBXWDATA_CLRREQ ) 
                     ,.BKIF_MBXRDATA_CLRREQ  (BKIF_MBXRDATA_CLRREQ )
                     ,.BKIF_MBXWR_DONE       (BKIF_MBXWR_DONE      )
                     ,.BKIF_MBXRD_DONE       (BKIF_MBXRD_DONE      )
                     
                     // Signals to MBX interface
                     ,.MBX_WRITE             (MAILBOX_WRITE        )
                     ,.MBX_READ              (MAILBOX_READ         )
                     ,.MBX_ADDR              (MAILBOX_ADDR         )
                     ,.MBX_WDATA             (MAILBOX_WDATA        )
                     // Signals from MBX interface
                     ,.MBX_RDATA             (MAILBOX_RDATA_net_0  )
                     ,.MBX_ECC               (MAILBOX_ECC_net_0    )
                     //---
                     );



   SYS_SERVICES SYS_SERVICES_0(
        // Inputs
        .CMD           ( CMD                 ),
        .REQ           ( REQ                 ),
        .ABORT         ( ABORT               ),
        .MAILBOX_CLK   ( CLK                 ),
        .MAILBOX_WRITE ( MAILBOX_WRITE       ),
        .MAILBOX_READ  ( MAILBOX_READ        ),
        .MAILBOX_ADDR  ( MAILBOX_ADDR        ),
        .MAILBOX_WDATA ( MAILBOX_WDATA       ),
        // Outputs
        .ACK           ( ACK_net_0           ),
        .BUSY          ( BUSY_net_0          ),
        .STATUS        ( STATUS_net_0        ),
        .MAILBOX_RDATA ( MAILBOX_RDATA_net_0 ),
        .MAILBOX_ECC   ( MAILBOX_ECC_net_0   ),
        .US_RESTORE    ( US_RESTORE_net_0    ) 
        );

   // ==============================
   // Backend signal assignments
   // ==============================
   assign ca_reg_mbxrdata    = BKIF_MBXRDATA;
   assign ca_reg_mbxecc      = BKIF_MBXECC;
   assign ca_clrmbxwdata_upd = BKIF_MBXWDATA_CLRREQ;
   assign ca_clrmbxrdata_upd = BKIF_MBXRDATA_CLRREQ;
   assign mbxwr_trans_done   = BKIF_MBXWR_DONE;
   assign mbxrd_trans_done   = BKIF_MBXRD_DONE;

   // ==============================
   // To top-level
   // ==============================
   // Indicates the busy from the SSI interface
   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         ss_busy <= 'h0; 
      end
      else begin
         ss_busy <= BUSY_net_0;
      end
   end

   // Added for SVG support
   // Indicates the request to the SSI interface
   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         ss_req <= 'h0; 
      end
      else begin
         ss_req <= REQ;
      end
   end

   // Indicates the status from the SSI interface
   // Added: for SAR#84774
   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         ss_status <= 'h0; 
      end
      else begin
         ss_status <= STATUS_net_0;
      end
   end

   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         mbx_write <= 'h0; 
      end
      else begin
         mbx_write <= MAILBOX_WRITE;
      end
   end

   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         mbx_read <= 'h0; 
      end
      else begin
         mbx_read <= MAILBOX_READ;
      end
   end

   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         mbx_ecc <= 'h0; 
      end
      else begin
         mbx_ecc <= MAILBOX_ECC_net_0;
      end
   end

   // Indicates the System Service is in progress
   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         sysserv_init_req <= 'h0; 
      end
      else begin
         sysserv_init_req <= sysserv_inprog;
      end
   end
   
   // ==============================
   // FF Output signal generation 
   // ==============================
   // FF exit status output to top-level
   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         ff_exit_status <= 'h0; 
      end
      else begin
         if((ffnontimed_inprog || fftimed_inprog) && ca_status_wen) begin
            ff_exit_status <= ca_reg_status; 
         end
      end
   end

   // FF Init Request output to top-level
   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         ff_init_req <= 'h0; 
      end
      else begin
         ff_init_req <= (ffnontimed_inprog || fftimed_inprog);
      end
   end

   // FF User Busy output
   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         ff_usr_busy <= 1'b0; 
      end
      else begin
         ff_usr_busy <= ff_inprog;
      end
   end   

   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         ff_mbxwdata_upd <= 1'b0; 
      end
      else begin
         if(BKIF_MBXWDATA_CLRREQ) begin
            ff_mbxwdata_upd <= 1'b0;
         end
         else if(mbxwr_active_pulse) begin
            ff_mbxwdata_upd <= 1'b1;
         end
      end
   end   
   
   assign sel_mbxwdata_upd = sysserv_inprog ? ac_mbxwdata_upd : 
                             (ff_inprog ? ff_mbxwdata_upd : 1'b0);
   
   // FF OSC2MHZ signal output
   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         ff_osc2mhz_on <= 1'b0; 
      end
      else begin
         if(OSC_2MHZ_ON) begin
            ff_osc2mhz_on <= 1'b1;
         end
      end
   end

   // FF Restore output
   always @(posedge CLK or negedge RESETN) begin
      if(!RESETN) begin
         ff_us_restore <= 1'b0; 
      end
      else begin
         ff_us_restore <= US_RESTORE_net_0;
      end
   end

endmodule // CORESYSSERVICES_PF_CTRL

