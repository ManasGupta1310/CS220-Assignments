module dec_2to4(y,a,b,en) (
    input a,b;
    input en;
    output wire [3:0] y;

    assign y[0]=(~a)&(~b)&(en)
    assign y[1]=(a)&(~b)&(en)
    assign y[2]=(~a)&(b)&(en)
    assign y[3]=(a)&(b)&(en)
);
    
endmodule