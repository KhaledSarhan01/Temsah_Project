module DFT_MUX(
    input wire select,
    input wire scan_in,
    input wire main_in,
    output wire mux_out
);
    assign mux_out = (select)? scan_in:main_in;
endmodule