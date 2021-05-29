module Counter(Rst, En, Clk, data_out); 
    input Rst, En, Clk;
    output [5:0] data_out;

    reg [5:0] Counter_Mem;

    always @ (posedge Clk or negedge Rst) begin
        if (!Rst) Counter_Mem <= 0;
        else begin
            if (En) begin
                if (Counter_Mem >= 61) Counter_Mem <= Counter_Mem;
                else Counter_Mem <= Counter_Mem + 1;
            end else Counter_Mem <= Counter_Mem;
        end
    end

    assign data_out = Counter_Mem;
endmodule