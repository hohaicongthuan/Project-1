module AES_Encrypt(data_in, round_key, round_key_rdy, Clk, Rst, En, data_out, done, round_key_addr);
    parameter DATA_WIDTH = 128;
    
    input   Clk, Rst, En, round_key_rdy;
    input   [DATA_WIDTH - 1:0] data_in, round_key;
    output  done;
    output  [3:0] round_key_addr;
    output  [DATA_WIDTH - 1:0] data_out;

    wire    En_Signal, Equal0, LessEq14, GreaterEq14;
    wire    [DATA_WIDTH - 1:0]  REG_Inst0_out,
                                SubBytes_Inst0_Out,
                                ShiftRows_Inst0_Out,
                                MixColumns_Inst0_Out,
                                MUX_2_1_Inst0_Out, MUX_2_1_Inst1_Out,
                                AddRoundKey_Inst0_Out, AddRoundKey_Inst1_Out, AddRoundKey_Inst2_Out;
    wire    [3:0]   AES_Encrypt_Counter_Inst0_Out;

    assign  En_Signal = round_key_rdy & En;
    assign  Equal0 = (AES_Encrypt_Counter_Inst0_Out == 0) ? 1'b1 : 1'b0;
    assign  LessEq14 = (AES_Encrypt_Counter_Inst0_Out <= 14) ? 1'b1 : 1'b0;
    assign  GreaterEq14 = (AES_Encrypt_Counter_Inst0_Out >= 14) ? 1'b1 : 1'b0;
    assign  done = GreaterEq14;
    assign  round_key_addr = AES_Encrypt_Counter_Inst0_Out;

    AES_Encrypt_Counter AES_Encrypt_Counter_Inst0(
        .Clk(Clk), .Rst(Rst), .En(En_Signal),
        .data_out(AES_Encrypt_Counter_Inst0_Out)
    );

    REG #(.DATA_WIDTH(DATA_WIDTH)) REG_Inst0(
        .data_out(REG_Inst0_out),
        .data_in(data_in),
        .Clk(Clk), .Rst(Rst), .En(En_Signal)
    );
    REG #(.DATA_WIDTH(DATA_WIDTH)) REG_Inst1(
        .data_out(data_out),
        .data_in(MUX_2_1_Inst1_Out),
        .Clk(Clk), .Rst(Rst), .En(En_Signal)
    ); // Out REG

    MUX_2_1 #(.DATA_WIDTH(DATA_WIDTH)) MUX_2_1_Inst0(
        .in_0(data_out), .in_1(AddRoundKey_Inst0_Out), .Sel(Equal0), .data_out(MUX_2_1_Inst0_Out)
    );
    MUX_2_1 #(.DATA_WIDTH(DATA_WIDTH)) MUX_2_1_Inst1(
        .in_0(AddRoundKey_Inst2_Out), .in_1(AddRoundKey_Inst1_Out), .Sel(LessEq14), .data_out(MUX_2_1_Inst1_Out)
    );

    AddRoundKey AddRoundKey_Inst0(
        .data_inA(REG_Inst0_out), .data_inB(round_key), .data_out(AddRoundKey_Inst0_Out)
    );
    AddRoundKey AddRoundKey_Inst1(
        .data_inA(MixColumns_Inst0_Out), .data_inB(round_key), .data_out(AddRoundKey_Inst1_Out)
    );
    AddRoundKey AddRoundKey_Inst2(
        .data_inA(ShiftRows_Inst0_Out), .data_inB(round_key), .data_out(AddRoundKey_Inst2_Out)
    );

    SubBytes SubBytes_Inst0(
        .data_in(MUX_2_1_Inst0_Out), .data_out(SubBytes_Inst0_Out)
    );

    ShiftRows ShiftRows_Inst0(
        .data_in(SubBytes_Inst0_Out), .data_out(ShiftRows_Inst0_Out)
    );

    MixColumns MixColumns_Inst0(
        .data_in(ShiftRows_Inst0_Out), .data_out(MixColumns_Inst0_Out)
    );
endmodule