module RST_SYNC #(parameter  NUM_STAGES = 2)(
    input  wire RST,CLK,
    output wire SYNC_RST
);
//synchronizer logic
    reg [NUM_STAGES-1:0] synchronizer;
    always @(posedge CLK or negedge RST) begin
        if(!RST)begin
            synchronizer <= 'b0;
        end else begin
            synchronizer <= synchronizer << 1 ;
            synchronizer[0] <= 1'b1;
        end
    end

//output logic
    assign SYNC_RST = synchronizer[NUM_STAGES-1];
endmodule