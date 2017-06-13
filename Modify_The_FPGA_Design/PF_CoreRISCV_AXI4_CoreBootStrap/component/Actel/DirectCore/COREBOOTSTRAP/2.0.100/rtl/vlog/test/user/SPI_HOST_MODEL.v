// ********************************************************************/
// Microsemi Corporation Proprietary and Confidential
// Copyright 2016 Microsemi Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE MICROSEMI LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// SVN Revision Information:
// SVN $Revision: 27882 $
// SVN $Date: 2016-11-18 01:18:12 +0000 (Fri, 18 Nov 2016) $
//
// Resolved SARs
// SAR      Date     Who   Description
// Notes:
//
//
// *********************************************************************/
 
 
module SPI_HOST_MODEL (
                       //  input ports
                       HCLK,
                       HRESETN,
                       boot_sdi,
                       SW_DEBUG_MODE,
                       input_data,
                       start_spi_host,
 
                       //  output ports
                       boot_sdo,
                       boot_sck,
                       boot_ss,
                       rd_data_avail,
                       rd_all_done,
                       rd_data,
                       latch_sdi,
                       cks_data,
                       new_data_req_host
                       );
 
   parameter        READ_4BYTE_ADDR         = 1'b0;        //  Choose between a READ opcode for 3 byte or 4 byte addressing.
   parameter        SPI_CLK_RATIO           = 16'd6;       //  Setting of ratio of how many HCLK cycles in an SPI_clk cycle.
   parameter        SPI_SRC_ADDR            = 32'd0;       //  Starting address of data to copy from SPI_chip
   parameter        SPI_WORD_CNT            = 32'd100;     //  Word count to indicate the size of bootcode to copy from SPI_chip.
   parameter        CKSUM_SPI_ADDR          = 32'd0;       //  Address of CKSUM field in SPI_chip.
   parameter        SW_RESET_TYPE           = 2'b01;       //  Type of reset commands required.
   parameter        RESET_DESELECT_CYCLES   = 8'd5;        //  Number of HCLKS to wait after a RESET command before starting another operation.
   parameter        DATA_WORD_CNT           = 32'h01;      //  Number of bytes of data to write
   parameter        SR_CMD                  = 8'h05;
   parameter        SKIP_WR_EN              = 1'b0;
   parameter        WR_CMD                  = 8'h02;
   parameter        PROG_TIME               = 32'h10;
   parameter        FSR_CMD                 = 8'h70;
//  input ports
   input            HCLK;
   wire             HCLK;
   input            HRESETN;
   wire             HRESETN;
   input            boot_sdi;
   wire             boot_sdi;
   input            SW_DEBUG_MODE;
   wire             SW_DEBUG_MODE;
   input     [7:0]  input_data;
   wire      [7:0]  input_data;
   input            start_spi_host;
   wire             start_spi_host;
//  output ports
   output           boot_sdo;
   reg              boot_sdo;
   output           boot_sck;
   reg              boot_sck;
   output           boot_ss;
   reg              boot_ss;
   output           rd_data_avail;
   wire             rd_data_avail;
   output           rd_all_done;
   reg              rd_all_done;
   output    [31:0] rd_data;
   reg       [31:0] rd_data;
   output           latch_sdi;
   reg              latch_sdi;
   output    [31:0] cks_data;
   reg       [31:0] cks_data;
   output           new_data_req_host;
   reg              new_data_req_host;
