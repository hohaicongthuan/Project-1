module REG(data_out, data_in, Clk, Rst, En);
    parameter DATA_WIDTH = 32;

    input       Clk, Rst
    input       [DATA_WIDTH - 1:0] data_in;

    output reg  [DATA_WIDTH - 1:0] data_out;

    always @ (posedge Clk or negedge Rst) begin
        if (!Rst) data_out <= 32'd0;
        else begin
            if (En) data_out <= data_in;
            else data_out <= data_out;
        end
    end
endmodule
