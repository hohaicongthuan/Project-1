module DataInQueue(Clk, Rst, valid_in, valid_out, data_in, data_out);
    input   Clk, Rst, valid_in;
    input   [7:0] data_in;
    output  valid_out;
    output  [127:0] data_out;

    integer i;

    reg [7:0] Mem [15:0];
    reg [4:0] Counter;

    assign valid_out = (Counter[4]) ? 1'b1 : 1'b0;
    assign data_out = {Mem[15], Mem[14], Mem[13], Mem[12], Mem[11], Mem[10], Mem[9], Mem[8], Mem[7], Mem[6], Mem[5], Mem[4], Mem[3], Mem[2], Mem[1], Mem[0]};

    always @ (posedge Clk or negedge Rst) begin
        if (!Rst) begin
            Counter <= 0;
            for (i = 0; i < 16; i = i + 1) begin
                Mem[i] <= 0;
            end
        end else begin
            if (valid_in) begin
                    Mem[Counter[3:0]] <= data_in;
                    Counter <= Counter + 4'd1; 
            end else begin
                Counter <= Counter;
                for (i = 0; i < 16; i = i + 1) begin
                    Mem[i] <= Mem[i];
                end
            end
        end
    end
endmodule