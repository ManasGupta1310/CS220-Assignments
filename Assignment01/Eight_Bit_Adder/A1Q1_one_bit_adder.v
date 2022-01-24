module one_bit_adder (a,b,c,sum,carry);

input a;
input b;
input c;

output sum;
wire sum;
output carry;
wire carry;

assign sum = a^b^c;
assign carry = ((a&b)|(b&c)|(c&a));
    
endmodule
