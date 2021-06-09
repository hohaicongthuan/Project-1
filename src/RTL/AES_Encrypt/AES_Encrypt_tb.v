`timescale 1ns/1ps

module AES_Encrypt_tb();
    parameter   waittime  = 20;
    parameter   clocktime = 10;
    integer     i, outfile, infile;

    reg [127:0] data_in, round_key;
    reg round_key_rdy, Clk, Rst, En;
    wire [127:0] data_out;
    wire done;
    reg [3:0] round_key_addr;

    initial begin
        Clk = 1'b0; // Initial value of the clock signal
        forever #clocktime Clk = ~Clk; // Generates clock pulses forever
    end

    initial begin
        // infile  = $fopen("data.in", "r");
        // outfile = $fopen("data.out", "w");

        Addr_Key = 0;

        Rst = 1'b0;
        En = 1'b0;
        #waittime;
        Rst = 1'b1;

        // $fscanf(infile, "%h\n", data_in);
        En = 1'b1;

        // while (!ready) #waittime;

        // for (i = 0; i < 16; i = i + 1) begin
        //     $fdisplay(outfile, "%h", Out_Key);
        //     #waittime;
        //     Addr_Key = Addr_Key + 1;
        // end

        #waittime;
        // $fclose(outfile);
        #waittime;
        $finish;
    end

    AES_Encrypt DUT_Inst0(
        .data_in(),
        .round_key(),
        .round_key_rdy(),
        .Clk(), .Rst(), .En(),
        .data_out(),
        .done(),
        .round_key_addr()
    );
endmodule