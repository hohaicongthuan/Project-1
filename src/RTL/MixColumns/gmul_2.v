module gmul_2(data_in, data_out);
    input [7:0] data_in;
    output [7:0] data_out;

    always @ (*) begin
        if (data_in[7]) begin
            data_out = (data_in << 1) ^ 8'h1B;
        end else begin
            data_out = data_in << 1;
        end
    end
endmodule