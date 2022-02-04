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
        $display("time = %d: a = %b, b = %b, cin = %b, Sum = %b, Carry = %b",$time,a,b,cin,sum,cout);
    end

    initial begin
        #80
        $finish;
    end

    initial begin
        a = 1; b = 1; cin = 0;
        #5 
        $display("\n");
        a = 100; b = 100; cin = 1;
        #5 
        $display("\n");
        a = 30; b = 16; cin = 1;
        #5
        $display("\n");
        a = 26; b = 5; cin = 1;
        #5
        $display("\n");
        a = 32; b = 32; cin = 0;
        #5
        $display("\n");
        a = 43; b = 4; cin = 1;
        #5
        $display("\n");
        a = 65; b = 43; cin = 0;
        #5
        $display("\n");
        a = 64; b = 64; cin = 1;
        #5
        $display("\n");
        a = 105; b = 220; cin = 0;
        #5
        $display("\n");
        a = 128; b = 96; cin = 1;
        #5
        $display("\n");
        a = 100; b = 96; cin = 0;
        #5
        $display("\n");
        a = 128; b = 96; cin = 0;
        #5
        $display("\n");
        a = 128; b = 128; cin = 0;
        #5
        $display("\n");
        a = 28; b = 96; cin = 1;
        #5
        $display("\n");
        a = 32; b = 128; cin = 0;
    end

endmodule