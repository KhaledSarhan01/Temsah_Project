`timescale 1ns/1ps
module tb_SYS_TOP ();

////-------------- Signals --------------////
    parameter DATA_WIDTH = 8;
    // Clocks and Resets
    reg tb_REF_CLK;
    reg tb_UART_CLK;
    reg tb_RST;
    //UART
    reg  tb_RX_IN;
    wire tb_TX_OUT; 

////---------- Clock Generation ----------////
    // Reference Frequency = 100 MHz "Period = "
    // UART Frequency = 3.6864 MHz   "Period = "
    localparam REF_Clock_Period  = 10;
    localparam UART_Clock_Period = 271.267361;
    always #(REF_Clock_Period/2)  tb_REF_CLK  =~tb_REF_CLK;
    always #(UART_Clock_Period/2) tb_UART_CLK =~tb_UART_CLK;
    initial begin
        tb_REF_CLK  = 1'b1 ;
        tb_UART_CLK = 1'b1 ;
    end

////----------- Instantiation -----------////
    SYS_TOP #(.DATA_WIDTH(DATA_WIDTH)) DUT (
    // Clocks and Resets
    .REF_CLK(tb_REF_CLK),
    .UART_CLK(tb_UART_CLK),
    .RST(tb_RST),
    //UART
    .RX_IN(tb_RX_IN),
    .TX_OUT(tb_TX_OUT) 
    );

////------------- Test Cases ------------////
initial begin
    $display("----------- Testbench Started -----------");
    // Initialization and Reset
    Initialization();
    Reset();


    // Testbench Ended
    $display("------------ Testbench Ended ------------");
    #50; $stop;
end

////--------------- Tasks ---------------////
task Initialization();
    begin
       tb_RST   = 1'b1;
       tb_RX_IN = 1'b0;
    end
endtask

task Reset();
    begin
        #10;
        tb_RST = 1'b0;
        #10;
        tb_RST = 1'b1;
    end    
endtask
    
endmodule