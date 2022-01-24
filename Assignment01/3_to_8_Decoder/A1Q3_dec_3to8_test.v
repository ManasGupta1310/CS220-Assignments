// `include "dec_3to8.v"

module dec_3to8_test;

    reg a, b, c, en;
    wire[7:0] out;

    dec_3to8 dec1(out, a, b, c, en);

    always @ (a or b or c or en) begin
        $display("time = %d: c = %b, b = %b, a = %b, enable = %b, out = %b",$time,c,b,a,en,out);
    end

    initial begin
        #80
        $finish;
    end

    initial begin
        a = 0; b = 0; c = 0; en = 0;
        #5 
        $display("\n");
        a = 1; b = 0; c = 0; en = 0;
        #5 
        $display("\n");
        a = 0; b = 1; c = 0; en = 0;
        #5
        $display("\n");
        a = 1; b = 1; c = 0; en = 0;
        #5
        $display("\n");
        a = 0; b = 0; c = 1; en = 0;
        #5
        $display("\n");
        a = 1; b = 0; c = 1; en = 0;
        #5
        $display("\n");
        a = 0; b = 1; c = 1; en = 0;
        #5
        $display("\n");
        a = 1; b = 1; c = 1; en = 0;
        #5
        $display("\n");
        a = 0; b = 0; c = 0; en = 1;
        #5
        $display("\n");
        a = 1; b = 0; c = 0; en = 1;
        #5
        $display("\n");
        a = 0; b = 1; c = 0; en = 1;
        #5
        $display("\n");
        a = 1; b = 1; c = 0; en = 1;
        #5
        $display("\n");
        a = 0; b = 0; c = 1; en = 1;
        #5
        $display("\n");
        a = 1; b = 0; c = 1; en = 1;
        #5
        $display("\n");
        a = 0; b = 1; c = 1; en = 1;
        #5
        $display("\n");
        a = 1; b = 1; c = 1; en = 1;
    end

endmodule;



