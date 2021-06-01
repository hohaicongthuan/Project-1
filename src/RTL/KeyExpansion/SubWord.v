module SubWord(data_in, data_out);
    input   [31:0] data_in;
    output  [31:0] data_out;

    wire    [7:0] wire_0, wire_1, wire_2, wire_3;

    SBox SBox_Inst0(
        .data_in(data_in[7:0]),
        .data_out(wire_0)
    );
    SBox SBox_Inst1(
        .data_in(data_in[15:8]),
        .data_out(wire_1)
    );
    SBox SBox_Inst2(
        .data_in(data_in[23:16]),
        .data_out(wire_2)
    );
    SBox SBox_Inst3(
        .data_in(data_in[31:24]),
        .data_out(wire_3)
    );

    assign data_out = {wire_3, wire_2, wire_1, wire_0};
endmodule
