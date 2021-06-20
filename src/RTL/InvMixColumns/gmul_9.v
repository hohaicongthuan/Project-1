module gmul_9(data_in, data_out);
    input [7:0] data_in;
    output [7:0] data_out;

    wire [7:0] gmul_8_Inst0_Out;

    assign data_out = data_in ^ gmul_8_Inst0_Out;

    gmul_8 gmul_8_Inst0(.data_in(data_in), .data_out(gmul_8_Inst0_Out));
endmodule