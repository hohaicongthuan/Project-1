`timescale 1ns/1ps

module AES_256_tb();
    parameter   waittime  = 20;
    parameter   clocktime = 10;
    integer     i, outfile, infile;

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
        data_in = 128'hffeeddccbbaa99887766554433221100;
        cipher_key = 256'h1f1e1d1c1b1a191817161514131211100f0e0d0c0b0a09080706050403020100;
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