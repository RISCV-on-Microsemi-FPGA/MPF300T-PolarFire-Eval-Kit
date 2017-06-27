module reset_synchronizer (
    input  clock,
    input  reset,
    output reset_sync
);
reg [1:0]   sync_deasert_reg;
reg [1:0]   sync_asert_reg;

always @ (posedge clock or negedge reset)
    begin
        if (!reset)
            begin
                sync_deasert_reg[1:0] <= 2'b00;
            end
        else
            begin
                sync_deasert_reg[1:0] <= {sync_deasert_reg[0], 1'b1};
            end
    end
    
always @ (posedge clock)
    begin
        sync_asert_reg[1:0] <= {sync_asert_reg[0], sync_deasert_reg[1]};
    end
assign reset_sync = sync_asert_reg[1];

endmodule
