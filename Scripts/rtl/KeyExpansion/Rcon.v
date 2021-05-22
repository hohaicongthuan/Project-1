module Rcon(data_in, data_out);
    input   [2:0]   data_in;
    output  [31:0]  data_out;

    always @ (*) begin
        case (data_in)
            3'd0: data_out = {32'h0};
            3'd1: data_out = {24'h0, 8'h01};
            3'd2: data_out = {24'h0, 8'h02};
            3'd3: data_out = {24'h0, 8'h04};
            3'd4: data_out = {24'h0, 8'h08};
            3'd5: data_out = {24'h0, 8'h10};
            3'd6: data_out = {24'h0, 8'h20};
            3'd7: data_out = {24'h0, 8'h40};
        default: data_out = {32'h0};
        endcase
    end
endmodule