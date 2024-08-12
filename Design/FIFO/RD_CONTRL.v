module RD_CONTRL #(parameter ADDR_WIDTH = 4)(
    input wire r_clk,r_rst,
    //interface
    input wire rinc,
    output wire rempty,
    //pointers 
    input wire  [ADDR_WIDTH:0] w_ptr,
    output wire [ADDR_WIDTH:0] r_ptr,
    //memory
    output wire [ADDR_WIDTH-1:0] raddr
);

    //Registers
    wire [ADDR_WIDTH:0] gray_ptr;
    reg [ADDR_WIDTH:0] bn_ptr;
    reg empty_flag;

    // Binary Encoded Pointer Logic
    always @(posedge r_clk or negedge r_rst) begin
        if (!r_rst) begin
            bn_ptr <= 'b0;
        end else begin
            bn_ptr <= bn_ptr + (rinc & ~(empty_flag));
        end
    end

    // Gray Encoded Pointer Logic
    assign gray_ptr = (bn_ptr >>1) ^ bn_ptr;
    
    // Full Flag Logic
    always @(posedge r_clk or negedge r_rst) begin
        if (!r_rst) begin
            empty_flag <= 1'b1;
        end else begin
            if ((gray_ptr == w_ptr)) begin
                empty_flag <= 1'b1;
            end else begin
                empty_flag <= 1'b0;
            end
        end
    end
    //Outputs
    assign raddr = bn_ptr[ADDR_WIDTH-1:0];
    assign r_ptr = gray_ptr;
    assign rempty = empty_flag;

endmodule