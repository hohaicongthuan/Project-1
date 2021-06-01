module MUX_8_1(Sel, data_out, in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7);
    input [2:0] Sel;
    input [31:0] in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7;
    output reg [31:0] data_out;

    always @ (*) begin
        case (Sel)
        3'd0: data_out = in_0;
        3'd1: data_out = in_1;
        3'd2: data_out = in_2;
        3'd3: data_out = in_3;
        3'd4: data_out = in_4;
        3'd5: data_out = in_5;
        3'd6: data_out = in_6;
        3'd7: data_out = in_7;
        default: data_out = 32'd0;
        endcase
    end
endmodule