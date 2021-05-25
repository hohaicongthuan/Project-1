module Counter(Rst, En, Clk, data_out); 
    input Rst, En, Clk;
    output reg [5:0] data_out;

    reg [5:0] Counter_Mem;

    always @ (posedge Clk or negedge Rst) begin
        if (!Rst) Counter_Mem <= 0;
        else begin
            
        end
    end
endmodule