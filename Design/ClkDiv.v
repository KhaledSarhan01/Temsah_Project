/*
    Author      : Khaled Sarhan
    Date        : 19/7/2024
*/
module ClkDiv #(parameter Width = 8)(
    // active low async reset 
    input i_rst_n,
    // Reference Clock
    input i_ref_clk,
    // Configuration 
    input i_clk_en,
    input [Width-1:0] i_div_ratio,
    //output
    output wire o_div_clk
);
// Important Signals and logic
    wire counter_enable;
    assign counter_enable = i_clk_en && (i_div_ratio != 'd0) && (i_div_ratio != 'd1);

    wire [Width-1:0] half_div_ratio;
    assign half_div_ratio = i_div_ratio >> 1;

 //Main edge counter
    reg [Width-1:0] edge_count;
    always @(posedge i_ref_clk or negedge i_rst_n) begin
        if (!i_rst_n) begin
            edge_count <= 'b0;
        end else begin
            if (counter_enable) begin
                if (edge_count != i_div_ratio) begin
                    edge_count <= edge_count + 'd1;
                end else begin
                    edge_count <= 'd1;
                end
            end else begin
                    edge_count <= 'b0;
            end
        end
    end 

 // Divider Clock  logic
  reg reg_div_clk;
 always @(posedge i_ref_clk or negedge i_rst_n) begin
    if (!i_rst_n) begin
        reg_div_clk <= 1'b0;
    end else begin
         if (counter_enable)begin
                if (((edge_count == half_div_ratio) && reg_div_clk)||!(edge_count) ||((edge_count == i_div_ratio) && ~reg_div_clk) ) begin
                reg_div_clk <= ~reg_div_clk;
                end
        end else begin
            reg_div_clk <= 1'b0;
        end
    end
 end

// output logic
assign o_div_clk = (counter_enable)? reg_div_clk:i_ref_clk;

endmodule