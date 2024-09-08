module DFT_MUX(
    input wire select,
    input wire scan_in,
    input wire main_in,
    output reg mux_out
);
	always @(*) begin
	    if(select) begin 
	    	 mux_out = scan_in;
	    end else begin 
	    	 mux_out = main_in;
	    end 
	end
    //assign mux_out = (select)? scan_in:main_in;
endmodule
