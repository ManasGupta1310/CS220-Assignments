`include "cla_adder.v"

module TestModule;
    // Inputs
    reg [7:0] a;
    reg [7:0] b;
    reg cin;

    // Outputs
    wire [7:0] sum;
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
        a = 4; b = 10; cin = 1;
        #5 
        $display("\n");
        a = 5; b = 9; cin = 1;
        #5
        $display("\n");
        a = 6; b = 5; cin = 1;
        #5
        $display("\n");
        a = 2; b = 3; cin = 0;
        #5
        $display("\n");
        a = 4; b = 4; cin = 1;
        #5
        $display("\n");
        a = 5; b = 3; cin = 0;
        #5
        $display("\n");
        a = 1; b = 14; cin = 1;
        #5
        $display("\n");
        a = 10; b = 2; cin = 0;
        #5
        $display("\n");
        a = 8; b = 6; cin = 1;
        #5
        $display("\n");
        a = 10; b = 1; cin = 0;
        #5
        $display("\n");
        a = 12; b = 3; cin = 0;
        #5
        $display("\n");
        a = 11; b = 1; cin = 0;
        #5
        $display("\n");
        a = 4; b = 7; cin = 1;
        #5
        $display("\n");
        a = 1; b = 1; cin = 0;
    end

endmodule