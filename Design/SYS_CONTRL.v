module SYS_CONTRL #(parameter DATA_WIDTH = 8 , parameter ALU_FUNC_WIDTH = 4 , parameter RegFile_ADDR_WIDTH = 4 )
(   // Clock and Active Low async Reset
    input wire CLK,RST,

    // ALU Datapath and Controls
    input  wire [DATA_WIDTH*2-1:0] ALU_OUT,
    input  wire [DATA_WIDTH-1:0] ALU_DATA_VALID,
    output reg [ALU_FUNC_WIDTH-1:0] ALU_FUNC,
    output reg ALU_EN,
    output reg ALU_CLK_EN,

    // Register File Datapath and Control
    output reg  [RegFile_ADDR_WIDTH-1:0] RegFile_ADDRESS,
    output reg  RegFile_WrEn,RegFile_RdEn,
    output reg  [DATA_WIDTH-1:0] RegFile_WrData,
    input  wire [DATA_WIDTH-1:0] RegFile_RdData,
    input  wire RegFile_DATA_VAILD,

    // UART RX Datapath and Control
    input wire RX_DATA_VALID,
    input wire [DATA_WIDTH-1:0] RX_DATA_IN,

    // UART TX Datapath and Control
    output reg FIFO_WR, 
    input  wire FIFO_FULL,
    output reg [DATA_WIDTH-1:0] TX_DATA_OUT 
);
////------------- Parameters -------------////
    localparam [DATA_WIDTH-1:0] WrRegFile_CMD = 8'hAA ;

////----------- State Encoding -----------////
    // USING BINARY ENCODING "Easy Debugging" 
    reg [3:0] current_state , next_state;
    
    //General
    localparam  [3:0] IDLE = 4'b0000,
                      CMD  = 4'b0001;
    
    // Register File Write Command
    localparam  [3:0]   WrRegFile_WAIT_ADDR = 4'b0010,
                        WrRegFile_WAIT_DATA = 4'b0011, 
                        WrRegFile_OPERATE   = 4'b0100;

////---------- Next State Logic ----------////
/*
    COMMANDS:
        // UART RX
        input wire [DATA_WIDTH-1:0] RX_DATA_IN,

    FALGS:
        // ALU
        input  wire [DATA_WIDTH-1:0] ALU_DATA_VALID,
        // Register File
        input  wire RegFile_DATA_VAILD,
        // UART RX 
        input wire RX_DATA_VALID,
        // UART TX 
        input  wire FIFO_FULL,    
*/
    always @(*) begin
        case (current_state)
            IDLE: begin
                    if (RX_DATA_VALID) begin
                        next_state = CMD;
                    end else begin
                        next_state = IDLE;
                    end
                end

            CMD: begin
                    case (RX_DATA_IN)
                        WrRegFile_CMD: next_state = WrRegFile_WAIT_ADDR;
                        default: begin
                            next_state = IDLE; 
                        end
                    endcase
                end

            WrRegFile_WAIT_ADDR: begin
                    if (RX_DATA_VALID) begin
                        next_state = WrRegFile_WAIT_DATA;
                    end else begin
                        next_state = WrRegFile_WAIT_ADDR;
                    end
                end

            WrRegFile_WAIT_DATA: begin
                    if (RX_DATA_VALID) begin
                        next_state = WrRegFile_OPERATE;
                    end else begin
                        next_state = WrRegFile_WAIT_DATA;
                    end
                end 

            WrRegFile_OPERATE: begin
                    next_state = IDLE;
                end 

            default: begin
                next_state = IDLE;
            end
        endcase
    end

////----------- Datapath Logic -----------////
/*
    DATAPATH: 
        // ALU 
        input  wire [DATA_WIDTH*2-1:0] ALU_OUT,
        // Register File
        output reg [DATA_WIDTH-1:0] RegFile_WrData,
        input  wire [DATA_WIDTH-1:0] RegFile_RdData,
        // UART TX Datapath and Control
        output reg [DATA_WIDTH-1:0] TX_DATA_OUT

    COMMANDS:
        //ALU
        output reg [ALU_FUNC_WIDTH-1:0] ALU_FUNC, 
        // Register File 
        output reg [RegFile_ADDR_WIDTH-1:0] RegFile_ADDRESS,    
*/
// Data Input Operations
    reg [DATA_WIDTH-1:0] RegFile_ADDR_Register,RegFile_WrData_Register,RegFile_RdData_Register;
    always @(posedge CLK or negedge RST ) begin
        if (!RST) begin
            RegFile_ADDR_Register   <= 'b0;
            RegFile_WrData_Register <= 'b0;
            //RegFile_RdData_Register <= 'b0;
        end else begin
            case (current_state)
              WrRegFile_WAIT_ADDR  : RegFile_ADDR_Register   <= RX_DATA_IN ;
              WrRegFile_WAIT_DATA  : RegFile_WrData_Register <= RX_DATA_IN ; 
            endcase
        end        
    end
// Data Ouput Operation
    always @(*) begin
        RegFile_WrData  = 'b0; 
        RegFile_ADDRESS = 'b0;
        case (current_state)
            WrRegFile_OPERATE: begin
                    RegFile_WrData  = RegFile_WrData_Register;
                    RegFile_ADDRESS = RegFile_ADDR_Register; 
                end 

            default: begin
                RegFile_WrData = 'b0;
                RegFile_ADDRESS = 'b0; 
            end
        endcase
    end

////-------- Control output Logic --------////
/*
    CONTROLS:
        //ALU
        output reg ALU_EN,
        output reg ALU_CLK_EN,
        // Register File
        output reg RegFile_WrEn,RegFile_RdEn,
        // UART TX 
        output reg FIFO_WR,
*/
    always @(*) begin
        RegFile_WrEn = 'b0;
        RegFile_RdEn = 'b0;
        case (current_state)
            WrRegFile_OPERATE: begin
                    RegFile_WrEn = 'b1;
                    RegFile_RdEn = 'b0; 
                end 

            default: begin
                RegFile_WrEn = 'b0;
                RegFile_RdEn = 'b0; 
            end
        endcase
    end

////-------- Current State Logic ---------////
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            current_state <= IDLE;
        end else begin
            current_state <= next_state;
        end
    end

endmodule
/*
    First Command: Regsister File Write
        Expected Input:  (Frame 0: Command "0xAA") - (Frame 1: Write Address) - (Frame 2: Write Data)    
        Expected Output: NO TX OUT - Just add the Value input Value to Register 
        Behavouir: IDLE --> CMD --> WrRegFile_WAIT_ADDR --> WrRegFile_WAIT_DATA --> WrRegFile_OPERATE --> IDLE  
            - IDLE State is default.
            - When Command came "RX_Flag HIGH" then check the Command.
            - if Command Decoder is Write Register, wait for Second Frame "Write Address"
            - When Address came "RX_Flag HIGH", Store the Address inside the Register and wait for Data.
            - When Data came "RX_Flag HIGH", make the operation on the Register file.
            - Finally return back to IDLE. 
*/