//  local signals
   reg       [7:0]  bitwidth_required;                     //  Number of bits in a reset command (depending on chip type).
   reg       [1:0]  byte_cnt;
   reg       [31:0] data_cnt;
   reg       [31:0] data_word_in;                          //  Signal to hold data received from SPI_chip, in parallel form.
   reg       [39:0] data_word_out;                         //  Signal that holds command to be sent out, in parallel form.
   reg              en_spi_clk;                            //  Enable signal to allow the generation of timebase signals for SPI_clks.
   reg              en_spi_clk_hi;                         //  Pulse that indicates when the SPI_clk has a rising edge.
   reg              en_spi_clk_lo;                         //  Pulse that indicates when the SPI_clk has a falling edge.
   reg       [31:0] program_time;
   reg       [0:0]  reset_cmd_sent;                        //  Bit to indicate that one reset command has already been sent (for 2-reset commands chips).
   reg       [7:0]  rx_count;                              //  Tally used to indicate how many bits have been sent/received so far in a serialized operation.
   reg       [31:0] spi_addr;                              //  Address that a read command will read from.
   reg              spi_clk_phase;                         //  Signal that indicates whether SPI_clk is currently high or low.
   reg       [7:0]  sr;
   reg       [14:0] tbase_cnt;                             //  Tally used to keep track of number of HCLKS before a change in SPI_clk is required.
   reg       [31:0] word_count;                            //  Tally of how many words have been read from SPI_chip so far.
   reg              wr_en_done;
 
  //  Default Assignments
   assign rd_data_avail = 1'b0;
 
   parameter SPI_IDLE          = 4'b0000,
             SPI_PROGRAM       = 4'b0001,
             SPI_PROGRAM_DATA  = 4'b0010,
             SPI_RD_FINISHED   = 4'b0011,
             SPI_STATUS_CMD    = 4'b0100,
             SPI_STATUS_FINISH = 4'b0101,
             SPI_STATUS_RD     = 4'b0110,
             SPI_WRITE_ENABLE  = 4'b0111,
             WAIT_0            = 4'b1000;
 
 
   reg [3:0] visual_SPI_CTRL_SM_current, visual_SPI_CTRL_SM_next;
 
   reg              visual_boot_sdo_next;
   reg              visual_boot_ss_next;
   reg              visual_rd_all_done_next;
   reg       [31:0] visual_rd_data_next;
   reg              visual_latch_sdi_next;
   reg       [31:0] visual_cks_data_next;
   reg              visual_new_data_req_host_next;
   reg       [7:0]  visual_bitwidth_required_next;
   reg       [1:0]  visual_byte_cnt_next;
   reg       [31:0] visual_data_cnt_next;
   reg       [31:0] visual_data_word_in_next;
   reg       [39:0] visual_data_word_out_next;
   reg              visual_en_spi_clk_next;
   reg       [31:0] visual_program_time_next;
   reg       [0:0]  visual_reset_cmd_sent_next;
   reg       [7:0]  visual_rx_count_next;
   reg       [31:0] visual_spi_addr_next;
   reg       [7:0]  visual_sr_next;
   reg       [31:0] visual_word_count_next;
   reg              visual_wr_en_done_next;
 
 
   // Combinational process
   always  @(boot_sdo or boot_ss or rd_all_done or rd_data or latch_sdi or cks_data or bitwidth_required or byte_cnt or data_cnt or data_word_in or data_word_out or en_spi_clk or program_time or
             reset_cmd_sent or rx_count or spi_addr or sr or word_count or wr_en_done or start_spi_host or SW_DEBUG_MODE or en_spi_clk_lo or input_data or en_spi_clk_hi or boot_sdi or
             visual_SPI_CTRL_SM_current)
   begin : SPI_CTRL_SM_comb
      visual_new_data_req_host_next <= 1'b0;
      visual_boot_sdo_next <= boot_sdo;
      visual_boot_ss_next <= boot_ss;
      visual_rd_all_done_next <= rd_all_done;
      visual_rd_data_next <= rd_data;
      visual_latch_sdi_next <= latch_sdi;
      visual_cks_data_next <= cks_data;
      visual_bitwidth_required_next <= bitwidth_required;
      visual_byte_cnt_next <= byte_cnt;
      visual_data_cnt_next <= data_cnt;
      visual_data_word_in_next <= data_word_in;
      visual_data_word_out_next <= data_word_out;
      visual_en_spi_clk_next <= en_spi_clk;
      visual_program_time_next <= program_time;
      visual_reset_cmd_sent_next <= reset_cmd_sent;
      visual_rx_count_next <= rx_count;
      visual_spi_addr_next <= spi_addr;
      visual_sr_next <= sr;
      visual_word_count_next <= word_count;
      visual_wr_en_done_next <= wr_en_done;
 
 
 
      case (visual_SPI_CTRL_SM_current)
         SPI_IDLE:
            begin
               visual_spi_addr_next <= SPI_SRC_ADDR;
               visual_word_count_next <= 32'b0;
               visual_en_spi_clk_next <= 1'b0;
               visual_rx_count_next <= 8'b0;
               visual_boot_ss_next <= 1'b1;
               visual_reset_cmd_sent_next <= 1'b0;
               visual_cks_data_next <= 32'b0;
               visual_data_word_out_next <= 40'b0;
               visual_data_word_in_next <= 32'b0;
               visual_rd_data_next <= 32'b0;
               visual_boot_sdo_next <= 1'b0;
               visual_data_cnt_next <= 'b0;
               visual_wr_en_done_next <= 0;
               visual_sr_next <= SR_CMD;
               if (start_spi_host)
               begin
                  if (SW_DEBUG_MODE)
                  begin
                     visual_SPI_CTRL_SM_next <= SPI_RD_FINISHED;
                  end
                  else
                  begin
                     visual_rx_count_next <= 8'd0;
                     visual_data_word_out_next <= {sr, 32'b0};
                     visual_bitwidth_required_next <= 8'd8;
                     visual_SPI_CTRL_SM_next <= SPI_STATUS_CMD;
                  end
               end
               else
               begin
                  visual_SPI_CTRL_SM_next <= SPI_IDLE;
               end
            end
 
         //  Wait for HRESETN to be released before advancing.
         SPI_PROGRAM:
            begin
               if (en_spi_clk_lo)
               begin
                  visual_boot_ss_next <= 1'b0;
                  visual_en_spi_clk_next <= 1'b1;
                  visual_boot_sdo_next <= data_word_out[39];
                  visual_data_word_out_next <= data_word_out << 1;
                  if (rx_count == 8'd32)
                  begin
                     visual_rx_count_next <= 8'd0;
                     visual_boot_ss_next <= 1'b0;  //  keep low until data is written in
                     visual_data_word_out_next <= {input_data, 32'h0};
                     visual_new_data_req_host_next <= 1;
                     visual_en_spi_clk_next <= 1'b0;
                     visual_byte_cnt_next <= 0;
                     visual_SPI_CTRL_SM_next <= SPI_PROGRAM_DATA;
                  end
                  else
                  begin
                     visual_rx_count_next <= rx_count + 1;
                     visual_SPI_CTRL_SM_next <= SPI_PROGRAM;
                  end
               end
               else
               begin
                  visual_SPI_CTRL_SM_next <= SPI_PROGRAM;
               end
            end
 
         SPI_PROGRAM_DATA:
            begin
               if (en_spi_clk_lo)
               begin
                  visual_boot_ss_next <= 1'b0;
                  visual_en_spi_clk_next <= 1'b1;
                  visual_boot_sdo_next <= data_word_out[39];
                  visual_data_word_out_next <= data_word_out << 1;
                  if (rx_count == 8'd8)
                  begin
                     visual_rx_count_next <= 8'd0;
                     visual_boot_ss_next <= 1'b0;
                     visual_en_spi_clk_next <= 1'b0;
                     visual_data_word_out_next <= {input_data, 32'h0};
                     visual_byte_cnt_next <= byte_cnt + 1;
                     if (byte_cnt == 2'h3)
                     begin
                        visual_boot_ss_next <= 1'b1;
                        visual_data_cnt_next <= data_cnt + 1;
                        visual_program_time_next <= 0;
                        visual_spi_addr_next <= spi_addr + 4;
                        if (data_cnt == (DATA_WORD_CNT - 1))
                        begin
                           visual_rx_count_next <= 8'd0;
                           visual_boot_ss_next <= 1'b1;
                           visual_data_cnt_next <= 0;
                           visual_en_spi_clk_next <= 1'b0;
                           visual_rd_all_done_next <= 1'b1;
                           visual_SPI_CTRL_SM_next <= SPI_RD_FINISHED;
                        end
                        else
                        begin
                           visual_rx_count_next <= 8'd0;
                           visual_data_word_out_next <= {sr, 32'b0};
                           visual_bitwidth_required_next <= 8'd8;
                           visual_SPI_CTRL_SM_next <= SPI_STATUS_CMD;
                        end
                     end
                     else
                     begin
                        visual_new_data_req_host_next <= 1;
                        visual_SPI_CTRL_SM_next <= SPI_PROGRAM_DATA;
                     end
                  end
                  else
                  begin
                     visual_rx_count_next <= rx_count + 1;
                     visual_SPI_CTRL_SM_next <= SPI_PROGRAM_DATA;
                  end
               end
               else
               begin
                  visual_SPI_CTRL_SM_next <= SPI_PROGRAM_DATA;
               end
            end
 
         SPI_RD_FINISHED:
            begin
               if (start_spi_host == 1'b0)
               begin
                  visual_SPI_CTRL_SM_next <= SPI_IDLE;
               end
               else
               begin
                  visual_SPI_CTRL_SM_next <= SPI_RD_FINISHED;
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
                  if (SW_RESET_TYPE == 2'h2)
                  begin
                     if (data_word_in[7])
                     begin
                        visual_data_word_in_next <= 32'b0;
                        if (SKIP_WR_EN)
                        begin
                           visual_rx_count_next <= 8'd0;
                           visual_boot_ss_next <= 1'b1;
                           visual_en_spi_clk_next <= 1'b0;
                           visual_program_time_next <= PROG_TIME;
                           visual_SPI_CTRL_SM_next <= WAIT_0;
                        end
                        else
                        begin
                           visual_rd_all_done_next <= 1'b0;
                           visual_rx_count_next <= 8'd0;
                           visual_data_word_out_next <= {8'h06, 32'h0};
                           visual_SPI_CTRL_SM_next <= SPI_WRITE_ENABLE;
                        end
                     end
                     else
                     begin
                        visual_rx_count_next <= 8'd0;
                        visual_data_word_out_next <= {sr, 32'b0};
                        visual_bitwidth_required_next <= 8'd8;
                        visual_SPI_CTRL_SM_next <= SPI_STATUS_CMD;
                     end
                  end
                  else if (data_word_in[0])
                  begin
                     visual_rx_count_next <= 8'd0;
                     visual_data_word_out_next <= {sr, 32'b0};
                     visual_bitwidth_required_next <= 8'd8;
                     visual_SPI_CTRL_SM_next <= SPI_STATUS_CMD;
                  end
                  else
                  begin
                     visual_data_word_in_next <= 32'b0;
                     if (SKIP_WR_EN)
                     begin
                        visual_rx_count_next <= 8'd0;
                        visual_boot_ss_next <= 1'b1;
                        visual_en_spi_clk_next <= 1'b0;
                        visual_program_time_next <= PROG_TIME;
                        visual_SPI_CTRL_SM_next <= WAIT_0;
                     end
                     else
                     begin
                        visual_rd_all_done_next <= 1'b0;
                        visual_rx_count_next <= 8'd0;
                        visual_data_word_out_next <= {8'h06, 32'h0};
                        visual_SPI_CTRL_SM_next <= SPI_WRITE_ENABLE;
                     end
                  end
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
         SPI_WRITE_ENABLE:
            begin
               if (en_spi_clk_lo)
               begin
                  visual_boot_ss_next <= 1'b0;
                  visual_en_spi_clk_next <= 1'b1;
                  visual_boot_sdo_next <= data_word_out[39];
                  visual_data_word_out_next <= data_word_out << 1;
                  if (rx_count == 8'd8)
                  begin
                     visual_rx_count_next <= 8'd0;
                     visual_boot_ss_next <= 1'b1;
                     visual_en_spi_clk_next <= 1'b0;
                     visual_program_time_next <= PROG_TIME;
                     visual_SPI_CTRL_SM_next <= WAIT_0;
                  end
                  else
                  begin
                     visual_rx_count_next <= rx_count + 1;
                     visual_SPI_CTRL_SM_next <= SPI_WRITE_ENABLE;
                  end
               end
               else
               begin
                  visual_SPI_CTRL_SM_next <= SPI_WRITE_ENABLE;
               end
            end
 
         WAIT_0:
            begin
               if (program_time == PROG_TIME)
               begin
                  // program op
                  visual_data_word_out_next <= {WR_CMD, spi_addr[23:0], 8'h0};
                  visual_SPI_CTRL_SM_next <= SPI_PROGRAM;
               end
               else
               begin
                  visual_program_time_next <= program_time + 1;
                  visual_SPI_CTRL_SM_next <= WAIT_0;
               end
            end
 
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
         new_data_req_host <= 1'b0;
         en_spi_clk <= 1'b0;
         word_count <= 32'b0;
         rx_count <= 8'd0;
         boot_ss <= 1'b1;
         spi_addr <= SPI_SRC_ADDR;
         rd_all_done <= 1'b0;
         reset_cmd_sent <= 1'b0;
         cks_data <= 32'b0;
         data_word_out <= 40'b0;
         data_word_in <= 32'b0;
         rd_data <= 32'b0;
         boot_sdo <= 1'b0;
         data_cnt <= 'b0;
         sr <= SR_CMD;
         visual_SPI_CTRL_SM_current <= SPI_IDLE;
      end
      else
      begin
         boot_sdo <= visual_boot_sdo_next;
         boot_ss <= visual_boot_ss_next;
         rd_all_done <= visual_rd_all_done_next;
         rd_data <= visual_rd_data_next;
         latch_sdi <= visual_latch_sdi_next;
         cks_data <= visual_cks_data_next;
         new_data_req_host <= visual_new_data_req_host_next;
         bitwidth_required <= visual_bitwidth_required_next;
         byte_cnt <= visual_byte_cnt_next;
         data_cnt <= visual_data_cnt_next;
         data_word_in <= visual_data_word_in_next;
         data_word_out <= visual_data_word_out_next;
         en_spi_clk <= visual_en_spi_clk_next;
         program_time <= visual_program_time_next;
         reset_cmd_sent <= visual_reset_cmd_sent_next;
         rx_count <= visual_rx_count_next;
         spi_addr <= visual_spi_addr_next;
         sr <= visual_sr_next;
         word_count <= visual_word_count_next;
         wr_en_done <= visual_wr_en_done_next;
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
 
 
 
endmodule
