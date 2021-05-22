module XORWord(in_A, in_B, data_out); 
    input   [31:0] in_A, in_B;
    output  [31:0] data_out;

    assign data_out = in_A ^ in_B;
endmodule   