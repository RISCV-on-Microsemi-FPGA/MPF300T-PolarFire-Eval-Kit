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
 
 
module COREBOOTSTRAP_SPI_CTRL (
                 //  input ports
                 HCLK,
                 HRESETN,
                 boot_sdi,
                 SW_DEBUG_MODE,
 
                 //  output ports
                 boot_sdo,
                 boot_sck,
                 boot_ss,
                 rd_data_avail,
                 rd_all_done,
                 rd_data,
                 latch_sdi,
                 cks_data
                 );
 
   parameter        READ_4BYTE_ADDR         = 1'b0;        //  Choose between a READ opcode for 3 byte or 4 byte addressing.
   parameter        SPI_CLK_RATIO           = 16'd6;       //  Setting of ratio of how many HCLK cycles in an SPI_clk cycle.
   parameter        SPI_SRC_ADDR            = 32'd0;       //  Starting address of data to copy from SPI_chip
   parameter        DATA_WORD_CNT           = 32'd100;     //  Word count to indicate the size of bootcode to copy from SPI_chip.
   parameter        CKSUM_SPI_ADDR          = 32'd0;       //  Address of CKSUM field in SPI_chip.
   parameter        SW_RESET_TYPE           = 2'b01;       //  Type of reset commands required.
   parameter        SS_DESELECT_DURATION    = 8'd5;        //  Number of HCLKS to wait after a RESET command before starting another operation.
   parameter        RST_RECOVERY_DURATION   = 8;           //  Number of HCLKs following a hardware or software reset before enabling polling the SPI chip.
   parameter        BIG_ENDIAN_EN           = 0;           //  If set, will store the data in big-endian format. Otherwise little-endian.
   parameter        READ_STATUS_TYPE        = 1'b0;        //  Indicates which type of opcode to use for a read_status_register command. Also the position of the busy bit and its polarity.
//  input ports
   input            HCLK;
   wire             HCLK;
   input            HRESETN;
   wire             HRESETN;
   input            boot_sdi;
   wire             boot_sdi;
   input            SW_DEBUG_MODE;
   wire             SW_DEBUG_MODE;
//  output ports
   output           boot_sdo;
   reg              boot_sdo;
   output           boot_sck;
   reg              boot_sck;
   output           boot_ss;
   reg              boot_ss;
   output           rd_data_avail;
   reg              rd_data_avail;
   output           rd_all_done;
   reg              rd_all_done;
   output    [31:0] rd_data;
   reg       [31:0] rd_data;
   output           latch_sdi;
   reg              latch_sdi;
   output    [31:0] cks_data;
   reg       [31:0] cks_data;
