`include "A3_Q2_odd_parity_generator.v"
module odd_parity_generator_tb;

reg[2:0] in;  //input
wire p;       //output

odd_parity_generator opg(in, p);

//eight different inputs
initial begin
    #5 in = 3'b000;
    #5 in = 3'b001;
    #5 in = 3'b010;
    #5 in = 3'b011;
    #5 in = 3'b100;
    #5 in = 3'b101;
    #5 in = 3'b110;
    #5 in = 3'b111;
    #10 $finish;
end

always@(in) begin
    #1
    $display("At time : %d, input given is : %b, and the parity bit generated is : %b\n", $time, in, p);
end

endmodule
