module AddRoundKey(data_inA, data_inB, data_out);
    input [127:0] data_inA, data_inB;
    output [127:0] data_out;

    assign data_out = data_inA ^ data_inB;
endmodule