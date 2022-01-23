module eight_bit_adder_test;

    reg [7:0] A;
    reg [7:0] B;
    reg Cin;

    wire [7:0] Sum;
    wire Carry;

    eight_bit_adder ADDER (A, B, Cin, Carry, Sum);

    always @ (A or B or Cin or Sum or Carry) begin
        $display("A = %b, B = %b, Cin = %b, Sum = %b, Carry = %b",A,B,Cin,Sum,Carry);
    end

    initial begin
        #80
        $finish;
    end

    initial begin
        A = 1; B = 1; Cin = 0;
        #5 
        $display("\n");
        A = 100; B = 100; Cin = 1;
        #5 
        $display("\n");
        A = 30; B = 16; Cin = 1;
        #5
        $display("\n");
        A = 26; B = 5; Cin = 1;
        #5
        $display("\n");
        A = 32; B = 32; Cin = 0;
        #5
        $display("\n");
        A = 43; B = 4; Cin = 1;
        #5
        $display("\n");
        A = 65; B = 43; Cin = 0;
        #5
        $display("\n");
        A = 64; B = 64; Cin = 1;
        #5
        $display("\n");
        A = 105; B = 220; Cin = 0;
        #5
        $display("\n");
        A = 128; B = 96; Cin = 1;
        #5
        $display("\n");
        A = 100; B = 96; Cin = 0;
        #5
        $display("\n");
        A = 128; B = 96; Cin = 0;
        #5
        $display("\n");
        A = 128; B = 128; Cin = 0;
        #5
        $display("\n");
        A = 28; B = 96; Cin = 1;
        #5
        $display("\n");
        A = 32; B = 128; Cin = 0;
    end

endmodule
