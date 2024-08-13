module ALU #(parameter DATA_WIDTH = 8 ,parameter FUNC_WIDTH = 4)(
    // Clock and Active low Async Reset
    input wire CLK,RST,

    // Datapath 
    input wire [DATA_WIDTH-1:0] A,B,
    output wire [DATA_WIDTH*2-1:0] ALU_OUT,

    // Control and Flags
    input wire [FUNC_WIDTH-1:0] ALU_FUNC,
    input wire Enable,
    output wire OUT_VALID
);

// Registering Inputs and Outputs 
    // Input 
    reg  [DATA_WIDTH-1:0] ALU_OP_1,ALU_OP_2;
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            ALU_OP_1 <= 'b0;
            ALU_OP_2 <= 'b0;
        end else begin
            ALU_OP_1 <= A;
            ALU_OP_2 <= B;
        end
    end

// ALU Function
    reg  [DATA_WIDTH*2-1:0] ALU_OUT_REG;
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            ALU_OUT_REG <= 'b0;
        end else begin
            if (Enable) begin
            case (ALU_FUNC)
            // Arithmetic
            'd0: ALU_OUT_REG <= ALU_OP_1 + ALU_OP_2;
            'd1: ALU_OUT_REG <= ALU_OP_1 - ALU_OP_2;
            'd2: ALU_OUT_REG <= ALU_OP_1 * ALU_OP_2;
            'd3: ALU_OUT_REG <= ALU_OP_1 / ALU_OP_2; 
            // Logic
            'd4: ALU_OUT_REG <= ALU_OP_1 & ALU_OP_2;
            'd5: ALU_OUT_REG <= ALU_OP_1 | ALU_OP_2;
            'd6: ALU_OUT_REG <= ~(ALU_OP_1 & ALU_OP_2);
            'd7: ALU_OUT_REG <= ~(ALU_OP_1 | ALU_OP_2);
            'd8: ALU_OUT_REG <= ALU_OP_1 ^ ALU_OP_2;
            'd9: ALU_OUT_REG <= ~(ALU_OP_1 ^ ALU_OP_2);
            // CMP
            'd10: ALU_OUT_REG <= (ALU_OP_1 == ALU_OP_2)? 'b1:'b0;
            'd11: ALU_OUT_REG <= (ALU_OP_1 > ALU_OP_2)?  'b1:'b0;
            //shift
            'd12: ALU_OUT_REG <= ALU_OP_1 >> 1;
            'd13: ALU_OUT_REG <= ALU_OP_1 << 1;

            default: ALU_OUT_REG <= 'b0;
            endcase
            end 
        end        
    end
    assign ALU_OUT = ALU_OUT_REG & {DATA_WIDTH*2{OUT_VALID}};

   
// Valid Signals 
    reg [1:0] VALID_REG;
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            VALID_REG <= 2'b0;
        end else begin
            VALID_REG <= {VALID_REG[0],Enable};
        end
    end
    assign OUT_VALID = VALID_REG[1];


endmodule

