// 8x16 Register file with read/write enable 
module RegFile #(parameter DATA_WIDTH = 8, parameter MEM_SIZE = 16 ,parameter ADDR_WIDTH = 4) (
    //Clock and Active Low Reset
    input   wire CLK,RST,
    //Datapath
    input   wire [DATA_WIDTH-1:0] WrData,         
    output  reg [DATA_WIDTH-1:0] RdData,         
    //Control
    input   wire [ADDR_WIDTH-1:0]   Address,        
    input   wire WR_En ,RD_EN,
    output  reg RdData_Vaild,
    //Internal Registers
    output  wire [DATA_WIDTH-1:0] REG0, // ALU INPUT 
    output  wire [DATA_WIDTH-1:0] REG1, // ALU INPUT
    output  wire [DATA_WIDTH-1:0] REG2, // UART Configuraion
    output  wire [DATA_WIDTH-1:0] REG3 // Clock Divider  
);

//Default Values of important Registers
localparam REG0_Defualt = 'b0,
           REG1_Defualt = 'b0, 
           REG2_Defualt = {6'd32,1'b0,1'b1}, // Prescale: REG[7:2]=32, Parity Type:REG[1]=0 ,Parity Enable:REG[0] = 1  
           REG3_Defualt = 'd32;              // Prescale: REG[7:0]=32 

//Memory Assignment 
    reg [DATA_WIDTH-1:0] Register [MEM_SIZE-1:0];

//Important Variables    
    integer i;

//sequentail block
always @(posedge CLK or negedge RST) begin
    if(!RST)begin
        Register[0] <= REG0_Defualt;
        Register[1] <= REG1_Defualt;
        Register[2] <= REG2_Defualt;
        Register[3] <= REG3_Defualt;

        for ( i = 4 ; i<= MEM_SIZE-1 ;i=i+1 ) begin
            Register[i] <= {DATA_WIDTH{1'b0}};
        end

        RdData_Vaild <= 1'b0;
	RdData <= {DATA_WIDTH{1'b0}};
    end 
    else begin
        if(WR_En && !(RD_EN))begin
            Register[Address] <= WrData ;
            RdData_Vaild <= 1'b0;
        end 
        else if (!(WR_En) && RD_EN) begin
            RdData <= Register[Address];
            RdData_Vaild <= 1'b1;
        end
        else begin
            RdData <= {DATA_WIDTH{1'b0}};
            RdData_Vaild <= 1'b0;
        end 
    end
end

//Outputs
  //  assign RdData = (!(WR_En) && RD_EN)? Register[Address]:'b0;
  // assign RdData_Vaild = (!(WR_En) && RD_EN);

    assign REG0 = Register[0];
    assign REG1 = Register[1];
    assign REG2 = Register[2];
    assign REG3 = Register[3];

endmodule
