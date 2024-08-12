module SYS_TOP #(parameter DATA_WIDTH = 8)(
    // Clocks and Resets
    input wire REF_CLK,
    input wire UART_CLK,
    input wire RST,
    //UART
    input wire RX_IN,
    output wire TX_OUT 
);

////--------- Internal Signals ---------////
    // System Control Datapath
    wire [DATA_WIDTH-1:0] SYS_UART_TX_IN , UART_TX_IN;
    wire [DATA_WIDTH-1:0] RegFile_WORD_IN,RegFile_WORD_OUT;

    // FIFO Control and Flags
    wire F_RD_INC,F_WR_INC;
    wire F_FULL,F_EMPTY;

    // Clocks
    wire TX_CLK;

    // ALU Datapath and Control
    wire [DATA_WIDTH-1:0] ALU_Op1,ALU_Op2;

    //Register File Control and Flags
    wire RegFile_Rd_En,RegFile_Wr_En;
    wire RegFile_Data_Vaild;

    // Synchronizers
    wire RST_SYNC_REF,RST_SYNC_UART;

    // Configuration Signals
    wire [DATA_WIDTH-1:0] UART_Config,ClkDiv_Config;

////---------- Clock Domain 1 ----------////

// Register File
    parameter  RegFile_MEM_SIZE   = 4 ;
    parameter  RegFile_ADDR_WIDTH = 16;
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
    .REG2(UART_Config), // UART Configuraion
    .REG3(ClkDiv_Config) // Clock Divider  
);

////---------- Clock Domain 2 ----------////

////---------- Synchronizers -----------////

//FIFO    
    parameter FIFO_ADDR_WIDTH = 4;
    parameter FIFO_MEM_SIZE = 32;
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

endmodule