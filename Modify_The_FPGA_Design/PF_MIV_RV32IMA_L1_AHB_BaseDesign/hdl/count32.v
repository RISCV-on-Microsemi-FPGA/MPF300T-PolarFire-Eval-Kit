// count32.v

module count32 (clk, rst, cnt);

input clk;
input rst;
output [31:0] cnt;
reg [31:0] cnt_i;
always@(posedge clk or negedge rst)
begin
   if (!rst)
      cnt_i <= 32'b0;
   else
      cnt_i <= cnt_i + 1'b1;
   end   

assign cnt = cnt_i;

endmodule
