module MixColumns(data_in, data_out);
    input [127:0] data_in;
    output [127:0] data_out;

    wire [7:0] byte_0, byte_1, byte_2, byte_3,
               byte_4, byte_5, byte_6, byte_7,
               byte_8, byte_9, byte_10, byte_11,
               byte_12, byte_13, byte_14, byte_15; 

    First_Row_Mul First_Row_Mul_Inst0(
        .data_in(data_in[31:0]),
        .data_out(byte_0)
    );
    Second_Row_Mul Second_Row_Mul_Inst0(
        .data_in(data_in[31:0]),
        .data_out(byte_1)
    );
    Third_Row_Mul Third_Row_Mul_Inst0(
        .data_in(data_in[31:0]),
        .data_out(byte_2)
    );
    Fourth_Row_Mul Fourth_Row_Mul_Inst0(
        .data_in(data_in[31:0]),
        .data_out(byte_3)
    );
//======================================================//
    First_Row_Mul First_Row_Mul_Inst1(
        .data_in(data_in[63:32]),
        .data_out(byte_4)
    );
    Second_Row_Mul Second_Row_Mul_Inst1(
        .data_in(data_in[63:32]),
        .data_out(byte_5)
    );
    Third_Row_Mul Third_Row_Mul_Inst1(
        .data_in(data_in[63:32]),
        .data_out(byte_6)
    );
    Fourth_Row_Mul Fourth_Row_Mul_Inst1(
        .data_in(data_in[63:32]),
        .data_out(byte_7)
    );
//======================================================//
    First_Row_Mul First_Row_Mul_Inst2(
        .data_in(data_in[95:64]),
        .data_out(byte_8)
    );
    Second_Row_Mul Second_Row_Mul_Inst2(
        .data_in(data_in[95:64]),
        .data_out(byte_9)
    );
    Third_Row_Mul Third_Row_Mul_Inst2(
        .data_in(data_in[95:64]),
        .data_out(byte_10)
    );
    Fourth_Row_Mul Fourth_Row_Mul_Inst2(
        .data_in(data_in[95:64]),
        .data_out(byte_11)
    );
//======================================================//
    First_Row_Mul First_Row_Mul_Inst3(
        .data_in(data_in[127:96]),
        .data_out(byte_12)
    );
    Second_Row_Mul Second_Row_Mul_Inst3(
        .data_in(data_in[127:96]),
        .data_out(byte_13)
    );
    Third_Row_Mul Third_Row_Mul_Inst3(
        .data_in(data_in[127:96]),
        .data_out(byte_14)
    );
    Fourth_Row_Mul Fourth_Row_Mul_Inst3(
        .data_in(data_in[127:96]),
        .data_out(byte_15)
    );
//======================================================//
    assign data_out = {byte_15, byte_14, byte_13, byte_12, byte_11, byte_10, byte_9, byte_8, byte_7, byte_6, byte_5, byte_4, byte_3, byte_2, byte_1, byte_0};
endmodule