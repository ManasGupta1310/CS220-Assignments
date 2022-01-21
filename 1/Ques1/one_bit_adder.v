module one_bit_adder(s,c_out,a,b, c_out);

    //Taking the input
    input c_in,
    input a,
    input b,

    //Taking the input
    output c_out,
    wire c_out,
    output sum,
    wire sum;
    
    //Using the combinational logic
    assign sum=a^b^c_in;
    assign c_out= (a&b)|(c_in&a)|(c_in&b); 

endmodule