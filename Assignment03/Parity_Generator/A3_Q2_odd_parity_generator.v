module odd_parity_generator(in, p);
input [2:0] in;
output p;

assign p = ~(in[0]^(in[1]^in[2]));

endmodule;
