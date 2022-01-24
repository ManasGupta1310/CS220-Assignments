module dec_3to8(out,a,b,c,en); 
    
    //no extra gates have been used innthis implementation
    input a,b,c,en; 
    output [7:0] out;
    wire [3:0] in;

    dec_2to4 dec1(in,c,1'b1,e);
    dec_2to4 dec2(out[3:0],b,a,in[1]);
    dec_2to4 dec3(out[7:4],b,a,in[3]);

endmodule


module dec_2to4(y,a,b,en);
    input a,b,en;

    output[3:0] y;

    assign y[0]= ~a & ~b & en;
    assign y[1]= ~a & b & en;
    assign y[2]= a & ~b & en;
    assign y[3]= a & b & en;
    
endmodule