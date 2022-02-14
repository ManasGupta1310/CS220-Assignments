module 3_bit_parity_gen(in,clk,res, out);

    input clk,res;
    parameter S0=0, S1=1 ;
    input reg in[3*8-1:0];
    output reg out[3*8-1:0];

