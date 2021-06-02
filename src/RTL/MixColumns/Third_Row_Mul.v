module Third_Row_Mul(data_in, data_out);
    input [31:0] data_in;
    output [7:0] data_out;

    wire [7:0] gmul_2_0_out, gmul_2_1_out;

    gmul_2 gmul_2_Inst0(
        .data_in(data_in[23:16]),
        .data_out(gmul_2_0_out)
    );
    gmul_2 gmul_2_Inst1(
        .data_in(data_in[31:24]),
        .data_out(gmul_2_1_out)
    );

    assign data_out = (data_in[15:8] ^ data_in[7:0]) ^ (gmul_2_0_out ^ (gmul_2_1_out ^ data_in[31:24]));
endmodule