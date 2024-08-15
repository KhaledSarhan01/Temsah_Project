module SYS_CONTRL #(parameter DATA_WIDTH = 8 , parameter ALU_FUNC_WIDTH = 4 , parameter RegFile_ADDR_WIDTH = 4 )
(   // Clock and Active Low async Reset
    input wire CLK,RST,

    // ALU Datapath and Controls
    input  wire [DATA_WIDTH*2-1:0] ALU_OUT,
    input  wire [DATA_WIDTH-1:0] ALU_DATA_VALID,
    output wire [ALU_FUNC_WIDTH-1:0] ALU_FUNC,
    output wire ALU_EN,
    output wire ALU_CLK_EN,

    // Register File Datapath and Control
    output wire [RegFile_ADDR_WIDTH-1:0] RegFile_ADDRESS,
    output wire RegFile_WrEn,RegFile_RdEn,
    output wire [DATA_WIDTH-1:0] RegFile_WrData,
    input  wire [DATA_WIDTH-1:0] RegFile_RdData,

    // UART RX Datapath and Control
    input wire RX_DATA_VALID,
    input wire [DATA_WIDTH-1:0] RX_DATA_IN,

    // UART TX Datapath and Control
    output wire FIFO_WR, FIFO_FULL,
    output wire [DATA_WIDTH-1:0] TX_DATA_OUT 
);
    
endmodule