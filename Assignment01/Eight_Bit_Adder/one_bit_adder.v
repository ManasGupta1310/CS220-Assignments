module one_bit_adder (a,b,c,sum,carry);

input a, b, c;
output sum, carry;
wire sum, carry;

assign sum = a^b^c;
assign carry = ((a&b)|(b&c)|(c&a));
    
endmodule
