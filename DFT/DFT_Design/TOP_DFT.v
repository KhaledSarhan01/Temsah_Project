module SYS_TOP #(parameter DATA_WIDTH = 8 ,parameter SCAN_CHAIN_NUM = 6)(
    // Clocks and Resets
    input wire REF_CLK,
    input wire UART_CLK,
    input wire RST_N,
    //UART
    input wire UART_RX_IN,
    output wire UART_TX_O, 
    output wire parity_error,framing_error,
    // DFT Ports 
    input wire test_mode,
    input wire scan_clk,
    input wire scan_rst,
    input wire SE,
    input  wire [SCAN_CHAIN_NUM-1:0] SI,
    output wire [SCAN_CHAIN_NUM-1:0] SO	
);
////------------ Parameters ------------////
    parameter  RegFile_MEM_SIZE   = 16 ;
    parameter  RegFile_ADDR_WIDTH = 4;
    
    parameter ALU_FUNC_WIDTH = 4;
    
    parameter FIFO_ADDR_WIDTH = 4;
    parameter FIFO_MEM_SIZE = 16;

////--------- Internal Signals ---------////
    // System Control Datapath
    wire [DATA_WIDTH-1:0] SYS_TX_DATA_OUT , UART_TX_IN;
    wire [DATA_WIDTH-1:0] RegFile_WORD_IN,RegFile_WORD_OUT;
    wire [DATA_WIDTH-1:0] SYS_RX_DATA_IN,UART_RX_OUT;

    // UART Siganls and Flags
    wire SYS_RX_DATA_VALID,UART_RX_DATA_vaild;
    wire TX_BUSY;

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
    wire [RegFile_ADDR_WIDTH-1:0] RegFile_ADDR;

    // Synchronizers
    wire RST_SYNC_REF,RST_SYNC_UART;

    // Configuration Signals
    wire [DATA_WIDTH-1:0] UART_Config,ClkDiv_Config;


////------------- DFT Logic -------------////
 // Clock Muxing
   wire REF_CLK_m;
   DFT_MUX REF_CLK_MUX(
    .select(test_mode),
    .scan_in(scan_clk),
    .main_in(REF_CLK),
    .mux_out(REF_CLK_m)
    );
   
   wire UART_CLK_m;
   DFT_MUX UART_CLK_MUX(
    .select(test_mode),
    .scan_in(scan_clk),
    .main_in(UART_CLK),
    .mux_out(UART_CLK_m)
    );

   wire RX_CLK_m;
    DFT_MUX RX_CLK_MUX(
    .select(test_mode),
    .scan_in(scan_clk),
    .main_in(RX_CLK),
    .mux_out(RX_CLK_m)
    );

   wire TX_CLK_m;
    DFT_MUX TX_CLK_MUX(
    .select(test_mode),
    .scan_in(scan_clk),
    .main_in(TX_CLK),
    .mux_out(TX_CLK_m)
    );

 // Clock Bypassing  
   wire ALU_CLK_EN_m;
   assign ALU_CLK_EN_m = test_mode | ALU_CLK_EN;  
 
// Reset Muxing  
   wire RST_m;
   assign RST_m = (test_mode)? scan_rst:RST_N;
    DFT_MUX RST_N_MUX(
    .select(test_mode),
    .scan_in(scan_rst),
    .main_in(RST_N),
    .mux_out(RST_m)
    );
   
   wire RST_SYNC_REF_m;
    DFT_MUX RST_SYNC_REF_MUX(
    .select(test_mode),
    .scan_in(scan_rst),
    .main_in(RST_SYNC_REF),
    .mux_out(RST_SYNC_REF_m)
    );

   wire RST_SYNC_UART_m;	
    DFT_MUX RST_SYNC_UART_MUX(
    .select(test_mode),
    .scan_in(scan_rst),
    .main_in(RST_SYNC_UART),
    .mux_out(RST_SYNC_UART_m)
    );

////---------- Clock Domain 1 ----------////
// System Control
    SYS_CONTRL #(.DATA_WIDTH(DATA_WIDTH),.ALU_FUNC_WIDTH(ALU_FUNC_WIDTH),.RegFile_ADDR_WIDTH(RegFile_ADDR_WIDTH)) 
    System_Control(   
    // Clock and Active Low async Reset
    .CLK(REF_CLK_m),
    .RST(RST_SYNC_REF_m),

    // ALU Datapath and Controls
    .ALU_OUT(ALU_OUT),
    .ALU_DATA_VALID(ALU_OUT_VALID),
    .ALU_FUNC(ALU_FUNC),
    .ALU_EN(ALU_EN),
    .ALU_CLK_EN(ALU_CLK_EN),

    // Register File Datapath and Control
    .RegFile_ADDRESS(RegFile_ADDR),
    .RegFile_WrEn(RegFile_Wr_En),
    .RegFile_RdEn(RegFile_Rd_En),
    .RegFile_WrData(RegFile_WORD_IN),
    .RegFile_RdData(RegFile_WORD_OUT),
    .RegFile_DATA_VAILD(RegFile_Data_Vaild),

    // UART RX Datapath and Control
    .RX_DATA_VALID(SYS_RX_DATA_VALID),
    .RX_DATA_IN(SYS_RX_DATA_IN),

    // UART TX Datapath and Control
    .FIFO_WR(F_WR_INC), 
    .FIFO_FULL(F_FULL),
    .TX_DATA_OUT(SYS_TX_DATA_OUT) 
    );
    
