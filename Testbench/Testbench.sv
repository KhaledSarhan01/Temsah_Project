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
    wire tb_RX_ERROR; 

////---------- Clock Generation ----------////
    // Reference Frequency = 100 MHz "Period = 10 ns"
    // UART Frequency = 3.6864 MHz   "Period = 271.267361 ns"
    localparam REF_Clock_Period  = 10;
    localparam UART_Clock_Period = 271.267361;
    localparam STD_UART_Period   = UART_Clock_Period*32;
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
    .TX_OUT(tb_TX_OUT),
    .RX_ERROR(tb_RX_ERROR) 
    );

////-------------- Parameter -------------////
    localparam [1:0] PAR_DISABLED = 2'b00,
                     EVEN_PARITY  = 2'b10,
                     ODD_PARITY   = 2'b11;
////------------- Test Cases ------------////
initial begin
    $display("----------- Testbench Started -----------");
    // Initialization and Reset
    Initialization();
    Reset();
    //////////////////////////////////////////////////////////
    ///////////////// Default Configuration //////////////////
    ////////////// Prescale = 32 , Even Parity ///////////////
    //////////////////////////////////////////////////////////
    
    // Register File Write Command 
        Send_WR_CMD(8'h05,8'hA6,EVEN_PARITY);

    // Register File Read Command 
        Send_RD_CMD(8'h05,EVEN_PARITY);    

    // Testbench Ended
    $display("------------ Testbench Ended ------------");
    #50; $stop;
end

////--------------- Tasks ---------------////
task Initialization();
    begin
       tb_RST   = 1'b1;
       tb_RX_IN = 1'b1;
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

task Send_WR_CMD;
    input [DATA_WIDTH-1:0] WR_Address;
    input [DATA_WIDTH-1:0] WR_Data;
    input [2:0] PAR_MODE;
    begin
        // Frame 0 : Command Frame
         Send_Frame(8'hAA,PAR_MODE);
        // Frame 1 : Address Frame
         Send_Frame(WR_Address,PAR_MODE);   
        // Frame 2 : Data Frame
         Send_Frame(WR_Data,PAR_MODE); 
        
        // Wait to Make it work
        #(STD_UART_Period *4); 

    end
endtask 

task Send_RD_CMD;
    input [DATA_WIDTH-1:0] RD_Address;
    input [2:0] PAR_MODE;
    begin
        // Frame 0 : Command Frame
         Send_Frame(8'hBB,PAR_MODE);
        // Frame 1 : Address Frame
         Send_Frame(RD_Address,PAR_MODE);   
        
        // Wait to Make it work
        #(STD_UART_Period *17); 

    end
endtask 

task Send_Frame;
    input [DATA_WIDTH-1:0] DATA;
    input [2:0] PAR_MODE;
    integer i;
    begin
        #(STD_UART_Period);
       // Send Start BIT
            tb_RX_IN = 1'b0;
            #(STD_UART_Period);
       // Send Data BITS
            for ( i = 0; i <= DATA_WIDTH-1 ; i = i+1)begin
               tb_RX_IN = DATA[i];
               #(STD_UART_Period); 
            end 
       // Send STOP/Parity bits
           if (PAR_MODE == PAR_DISABLED) begin
                // Send Stop Bit
                tb_RX_IN = 1'b1;
           end else begin
                if (PAR_MODE == EVEN_PARITY) begin
                    // Send PARITY BIT
                    tb_RX_IN = ^(DATA);
                    #(STD_UART_Period);
                    // Send Stop Bit
                    tb_RX_IN = 1'b1;
                end else begin
                    // Send PARITY BIT
                    tb_RX_IN = ~^(DATA);
                    #(STD_UART_Period);
                    // Send Stop Bit
                    tb_RX_IN = 1'b1;
                   
                end
           end
            #(STD_UART_Period);
    end
endtask
endmodule