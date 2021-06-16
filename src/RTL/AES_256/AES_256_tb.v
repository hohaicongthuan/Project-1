`timescale 1ns/1ps

module AES_256_tb();
    parameter   waittime  = 20;
    parameter   clocktime = 10;
    // integer     i, outfile, infile;

    reg [127:0] data_in;
    reg [255:0] cipher_key;
    reg Clk, Rst, En;
    wire [127:0] data_out;
    wire done;

    initial begin
        Clk = 1'b0; // Initial value of the clock signal
        forever #clocktime Clk = ~Clk; // Generates clock pulses forever
    end

    initial begin
        // infile  = $fopen("data.in", "r");
        // outfile = $fopen("data.out", "w");
        // $fscanf(infile, "%h\n", data_in);
        Rst = 1'b0;
        En = 1'b0;
        #waittime;
        Rst = 1'b1;
        data_in = 128'h2a179373117e3de9969f402ee2bec16b;
        cipher_key = 256'hf4df1409a310982dd708613b072c351f81777d85f0ae732bbe71ca1510eb3d60;
        En = 1'b1;

        while (!done) #waittime;
        #waittime;
        $finish;
    end

    AES_256 DUT_Inst0(
        .cipher_key(cipher_key),
        .data_in(data_in),
        .data_out(data_out),
        .Clk(Clk), .Rst(Rst), .En(En), .done(done)
    );
endmodule