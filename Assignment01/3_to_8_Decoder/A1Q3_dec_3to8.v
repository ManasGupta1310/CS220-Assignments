`include "dec_2to4.v"

module dec_3to8(a, b, c, e, y);

    input a, b, c, e;
    output [7:0] y;
    wire [3:0] in;

    dec_2to4 k1(c, 1'b1, e, in);
    dec_2to4 k2(b, a, in[1], y[3:0]);
    dec_2to4 k3(b, a, in[3], y[7:4]);

endmodule
