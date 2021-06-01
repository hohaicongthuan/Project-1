module MUX_64_1(
                    Sel, data_out,
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
                    in_15,
                    in_16,
                    in_17,
                    in_18,
                    in_19,
                    in_20,
                    in_21,
                    in_22,
                    in_23,
                    in_24,
                    in_25,
                    in_26,
                    in_27,
                    in_28,
                    in_29,
                    in_30,
                    in_31,
                    in_32,
                    in_33,
                    in_34,
                    in_35,
                    in_36,
                    in_37,
                    in_38,
                    in_39,
                    in_40,
                    in_41,
                    in_42,
                    in_43,
                    in_44,
                    in_45,
                    in_46,
                    in_47,
                    in_48,
                    in_49,
                    in_50,
                    in_51,
                    in_52,
                    in_53,
                    in_54,
                    in_55,
                    in_56,
                    in_57,
                    in_58,
                    in_59,
                    in_60,
                    in_61,
                    in_62,
                    in_63);
    input [5:0] Sel;
    input [31:0]    in_0,
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
                    in_15,
                    in_16,
                    in_17,
                    in_18,
                    in_19,
                    in_20,
                    in_21,
                    in_22,
                    in_23,
                    in_24,
                    in_25,
                    in_26,
                    in_27,
                    in_28,
                    in_29,
                    in_30,
                    in_31,
                    in_32,
                    in_33,
                    in_34,
                    in_35,
                    in_36,
                    in_37,
                    in_38,
                    in_39,
                    in_40,
                    in_41,
                    in_42,
                    in_43,
                    in_44,
                    in_45,
                    in_46,
                    in_47,
                    in_48,
                    in_49,
                    in_50,
                    in_51,
                    in_52,
                    in_53,
                    in_54,
                    in_55,
                    in_56,
                    in_57,
                    in_58,
                    in_59,
                    in_60,
                    in_61,
                    in_62,
                    in_63;
    output reg [31:0] data_out;

    always @ (*) begin
        case (Sel)
            6'd0: data_out = in_0;
            6'd1: data_out = in_1;
            6'd2: data_out = in_2;
            6'd3: data_out = in_3;
            6'd4: data_out = in_4;
            6'd5: data_out = in_5;
            6'd6: data_out = in_6;
            6'd7: data_out = in_7;
            6'd8: data_out = in_8;
            6'd9: data_out = in_9;
            6'd10: data_out = in_10;
            6'd11: data_out = in_11;
            6'd12: data_out = in_12;
            6'd13: data_out = in_13;
            6'd14: data_out = in_14;
            6'd15: data_out = in_15;
            6'd16: data_out = in_16;
            6'd17: data_out = in_17;
            6'd18: data_out = in_18;
            6'd19: data_out = in_19;
            6'd20: data_out = in_20;
            6'd21: data_out = in_21;
            6'd22: data_out = in_22;
            6'd23: data_out = in_23;
            6'd24: data_out = in_24;
            6'd25: data_out = in_25;
            6'd26: data_out = in_26;
            6'd27: data_out = in_27;
            6'd28: data_out = in_28;
            6'd29: data_out = in_29;
            6'd30: data_out = in_30;
            6'd31: data_out = in_31;
            6'd32: data_out = in_32;
            6'd33: data_out = in_33;
            6'd34: data_out = in_34;
            6'd35: data_out = in_35;
            6'd36: data_out = in_36;
            6'd37: data_out = in_37;
            6'd38: data_out = in_38;
            6'd39: data_out = in_39;
            6'd40: data_out = in_40;
            6'd41: data_out = in_41;
            6'd42: data_out = in_42;
            6'd43: data_out = in_43;
            6'd44: data_out = in_44;
            6'd45: data_out = in_45;
            6'd46: data_out = in_46;
            6'd47: data_out = in_47;
            6'd48: data_out = in_48;
            6'd49: data_out = in_49;
            6'd50: data_out = in_50;
            6'd51: data_out = in_51;
            6'd52: data_out = in_52;
            6'd53: data_out = in_53;
            6'd54: data_out = in_54;
            6'd55: data_out = in_55;
            6'd56: data_out = in_56;
            6'd57: data_out = in_57;
            6'd58: data_out = in_58;
            6'd59: data_out = in_59;
            6'd60: data_out = in_60;
            6'd61: data_out = in_61;
            6'd62: data_out = in_62;
            6'd63: data_out = in_63;
            default: data_out = in_0;
        endcase
    end
endmodule