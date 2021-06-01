module Rcon(data_in, data_out);
    input       [5:0]   data_in;
    output reg  [31:0]  data_out;

    always @ (*) begin
        case (data_in)
            6'd0: data_out = {32'h0};
            6'd1: data_out = {24'h0, 8'h01};
            6'd2: data_out = {24'h0, 8'h02};
            6'd3: data_out = {24'h0, 8'h04};
            6'd4: data_out = {24'h0, 8'h08};
            6'd5: data_out = {24'h0, 8'h10};
            6'd6: data_out = {24'h0, 8'h20};
            6'd7: data_out = {24'h0, 8'h40};
        default: data_out = {32'h0};
        endcase
    end
endmodule