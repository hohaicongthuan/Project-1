module gmul_b(data_in, data_out);
    input [7:0] data_in;
    output [7:0] data_out;

    wire [7:0] gmul_9_Inst0_Out, gmul_2_Inst0_Out;

    assign data_out = gmul_9_Inst0_Out ^ gmul_2_Inst0_Out;

    gmul_9 gmul_9_Inst0(.data_in(data_in), .data_out(gmul_9_Inst0_Out));
    gmul_2 gmul_2_Inst0(.data_in(data_in), .data_out(gmul_2_Inst0_Out));
endmodule