module AES_256(cipher_key, data_in, data_out, Clk, Rst, En, done, encryp_decrypt);
    parameter DATA_WIDTH = 128;

    input   Clk, Rst, En, encryp_decrypt;
    input   [DATA_WIDTH - 1:0] data_in;
    input   [255:0] cipher_key;
    output  done;
    output  [DATA_WIDTH - 1:0] data_out;

    wire key_expansion_ready, done0, done1;
    wire [3:0] MUX_2_1_Inst0_Out, AES_Encrypt_Inst0_Key_Addr, AES_Decrypt_Inst0_Key_Addr;
    wire [DATA_WIDTH - 1:0] key_expansion_out, AES_Encrypt_Inst0_Out, AES_Decrypt_Inst0_Out;

    MUX_2_1 #(.DATA_WIDTH(4)) MUX_2_1_Inst0(
        .in_0(AES_Decrypt_Inst0_Key_Addr), .in_1(AES_Encrypt_Inst0_Key_Addr), .Sel(encryp_decrypt), .data_out(MUX_2_1_Inst0_Out)
    ); // round key address
    MUX_2_1 #(.DATA_WIDTH(1)) MUX_2_1_Inst1(
        .in_0(done0), .in_1(done1), .Sel(encryp_decrypt), .data_out(done)
    ); // valid_out
    MUX_2_1 #(.DATA_WIDTH(DATA_WIDTH)) MUX_2_1_Inst2(
        .in_0(AES_Decrypt_Inst0_Out), .in_1(AES_Encrypt_Inst0_Out), .Sel(encryp_decrypt), .data_out(data_out)
    ); // data_out

    Key_Expansion Key_Expansion_Inst0(
        .Rst(Rst), .En(En), .Clk(Clk),
        .data_in(cipher_key),
        .Addr_Key(MUX_2_1_Inst0_Out),
        .ready(key_expansion_ready),
        .Out_Key(key_expansion_out)
    );

    AES_Encrypt AES_Encrypt_Inst0(
        .data_in(data_in),
        .round_key(key_expansion_out),
        .round_key_rdy(key_expansion_ready), .Clk(Clk), .Rst(Rst), .En(En),
        .data_out(AES_Encrypt_Inst0_Out),
        .done(done1),
        .round_key_addr(AES_Encrypt_Inst0_Key_Addr)
    );

    AES_Decrypt AES_Decrypt_Inst0(
        .data_in(data_in),
        .round_key(key_expansion_out),
        .round_key_rdy(key_expansion_ready), .Clk(Clk), .Rst(Rst), .En(En),
        .data_out(AES_Decrypt_Inst0_Out),
        .done(done0),
        .round_key_addr(AES_Decrypt_Inst0_Key_Addr)
    );
endmodule