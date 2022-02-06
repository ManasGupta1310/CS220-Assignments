module A2Q2_johnson_counter(rst, clk, q);

    input rst, clk;        // Taking inputs
    output[7:0] q;         // Initialisng a 8 bit output
    reg [7:0] q;

    always @(negedge rst or posedge clk)    // At positive clock edge or negative reset edge, perform the operation

    if(!rst)
        q <= 0; // Giving q the value 0 asynchronously if rst=0
    else
        q <= {{~q[0]},{q[7:1]}};

endmodule


