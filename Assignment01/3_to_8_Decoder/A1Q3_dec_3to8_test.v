`include "A1Q3_dec_3to8.v"

module dec_3to8_test;
    reg [2:0] a;
    reg en;
    wire [7:0] out;



    dec_3to8 dec1(a[0], a[1], a[2], en, out);

    always @(a or en) begin 
        #1
        $display("time = %d: a = %b, b = %b, c = %b, en = %b, out = %b\n",$time,a[2],a[1],a[0],en,out);
    end

    initial begin
        #100
        $finish;
    end

    initial begin
        a=3'b000; en=0;
        #5
        a=3'b001; en=0;
        #5
        a=3'b010; en=0;
        #5
        a=3'b011; en=0;
        #5
        a=3'b100; en=0;
        #5;
        a=3'b101; en=0;
        #5
        a=3'b110; en=0;
        #5
        a=3'b111; en=0;
        #5
        a=3'b000; en=1;
        #5
        a=3'b001; en=1;
        #5
        a=3'b010; en=1;
        #5
        a=3'b011; en=1;
        #5
        a=3'b100; en=1;
        #5;
        a=3'b101; en=1;
        #5
        a=3'b110; en=1;
        #5
        a=3'b111; en=1;
    end

endmodule 



