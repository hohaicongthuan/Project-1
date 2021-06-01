module Key_Expansion(Rst, En, Clk, data_in, Addr_Key, ready, Out_Key);
    input Rst, En, Clk;
    input [3:0] Addr_Key;
    input [255:0] data_in;
    output ready;
    output [127:0] Out_Key;

    // Internal wires
    wire Mod_9_Eq_4_Out, Mod_9_Eq_0_Out, Less_Than_9_Out, Greater_Equal_61_Out;
    wire [5:0] Counter_Out, Minus_1_Out, Minus_8_Out, Right_Shift_3_Out;
    wire [31:0] word_0, word_1, word_2, word_3, word_4, word_5, word_6, word_7,
                word_0_out, word_1_out, word_2_out, word_3_out, word_4_out, word_5_out, word_6_out, word_7_out,
                MUX_8_1_Out,
                MUX_2_1_0_Out, MUX_2_1_1_Out, MUX_2_1_2_Out,
                XOR_Word_0_Out, XOR_Word_1_Out,
                REG_FILE_Out_A, REG_FILE_Out_B,
                word_minus_1, word_minus_8,
                RotWord_0_Out,
                SubWord_0_Out, SubWord_1_Out,
                Rcon_Out;

    assign word_0 = data_in[31:0];
    assign word_1 = data_in[63:32];
    assign word_2 = data_in[95:64];
    assign word_3 = data_in[127:96];
    assign word_4 = data_in[159:128];
    assign word_5 = data_in[191:160];
    assign word_6 = data_in[223:192];
    assign word_7 = data_in[255:224];

    assign ready = Greater_Equal_61_Out;

    //////////////////////
    // MODULE INSTANCES //
    //////////////////////
    Counter Counter_Inst0(
        .Rst(Rst),
        .En(En),
        .Clk(Clk),
        .data_out(Counter_Out)
    ); 

    REG REG_Word_0(
        .data_out(word_0_out),
        .data_in(word_0),
        .Clk(Clk),
        .Rst(Rst),
        .En(En)
    );
    REG REG_Word_1(
        .data_out(word_1_out),
        .data_in(word_1),
        .Clk(Clk),
        .Rst(Rst),
        .En(En)
    );
    REG REG_Word_2(
        .data_out(word_2_out),
        .data_in(word_2),
        .Clk(Clk),
        .Rst(Rst),
        .En(En)
    );
    REG REG_Word_3(
        .data_out(word_3_out),
        .data_in(word_3),
        .Clk(Clk),
        .Rst(Rst),
        .En(En)
    );
    REG REG_Word_4(
        .data_out(word_4_out),
        .data_in(word_4),
        .Clk(Clk),
        .Rst(Rst),
        .En(En)
    );
    REG REG_Word_5(
        .data_out(word_5_out),
        .data_in(word_5),
        .Clk(Clk),
        .Rst(Rst),
        .En(En)
    );
    REG REG_Word_6(
        .data_out(word_6_out),
        .data_in(word_6),
        .Clk(Clk),
        .Rst(Rst),
        .En(En)
    );
    REG REG_Word_7(
        .data_out(word_7_out),
        .data_in(word_7),
        .Clk(Clk),
        .Rst(Rst),
        .En(En)
    );

    // REG REG_Word_Minus_1(
    //     .data_out(word_minus_1),
    //     .data_in(REG_FILE_Out_A),
    //     .Clk(~Clk),
    //     .Rst(Rst),
    //     .En(En)
    // );

    // REG REG_Word_Minus_8(
    //     .data_out(word_minus_8),
    //     .data_in(REG_FILE_Out_B),
    //     .Clk(~Clk),
    //     .Rst(Rst),
    //     .En(En)
    // );

    MUX_8_1 MUX_8_1_Inst0(
        .Sel(Minus_1_Out[2:0]),
        .data_out(MUX_8_1_Out),
        .in_0(word_0_out),
        .in_1(word_1_out),
        .in_2(word_2_out),
        .in_3(word_3_out),
        .in_4(word_4_out),
        .in_5(word_5_out),
        .in_6(word_6_out),
        .in_7(word_7_out)
    );

    MUX_2_1 MUX_2_1_Inst0(
        .in_1(MUX_8_1_Out),
        .in_0(XOR_Word_1_Out),
        .Sel(Less_Than_9_Out),
        .data_out(MUX_2_1_0_Out)
    );
    MUX_2_1 MUX_2_1_Inst1(
        .in_1(XOR_Word_0_Out),
        .in_0(MUX_2_1_2_Out),
        .Sel(Mod_9_Eq_0_Out),
        .data_out(MUX_2_1_1_Out)
    );
    MUX_2_1 MUX_2_1_Inst2(
        .in_1(SubWord_0_Out),
        .in_0(REG_FILE_Out_A),
        .Sel(Mod_9_Eq_4_Out),
        .data_out(MUX_2_1_2_Out)
    );

    REG_FILE REG_FILE_Inst0(
        .data_in(MUX_2_1_0_Out),
        .Addr_Wr(Counter_Out),
        .Addr_A(Minus_1_Out),
        .Addr_B(Minus_8_Out),
        .Addr_Key(Addr_Key),
        .Clk(~Clk),
        .Rst(Rst),
        .Out_A(REG_FILE_Out_A),
        .Out_B(REG_FILE_Out_B),
        .Out_Key(Out_Key)
    );

    RotWord RotWord_Inst0(
        .data_in(REG_FILE_Out_A),
        .data_out(RotWord_0_Out)
    );
    SubWord SubWord_Inst0(
        .data_in(REG_FILE_Out_A),
        .data_out(SubWord_0_Out)
    );
    SubWord SubWord_Inst1(
        .data_in(RotWord_0_Out),
        .data_out(SubWord_1_Out)
    );

    XOR_Word XOR_Word_Inst0(
        .in_A(SubWord_1_Out),
        .in_B(Rcon_Out),
        .data_out(XOR_Word_0_Out)
    );
    XOR_Word XOR_Word_Inst1(
        .in_A(MUX_2_1_1_Out),
        .in_B(REG_FILE_Out_B),
        .data_out(XOR_Word_1_Out)
    );

    Rcon Rcon_Inst0(
        .data_in(Right_Shift_3_Out),
        .data_out(Rcon_Out)
    );

    Minus_8 Minus_8_Inst0(
        .data_in(Counter_Out),
        .data_out(Minus_8_Out)
    );
    Mod_9_Eq_4 Mod_9_Eq_4_Inst0(
        .data_in(Counter_Out),
        .data_out(Mod_9_Eq_4_Out)
    );
    Mod_9_Eq_0 Mod_9_Eq_0_Inst0(
        .data_in(Counter_Out),
        .data_out(Mod_9_Eq_0_Out)
    );
    Minus_1 Minus_1_Inst0(
        .data_in(Counter_Out),
        .data_out(Minus_1_Out)
    );
    Right_Shift_3 Right_Shift_3_Inst0(
        .data_in(Counter_Out),
        .data_out(Right_Shift_3_Out)
    );
    Less_Than_9 Less_Than_9_Inst0(
        .data_in(Counter_Out),
        .data_out(Less_Than_9_Out)
    );
    Greater_Equal_61 Greater_Equal_61_Inst0(
        .data_in(Counter_Out),
        .data_out(Greater_Equal_61_Out)
    );
endmodule