module Inv_First_Row_Mul(data_in, data_out);
    input [31:0] data_in;
    output [7:0] data_out;

    wire [7:0] gmul_e_Inst0_Out, gmul_b_Inst0_Out, gmul_d_Inst0_Out, gmul_9_Inst0_Out;

    gmul_e gmul_e_Inst0(
        .data_in(data_in[7:0]),
        .data_out(gmul_e_Inst0_Out)
    );
    gmul_b gmul_b_Inst0(
        .data_in(data_in[15:8]),
        .data_out(gmul_b_Inst0_Out)
    );
    gmul_d gmul_d_Inst0(
        .data_in(data_in[23:16]),
        .data_out(gmul_d_Inst0_Out)
    );
    gmul_9 gmul_9_Inst0(
        .data_in(data_in[31:24]),
        .data_out(gmul_9_Inst0_Out)
    );

    assign data_out = gmul_e_Inst0_Out ^ gmul_b_Inst0_Out ^ gmul_d_Inst0_Out ^ gmul_9_Inst0_Out;
endmodule