module gmul_b(data_in, data_out);
    input [7:0] data_in;
    output [7:0] data_out;

    wire [7:0] gmul_8_Inst0_Out, gmul_2_Inst0_Out;

    assign data_out = gmul_8_Inst0_Out ^ data_in ^ gmul_2_Inst0_Out;

    gmul_8 gmul_8_Inst0(.data_in(data_in), .data_out(gmul_8_Inst0_Out));
    gmul_2 gmul_2_Inst0(.data_in(data_in), .data_out(gmul_2_Inst0_Out));
endmodule