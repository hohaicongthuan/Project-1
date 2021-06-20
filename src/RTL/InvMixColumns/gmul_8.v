module gmul_8(data_in, data_out);
    input [7:0] data_in;
    output [7:0] data_out;

    wire [7:0] gmul_4_Inst0_Out, gmul_4_Inst1_Out;

    gmul_4 gmul_4_Inst0(.data_in(data_in), .data_out(gmul_4_Inst0_Out));
    gmul_4 gmul_4_Inst1(.data_in(data_in), .data_out(gmul_4_Inst1_Out));

    assign data_out = gmul_4_Inst0_Out ^ gmul_4_Inst1_Out;
endmodule