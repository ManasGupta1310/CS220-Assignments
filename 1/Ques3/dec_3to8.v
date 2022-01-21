`include "dec_2to4.v"

module dec_3to8(out,a,b,c,en) (
    
    input a,b,c;
    input en; 
    output [7:0] out;

    output wire z1;

    dec_2to4 dec1(z,c,0,en);
    dec_2to4 dec2(out[3:0],a,b,z[0]);
    dec_2to4 dec3(out[7:5],a,b,z[1]);

);
    
endmodule