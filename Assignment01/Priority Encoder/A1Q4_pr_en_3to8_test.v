`include "pr_en_3to8.v"

module pr_en_test_3to8;

    reg [7:0] in;
    wire [2:0] out;

    pr_en_3to8 PENC(in, out);

    initial begin
    $monitor("At time=%d: Input = %b, Output = %b \n", $time, in, out);
    end

    initial begin
        in = 8'b10100001;
        #5 
        in = 8'b10000110;
        #5 
        in = 8'b01110100;
        #5 
        in = 8'b10111000;
        #5 
        in = 8'b11010000;
        #5 
        in = 8'b01100000;
        #5 
        in = 8'b11000000;
        #5 
        in = 8'b10000000;
    end

endmodule
