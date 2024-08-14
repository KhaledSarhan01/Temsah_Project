module PULSE_GEN (
    input  wire CLK,RST,
    input  wire LVL_SIG,
    output wire PULSE_GEN
);

// Combinational Part
    wire pulse_gen_comb;
    assign pulse_gen_comb = ~(PULSE_GEN_flipflop) & LVL_SIG;

// Register Part
    reg PULSE_GEN_flipflop;
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            PULSE_GEN_flipflop <= 1'b0;
        end else begin
            PULSE_GEN_flipflop <= pulse_gen_comb;
        end
    end
    assign PULSE_GEN = PULSE_GEN_flipflop;

endmodule