// Register File
    RegFile #(.DATA_WIDTH(DATA_WIDTH),.MEM_SIZE(RegFile_MEM_SIZE) ,.ADDR_WIDTH(RegFile_ADDR_WIDTH)) U0_RegFile (
    //Clock and Active Low Reset
    .CLK(REF_CLK_m),
    .RST(RST_SYNC_REF_m),
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
 ALU #(.DATA_WIDTH(DATA_WIDTH) ,.FUNC_WIDTH(ALU_FUNC_WIDTH)) ALU (
    // Clock and Active low Async Reset
    .CLK(ALU_CLK),
    .RST(RST_SYNC_REF_m),

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

// UART
    UART #(.DATA_WIDTH(DATA_WIDTH)) U0_UART (
    // Clocks and Active Low Reset
    .TX_CLK(TX_CLK_m),
    .RX_CLK(RX_CLK_m),
    .UART_RST(RST_SYNC_UART_m),

    // External Interface
    .RX_IN(UART_RX_IN),
    .TX_OUT(UART_TX_O),

    // Internal Interface
    .TX_DATA(UART_TX_IN),
    .RX_DATA(UART_RX_OUT),
    
    // Configuration
    .PAR_EN(UART_Config[0]),
    .PAR_TYP(UART_Config[1]),
    .PRESCALE(UART_Config[7:2]),

    // TX Controls 
    .TX_DATA_VALID(~(F_EMPTY)),
    .TX_BUSY(TX_BUSY),
    
    // RX Controls and Configuration
    .RX_DATA_VALID(UART_RX_DATA_vaild),
    .RX_PAR_ERROR(parity_error),
    .RX_STOP_ERROR(framing_error)
    );

    PULSE_GEN TX_BUSY_GEN(
    .CLK(TX_CLK_m),
    .RST(RST_SYNC_UART_m),
    .LVL_SIG(~(TX_BUSY)&&~(F_EMPTY)),
    .PULSE_GEN(F_RD_INC)
    );
////---------- Synchronizers -----------////

//FIFO    
    FIFO #(.DATA_WIDTH(DATA_WIDTH),.ADDR_WIDTH(FIFO_ADDR_WIDTH),.MEM_SIZE(FIFO_MEM_SIZE)) Async_FIFO (
        //Write Part
        .W_CLK(REF_CLK_m),
        .W_RST(RST_SYNC_REF_m),
        .W_INC(F_WR_INC),
        .WR_DATA(SYS_TX_DATA_OUT),
        .FULL(F_FULL),
        //Read Part
        .R_CLK(TX_CLK_m),
        .R_RST(RST_SYNC_UART_m),
        .R_INC(F_RD_INC),
        .RD_DATA(UART_TX_IN),
        .EMPTY(F_EMPTY)
    );
// Clock Gating
    CLK_GATE ALU_CLOCK (
        .CLK(REF_CLK_m),
        .CLK_EN(ALU_CLK_EN_m),
        .GATED_CLK(ALU_CLK)
    );

// Clock Synchronizer
    DATA_SYNC #(.NUM_STAGES(2),.BUS_WIDTH(DATA_WIDTH)) UART_RX_DATA_SYNC (
        .CLK(REF_CLK_m),
        .RST(RST_SYNC_REF_m),
        .Unsync_bus(UART_RX_OUT),
        .bus_enable(UART_RX_DATA_vaild),
        .sync_bus(SYS_RX_DATA_IN),
        .enable_pulse(SYS_RX_DATA_VALID)
    );

// Clock Dividers
ClkDiv #(.Width(8)) UART_TX_Clock_Divider (
    // active low async reset 
    .i_rst_n(RST_SYNC_UART_m),
    // Reference Clock
    .i_ref_clk(UART_CLK_m),
    // Configuration 
    .i_clk_en(1'b1),
    .i_div_ratio(ClkDiv_Config),
    //output
    .o_div_clk(TX_CLK)
);

reg [5:0] UART_RX_Prescale;
always @(*) begin
    case (UART_Config)
            6'd32: UART_RX_Prescale = 4'd1;
            6'd16: UART_RX_Prescale = 4'd2;
            6'd8:  UART_RX_Prescale = 4'd4;
            6'd4:  UART_RX_Prescale = 4'd8; 
        default: begin
            UART_RX_Prescale = 4'd1;
        end
    endcase    
end
ClkDiv #(.Width(6)) UART_RX_Clock_Divider (
    // active low async reset 
    .i_rst_n(RST_SYNC_UART_m),
    // Reference Clock
    .i_ref_clk(UART_CLK_m),
    // Configuration 
    .i_clk_en(1'b1),
    .i_div_ratio(UART_RX_Prescale),
    //output
    .o_div_clk(RX_CLK)
);


// Reset Synchronizer
    RST_SYNC #(.NUM_STAGES(2)) RST_SYNC_1 (
    .RST(RST_m),
    .CLK(REF_CLK_m),
    .SYNC_RST(RST_SYNC_REF)
    );

    RST_SYNC #(.NUM_STAGES(2)) RST_SYNC_2 (
    .RST(RST_m),
    .CLK(UART_CLK_m),
    .SYNC_RST(RST_SYNC_UART)
    );

endmodule
