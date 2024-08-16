module CLK_GATE(
    input wire CLK,
    input wire CLK_EN,
    output wire GATED_CLK
);

// RTL Implementation
/*    reg CLK_EN_LATCH;
    always @(negedge CLK or CLK_EN) begin
        if (!CLK) begin
            CLK_EN_LATCH <= CLK_EN;
        end
    end
    assign GATED_CLK = CLK_EN_LATCH & CLK;
*/    
// Synthesis Implementation 
TLATNCAX2M LATCHED_CLK (.E(CLK_EN),.CK(CLK),.ECK(GATED_CLK));
endmodule
