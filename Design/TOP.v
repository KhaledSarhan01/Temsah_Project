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
    // System Control
    wire [DATA_WIDTH-1:0] SYS_UART_TX_IN , UART_TX_IN;
    
    // FIFO Control and Flags
    wire F_RD_INC,F_WR_INC;
    wire F_FULL,F_EMPTY;

    // Clocks
    wire TX_CLK;

    // Synchronizers
    wire RST_SYNC_REF,RST_SYNC_UART;

////---------- Clock Domain 1 ----------////

////---------- Clock Domain 2 ----------////

////---------- Synchronizers -----------////
    parameter ADDR_WIDTH = 4;
    parameter MEM_SIZE = 32;
    FIFO #(.DATA_WIDTH(DATA_WIDTH),.ADDR_WIDTH(ADDR_WIDTH),.MEM_SIZE(MEM_SIZE)) Async_FIFO (
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