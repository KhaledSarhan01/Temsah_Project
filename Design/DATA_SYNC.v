module DATA_SYNC #(parameter NUM_STAGES = 2 ,parameter BUS_WIDTH = 8)(
    input wire CLK,RST,
    input wire [BUS_WIDTH-1:0] Unsync_bus,
    input wire bus_enable,
    output wire [BUS_WIDTH-1:0] sync_bus,
    output wire enable_pulse
);
// syncing enable signal
    reg sync_bus_enable;
    reg [NUM_STAGES-1:0] synchronizer;
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            synchronizer <= 'b0;
            sync_bus_enable <= 1'b0;
        end else begin
            synchronizer <= synchronizer <<1;
            synchronizer[0] <= bus_enable;
            sync_bus_enable <= synchronizer[NUM_STAGES-1];
        end
    end

// pulse Generator
    reg enable_pulse_flipflop;
    wire pulse_gen;
    assign pulse_gen = ~(sync_bus_enable) & synchronizer[NUM_STAGES-1];
    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            enable_pulse_flipflop <= 1'b0;
        end else begin
            enable_pulse_flipflop <= pulse_gen;
        end
    end
    assign enable_pulse = enable_pulse_flipflop;
    
// syncing the bus 
    reg [BUS_WIDTH-1:0] sync_bus_register;
    always @(posedge CLK or negedge RST) begin
        if(!RST)begin
            sync_bus_register <= 'b0;
        end else begin
            if(pulse_gen)begin
                sync_bus_register <= Unsync_bus;
            end 
        end
    end
    assign sync_bus = sync_bus_register;
    
endmodule