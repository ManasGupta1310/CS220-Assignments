`include "dec_2to4.v"

module dec_3to8(out,a,b,c,en); 
    
    input a,b,c;
    input en; 
    output [7:0] out;

    output [3:0] z;
    wire [3:0] z;

    dec_2to4 dec1(z[0],z[1],z[2],z[3],c,0,en);
    dec_2to4 dec2(out[0], out[1],out[2], out[3],a,b,z[0]);
    dec_2to4 dec3(out[4], out[5],out[6], out[7],a,b,z[1]);

    
endmodule