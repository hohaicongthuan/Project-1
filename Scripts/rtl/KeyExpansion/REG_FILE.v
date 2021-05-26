module REG_FILE(data_in, Addr_Wr, Addr_A, Addr_B, Addr_Key, Clk, Rst, Out_A, Out_B, Out_Key);
	input Clk, Rst;
	input [3:0] Addr_Key;
	input [5:0] Addr_Wr, Addr_A, Addr_B;
	input [31:0] data_in;
	output [31:0] Out_A, Out_B;
	output [127:0] Out_Key;

	// Internal wires
	wire [63:0] Decoder_Out;
	wire [31:0] Reg_0_Out,
				Reg_1_Out,
				Reg_2_Out,
				Reg_3_Out,
				Reg_4_Out,
				Reg_5_Out,
				Reg_6_Out,
				Reg_7_Out,
				Reg_8_Out,
				Reg_9_Out,
				Reg_10_Out,
				Reg_11_Out,
				Reg_12_Out,
				Reg_13_Out,
				Reg_14_Out,
				Reg_15_Out,
				Reg_16_Out,
				Reg_17_Out,
				Reg_18_Out,
				Reg_19_Out,
				Reg_20_Out,
				Reg_21_Out,
				Reg_22_Out,
				Reg_23_Out,
				Reg_24_Out,
				Reg_25_Out,
				Reg_26_Out,
				Reg_27_Out,
				Reg_28_Out,
				Reg_29_Out,
				Reg_30_Out,
				Reg_31_Out,
				Reg_32_Out,
				Reg_33_Out,
				Reg_34_Out,
				Reg_35_Out,
				Reg_36_Out,
				Reg_37_Out,
				Reg_38_Out,
				Reg_39_Out,
				Reg_40_Out,
				Reg_41_Out,
				Reg_42_Out,
				Reg_43_Out,
				Reg_44_Out,
				Reg_45_Out,
				Reg_46_Out,
				Reg_47_Out,
				Reg_48_Out,
				Reg_49_Out,
				Reg_50_Out,
				Reg_51_Out,
				Reg_52_Out,
				Reg_53_Out,
				Reg_54_Out,
				Reg_55_Out,
				Reg_56_Out,
				Reg_57_Out,
				Reg_58_Out,
				Reg_59_Out,
				Reg_60_Out,
				Reg_61_Out,
				Reg_62_Out,
				Reg_63_Out;

	Decoder_6_64 Decoder_Inst0(
		.data_in(Addr_Wr),
		.data_out(Decoder_Out)
	);

	REG REG_Inst0(
		.data_out(Reg_0_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[0])
	);
	REG REG_Inst1(
		.data_out(Reg_1_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[1])
	);
	REG REG_Inst2(
		.data_out(Reg_2_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[2])
	);
	REG REG_Inst3(
		.data_out(Reg_3_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[3])
	);
	REG REG_Inst4(
		.data_out(Reg_4_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[4])
	);
	REG REG_Inst5(
		.data_out(Reg_5_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[5])
	);
	REG REG_Inst6(
		.data_out(Reg_6_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[6])
	);
	REG REG_Inst7(
		.data_out(Reg_7_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[7])
	);
	REG REG_Inst8(
		.data_out(Reg_8_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[8])
	);
	REG REG_Inst9(
		.data_out(Reg_9_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[9])
	);
	REG REG_Inst10(
		.data_out(Reg_10_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[10])
	);
	REG REG_Inst11(
		.data_out(Reg_11_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[11])
	);
	REG REG_Inst12(
		.data_out(Reg_12_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[12])
	);
	REG REG_Inst13(
		.data_out(Reg_13_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[13])
	);
	REG REG_Inst14(
		.data_out(Reg_14_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[14])
	);
	REG REG_Inst15(
		.data_out(Reg_15_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[15])
	);
	REG REG_Inst16(
		.data_out(Reg_16_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[16])
	);
	REG REG_Inst17(
		.data_out(Reg_17_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[17])
	);
	REG REG_Inst18(
		.data_out(Reg_18_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[18])
	);
	REG REG_Inst19(
		.data_out(Reg_19_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[19])
	);
	REG REG_Inst20(
		.data_out(Reg_20_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[20])
	);
	REG REG_Inst21(
		.data_out(Reg_21_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[21])
	);
	REG REG_Inst22(
		.data_out(Reg_22_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[22])
	);
	REG REG_Inst23(
		.data_out(Reg_23_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[23])
	);
	REG REG_Inst24(
		.data_out(Reg_24_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[24])
	);
	REG REG_Inst25(
		.data_out(Reg_25_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[25])
	);
	REG REG_Inst26(
		.data_out(Reg_26_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[26])
	);
	REG REG_Inst27(
		.data_out(Reg_27_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[27])
	);
	REG REG_Inst28(
		.data_out(Reg_28_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[28])
	);
	REG REG_Inst29(
		.data_out(Reg_29_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[29])
	);
	REG REG_Inst30(
		.data_out(Reg_30_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[30])
	);
	REG REG_Inst31(
		.data_out(Reg_31_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[31])
	);
	REG REG_Inst32(
		.data_out(Reg_32_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[32])
	);
	REG REG_Inst33(
		.data_out(Reg_33_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[33])
	);
	REG REG_Inst34(
		.data_out(Reg_34_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[34])
	);
	REG REG_Inst35(
		.data_out(Reg_35_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[35])
	);
	REG REG_Inst36(
		.data_out(Reg_36_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[36])
	);
	REG REG_Inst37(
		.data_out(Reg_37_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[37])
	);
	REG REG_Inst38(
		.data_out(Reg_38_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[38])
	);
	REG REG_Inst39(
		.data_out(Reg_39_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[39])
	);
	REG REG_Inst40(
		.data_out(Reg_40_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[40])
	);
	REG REG_Inst41(
		.data_out(Reg_41_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[41])
	);
	REG REG_Inst42(
		.data_out(Reg_42_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[42])
	);
	REG REG_Inst43(
		.data_out(Reg_43_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[43])
	);
	REG REG_Inst44(
		.data_out(Reg_44_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[44])
	);
	REG REG_Inst45(
		.data_out(Reg_45_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[45])
	);
	REG REG_Inst46(
		.data_out(Reg_46_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[46])
	);
	REG REG_Inst47(
		.data_out(Reg_47_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[47])
	);
	REG REG_Inst48(
		.data_out(Reg_48_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[48])
	);
	REG REG_Inst49(
		.data_out(Reg_49_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[49])
	);
	REG REG_Inst50(
		.data_out(Reg_50_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[50])
	);
	REG REG_Inst51(
		.data_out(Reg_51_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[51])
	);
	REG REG_Inst52(
		.data_out(Reg_52_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[52])
	);
	REG REG_Inst53(
		.data_out(Reg_53_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[53])
	);
	REG REG_Inst54(
		.data_out(Reg_54_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[54])
	);
	REG REG_Inst55(
		.data_out(Reg_55_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[55])
	);
	REG REG_Inst56(
		.data_out(Reg_56_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[56])
	);
	REG REG_Inst57(
		.data_out(Reg_57_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[57])
	);
	REG REG_Inst58(
		.data_out(Reg_58_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[58])
	);
	REG REG_Inst59(
		.data_out(Reg_59_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[59])
	);
	REG REG_Inst60(
		.data_out(Reg_60_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[60])
	);
	REG REG_Inst61(
		.data_out(Reg_61_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[61])
	);
	REG REG_Inst62(
		.data_out(Reg_62_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[62])
	);
	REG REG_Inst63(
		.data_out(Reg_63_Out),
		.data_in(data_in),
		.Clk(Clk),
		.Rst(Rst),
		.En(Decoder_Out[63])
	);

	MUX_16_1 MUX_16_1_Inst0(
		.Sel(Addr_Key),
		.data_out(Out_Key), 
		.in_0({Reg_4_Out, Reg_3_Out, Reg_2_Out, Reg_1_Out}),
		.in_1({Reg_8_Out, Reg_7_Out, Reg_6_Out, Reg_5_Out}),
		.in_2({Reg_12_Out, Reg_11_Out, Reg_10_Out, Reg_9_Out}),
		.in_3({Reg_16_Out, Reg_15_Out, Reg_14_Out, Reg_13_Out}),
		.in_4({Reg_20_Out, Reg_19_Out, Reg_18_Out, Reg_17_Out}),
		.in_5({Reg_24_Out, Reg_23_Out, Reg_22_Out, Reg_21_Out}),
		.in_6({Reg_28_Out, Reg_27_Out, Reg_26_Out, Reg_25_Out}),
		.in_7({Reg_32_Out, Reg_31_Out, Reg_30_Out, Reg_29_Out}),
		.in_8({Reg_36_Out, Reg_35_Out, Reg_34_Out, Reg_33_Out}),
		.in_9({Reg_40_Out, Reg_39_Out, Reg_38_Out, Reg_37_Out}),
		.in_10({Reg_44_Out, Reg_43_Out, Reg_42_Out, Reg_41_Out}),
		.in_11({Reg_48_Out, Reg_47_Out, Reg_46_Out, Reg_45_Out}),
		.in_12({Reg_52_Out, Reg_51_Out, Reg_50_Out, Reg_49_Out}),
		.in_13({Reg_56_Out, Reg_55_Out, Reg_54_Out, Reg_53_Out}),
		.in_14({Reg_60_Out, Reg_59_Out, Reg_58_Out, Reg_57_Out}),
		.in_15(128'd0)
	);

	MUX_64_1 MUX_64_1_Inst0(
		.Sel(Addr_A),
		.data_out(Out_A),
		.in_0(Reg_0_Out),
		.in_1(Reg_1_Out),
		.in_2(Reg_2_Out),
		.in_3(Reg_3_Out),
		.in_4(Reg_4_Out),
		.in_5(Reg_5_Out),
		.in_6(Reg_6_Out),
		.in_7(Reg_7_Out),
		.in_8(Reg_8_Out),
		.in_9(Reg_9_Out),
		.in_10(Reg_10_Out),
		.in_11(Reg_11_Out),
		.in_12(Reg_12_Out),
		.in_13(Reg_13_Out),
		.in_14(Reg_14_Out),
		.in_15(Reg_15_Out),
		.in_16(Reg_16_Out),
		.in_17(Reg_17_Out),
		.in_18(Reg_18_Out),
		.in_19(Reg_19_Out),
		.in_20(Reg_20_Out),
		.in_21(Reg_21_Out),
		.in_22(Reg_22_Out),
		.in_23(Reg_23_Out),
		.in_24(Reg_24_Out),
		.in_25(Reg_25_Out),
		.in_26(Reg_26_Out),
		.in_27(Reg_27_Out),
		.in_28(Reg_28_Out),
		.in_29(Reg_29_Out),
		.in_30(Reg_30_Out),
		.in_31(Reg_31_Out),
		.in_32(Reg_32_Out),
		.in_33(Reg_33_Out),
		.in_34(Reg_34_Out),
		.in_35(Reg_35_Out),
		.in_36(Reg_36_Out),
		.in_37(Reg_37_Out),
		.in_38(Reg_38_Out),
		.in_39(Reg_39_Out),
		.in_40(Reg_40_Out),
		.in_41(Reg_41_Out),
		.in_42(Reg_42_Out),
		.in_43(Reg_43_Out),
		.in_44(Reg_44_Out),
		.in_45(Reg_45_Out),
		.in_46(Reg_46_Out),
		.in_47(Reg_47_Out),
		.in_48(Reg_48_Out),
		.in_49(Reg_49_Out),
		.in_50(Reg_50_Out),
		.in_51(Reg_51_Out),
		.in_52(Reg_52_Out),
		.in_53(Reg_53_Out),
		.in_54(Reg_54_Out),
		.in_55(Reg_55_Out),
		.in_56(Reg_56_Out),
		.in_57(Reg_57_Out),
		.in_58(Reg_58_Out),
		.in_59(Reg_59_Out),
		.in_60(Reg_60_Out),
		.in_61(Reg_61_Out),
		.in_62(Reg_62_Out),
		.in_63(Reg_63_Out)
	);

	MUX_64_1 MUX_64_1_Inst1(
		.Sel(Addr_B),
		.data_out(Out_B),
		.in_0(Reg_0_Out),
		.in_1(Reg_1_Out),
		.in_2(Reg_2_Out),
		.in_3(Reg_3_Out),
		.in_4(Reg_4_Out),
		.in_5(Reg_5_Out),
		.in_6(Reg_6_Out),
		.in_7(Reg_7_Out),
		.in_8(Reg_8_Out),
		.in_9(Reg_9_Out),
		.in_10(Reg_10_Out),
		.in_11(Reg_11_Out),
		.in_12(Reg_12_Out),
		.in_13(Reg_13_Out),
		.in_14(Reg_14_Out),
		.in_15(Reg_15_Out),
		.in_16(Reg_16_Out),
		.in_17(Reg_17_Out),
		.in_18(Reg_18_Out),
		.in_19(Reg_19_Out),
		.in_20(Reg_20_Out),
		.in_21(Reg_21_Out),
		.in_22(Reg_22_Out),
		.in_23(Reg_23_Out),
		.in_24(Reg_24_Out),
		.in_25(Reg_25_Out),
		.in_26(Reg_26_Out),
		.in_27(Reg_27_Out),
		.in_28(Reg_28_Out),
		.in_29(Reg_29_Out),
		.in_30(Reg_30_Out),
		.in_31(Reg_31_Out),
		.in_32(Reg_32_Out),
		.in_33(Reg_33_Out),
		.in_34(Reg_34_Out),
		.in_35(Reg_35_Out),
		.in_36(Reg_36_Out),
		.in_37(Reg_37_Out),
		.in_38(Reg_38_Out),
		.in_39(Reg_39_Out),
		.in_40(Reg_40_Out),
		.in_41(Reg_41_Out),
		.in_42(Reg_42_Out),
		.in_43(Reg_43_Out),
		.in_44(Reg_44_Out),
		.in_45(Reg_45_Out),
		.in_46(Reg_46_Out),
		.in_47(Reg_47_Out),
		.in_48(Reg_48_Out),
		.in_49(Reg_49_Out),
		.in_50(Reg_50_Out),
		.in_51(Reg_51_Out),
		.in_52(Reg_52_Out),
		.in_53(Reg_53_Out),
		.in_54(Reg_54_Out),
		.in_55(Reg_55_Out),
		.in_56(Reg_56_Out),
		.in_57(Reg_57_Out),
		.in_58(Reg_58_Out),
		.in_59(Reg_59_Out),
		.in_60(Reg_60_Out),
		.in_61(Reg_61_Out),
		.in_62(Reg_62_Out),
		.in_63(Reg_63_Out)
	);
endmodule 