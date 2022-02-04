`include "cla_adder.v"

module TestModule;
    // Inputs
    reg [3:0] a;
    reg [3:0] b;
    reg cin;

    // Outputs
    wire [3:0] sum;
    wire cout;

    // Instantiate the cla_adder
    cla_adder adder (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

    always @ (a or b or cin or sum or cout) begin
        $display("time = %d: A = %b, B = %b, Cin = %b, Sum = %b, Carry = %b",$time,a,b,cin,sum,carry);
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