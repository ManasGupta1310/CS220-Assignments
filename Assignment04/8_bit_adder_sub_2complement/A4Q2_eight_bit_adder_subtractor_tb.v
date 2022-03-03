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
        $display("<%d>: Input_A = %b, Input_B = %b, Input_opcode = %b, Sum = %b, Carry = %b, Overflow = %b",$time,A,B,opcode,sum,carry,overflow);
    end
        

    // Initialising the inputs
    initial begin
        // + + +
        A = 115; B = 30; opcode = 0;
        #1
        $display("\n");
        // + + -
        A = 115; B = 30; opcode = 1;
        #1
        $display("\n");
        // + - +
        A = 68; B = -93; opcode = 0;
        #1
        $display("\n");
        // + - -
        A = 68; B = -93; opcode = 1;
        #1
        $display("\n");
        // - + +
        A = -57; B = 79; opcode = 0;
        #1
        $display("\n");
        // - + + = 0
        A = -127; B = 127; opcode = 0;
        #1
        $display("\n");
        // - + -
        A = -57; B = 79; opcode = 1;
        #1
        $display("\n");
        // - - +
        A = -88; B = -98; opcode = 0;
        #1
        $display("\n");
        // - - -
        A = -88; B = -98; opcode = 1;
        #1
        $display("\n");
        // - - - = 0
        A = -128; B = -128; opcode = 1;
        #1
        $display("\n");
    end

endmodule