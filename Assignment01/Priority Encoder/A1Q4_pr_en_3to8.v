module pr_en_3to8(x,y);

    input [7:0] x;
    output wire [2:0] y;

    assign y[0] = ~x[0] & (x[1] | ~x[2] & (x[3] | ~x[4] & (x[5] | ~x[6] & x[7])));
    assign y[1] = ~x[0] & ~x[1] & (x[2] | x[3] | ~x[4] & ~x[5] & (x[6] | x[7]));
    assign y[2] = ~x[0] & ~x[1] & ~x[2] & ~x[3] & (x[4] | x[5] | x[6] | x[7]);

endmodule 
