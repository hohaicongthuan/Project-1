module ShiftRows(data_in, data_out);
    input [127:0] data_in;
    output [127:0] data_out;

    wire [7:0]  byte_0, byte_1, byte_2, byte_3,
                byte_4, byte_5, byte_6, byte_7,
                byte_8, byte_9, byte_10, byte_11,
                byte_12, byte_13, byte_14, byte_15;

    assign byte_0 = data_in[7:0];
    assign byte_1 = data_in[15:8];
    assign byte_2 = data_in[23:16];
    assign byte_3 = data_in[31:24];

    assign byte_4 = data_in[39:32];
    assign byte_5 = data_in[47:40];
    assign byte_6 = data_in[55:48];
    assign byte_7 = data_in[63:56];

    assign byte_8 = data_in[71:64];
    assign byte_9 = data_in[79:72];
    assign byte_10 = data_in[87:80];
    assign byte_11 = data_in[95:88];

    assign byte_12 = data_in[103:96];
    assign byte_13 = data_in[111:104];
    assign byte_14 = data_in[119:112];
    assign byte_15 = data_in[127:120];

    // assign first_row = {byte_12, byte_8, byte_4, byte_0};
    // assign second_row = {byte_1, byte_13, byte_9, byte_5};
    // assign third_row = {byte_6, byte_2, byte_14, byte_10};
    // assign fourth_row = {byte_11, byte_7, byte_3, byte_15}

    assign data_out = {byte_11, byte_6, byte_1, byte_12, byte_7, byte_2, byte_13, byte_8, byte_3, byte_14, byte_9, byte_4, byte_15, byte_10, byte_5, byte_0};
endmodule