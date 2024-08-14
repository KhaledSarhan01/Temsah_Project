module PULSE_GEN (
    input  wire CLK,RST,
    input  wire LVL_SIG,
    output wire PULSE_GEN
);

// Register Part
    reg PULSE_GEN_flipflop;
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            PULSE_GEN_flipflop <= 1'b0;
        end else begin
            PULSE_GEN_flipflop <= ~(PULSE_GEN_flipflop) & LVL_SIG;
        end
    end
    assign PULSE_GEN = PULSE_GEN_flipflop;

endmodule