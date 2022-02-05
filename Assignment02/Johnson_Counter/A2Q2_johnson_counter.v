module A2Q2_johnson_counter(rst, clk, Q);

    input rst, clk;
    output[7:0] Q;
    reg [7:0] Q;
    always @(negedge rst or posedge clk)
    if(!rst)
    Q <= 0;
    else
    Q <= {{Q[6:0]},{~Q[7]}};

endmodule


