module Mod_9_Eq_4(data_in, data_out);
    input [5:0] data_in;
    output data_out;

    assign data_out = data_in[0] & !data_in[1] & data_in[2];
endmodule