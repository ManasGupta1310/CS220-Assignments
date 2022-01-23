module dec_2to4(x,y,z,w,a,b,en);
    input a,b;
    input en;

    output x;
    wire x;
    output y;
    wire y;
    output z;
    wire z;
    output w;
    wire w;

    assign x=(~a)&(~b)&(en)
    assign y=(~a)&(b)&(en)
    assign z=(a)&(~b)&(en)
    assign w=(a)&(b)&(en)
    
endmodule