module one_bit_adder_subtractor (a, b, cin, opcode, sum, cout);

   // Taking inputs
   input a, b, cin;
   input opcode;   // 0 for Adder and  1 for Subtractor

   // Intermediate carry
   wire b_in;

   // Outputs
   output wire sum, cout;

   // Combinational logic for the module
   assign b_in = b ^ opcode;
   assign sum = a ^ b_in ^ cin;
   assign cout = (a & b_in) | (b_in & cin) | (a & cin); 

endmodule
