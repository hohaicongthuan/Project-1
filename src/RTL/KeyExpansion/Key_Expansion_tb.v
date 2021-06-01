`timescale 1ns/1ps

module Key_Expansion_tb();
    parameter   waittime  = 20;
    parameter   clocktime = 10;
    integer     i, outfile, infile;

    reg Rst, En, Clk;
    reg [255:0] data_in;
    reg [3:0] Addr_Key;
    wire ready;
    wire [127:0] Out_Key;

    initial begin
        Clk = 1'b0; // Initial value of the clock signal
        forever #clocktime Clk = ~Clk; // Generates clock pulses forever
    end

    initial begin
        infile  = $fopen("data.in", "r");
        outfile = $fopen("data.out", "w");

        Addr_Key = 0;

        Rst = 1'b0;
        En = 1'b0;
        #waittime;
        Rst = 1'b1;

        $fscanf(infile, "%h\n", data_in);
        En = 1'b1;

        while (!ready) #waittime;

        for (i = 0; i < 16; i = i + 1) begin
            $fdisplay(outfile, "%h", Out_Key);
            #waittime;
            Addr_Key = Addr_Key + 1;
        end

        #waittime;
        $fclose(outfile);
        #waittime;
        $finish;
    end

    Key_Expansion DUT_Inst0(
        .Rst(Rst),
        .En(En),
        .Clk(Clk),
        .data_in(data_in),
        .Addr_Key(Addr_Key),
        .ready(ready),
        .Out_Key(Out_Key)
    );
endmodule