module MUX_2_1(in_0, in_1, Sel, data_out);
    input Sel;
    input [31:0] in_0, in_1;
    output [31:0] data_out;

    assign data_out = (Sel) ? in_1 : in_0;
endmodule