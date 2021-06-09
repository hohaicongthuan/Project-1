module MUX_2_1(in_0, in_1, Sel, data_out);
    parameter DATA_WIDTH = 32;
    
    input Sel;
    input [DATA_WIDTH - 1:0] in_0, in_1;
    output [DATA_WIDTH - 1:0] data_out;

    assign data_out = (Sel) ? in_1 : in_0;
endmodule