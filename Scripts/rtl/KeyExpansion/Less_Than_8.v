module Less_Than_8(data_in, data_out);
    input [5:0] data_in;
    output data_out;

    assign data_out = (data_in < 9) ? 1'b1 : 1'b0; 
endmodule