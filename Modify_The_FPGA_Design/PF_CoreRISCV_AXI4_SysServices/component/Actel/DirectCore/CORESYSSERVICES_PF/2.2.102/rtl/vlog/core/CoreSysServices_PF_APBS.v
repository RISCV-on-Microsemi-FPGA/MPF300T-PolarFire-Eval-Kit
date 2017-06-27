// ****************************************************************************/    
// Actel Corporation Proprietary and Confidential    
// Copyright 2010 Actel Corporation.  All rights reserved.    
//    
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN    
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED    
// IN ADVANCE IN WRITING.    
//    
// Description: CoreSysServices_PF_APBS
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
// 86863    09/02/17 IP    Unrecognizable service is nto going 
//                         through  
// Notes:    
// 1.     
//    
// ****************************************************************************/    
`timescale 1 ns/10 ps    
 
 
module CoreSysServices_PF_APBS (    
                                    ,PCLK
                                    ,PRESETN
                                    // APB slave interface signals
                                    ,PSEL
                                    ,PENABLE
                                    ,PWRITE
                                    ,PADDR
                                    ,PWDATA
                                    ,PRDATA
                                    ,PREADY
                                    ,PSLVERR
                                    // Signals to Controller block
                                    ,ac_reg_cmd
                                    ,ac_reg_req
                                    ,ac_reg_wcnt
                                    ,ac_reg_rcnt
                                    ,ac_reg_mbxwdata
                                    ,ac_mbxwdata_upd
                                    ,ac_mbxrdata_upd
                                    ,ac_calc_mbxwraddr
                                    ,ac_calc_mbxrdaddr
                                    ,ac_mbx_rddone
                                    ,ac_status_rddone
                                    ,ac_sysserv_busy
                                    // Signals from Controller block
                                    ,ca_reg_busy
                                    ,ca_reg_ack
                                    ,ca_reg_status
                                    ,ca_status_wen
                                    ,ca_reg_wen
                                    //,ca_reg_ren
                                    ,ca_main_reg_wen
                                    ,ca_hold_pready
                                    ,ca_clrmbxwdata_upd
                                    ,ca_clrmbxrdata_upd
                                    ,ca_reg_mbxrdata
                                    ,ca_reg_mbxecc
                                    ,ca_unrecog_cmd
                                    ,ca_mbx_ren
                                    ,ca_sysserv_inprog
                                    ,ca_ff_inprog
                                    ,ca_ss_busy     
                                    // To Top
                                    ,apb_serv_busy
                                    ,apb_rdvld
                                    ,apb_unrecog_cmd
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

   //------------------------------------------------------------------------------    
   // Register Set (32-bit) Definitions
   //------------------------------------------------------------------------------    
   localparam SYS_SERV_CMD  = 4'b0001;    
   localparam SYS_SERV_STAT = 4'b0010;    
   localparam SYS_SERV_REQ  = 4'b0011;    
   localparam MBX_ECCSTATUS = 4'b0100;    
   localparam MBX_WCNT      = 4'b0101;    
   localparam MBX_RCNT      = 4'b0110;    
   localparam MBX_WADRDESC  = 4'b0111;    
   localparam MBX_RADRDESC  = 4'b1000;    
   localparam MBX_WDATA     = 4'b1010;    
   localparam MBX_RDATA     = 4'b1011;    
   localparam SYS_SERV_USER = 4'b1100;


   //------------------------------------------------------------------------------    
   // Port declarations    
   //------------------------------------------------------------------------------    
    
   // -----------    
   // Inputs    
   // -----------    
   input      PCLK;    
   input      PRESETN;  
        
   // APB Slave Signals
   input        PSEL;       
   input        PENABLE;    
   input        PWRITE;     
   input [31:0] PADDR;      
   input [31:0] PWDATA;     

   // From Controller block
   input        ca_reg_busy;           // Controller->APBReg::Service Request busy.                                        
   input        ca_reg_ack;            // Controller->APBReg::Service Request Ack   
   input [15:0] ca_reg_status;         // Controller->APBReg::Service Request Status
   input        ca_status_wen;         // Controller->APBReg::Service Request Status Write Enable
   input        ca_reg_wen;            // Controller->APBReg::Register Write Enable
   input        ca_hold_pready;        // Controller->APBReg::Hold PREADY when Service 
                                       //                     is in progress.
   input        ca_main_reg_wen;
   input        ca_clrmbxwdata_upd;
   input        ca_clrmbxrdata_upd;
   input [31:0] ca_reg_mbxrdata;   
   input [1:0]  ca_reg_mbxecc;   
   input        ca_unrecog_cmd;
   input        ca_mbx_ren;
   input        ca_sysserv_inprog;   
   input        ca_ff_inprog;
   input        ca_ss_busy;
   
   // -----------   
   // Outputs   
   // -----------   
   // APB Slave Signals
   output [31:0] PRDATA;
   output        PREADY;     
   output        PSLVERR;    
   // To Controller block
   output [15:0] ac_reg_cmd;            // APBReg->Controller:: Command
   output [3:0 ] ac_reg_req;            // APBReg->Controller:: Request
   output [8:0]  ac_reg_wcnt;           // APBReg->Controller:: Write counter
   output [8:0]  ac_reg_rcnt;           // APBReg->Controller:: Read Counter
   output [31:0] ac_reg_mbxwdata;       // APBReg->Controller:: MBX Write Data
   output        ac_mbxwdata_upd;       // APBReg->Controller:: MBX Write Data register update
   output        ac_mbxrdata_upd;       // APBReg->Controller:: MBX Read Data register update
   output [31:0] ac_calc_mbxwraddr;     // APBReg->Controller:: MBX Write calculated address
   output [31:0] ac_calc_mbxrdaddr;     // APBReg->Controller:: MBX Read calculated address
   output        ac_mbx_rddone;         // APBReg->Controller:: APB MBX Read data done
   output        ac_status_rddone;
   output        ac_sysserv_busy;
   
   // To Top
   output        apb_serv_busy;         // APBReg->Top:: Indicates that status of busy
   output        apb_rdvld;             // APBReg->Top:: Indicates that MBX read data available
   output        apb_unrecog_cmd;       // APBReg->Top:: Indicates that command is unrecognized
   
   //------------------------------------------------------------------------------    
   // Internal Signals
   //------------------------------------------------------------------------------    
   reg [31:0]    reg_sysservcmd;
   reg [31:0]    reg_sysservuser;   
   reg [31:0]    reg_sysservstat;
   reg [31:0]    reg_sysservreq;
   reg [31:0]    reg_mbxeccstat;
   reg [31:0]    reg_mbxwcnt;
   reg [31:0]    reg_mbxrcnt;
   reg [31:0]    reg_mbxrdata;   
   reg [31:0]    reg_mbxradrdesc;
   reg [31:0]    reg_mbxwadrdesc;
   reg [31:0]    reg_mbxwdata;   
   reg [31:0]    reg_rdata;
   reg [31:0]    reg_rdata_r;
   reg [3:0 ]    ac_reg_req;
   reg [31:0]    ac_reg_mbxwdata;
   reg [31:0]    ac_calc_mbxwraddr;
   reg [31:0]    ac_calc_mbxrdaddr;
   reg           ac_mbxwdata_upd;
   reg           ac_mbxrdata_upd;
   reg [8:0]     ac_reg_wcnt;
   reg [8:0]     ac_reg_rcnt;
   reg [15:0]    ac_reg_cmd;
   reg           ac_mbx_rddone;
   reg           ac_mbx_rddone_r;
   reg           ca_reg_busy_r;
   reg           ca_ss_busy_r;
   reg           ca_mbx_ren_r1;
   reg           ca_mbx_ren_r2;
   reg           ca_mbx_ren_r3;
   reg           ca_mbx_ren_r4;
   reg           ca_reg_busy_fallpulse_r;   
   reg           ca_clrmbxrdata_upd_r;
   reg           ca_sysserv_inprog_r;
   reg           apb_serv_busy;
   reg           apb_unrecog_cmd;
   reg           apb_rdvld;
   reg [8:0]     rd_cnt;

   wire          apb_wren;
   wire          apb_rden;
   wire          PREADY;
   wire          PSLVERR;
   wire [31:0]   PRDATA;
   wire          ac_status_rddone;
   wire          ca_reg_busy_fallpulse;
   wire          ca_ss_busy_fallpulse;
   wire          ca_ss_busy_risepulse;   
   wire          ca_clrmbxrdata_upd_pedge;   

   //////////////////////////////////////////////////////////////////////////////   
   //                           Start-of-Code                                  //   
   //////////////////////////////////////////////////////////////////////////////   

   //------------------------------------------------------------------------------    
   //------------------------------------------------------------------------------    
   // To Top-level APB IF
   //------------------------------------------------------------------------------    

   // PREADY is throttled from the Controller block.
   assign PREADY  = (ca_hold_pready | ca_ff_inprog) ? 1'b0 : 1'b1; 
   assign PSLVERR = 1'b0;
   assign PRDATA  = reg_rdata;
   
   // apb_serv_busy:: (To Top-level output USR_BUSY)
   // Generate the busy output signal to the User IF
   // The busy bit is set when the main FSM moves to MBX write or SSI state, indicating
   // that the given System Service is in progress.
   // Internally set immediately on request bit[0] set and remains high when busy bit stays high.
   // Reset when busy bit[2] goes low.
   // Request bit[0] goes low on receiving ack but busy stays high as long as the
   // service is in progress.
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         apb_serv_busy <= 1'b0; 
      end
      else begin
         apb_serv_busy <= reg_sysservreq[1] | ca_reg_busy; 
      end
   end
   
   assign ac_status_rddone = apb_rdvld & apb_rden & PADDR[5:2] == SYS_SERV_STAT;
   
   // apb_unrecog_cmd:: (To Top-level output USR_CMD_ERROR)
   // Indicates that the command is invalid and unrecognized.
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         apb_unrecog_cmd <= 1'b0; 
      end
      else begin
         if(!ca_reg_busy) begin
            apb_unrecog_cmd <= 1'b0;
         end
         else if(ca_unrecog_cmd) begin
            apb_unrecog_cmd <= 1'b1;
         end
      end
   end   

   // apb_rdvld:: (To Top-level output USR_RDVLD)
   // Indicates to the user interface that the mailbox read data is available for
   // reading. Serves as an interrupt which can be polled inorder to read the data.
   // It is set when from the mailbox read FSM state, till the required number of reads
   // are done based on the RDCNT register value for that particular service.
   // When the User interface performs reads equal to the RDCNT value, the apb_rdvld is
   // de-asserted.
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         apb_rdvld <= 1'b0; 
      end
      else begin
         if(apb_rden == 1'b1 && PADDR[5:2] == MBX_RDATA) begin
            apb_rdvld <= 1'b0; 
         end
         else if(ca_clrmbxrdata_upd_pedge == 1'b1) begin 
            apb_rdvld <= 1'b1;
         end
      end
   end   

   //------------------------------------------------------------------------------    
   // Write and Read enable generation for APB slave register access
   //------------------------------------------------------------------------------    
   assign apb_wren = PSEL & PENABLE & PWRITE  & PREADY;
   assign apb_rden = PSEL & PENABLE & !PWRITE & PREADY;

   //------------------------------------------------------------------------------    
   // APB Registers
   //------------------------------------------------------------------------------    

   // Register :: SYS_SERV_USER (Read Only)
   // This register can be used to poll for busy, rdvld signals
   // Bit[0]: usr_busy bit
   // Bit[1]: usr_rdvld bit
   // Bit[2]: usr_cmderror bit
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         reg_sysservuser <= 'h0; 
      end
      else begin
         if((!reg_sysservreq[1] && !ca_reg_busy)) begin
            reg_sysservuser <= {29'h00000000,1'b0,reg_sysservuser[1],1'b0};
         end
         else if(apb_rden == 1'b1 && PADDR[5:2] == MBX_RDATA) begin
            reg_sysservuser <= {29'h00000000,ca_unrecog_cmd,1'b0,reg_sysservuser[0]};
         end
         else if(ca_clrmbxrdata_upd_pedge == 1'b1) begin  
            reg_sysservuser <= {29'h00000000,ca_unrecog_cmd,1'b1,reg_sysservuser[0]};
         end
         else begin
            reg_sysservuser <= {29'h00000000,ca_unrecog_cmd, reg_sysservuser[1],(reg_sysservreq[0] | ca_reg_busy)};            
         end
      end
   end

   // Register :: SYS_SERV_CMD (Read/Write)
   // This register is written through APB interface.
   // Contains the lower 7-bit Service Request + upper 9-bit MBX address.
   // {MBX address [15:7],Request[6:0]}
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         reg_sysservcmd <= 'h0; 
      end
      else begin
         if(apb_wren == 1'b1 && PADDR[5:2] == SYS_SERV_CMD) begin
            reg_sysservcmd <= {16'h0000,PWDATA[15:0]};
         end
      end
   end
   
   // Register :: SYS_SERV_STAT (Read Only)
   // The write to this register is initiated by hardware based on the status received
   // on SSI interface.
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         reg_sysservstat <= 'h0; 
      end
      else begin
         if(ca_status_wen) begin
            reg_sysservstat <= {16'h0000,ca_reg_status};
         end
      end
   end

   reg ca_unrecog_cmd_r1,ca_unrecog_cmd_r2,ca_unrecog_cmd_r3,ca_unrecog_cmd_r4;
   
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         ca_unrecog_cmd_r1 <= 'h0; 
         ca_unrecog_cmd_r2 <= 'h0; 
         ca_unrecog_cmd_r3 <= 'h0; 
         ca_unrecog_cmd_r4 <= 'h0; 
      end
      else begin
         if(!ca_reg_busy) begin
         ca_unrecog_cmd_r1 <= 'h0; 
         ca_unrecog_cmd_r2 <= 'h0; 
         ca_unrecog_cmd_r3 <= 'h0; 
         ca_unrecog_cmd_r4 <= 'h0; 
         end
         else begin
         ca_unrecog_cmd_r1 <= ca_unrecog_cmd;
         ca_unrecog_cmd_r2 <= ca_unrecog_cmd_r1;
         ca_unrecog_cmd_r3 <= ca_unrecog_cmd_r2;
         ca_unrecog_cmd_r4 <= ca_unrecog_cmd_r3;
         end
      end
   end
   
   // Register :: SYS_SERV_REQ 
   // BIT[0] : Request bit from APB
   // BIT[1] : APB Busy bit
   // BIT[2] : FF Busy bit 
   // BIT[3] : SS Busy bit 
   // BIT[4] : APB Req Init bit 
   // BIT[5] : FF Req Init bit 
   // BIT[6-31] : Reserved 
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         reg_sysservreq <= 'h0; 
      end
      else begin
         if(ca_reg_wen == 1'b1 && ca_reg_ack == 1'b1 && ca_sysserv_inprog == 1'b1 && PREADY == 1'b0) begin
            reg_sysservreq <= {26'h0000000,reg_sysservreq[5:1],1'b0};
         end
         // SS Busy bit: Clear 
         // Clear busy bit when busy from SSI interface busy goes low.
         else if(ca_ss_busy_fallpulse) begin
            reg_sysservreq <= {26'h0000000,reg_sysservreq[5:4],1'b0,reg_sysservreq[2:0]};
         end
         // APB Busy bit: Clear
         // FF Busy bit : Clear
         // Clear busy bit when the main state machine goes back to idle
         // indicating that the service is done. This does not represent 
         // the actual status of SS BUSY. This is user side busy indication.
         // Request bit: Clear
         // Also, request bit is de-asserted when the service busy goes low.
         else if(ca_reg_busy_fallpulse_r == 1'b1) begin
            reg_sysservreq <= {26'h0000000,reg_sysservreq[5:3],2'b00,reg_sysservreq[0]};
         end
         // Request bit: Set
         // Write Bit[0] from the APB directly to initiate request
         else if(apb_wren == 1'b1 && PADDR[5:2] == SYS_SERV_REQ && ca_reg_busy == 1'b0) begin
            reg_sysservreq <= {29'h00000000,reg_sysservreq[3:1],PWDATA[0]};
         end
         // SS Busy bit: Set
         // Set busy bit when busy from SSI interface busy goes high.
         // APB Busy bit: Set
         // FF Busy bit : Set
         // Set busy bit when busy from main FSM is asserted on receiving request. 
         // This is done once per service request.
         else begin
            reg_sysservreq <= {26'h0000000,ca_ff_inprog,ca_sysserv_inprog,ca_ss_busy,ca_ff_inprog,ca_sysserv_inprog,reg_sysservreq[0]};
         end
      end
   end



   assign ac_sysserv_busy = !ca_reg_busy ? 1'b0 : reg_sysservreq[1];
   
   // Register :: MBX_ECCSTATUS 
   // Provides ECC status when the mailbox is read.
   // 2'b00: No ECC errors detected, data is correct.
   // 2'b01: Indicates exactly one bit error and has been corrected.
   // 2'b10: Indicates exactly two bit error and no correction performed.
   // 2'b11: Not generated - undefined.
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         reg_mbxeccstat <= 'h0; 
      end
      else begin
         if(ca_mbx_ren == 1'b1) begin
            reg_mbxeccstat <= {30'h0000000,ca_reg_mbxecc};
         end
      end
   end

   // Register :: MBX_WCNT 
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         reg_mbxwcnt <= 'h0; 
      end
      else begin
         if(apb_wren == 1'b1 && PADDR[5:2] == MBX_WCNT) begin
            reg_mbxwcnt <= {23'h000000,PWDATA[8:0]};
         end
      end
   end

   // Register :: MBX_RCNT 
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         reg_mbxrcnt <= 'h0; 
      end
      else begin
         if(apb_wren == 1'b1 && PADDR[5:2] == MBX_RCNT) begin
            reg_mbxrcnt <= {23'h000000,PWDATA[8:0]};
         end
      end
   end

   // Register signals
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         ca_mbx_ren_r1 <= 1'b0; 
         ca_mbx_ren_r2 <= 1'b0; 
         ca_mbx_ren_r3 <= 1'b0; 
         ca_mbx_ren_r4 <= 1'b0;
         ca_reg_busy_fallpulse_r <= 1'b0;
      end
      else begin
         ca_mbx_ren_r1 <= ca_mbx_ren; 
         ca_mbx_ren_r2 <= ca_mbx_ren_r1; 
         ca_mbx_ren_r3 <= ca_mbx_ren_r2; 
         ca_mbx_ren_r4 <= ca_mbx_ren_r3;
         ca_reg_busy_fallpulse_r <= ca_reg_busy_fallpulse;
      end
   end

   // Register :: MBX_RDATA
   // The mailbox read data is available after 4 clock cycles.
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         reg_mbxrdata <= 'h0; 
      end
      else begin
         if(ca_mbx_ren_r4 == 1'b1) begin
            reg_mbxrdata <= ca_reg_mbxrdata;
         end
      end
   end

   // Register :: MBX_RADRDESC 
   // The register is used to get the mailbox read address descriptor
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         reg_mbxradrdesc <= 'h0; 
      end
      else begin
         if(apb_wren == 1'b1 && PADDR[5:2] == MBX_RADRDESC) begin
            reg_mbxradrdesc <= {23'h000000,PWDATA[8:0]};
         end
      end
   end

   // Register :: MBX_WADRDESC
   // The register is used to get the mailbox write address descriptor
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         reg_mbxwadrdesc <= 'h0; 
      end
      else begin
         if(apb_wren == 1'b1 && PADDR[5:2] == MBX_WADRDESC) begin
            reg_mbxwadrdesc <= {23'h000000,PWDATA[8:0]};
         end
      end
   end

   // Register :: MBX_WDATA 
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         reg_mbxwdata <= 'h0;
      end
      else begin
         if(apb_wren == 1'b1 && PADDR[5:2] == MBX_WDATA) begin
            reg_mbxwdata <= PWDATA;
         end
      end
   end

   // APB Register Reads
   // Read the register read data
   always @(*) begin
         if(apb_rden == 1'b1) begin
            case(PADDR[5:2])
              SYS_SERV_CMD : begin
                 reg_rdata = reg_sysservcmd;  
              end
              SYS_SERV_STAT : begin
                 reg_rdata = reg_sysservstat;  
              end
              SYS_SERV_REQ : begin
                 reg_rdata = reg_sysservreq;  
              end
              MBX_ECCSTATUS : begin
                 reg_rdata = reg_mbxeccstat;  
              end
              MBX_WCNT : begin
                 reg_rdata = reg_mbxwcnt;  
              end
              MBX_RCNT : begin
                 reg_rdata = reg_mbxrcnt;  
              end
              MBX_RDATA : begin
                 reg_rdata = reg_mbxrdata;  
              end
              MBX_RADRDESC : begin
                 reg_rdata = reg_mbxradrdesc;  
              end
              MBX_WADRDESC : begin
                 reg_rdata = reg_mbxwadrdesc;  
              end
              SYS_SERV_USER: begin
                 reg_rdata = reg_sysservuser;                 
              end
              default: begin
                 reg_rdata = 'h0;
              end
            endcase
         end
	 else begin
        reg_rdata = reg_rdata_r;
     end
   end
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         reg_rdata_r <= 'h0;         
      end
      else begin
         reg_rdata_r <= reg_rdata;         
      end
   end

   // Registered signal
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         ac_mbx_rddone_r <= 1'b0; 
      end
      else begin
         ac_mbx_rddone_r <= ac_mbx_rddone;
      end
   end   
   
   // Indicates whether the APB reads to the Mailbox read data register is done
   // for the configured number of read counts.
   // The APB master needs to read the mailbox read data register.
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         ac_mbx_rddone <= 1'b0; 
      end
      else begin
         if(rd_cnt == 'h0) begin
            ac_mbx_rddone <= 1'b1;
         end
         else begin
            ac_mbx_rddone <= 1'b0;
         end 
      end
   end   

   // Used to determine the number of reads happened to the mailbox read data
   // register.
   // Load count value on APB write and 
   // decrement the count value on each APB read to the Mailbox read data register
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         rd_cnt <= 'h0; 
      end
      else begin
         // Load count value
         if(apb_wren == 1'b1 && PADDR[5:2] == MBX_RCNT) begin
            rd_cnt <= {23'h000000,PWDATA[8:0]};
         end
         // Decrement count value on each APB read to the Mailbox read data register
         else if(apb_rden == 1'b1 && PADDR[5:2] == MBX_RDATA && rd_cnt != 'h0) begin
            rd_cnt <= rd_cnt - 1'b1;
         end 
      end
   end  
   
   // Register busy from SSI interface.
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         ca_reg_busy_r <= 1'b0; 
         ca_ss_busy_r  <= 1'b0;         
         ca_clrmbxrdata_upd_r  <= 1'b0;         
         ca_sysserv_inprog_r <= 1'b0;         
      end
      else begin
         ca_reg_busy_r <= ca_reg_busy; 
         ca_ss_busy_r  <= ca_ss_busy;
         ca_clrmbxrdata_upd_r <= ca_clrmbxrdata_upd;         
         ca_sysserv_inprog_r <= ca_sysserv_inprog;
      end
   end

   assign ca_clrmbxrdata_upd_pedge = ca_clrmbxrdata_upd & !ca_clrmbxrdata_upd_r;
   
   
   // Edge detection on signals
   assign ca_reg_busy_fallpulse = ca_reg_busy_r & !ca_reg_busy;
   assign ca_ss_busy_fallpulse  = ca_ss_busy_r  & !ca_ss_busy;
   assign ca_ss_busy_risepulse  = !ca_ss_busy_r & ca_ss_busy;

   // ac_reg_mbxwdata:: 
   // Send the mbx write data to the Controller block FSM.
   always @(*) begin
      ac_reg_mbxwdata = reg_mbxwdata; 
   end

   // ac_mbxwdata_upd::
   // This signal is used to set the update signal whenever the MBX_WDATA is written.
   // It remains set unless cleared by the Controller block. It is cleared only when it 
   // is transferred on to the MBX interface.
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         ac_mbxwdata_upd <= 1'b0;
      end
      else begin
         // Clear the update signal when the data is written on the MBX Interface
         if(ca_clrmbxwdata_upd == 1'b1 && ac_mbxwdata_upd == 1'b1) begin
            ac_mbxwdata_upd <= 1'b0;
         end
         // Set the update signal when APB write to MBX_WDATA happens.
         else if(apb_wren == 1'b1 && PADDR[5:2] == MBX_WDATA) begin
            ac_mbxwdata_upd <= 1'b1;
         end
      end
   end

   // ac_mbxrdata_upd::
   // This signal is used to set the update signal whenever the MBX_RDATA is read.
   // It remains set unless cleared by the Controller block. It is cleared only when it 
   // is transferred on to the MBX interface.
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         ac_mbxrdata_upd <= 1'b0;
      end
      else begin
         // Set the update signal when the mailbox read data register is read 
         // and a mailbox read on the MBX Interface is issued.
         if(ca_clrmbxrdata_upd_pedge) begin
            ac_mbxrdata_upd <= 1'b1;
         end
         // Clear the update signal when APB read to MBX_RDATA is done.
         else if(apb_rden == 1'b1 && PADDR[5:2] == MBX_RDATA) begin
            ac_mbxrdata_upd <= 1'b0;
         end
      end
   end

   // ac_reg_req:: 
   // Send the abort signal to the Controller block.
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         ac_reg_req <= 4'h0; 
      end
      else begin
         ac_reg_req <= reg_sysservreq[3:0]; 
      end
   end

   // ac_reg_cmd:: 
   // Send the request command byte along with the MBX descriptor
   // to the Controller.
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         ac_reg_cmd <= 'h0; 
      end
      else begin
         ac_reg_cmd <= reg_sysservcmd[15:0]; 
      end
   end
   
   // ac_reg_wcnt:: 
   // Send the mailbox write count, contains the number of bytes to be 
   // written to the mailbox memory.
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         ac_reg_wcnt <= 'h0; 
      end
      else begin
         ac_reg_wcnt <= reg_mbxwcnt[8:0]; 
      end
   end
   
   // ac_reg_rcnt:: 
   // Send the mailbox read count, contains the number of bytes to be 
   // read from the mailbox memory.
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         ac_reg_rcnt <= 'h0; 
      end
      else begin
         ac_reg_rcnt <= reg_mbxrcnt[8:0]; 
      end
   end

   // Calculate the next address to be sent on the mailbox interface.
   // This is done based on the count value in the write count register.
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         ac_calc_mbxwraddr <= 'h0; 
      end
      else begin
         if(PSEL && PWRITE && PENABLE && PADDR[5:2] == MBX_WADRDESC) begin
            ac_calc_mbxwraddr <= PWDATA;
         end
      end
   end
   
   // Calculate the next address to be sent on the mailbox interface.
   // This is done based on the count value in the read count register.
   always @(posedge PCLK or negedge PRESETN) begin
      if(!PRESETN) begin
         ac_calc_mbxrdaddr <= 'h0; 
      end
      else begin
         if(PSEL && PWRITE && PENABLE && PADDR[5:2] == MBX_RADRDESC) begin
            ac_calc_mbxrdaddr <= PWDATA;
         end
      end
   end
   
endmodule // CoreSysServices_PF_APBS

