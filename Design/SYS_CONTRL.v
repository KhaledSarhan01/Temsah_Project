module SYS_CONTRL #(parameter DATA_WIDTH = 8 , parameter ALU_FUNC_WIDTH = 4 , parameter RegFile_ADDR_WIDTH = 4 )
(   // Clock and Active Low async Reset
    input wire CLK,RST,

    // ALU Datapath and Controls
    input  wire [DATA_WIDTH*2-1:0] ALU_OUT,
    input  wire ALU_DATA_VALID,
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
    localparam [DATA_WIDTH-1:0] WrRegFile_CMD = 8'hAA,
                                RdRegFile_CMD = 8'hBB,
                                ALUOP_CMD     = 8'hCC,
                                ALUNOP_CMD    = 8'hDD;

////----------- State Encoding -----------////
    // USING BINARY ENCODING "Easy Debugging" 
    reg [3:0] current_state , next_state;
    
    //General
    localparam  [3:0] IDLE = 'b0,
                      CMD  = 'b1;
    
    // Register File Write Command
    localparam  [3:0]   WrRegFile_WAIT_ADDR = 'b10,
                        WrRegFile_WAIT_DATA = 'b11, 
                        WrRegFile_OPERATE   = 'b100;

    // Register File Read Command
    localparam  [3:0]   RdRegFile_WAIT_ADDR = 'b101,
                        RdRegFile_READ_DATA = 'b110,
                        RdRegFile_SEND_DATA = 'b111;

    // ALU Opreation with Opreands
    localparam  [3:0]   ALU_WAIT_OP_1  = 'b1000,
                        ALU_STORE_OP1  = 'b1001,
                        ALU_WAIT_OP_2  = 'b1010,
                        ALU_STORE_OP2  = 'b1011,
                        ALU_WAIT_FUNC  = 'b1100,
                        ALU_OPREATION  = 'b1101,
                        ALU_SEND_OUT_1 = 'b1110,
                        ALU_SEND_OUT_2 = 'b1111;                    

////---------- Next State Logic ----------////
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
                        RdRegFile_CMD: next_state = RdRegFile_WAIT_ADDR;
                        ALUOP_CMD    : next_state = ALU_WAIT_OP_1;
                        ALUNOP_CMD   : next_state = ALU_WAIT_FUNC;  
                        default: begin
                            next_state = CMD; 
                        end
                    endcase
                end

    // Write Data in Register File
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

    // Read Data From Register File
            RdRegFile_WAIT_ADDR:begin
                    if (RX_DATA_VALID) begin
                        next_state = RdRegFile_SEND_DATA;
                    end else begin
                        next_state = RdRegFile_WAIT_ADDR;
                    end
            end

            RdRegFile_READ_DATA:begin
                    if (RegFile_DATA_VAILD && ~(FIFO_FULL)) begin
                        next_state = RdRegFile_SEND_DATA;
                    end else begin
                        next_state = RdRegFile_READ_DATA;
                    end 
            end

            RdRegFile_SEND_DATA:begin
                    next_state = IDLE;
            end 

    // ALU Opreation with Oprends
            ALU_WAIT_OP_1:begin
                if (RX_DATA_VALID) begin
                    next_state = ALU_STORE_OP1;
                end else begin
                    next_state = ALU_WAIT_OP_1;
                end 
            end
            ALU_STORE_OP1: begin
                next_state = ALU_WAIT_OP_2;
            end

            ALU_STORE_OP2: begin
                next_state = ALU_WAIT_FUNC;
            end

            ALU_WAIT_OP_2:begin
                if (RX_DATA_VALID) begin
                    next_state = ALU_STORE_OP2;
                end else begin
                    next_state = ALU_WAIT_OP_2;
                end 
            end

            ALU_WAIT_FUNC:begin
                if (RX_DATA_VALID) begin
                    next_state = ALU_OPREATION;
                end else begin
                    next_state = ALU_WAIT_FUNC;
                end 
            end

            ALU_OPREATION:begin
                if (ALU_DATA_VALID) begin
                    next_state = ALU_SEND_OUT_1;
                end else begin
                    next_state = ALU_OPREATION;
                end
            end

            ALU_SEND_OUT_1:begin
                next_state = ALU_SEND_OUT_2;
            end

            ALU_SEND_OUT_2:begin
                next_state = IDLE;
            end

            default: begin
                next_state = IDLE;
            end
        endcase
    end

////----------- Datapath Logic -----------////
// Data Input Operations
    reg [DATA_WIDTH-1:0] RegFile_ADDR_Register,RX_Data_Register;
    reg [DATA_WIDTH*2-1:0] ALU_Result ;
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            RegFile_ADDR_Register   <= 'b0;
            RX_Data_Register        <= 'b0;
            ALU_Result              <= 'b0;
        end else begin
            case (current_state)
            // Write Command
              WrRegFile_WAIT_ADDR  : RegFile_ADDR_Register   <= RX_DATA_IN ;
              WrRegFile_WAIT_DATA  : RX_Data_Register        <= RX_DATA_IN ;
            // Read Command   
              RdRegFile_WAIT_ADDR  : RegFile_ADDR_Register <= RX_DATA_IN ;
              RdRegFile_READ_DATA  : RX_Data_Register      <= RegFile_RdData;
            // ALU Operation with Opreands  
              ALU_WAIT_OP_1      : RX_Data_Register    <= RX_DATA_IN ;
              ALU_WAIT_OP_2      : RX_Data_Register    <= RX_DATA_IN ;
              ALU_WAIT_FUNC      : RX_Data_Register    <= RX_DATA_IN ;
              ALU_OPREATION      : ALU_Result          <= ALU_OUT   ;
            endcase
        end        
    end
// Data Ouput Operation
    always @(*) begin
        RegFile_WrData  = 'b0; 
        RegFile_ADDRESS = 'b0;
        TX_DATA_OUT     = 'hffff;
        ALU_FUNC        = 'b0;
        case (current_state)
        // Write Command
            WrRegFile_OPERATE: begin
                RegFile_WrData  = RX_Data_Register ;
                RegFile_ADDRESS = RegFile_ADDR_Register; 
            end 
        // Read Command
            RdRegFile_SEND_DATA: begin
                TX_DATA_OUT     = RX_Data_Register ;
                RegFile_ADDRESS = RegFile_ADDR_Register;
            end
        // ALU Operation with Opreands
            ALU_STORE_OP1: begin
                RegFile_WrData  = RX_Data_Register ;
                RegFile_ADDRESS = 'b0;
            end
            ALU_STORE_OP2: begin
                RegFile_WrData  = RX_Data_Register ;
                RegFile_ADDRESS = 'b1;
            end
            ALU_OPREATION : begin
                ALU_FUNC = RX_Data_Register[ALU_FUNC_WIDTH-1:0]; 
            end 
            ALU_SEND_OUT_1: begin
                TX_DATA_OUT = ALU_Result[DATA_WIDTH-1:0];
            end
            ALU_SEND_OUT_2: begin
                TX_DATA_OUT = ALU_Result[DATA_WIDTH*2-1:DATA_WIDTH];
            end

            default: begin
                RegFile_WrData = 'b0;
                RegFile_ADDRESS = 'b0; 
                TX_DATA_OUT     = 'hff;
                ALU_FUNC        = 'b0;
            end
        endcase
    end

////-------- Control output Logic --------////
    always @(*) begin
        RegFile_WrEn = 1'b0;
        RegFile_RdEn = 1'b0;
        FIFO_WR      = 1'b0;
        ALU_EN       = 1'b0;
        ALU_CLK_EN   = 1'b0;

        case (current_state)
        // Write Command
            WrRegFile_OPERATE: begin
                RegFile_WrEn = 1'b1;
                RegFile_RdEn = 1'b0; 
            end 
        // Read Command 
            RdRegFile_READ_DATA: begin
                RegFile_WrEn = 1'b0;
                RegFile_RdEn = 1'b1; 
            end
            RdRegFile_SEND_DATA: begin
                FIFO_WR = 1'b1;  
            end
        // ALU Operation with Opreands
            ALU_STORE_OP1: begin
                RegFile_WrEn = 1'b1;
                RegFile_RdEn = 1'b0;
                ALU_CLK_EN   = 1'b1;
            end
            ALU_STORE_OP2: begin
                RegFile_WrEn = 1'b1;
                RegFile_RdEn = 1'b0;
                ALU_CLK_EN   = 1'b1; 
            end  
            ALU_OPREATION : begin
                ALU_EN       = 1'b1;
                ALU_CLK_EN   = 1'b1;
            end
            ALU_SEND_OUT_1 :begin
                FIFO_WR = 1'b1; 
            end     
            ALU_SEND_OUT_2 :begin
                FIFO_WR = 1'b1; 
            end

            default: begin
                RegFile_WrEn = 1'b0;
                RegFile_RdEn = 1'b0;
                FIFO_WR      = 1'b0; 
                ALU_EN       = 1'b0;
                ALU_CLK_EN   = 1'b0;
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

    Second Command : Register File Read 
        Expected Input: (Frame 0: Command "0xBB") - (Frame 1: Read Address)
        Expected Output: (Output Data Reg[Rd_ADDR])
        Behavouir: IDLE --> CMD --> RdRegFile_WAIT_ADDR --> RdRegFile_READ_DATA --> RdRegFile_SEND_DATA --> IDLE 
            - IDLE State is default.
            - When Command came "RX_Flag HIGH" then check the Command.
            - if Command Decoder is Read RegFile , wait for Second Frame "Read Address"
            - When Address came "RX_Flag HIGH", Store the Address inside the Register and make the Operation.
            - After Getting the Data, Send it to FIFO.
            - Finally return back to IDLE. 

    Third Command : ALU Operation Command With Opreand 
        Expected Input: (Frame 0: Command "0xCC") - (Frame 1: ALU OP 1) - (Frame 2: ALU OP 2) - (Frame 3: ALU FUNC)
        Expected Output: (Frame 0: ALU OUT LSB) - (Frame 1: ALU OUT MSB)
        Behavouir: 
            IDLE --> CMD --> ALU_WAIT_OP_1 --> ALU_WAIT_OP_2 --> ALU_WAIT_FUNC 
            --> ALU_OPREATION --> ALU_SEND_OUT_1 --> ALU_SEND_OUT_2 --> IDLE   
                
*/