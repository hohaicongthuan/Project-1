module MUX_16_1(Sel, data_out, 
                in_0,
                in_1,
                in_2,
                in_3,
                in_4,
                in_5,
                in_6,
                in_7,
                in_8,
                in_9,
                in_10,
                in_11,
                in_12,
                in_13,
                in_14,
                in_15
);
    input [3:0]     Sel;
    input [127:0]   in_0,
                    in_1,
                    in_2,
                    in_3,
                    in_4,
                    in_5,
                    in_6,
                    in_7,
                    in_8,
                    in_9,
                    in_10,
                    in_11,
                    in_12,
                    in_13,
                    in_14,
                    in_15;
    output reg [127:0]  data_out;

    always @ (*) begin
        case (Sel)
            4'd0: data_out = in_0;
            4'd1: data_out = in_1;
            4'd2: data_out = in_2;
            4'd3: data_out = in_3;
            4'd4: data_out = in_4;
            4'd5: data_out = in_5;
            4'd6: data_out = in_6;
            4'd7: data_out = in_7;
            4'd8: data_out = in_8;
            4'd9: data_out = in_9;
            4'd10: data_out = in_10;
            4'd11: data_out = in_11;
            4'd12: data_out = in_12;
            4'd13: data_out = in_13;
            4'd14: data_out = in_14;
            4'd15: data_out = in_15;
            default: data_out = in_0;
        endcase
    end
endmodule