//  local signals
   reg       [31:0] spi_addr;                              //  Address that a read command will read from.
   reg       [31:0] word_count;                            //  Tally of how many words have been read from SPI_chip so far.
   reg       [7:0]  rx_count;                              //  Tally used to indicate how many bits have been sent/received so far in a serialized operation.
   reg              en_spi_clk;                            //  Enable signal to allow the generation of timebase signals for SPI_clks.
   reg       [39:0] data_word_out;                         //  Signal that holds command to be sent out, in parallel form.
   reg       [31:0] data_word_in;                          //  Signal to hold data received from SPI_chip, in parallel form.
   reg              en_spi_clk_hi;                         //  Pulse that indicates when the SPI_clk has a rising edge.
   reg              en_spi_clk_lo;                         //  Pulse that indicates when the SPI_clk has a falling edge.
   reg              spi_clk_phase;                         //  Signal that indicates whether SPI_clk is currently high or low.
   reg       [14:0] tbase_cnt;                             //  Tally used to keep track of number of HCLKS before a change in SPI_clk is required.
   wire      [7:0]  read_opcode;                           //  Read OPCODE to use, depending on 3 or 4 Byte mode.
   wire      [7:0]  read_opcode_width;                     //  Width of the read command (depending on whether in 3 or 4 Byte mode).
   reg       [39:0] reset_cmd_1;                           //  Reset OPCODE to use, depending on chip type.
   reg       [39:0] reset_cmd_2;                           //  Optional secondary reset OPCODE, depending on chip type.
   reg       [1:0]  cmds_required;                         //  Number of reset commands required, depending on chip type.
   reg       [0:0]  rst_en_cmd_sent;                       //  Bit to indicate that one reset command has already been sent (for 2-reset commands chips).
   reg       [7:0]  bitwidth_required;                     //  Number of bits in a reset command (depending on chip type).
   wire      [39:0] read_cmd_addr;                         //  Appropriate read opcode and address bytes to be serialized.
   reg       [7:0]  ss_deselect_count;                     //  Counter used to ensure that there are SS_DESELECT_DURATION HCLK cycles between commands.
   reg       [15:0] rst_count;                             //  Counter used to make sure an adequate amount of time passes after a reset command, before issuing a command.
   wire             last_rst_loop;                         //  Signal used to indicate that we are on our last cmd to be used in the sw_reset sequence (sometimes a rst_en cmd precedes the actual rst command).
   wire      [31:0] rd_data_ordered;                       //  Signal used to hold the reordered rd_data signal (ordering change possible, depending on endianness).
   wire      [7:0]  status_opcode;                         //  Signal that holds value of a read status register opcode.
   wire      [2:0]  busy_bit;                              //  Signal to indicate the bit in a byte where the busy bit is located in a read from the status register.
   wire             spi_ready;                             //  Signal to indicate the expected value when SPI chip will output when it's no longer busy.
 
   parameter SPI_IDLE             = 4'b0000,
             SPI_RD_FINISHED      = 4'b0001,
             SPI_REC_TIME         = 4'b0010,
             SPI_RESET_SETUP      = 4'b0011,
             SPI_RX_DATA          = 4'b0100,
             SPI_RX_FINISH        = 4'b0101,
             SPI_SEND_CMD         = 4'b0110,
             SPI_SEND_RESET_CMDS  = 4'b0111,
             SPI_SEND_RESET_SETUP = 4'b1000,
             SPI_SS_DESEL_RD      = 4'b1001,
             SPI_SS_DESEL_STAT    = 4'b1010,
             SPI_STATUS_CMD       = 4'b1011,
             SPI_STATUS_FINISH    = 4'b1100,
             SPI_STATUS_RD        = 4'b1101;
 
 
   reg [3:0] visual_SPI_CTRL_SM_current, visual_SPI_CTRL_SM_next;
 
   reg              visual_boot_sdo_next;
   reg              visual_boot_ss_next;
   reg              visual_rd_data_avail_next;
   reg              visual_rd_all_done_next;
   reg       [31:0] visual_rd_data_next;
   reg              visual_latch_sdi_next;
   reg       [31:0] visual_cks_data_next;
   reg       [31:0] visual_spi_addr_next;
   reg       [31:0] visual_word_count_next;
   reg       [7:0]  visual_rx_count_next;
   reg              visual_en_spi_clk_next;
   reg       [39:0] visual_data_word_out_next;
   reg       [31:0] visual_data_word_in_next;
   reg       [39:0] visual_reset_cmd_1_next;
   reg       [39:0] visual_reset_cmd_2_next;
   reg       [1:0]  visual_cmds_required_next;
   reg       [0:0]  visual_rst_en_cmd_sent_next;
   reg       [7:0]  visual_bitwidth_required_next;
   reg       [7:0]  visual_ss_deselect_count_next;
   reg       [15:0] visual_rst_count_next;
 
 
   // Combinational process
   always  @(boot_sdo or boot_ss or rd_all_done or rd_data or latch_sdi or cks_data or spi_addr or word_count or rx_count or en_spi_clk or data_word_out or data_word_in or reset_cmd_1 or reset_cmd_2 or
             cmds_required or rst_en_cmd_sent or bitwidth_required or ss_deselect_count or rst_count or HRESETN or SW_DEBUG_MODE or status_opcode or last_rst_loop or read_cmd_addr or en_spi_clk_hi or
             boot_sdi or en_spi_clk_lo or read_opcode_width or rd_data_ordered or busy_bit or spi_ready or visual_SPI_CTRL_SM_current)
   begin : SPI_CTRL_SM_comb
      visual_rd_data_avail_next <= 1'b0;
      visual_boot_sdo_next <= boot_sdo;
      visual_boot_ss_next <= boot_ss;
      visual_rd_all_done_next <= rd_all_done;
      visual_rd_data_next <= rd_data;
      visual_latch_sdi_next <= latch_sdi;
      visual_cks_data_next <= cks_data;
      visual_spi_addr_next <= spi_addr;
      visual_word_count_next <= word_count;
      visual_rx_count_next <= rx_count;
      visual_en_spi_clk_next <= en_spi_clk;
      visual_data_word_out_next <= data_word_out;
      visual_data_word_in_next <= data_word_in;
      visual_reset_cmd_1_next <= reset_cmd_1;
      visual_reset_cmd_2_next <= reset_cmd_2;
      visual_cmds_required_next <= cmds_required;
      visual_rst_en_cmd_sent_next <= rst_en_cmd_sent;
      visual_bitwidth_required_next <= bitwidth_required;
      visual_ss_deselect_count_next <= ss_deselect_count;
      visual_rst_count_next <= rst_count;
 
 
 
      case (visual_SPI_CTRL_SM_current)
         SPI_IDLE:
            begin
               visual_spi_addr_next <= SPI_SRC_ADDR;
               visual_word_count_next <= 32'b0;
               visual_en_spi_clk_next <= 1'b0;
               visual_rx_count_next <= 8'b0;
               visual_boot_ss_next <= 1'b1;
               visual_rst_en_cmd_sent_next <= 1'b0;
               visual_cks_data_next <= 32'b0;
               visual_data_word_out_next <= 40'b0;
               visual_data_word_in_next <= 32'b0;
               visual_rd_data_next <= 32'b0;
               visual_ss_deselect_count_next <= 8'd0;
               visual_rst_count_next <= 16'd0;
               visual_boot_sdo_next <= 1'b0;
               if (HRESETN)
               begin
                  if (SW_DEBUG_MODE)
                  begin
                     visual_SPI_CTRL_SM_next <= SPI_RD_FINISHED;
                  end
                  else
                  begin
                     visual_SPI_CTRL_SM_next <= SPI_REC_TIME;
                  end
               end
               else
               begin
                  visual_SPI_CTRL_SM_next <= SPI_IDLE;
               end
            end
 
         //  Wait for HRESETN to be released before advancing.
         SPI_RD_FINISHED:
            begin
               visual_SPI_CTRL_SM_next <= SPI_RD_FINISHED;
            end
 
         SPI_REC_TIME:
            begin
               if (rst_count == RST_RECOVERY_DURATION)
               begin
                  visual_rx_count_next <= 8'd0;
                  visual_data_word_out_next <= {status_opcode, 32'b0};
                  visual_bitwidth_required_next <= 8'd8;
                  visual_SPI_CTRL_SM_next <= SPI_STATUS_CMD;
               end
               else
               begin
                  visual_rst_count_next <= rst_count + 1;
                  visual_SPI_CTRL_SM_next <= SPI_REC_TIME;
               end
            end
 
         SPI_RESET_SETUP:
            begin
               if (last_rst_loop)
               begin
                  if (rst_count == RST_RECOVERY_DURATION)
                  begin
                     visual_ss_deselect_count_next <= 8'd0;
                     visual_rst_count_next <= 16'd0;
                     if (last_rst_loop)
                     begin
                        visual_rx_count_next <= 8'd0;
                        visual_rd_all_done_next <= 1'b0;
                        visual_rx_count_next <= 8'd0;
                        visual_data_word_out_next <= read_cmd_addr;
                        visual_spi_addr_next <= spi_addr + 4;  //  Prepare address for next loop.
                        visual_SPI_CTRL_SM_next <= SPI_SEND_CMD;
                     end
                     else
                     begin
                        visual_rst_en_cmd_sent_next <= 1'b1;
                        visual_rx_count_next <= 8'd0;
                        visual_SPI_CTRL_SM_next <= SPI_SEND_RESET_CMDS;
                     end
                  end
                  else
                  begin
                     visual_rst_count_next <= rst_count + 1;
                     visual_SPI_CTRL_SM_next <= SPI_RESET_SETUP;
                  end
               end
               else if (ss_deselect_count == SS_DESELECT_DURATION)
               begin
                  visual_ss_deselect_count_next <= 8'd0;
                  visual_rst_count_next <= 16'd0;
                  if (last_rst_loop)
                  begin
                     visual_rx_count_next <= 8'd0;
                     visual_rd_all_done_next <= 1'b0;
                     visual_rx_count_next <= 8'd0;
                     visual_data_word_out_next <= read_cmd_addr;
                     visual_spi_addr_next <= spi_addr + 4;  //  Prepare address for next loop.
                     visual_SPI_CTRL_SM_next <= SPI_SEND_CMD;
                  end
                  else
                  begin
                     visual_rst_en_cmd_sent_next <= 1'b1;
                     visual_rx_count_next <= 8'd0;
                     visual_SPI_CTRL_SM_next <= SPI_SEND_RESET_CMDS;
                  end
               end
               else
               begin
                  visual_ss_deselect_count_next <= ss_deselect_count + 1;
                  visual_SPI_CTRL_SM_next <= SPI_RESET_SETUP;
               end
            end
 
         SPI_RX_DATA:
            begin
               if (en_spi_clk_hi)
               begin
                  visual_data_word_in_next <= {data_word_in[30:0], boot_sdi};
                  visual_latch_sdi_next <= 1'b1;
                  if (rx_count == 8'd31)
                  begin
                     visual_SPI_CTRL_SM_next <= SPI_RX_FINISH;
                  end
                  else
                  begin
                     visual_rx_count_next <= rx_count + 1;
                     visual_SPI_CTRL_SM_next <= SPI_RX_DATA;
                  end
               end
               else
               begin
                  visual_SPI_CTRL_SM_next <= SPI_RX_DATA;
               end
            end
 
         SPI_RX_FINISH:
            begin
               if (en_spi_clk_lo)
               begin
                  visual_rx_count_next <= 8'd0;
                  visual_boot_ss_next <= 1'b1;
                  visual_en_spi_clk_next <= 1'b0;
                  visual_SPI_CTRL_SM_next <= SPI_SS_DESEL_RD;
               end
               else
               begin
                  visual_SPI_CTRL_SM_next <= SPI_RX_FINISH;
               end
            end
 
         SPI_SEND_CMD:
            begin
               if (en_spi_clk_lo)
               begin
                  visual_boot_ss_next <= 1'b0;
                  visual_en_spi_clk_next <= 1'b1;
                  visual_boot_sdo_next <= data_word_out[39];
                  visual_data_word_out_next <= data_word_out << 1;
                  if (rx_count == read_opcode_width)
                  begin
                     visual_rx_count_next <= 8'd0;
                     visual_SPI_CTRL_SM_next <= SPI_RX_DATA;
                  end
                  else
                  begin
                     visual_rx_count_next <= rx_count + 1;
                     visual_SPI_CTRL_SM_next <= SPI_SEND_CMD;
                  end
               end
               else
               begin
                  visual_SPI_CTRL_SM_next <= SPI_SEND_CMD;
               end
            end
 
         SPI_SEND_RESET_CMDS:
            begin
               if (en_spi_clk_lo)
               begin
                  visual_boot_ss_next <= 1'b0;
                  visual_en_spi_clk_next <= 1'b1;
                  visual_boot_sdo_next <= data_word_out[39];
                  visual_data_word_out_next <= data_word_out << 1;
                  if (rx_count == bitwidth_required)
                  begin
                     visual_boot_ss_next <= 1'b1;
                     visual_en_spi_clk_next <= 1'b0;
                     visual_rx_count_next <= 8'd0;
                     visual_data_word_out_next <= reset_cmd_2;
                     visual_SPI_CTRL_SM_next <= SPI_RESET_SETUP;
                  end
                  else
                  begin
                     visual_rx_count_next <= rx_count + 1;
                     visual_SPI_CTRL_SM_next <= SPI_SEND_RESET_CMDS;
                  end
               end
               else
               begin
                  visual_SPI_CTRL_SM_next <= SPI_SEND_RESET_CMDS;
               end
            end
 
         SPI_SEND_RESET_SETUP:
            begin
               visual_rx_count_next <= 8'd0;
               visual_data_word_out_next <= reset_cmd_1;
               visual_SPI_CTRL_SM_next <= SPI_SEND_RESET_CMDS;
            end
 
         SPI_SS_DESEL_RD:
            begin
               if (ss_deselect_count == SS_DESELECT_DURATION)
               begin
                  visual_ss_deselect_count_next <= 8'd0;
                  if (spi_addr == CKSUM_SPI_ADDR)
                  begin
                     visual_cks_data_next <= data_word_in;
                     visual_rd_data_next <= rd_data_ordered;  //  Reordering of bytes depending on endianness selected.
                     visual_rd_data_avail_next <= 1'b1;
                     if (word_count == (DATA_WORD_CNT - 1))
                     begin
                        visual_rd_all_done_next <= 1'b1;
                        visual_en_spi_clk_next <= 1'b0;
                        visual_SPI_CTRL_SM_next <= SPI_RD_FINISHED;
                     end
                     else
                     begin
                        visual_word_count_next <= word_count + 1;
                        visual_rd_all_done_next <= 1'b0;
                        visual_rx_count_next <= 8'd0;
                        visual_data_word_out_next <= read_cmd_addr;
                        visual_spi_addr_next <= spi_addr + 4;  //  Prepare address for next loop.
                        visual_SPI_CTRL_SM_next <= SPI_SEND_CMD;
                     end
                  end
                  else
                  begin
                     visual_rd_data_next <= rd_data_ordered;  //  Reordering of bytes depending on endianness selected.
                     visual_rd_data_avail_next <= 1'b1;
                     if (word_count == (DATA_WORD_CNT - 1))
                     begin
                        visual_rd_all_done_next <= 1'b1;
                        visual_en_spi_clk_next <= 1'b0;
                        visual_SPI_CTRL_SM_next <= SPI_RD_FINISHED;
                     end
                     else
                     begin
                        visual_word_count_next <= word_count + 1;
                        visual_rd_all_done_next <= 1'b0;
                        visual_rx_count_next <= 8'd0;
                        visual_data_word_out_next <= read_cmd_addr;
                        visual_spi_addr_next <= spi_addr + 4;  //  Prepare address for next loop.
                        visual_SPI_CTRL_SM_next <= SPI_SEND_CMD;
                     end
                  end
               end
               else
               begin
                  visual_ss_deselect_count_next <= ss_deselect_count + 1;
                  visual_SPI_CTRL_SM_next <= SPI_SS_DESEL_RD;
               end
            end
 
         SPI_SS_DESEL_STAT:
            begin
               if (ss_deselect_count == SS_DESELECT_DURATION)
               begin
                  if (data_word_in[busy_bit] == spi_ready)
                  begin
                     visual_data_word_in_next <= 32'b0;
                     visual_ss_deselect_count_next <= 8'd0;
                  //  Setup of appropriate RESET commands
                  //  depending on parameter SW_RESET_TYPE.
                     case (SW_RESET_TYPE)
                     //  Setup of appropriate RESET commands
                     //  depending on parameter SW_RESET_TYPE.
 
                        2'b00 :
                        begin
                           visual_rd_all_done_next <= 1'b0;
                           visual_rx_count_next <= 8'd0;
                           visual_data_word_out_next <= read_cmd_addr;
                           visual_spi_addr_next <= spi_addr + 4;  //  Prepare address for next loop.
                           visual_SPI_CTRL_SM_next <= SPI_SEND_CMD;
                        end
 
                        2'b01 :
                        begin
                           visual_reset_cmd_1_next <= {8'h66, 32'b0};
                           visual_reset_cmd_2_next <= {8'h99, 32'b0};
                           visual_cmds_required_next <= 2;
                           visual_bitwidth_required_next <= 8;
                           visual_SPI_CTRL_SM_next <= SPI_SEND_RESET_SETUP;
                        end
 
                        2'b10 :
                        begin
                           visual_reset_cmd_1_next <= {8'hf0, 32'b0};
                           visual_reset_cmd_2_next <= 32'b0;
                           visual_cmds_required_next <= 1;
                           visual_bitwidth_required_next <= 32;
                           visual_SPI_CTRL_SM_next <= SPI_SEND_RESET_SETUP;
                        end
 
                        2'b11 :
                        begin
                           visual_reset_cmd_1_next <= {8'hf0, 32'b0};
                           visual_reset_cmd_2_next <= 32'b0;
                           visual_cmds_required_next <= 1;
                           visual_bitwidth_required_next <= 8;
                           visual_SPI_CTRL_SM_next <= SPI_SEND_RESET_SETUP;
                        end
                     endcase
                  end
                  else
                  begin
                     visual_rx_count_next <= 8'd0;
                     visual_data_word_out_next <= {status_opcode, 32'b0};
                     visual_bitwidth_required_next <= 8'd8;
                     visual_SPI_CTRL_SM_next <= SPI_STATUS_CMD;
                  end
               end
               else
               begin
                  visual_ss_deselect_count_next <= ss_deselect_count + 1;
                  visual_SPI_CTRL_SM_next <= SPI_SS_DESEL_STAT;
               end
            end
 
         SPI_STATUS_CMD:
            begin
               if (en_spi_clk_lo)
               begin
                  visual_boot_ss_next <= 1'b0;
                  visual_en_spi_clk_next <= 1'b1;
                  visual_boot_sdo_next <= data_word_out[39];
                  visual_data_word_out_next <= data_word_out << 1;
                  if (rx_count == bitwidth_required)
                  begin
                     visual_rx_count_next <= 8'd0;
                     visual_SPI_CTRL_SM_next <= SPI_STATUS_RD;
                  end
                  else
                  begin
                     visual_rx_count_next <= rx_count + 1;
                     visual_SPI_CTRL_SM_next <= SPI_STATUS_CMD;
                  end
               end
               else
               begin
                  visual_SPI_CTRL_SM_next <= SPI_STATUS_CMD;
               end
            end
 
         //  Sending a READ_STATUS command.
         SPI_STATUS_FINISH:
            begin
               if (en_spi_clk_lo)
               begin
                  visual_rx_count_next <= 8'd0;
                  visual_boot_ss_next <= 1'b1;
                  visual_en_spi_clk_next <= 1'b0;
                  visual_SPI_CTRL_SM_next <= SPI_SS_DESEL_STAT;
               end
               else
               begin
                  visual_SPI_CTRL_SM_next <= SPI_STATUS_FINISH;
               end
            end
 
         SPI_STATUS_RD:
            begin
               if (en_spi_clk_hi)
               begin
                  visual_data_word_in_next <= {data_word_in[30:0], boot_sdi};
                  visual_latch_sdi_next <= 1'b1;
                  if (rx_count == (bitwidth_required - 1))
                  begin
                     visual_SPI_CTRL_SM_next <= SPI_STATUS_FINISH;
                  end
                  else
                  begin
                     visual_rx_count_next <= rx_count + 1;
                     visual_SPI_CTRL_SM_next <= SPI_STATUS_RD;
                  end
               end
               else
               begin
                  visual_SPI_CTRL_SM_next <= SPI_STATUS_RD;
               end
            end
 
         //  Reading back the STATUS register to check for whether
         //  chip is busy before advancing.
         default:
            begin
               visual_SPI_CTRL_SM_next <= SPI_IDLE;
            end
      endcase
   end
 
   always  @(posedge HCLK or negedge HRESETN)
   begin : SPI_CTRL_SM
 
      if (HRESETN == 0)
      begin
         rd_data_avail <= 1'b0;
         en_spi_clk <= 1'b0;
         word_count <= 32'b0;
         rx_count <= 8'd0;
         boot_ss <= 1'b1;
         spi_addr <= SPI_SRC_ADDR;
         rd_all_done <= 1'b0;
         rst_en_cmd_sent <= 1'b0;
         cks_data <= 32'b0;
         data_word_out <= 40'b0;
         data_word_in <= 32'b0;
         rd_data <= 32'b0;
         ss_deselect_count <= 8'd0;
         rst_count <= 16'd0;
         boot_sdo <= 1'b0;
         visual_SPI_CTRL_SM_current <= SPI_IDLE;
      end
      else
      begin
         boot_sdo <= visual_boot_sdo_next;
         boot_ss <= visual_boot_ss_next;
         rd_data_avail <= visual_rd_data_avail_next;
         rd_all_done <= visual_rd_all_done_next;
         rd_data <= visual_rd_data_next;
         latch_sdi <= visual_latch_sdi_next;
         cks_data <= visual_cks_data_next;
         spi_addr <= visual_spi_addr_next;
         word_count <= visual_word_count_next;
         rx_count <= visual_rx_count_next;
         en_spi_clk <= visual_en_spi_clk_next;
         data_word_out <= visual_data_word_out_next;
         data_word_in <= visual_data_word_in_next;
         reset_cmd_1 <= visual_reset_cmd_1_next;
         reset_cmd_2 <= visual_reset_cmd_2_next;
         cmds_required <= visual_cmds_required_next;
         rst_en_cmd_sent <= visual_rst_en_cmd_sent_next;
         bitwidth_required <= visual_bitwidth_required_next;
         ss_deselect_count <= visual_ss_deselect_count_next;
         rst_count <= visual_rst_count_next;
         visual_SPI_CTRL_SM_current <= visual_SPI_CTRL_SM_next;
      end
   end
 
 
 
   always
      @( posedge HCLK or negedge HRESETN )
   begin   :SPI_TIMEBASE
 
      if (HRESETN == 0)
      begin
         en_spi_clk_hi <= 1'b0;
         en_spi_clk_lo <= 1'b0;
         spi_clk_phase <= 1'b0;
         tbase_cnt <= 15'b0;
      end
      else
      begin
         if (tbase_cnt == (SPI_CLK_RATIO[15:1] - 1))
         begin
            if (spi_clk_phase)
            begin
               en_spi_clk_hi <= 1'b1;
               en_spi_clk_lo <= 1'b0;
               spi_clk_phase <= 1'b0;
            end
            else
            begin
               en_spi_clk_lo <= 1'b1;
               en_spi_clk_hi <= 1'b0;
               spi_clk_phase <= 1'b1;
            end
            tbase_cnt <= 15'b0;
         end
         else
         begin
            tbase_cnt <= tbase_cnt + 1;
            en_spi_clk_hi <= 1'b0;
            en_spi_clk_lo <= 1'b0;
         end
      end
   end
 
 
 
   always
      @( posedge HCLK or negedge HRESETN )
   begin   :SPI_CLK_GEN
 
      if (HRESETN == 0)
      begin
         boot_sck <= 1'b0;
      end
      else
      begin
         if (en_spi_clk)
         begin
            if (en_spi_clk_hi)
            begin
               boot_sck <= 1'b1;
            end
            else
            begin
               if (en_spi_clk_lo)
               begin
                  boot_sck <= 1'b0;
               end
            end
         end
      end
   end
 
   assign read_opcode = (READ_4BYTE_ADDR == 1'b0) ? 8'h03 : 8'h13;  // Setup of READ opcode depending on whether 4BYTE addressing is required or not.
   assign read_opcode_width = (READ_4BYTE_ADDR == 1'b0) ? 8'd32 : 8'd40; // Number of bits in a read opcode instruction vary, depending on whether using 3 or 4 byte address READ instruction.
   assign read_cmd_addr = (READ_4BYTE_ADDR == 1'b0) ? {read_opcode[7:0], spi_addr[23:0], 8'h0} : {read_opcode[7:0], spi_addr[31:0]}; // Read opcode and number of address bytes required, for serialization.
   assign last_rst_loop = (cmds_required == 1) || rst_en_cmd_sent; // Signal used to indicate that we are on our last loop in the sending of reset commands (sometimes, a reset_en cmd precedes the actual rst command).
   assign rd_data_ordered = BIG_ENDIAN_EN ? data_word_in : {data_word_in[7:0], data_word_in[15:8], data_word_in[23:16], data_word_in[31:24]}; // Depending on parameter, order of bytes changed.
   assign status_opcode = (READ_STATUS_TYPE == 1'b1) ? 8'hd7 : 8'h05; // Depending on parameter, read_status_register OPCODE can change.
   assign busy_bit = (READ_STATUS_TYPE == 1'b1) ? 3'd7 : 3'd0; // Depending on parameter, if using an alternative read_status_register, the bit in a byte holding the busy bit differs.
   assign spi_ready = (READ_STATUS_TYPE == 1'b1) ? 1'b1 : 1'b0; // Depending on read_status_register OPCODE, the polarity of the busy bit changes. This signal deals with this.
 
 
endmodule

