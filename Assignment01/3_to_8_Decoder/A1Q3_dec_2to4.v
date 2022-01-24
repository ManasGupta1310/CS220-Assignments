module dec_2to4(a, b, e, y);

    input a, b, e;
    output [3:0] y;

    assign y[0] = e & ~a & ~b;
    assign y[1] = e & ~a & b;
    assign y[2] = e & a & ~b;
    assign y[3] = e & a & b;

endmodule
