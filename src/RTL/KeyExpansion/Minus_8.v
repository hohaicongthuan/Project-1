module Minus_8(data_in, data_out);
    input [5:0] data_in;
    output [5:0] data_out;

    assign data_out = data_in - 6'd8;
endmodule