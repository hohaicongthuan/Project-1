`timescale 1ns/1ps

module AES_256_tb();
    parameter   waittime  = 20;
    parameter   clocktime = 10;
    integer     i, outfile1, outfile2, key_file, plaintext_file, ciphertext_file;

    reg [127:0] data_in;
    reg [255:0] cipher_key;
    reg Clk, Rst, En, encryp_decrypt;
    wire [127:0] data_out;
    wire done;

    initial begin
        Clk = 1'b0; // Initial value of the clock signal
        forever #clocktime Clk = ~Clk; // Generates clock pulses forever
    end

    initial begin
        key_file  = $fopen("TestCase_Cipher_Key.txt", "r");
        plaintext_file  = $fopen("TestCase_Plaintext.txt", "r");
        ciphertext_file = $fopen("TestCase_Ciphertext.txt", "r");
        outfile1 = $fopen("encrypt_data.out", "w");
        outfile2 = $fopen("decrypt_data.out", "w");
        
        /////////////////////
        // ENCRYPT TESTING //
        /////////////////////
        while (! $feof(key_file)) begin                 // read until an "end of file" is reached.
            encryp_decrypt = 1'b1;
            Rst = 1'b0;
            En = 1'b0;
            
            $fscanf(key_file,"%h\n", cipher_key);       // scan each line and get the value as an hexadecimal
            $fscanf(plaintext_file,"%h\n", data_in);

            #waittime;
            Rst = 1'b1;
            En = 1'b1;

            while (!done) #waittime;
            #waittime;

            if (done) $fdisplay(outfile1, "%h", data_out);
            #waittime;
        end

        // encryp_decrypt = 1'b1;
        // Rst = 1'b0;
        // En = 1'b0;
        // #waittime;
        // Rst = 1'b1;
        // data_in = 128'ha37c53a091b29c6a260e147afb10278a;
        // cipher_key = 256'hcb8819736fdbfe53b7d0149c49aaba364cb03287e79db5c0b1c388da5789e766;
        // En = 1'b1;

        // while (!done) #waittime;
        // #waittime; #waittime; #waittime;

        // encryp_decrypt = 1'b0;
        // Rst = 1'b0;
        // En = 1'b0;
        // #waittime;
        // Rst = 1'b1;
        // data_in = 128'hf881b13d7e5a4b063ca0d2b5bdd1eef3;
        // En = 1'b1;

        // while (!done) #waittime;
        // #waittime; #waittime; #waittime;
        $fclose(outfile1);
        $fclose(key_file);
        #waittime;
        key_file  = $fopen("TestCase_Cipher_Key.txt", "r"); // Open again
        /////////////////////
        // DECRYPT TESTING //
        /////////////////////
        while (! $feof(key_file)) begin                 // read until an "end of file" is reached.
            encryp_decrypt = 1'b0;
            Rst = 1'b0;
            En = 1'b0;
            
            $fscanf(key_file,"%h\n", cipher_key);       // scan each line and get the value as an hexadecimal
            $fscanf(ciphertext_file,"%h\n", data_in);

            #waittime;
            Rst = 1'b1;
            En = 1'b1;

            while (!done) #waittime;
            #waittime;

            if (done) $fdisplay(outfile2, "%h", data_out);
            #waittime;
        end
        $fclose(outfile2);
        #waittime
        $finish;
    end

    AES_256 DUT_Inst0(
        .cipher_key(cipher_key),
        .encryp_decrypt(encryp_decrypt),
        .data_in(data_in),
        .data_out(data_out),
        .Clk(Clk), .Rst(Rst), .En(En), .done(done)
    );
endmodule