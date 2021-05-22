module RotWord();
    input   [31:0] data_in;
    output  [31:0] data_out;

    wire [7:0] wire_0, wire_1, wire_2, wire_3;

    assign wire_0 = data_in[7:0];
    assign wire_1 = data_in[15:8];
    assign wire_2 = data_in[23:16];
    assign wire_3 = data_in[31:24];

    assign data_out = {wire_0, wire_3, wire_2, wire_1};
endmodule
