`include "A4Q2_eight_bit_adder_subtractor.v"
module eight_bit_adder_subtractor_tb;

    // Inputs
    reg [7:0] A;
    reg [7:0] B;
    reg opcode;

    // Outputs
    wire [7:0] sum;
    wire carry;
    wire overflow;

    eight_bit_adder_subtractor fulladsub (A, B, opcode, sum, carry, overflow);

    // Displaying the output
    always @(A or B or opcode or sum or carry or overflow) begin
        $display("<%d>: A = %b, B = %b, opcode = %b, Sum = %b, Carry = %b, Overflow = %b",$time,A,B,opcode,sum,carry,overflow);
    end
        

    // Initialising the inputs
    initial begin
        
        A = 10; B = 30; opcode = 0;
        #5
        $display("\n");
        
        A = 20; B = 70; opcode = 1;
        #5
        $display("\n");
        
        A = 56; B = 38; opcode = 0;
        #5
        $display("\n");
        
        A = 32; B = -3; opcode = 1;
        #5
        $display("\n");
        
        A = -52; B = 71; opcode = 0;
        #5
        $display("\n");

        A = -134; B = 128; opcode = 0;
        #5
        $display("\n");
        
        A = -50; B = 9; opcode = 1;
        #5
        $display("\n");
        
        A = -38; B = -108; opcode = 0;
        #5
        $display("\n");
        
        A = -18; B = -46; opcode = 1;
        #5
        $display("\n");

        A = -53; B = -90; opcode = 1;
        #5
        $display("\n");

        A = -121; B = 132; opcode = 0;
        #5
        $display("\n");
        
        A = -5; B = 70; opcode = 1;
        #5
        $display("\n");
        
        A = -45; B = -12; opcode = 0;
        #5
        $display("\n");
        
        A = -90; B = -65; opcode = 1;
        #5
        $display("\n");

        A = -120; B = -11; opcode = 1;
        #5
        $display("\n");
    end

endmodule