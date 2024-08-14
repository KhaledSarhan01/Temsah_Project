module SYS_TOP #(parameter DATA_WIDTH = 8)(
    // Clocks and Resets
    input wire REF_CLK,
    input wire UART_CLK,
    input wire RST,
    //UART
    input wire RX_IN,
    output wire TX_OUT 
    output wire RX_ERROR
);
////------------ Parameters ------------////
    parameter  RegFile_MEM_SIZE   = 4 ;
    parameter  RegFile_ADDR_WIDTH = 16;
    
    parameter ALU_FUNC_WIDTH = 4;
    
    parameter FIFO_ADDR_WIDTH = 4;
    parameter FIFO_MEM_SIZE = 32;

////--------- Internal Signals ---------////
    // System Control Datapath
    wire [DATA_WIDTH-1:0] SYS_UART_TX_IN , UART_TX_IN;
    wire [DATA_WIDTH-1:0] RegFile_WORD_IN,RegFile_WORD_OUT;
    wire [DATA_WIDTH-1:0] COMMAND_IN,UART_RX_OUT;

    // UART Siganls and Flags
    wire COMMAND_IN_vaild,UART_RX_DATA_vaild;

    // FIFO Control and Flags
    wire F_RD_INC,F_WR_INC;
    wire F_FULL,F_EMPTY;

    // Clocks
    wire TX_CLK,RX_CLK,ALU_CLK;

    // ALU Datapath and Control
    wire [DATA_WIDTH-1:0] ALU_Op1,ALU_Op2;
    wire [DATA_WIDTH*2-1:0] ALU_OUT;
    wire [ALU_FUNC_WIDTH-1:0] ALU_FUNC;
    wire ALU_EN,ALU_OUT_VALID;
    wire ALU_CLK_EN; 

    //Register File Control and Flags
    wire RegFile_Rd_En,RegFile_Wr_En;
    wire RegFile_Data_Vaild;

    // Synchronizers
    wire RST_SYNC_REF,RST_SYNC_UART;

    // Configuration Signals
    wire [DATA_WIDTH-1:0] UART_Config,ClkDiv_Config;

////---------- Clock Domain 1 ----------////

// Register File
    RegFile #(.DATA_WIDTH(DATA_WIDTH),.MEM_SIZE(RegFile_MEM_SIZE) ,.ADDR_WIDTH(RegFile_ADDR_WIDTH)) Register_File (
    //Clock and Active Low Reset
    .CLK(REF_CLK),
    .RST(RST_SYNC_REF),
    //Datapath
    .WrData(RegFile_WORD_IN),         
    .RdData(RegFile_WORD_OUT),         
    //Control
    .Address(RegFile_ADDR),        
    .WR_En(RegFile_Wr_En),
    .RD_EN(RegFile_Rd_En),
    .RdData_Vaild(RegFile_Data_Vaild),
    //Internal Registers
    .REG0(ALU_Op1), // ALU INPUT 
    .REG1(ALU_Op2), // ALU INPUT
    .REG2(UART_Config), // UART_RX Configuraion
    .REG3(ClkDiv_Config) // Clock Divider  
);

// ALU
 ALU #(.DATA_WIDTH(DATA_WIDTH) ,.FUNC_WIDTH(ALU_FUNC_WIDTH))(
    // Clock and Active low Async Reset
    .CLK(ALU_CLK),
    .RST(RST_SYNC_REF),

    // Datapath 
    .A(ALU_Op1),
    .B(ALU_Op2),
    .ALU_OUT(ALU_OUT),

    // Control and Flags
    .ALU_FUNC(ALU_FUNC),
    .Enable(ALU_EN),
    .OUT_VALID(ALU_OUT_VALID)
);


////---------- Clock Domain 2 ----------////

////---------- Synchronizers -----------////

//FIFO    
    FIFO #(.DATA_WIDTH(DATA_WIDTH),.ADDR_WIDTH(FIFO_ADDR_WIDTH),.MEM_SIZE(FIFO_MEM_SIZE)) Async_FIFO (
        //Write Part
        .W_CLK(REF_CLK),
        .W_RST(RST_SYNC_REF),
        .W_INC(F_WR_INC),
        .WR_DATA(SYS_UART_TX_IN),
        .FULL(F_FULL),
        //Read Part
        .R_CLK(TX_CLK),
        .R_RST(RST_SYNC_UART),
        .R_INC(F_RD_INC),
        .RD_DATA(UART_TX_IN),
        .EMPTY(F_EMPTY)
    );
// Clock Gating
    CLK_GATE ALU_CLOCK (
        .CLK(REF_CLK),
        .CLK_EN(ALU_CLK_EN),
        .GATED_CLK(ALU_CLK)
    );

// Clock Synchronizer
    DATA_SYNC #(.NUM_STAGES(2),.BUS_WIDTH(DATA_WIDTH)) UART_RX_DATA_SYNC (
        .CLK(REF_CLK),
        .RST(RST_SYNC_REF),
        .Unsync_bus(UART_RX_OUT),
        .bus_enable(UART_RX_DATA_vaild),
        .sync_bus(COMMAND_IN),
        .enable_pulse(COMMAND_IN_vaild)
    );

// Clock Dividers
ClkDiv #(.Width(8)) UART_TX_Clock_Divider (
    // active low async reset 
    .i_rst_n(RST_SYNC_UART),
    // Reference Clock
    .i_ref_clk(UART_CLK),
    // Configuration 
    .i_clk_en(1'b1),
    .i_div_ratio(ClkDiv_Config),
    //output
    .o_div_clk(TX_CLK)
);

reg [3:0] UART_RX_Prescale;
always @(*) begin
    case (UART_Config)
            'd32: UART_RX_Prescale = 4'd1;
            'd16: UART_RX_Prescale = 4'd2;
            'd8:  UART_RX_Prescale = 4'd4;
            'd4:  UART_RX_Prescale = 4'd8; 
        default: begin
            UART_RX_Prescale = 4'd1;
        end
    endcase    
end
ClkDiv #(.Width(4)) UART_RX_Clock_Divider (
    // active low async reset 
    .i_rst_n(RST_SYNC_UART),
    // Reference Clock
    .i_ref_clk(UART_CLK),
    // Configuration 
    .i_clk_en(1'b1),
    .i_div_ratio(UART_RX_Prescale),
    //output
    .o_div_clk(RX_CLK)
);


// Reset Synchronizer
    RST_SYNC #(.NUM_STAGES(2)) RST_SYNC_1 (
    .RST(RST),
    .CLK(REF_CLK),
    .SYNC_RST(RST_SYNC_REF)
    );

    RST_SYNC #(.NUM_STAGES(2)) RST_SYNC_2 (
    .RST(RST),
    .CLK(UART_CLK),
    .SYNC_RST(RST_SYNC_UART)
    );

endmodule