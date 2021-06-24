module AES_Decrypt_Counter(Clk, Rst, En, data_out);
    input   Clk, Rst, En;
    output  reg [3:0] data_out;

    always @ (posedge Clk or negedge Rst) begin
        if (!Rst) begin
            data_out <= 0;
        end else begin
            if (En) begin
                if (data_out >= 15) begin
                    data_out <= data_out;
                end else begin
                    data_out <= data_out + 4'd1;    
                end
            end else begin
                data_out <= data_out;
            end
        end
    end
endmodule