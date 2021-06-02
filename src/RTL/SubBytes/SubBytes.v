module SubBytes(data_in, data_out);
    input [127:0] data_in;
    output [127:0] data_out;

    SBox SBox_Inst0(
    .data_in(data_in[7:0]),
    .data_out(data_out[7:0])
);
	SBox SBox_Inst1(
		 .data_in(data_in[15:8]),
		 .data_out(data_out[15:8])
	);
	SBox SBox_Inst2(
		 .data_in(data_in[23:16]),
		 .data_out(data_out[23:16])
	);
	SBox SBox_Inst3(
		 .data_in(data_in[31:24]),
		 .data_out(data_out[31:24])
	);
	SBox SBox_Inst4(
		 .data_in(data_in[39:32]),
		 .data_out(data_out[39:32])
	);
	SBox SBox_Inst5(
		 .data_in(data_in[47:40]),
		 .data_out(data_out[47:40])
	);
	SBox SBox_Inst6(
		 .data_in(data_in[55:48]),
		 .data_out(data_out[55:48])
	);
	SBox SBox_Inst7(
		 .data_in(data_in[63:56]),
		 .data_out(data_out[63:56])
	);
	SBox SBox_Inst8(
		 .data_in(data_in[71:64]),
		 .data_out(data_out[71:64])
	);
	SBox SBox_Inst9(
		 .data_in(data_in[79:72]),
		 .data_out(data_out[79:72])
	);
	SBox SBox_Inst10(
		 .data_in(data_in[87:80]),
		 .data_out(data_out[87:80])
	);
	SBox SBox_Inst11(
		 .data_in(data_in[95:88]),
		 .data_out(data_out[95:88])
	);
	SBox SBox_Inst12(
		 .data_in(data_in[103:96]),
		 .data_out(data_out[103:96])
	);
	SBox SBox_Inst13(
		 .data_in(data_in[111:104]),
		 .data_out(data_out[111:104])
	);
	SBox SBox_Inst14(
		 .data_in(data_in[119:112]),
		 .data_out(data_out[119:112])
	);
	SBox SBox_Inst15(
		 .data_in(data_in[127:120]),
		 .data_out(data_out[127:120])
	);
endmodule