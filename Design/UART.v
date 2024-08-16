module UART #(parameter DATA_WIDTH = 8)(
    // Clocks and Active Low Reset
    input wire TX_CLK,RX_CLK,
    input wire UART_RST,

    // External Interface
    input  wire RX_IN,
    output wire TX_OUT,

    // Internal Interface
    input  wire [DATA_WIDTH-1:0] TX_DATA,
    output wire [DATA_WIDTH-1:0] RX_DATA,
    
    // Configuration
    input wire PAR_EN,PAR_TYP,
    input wire [5:0] PRESCALE,

    // TX Controls 
    input  wire TX_DATA_VALID,
    output wire TX_BUSY,
    
    // RX Controls and Configuration
    output wire RX_DATA_VALID,
    output wire RX_PAR_ERROR,
    output wire RX_STOP_ERROR
);

UART_Tx #(.Width(DATA_WIDTH)) UART_TX(
    .CLK(TX_CLK), 
    .rst(UART_RST),
    .Tx_out(TX_OUT),
    .P_data(TX_DATA),
    .PAR_TYP(PAR_TYP), 
    .PAR_EN(PAR_EN),
    .Data_valid(TX_DATA_VALID), 
    .Busy(TX_BUSY)
);
    //source file

/*
UART_Rx #(.Width(DATA_WIDTH)) UART_RX(
    //clock and active low async reset
    .CLK(RX_CLK),
    .RST(UART_RST),
    //Main input 
    .RX_IN(RX_IN),
    //outputs
    .P_DATA(RX_DATA),

    //configuration inputs
    .PAR_TYP(PAR_TYP),
    .PAR_EN(PAR_EN),
    .Prescale(PRESCALE),
    
    .data_valid(RX_DATA_VALID), 
    .Parity_Error(RX_PAR_ERROR),
    .Stop_Error(RX_STOP_ERROR)
    );
    // source file
../Design/UART/Configuration.v
../Design/UART/Controller.v
../Design/UART/Sampler.v
../Design/UART/Sampling_Register.v
../Design/UART/UART_RX.v
*/

//El Temash UART RX
        UART_RX #(.DATA_WIDTH(DATA_WIDTH)) UART_RX(
    // Clock and Active Low Async Reset
        .CLK(RX_CLK),
        .RST(UART_RST),
    // Datapath
        .RX_IN(RX_IN),
        .P_DATA(RX_DATA),
    // Configuration
        .parity_enable(PAR_EN),
        .parity_type(PAR_TYP),
        .Prescale(PRESCALE), 
    // Flags 
        .data_valid(RX_DATA_VALID),
        .parity_error(RX_PAR_ERROR),
        .framing_error(RX_STOP_ERROR)
    );

endmodule