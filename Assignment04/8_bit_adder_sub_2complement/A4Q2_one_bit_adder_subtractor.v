module one_bit_adder_subtractor (a, b, cin, opcode, sum, cout);

   // Taking inputs
   input a, b, cin;
   input opcode;   // 0 for Adder and  1 for Subtractor

   // Intermediate carry
   wire int;

   // Outputs
   output wire sum, cout;

   // Combinational logic for the module
   assign int = b ^ opcode;
   assign sum = a ^ int ^ cin;
   assign cout = (a & int) | (int & cin) | (a & cin); 

endmodule
