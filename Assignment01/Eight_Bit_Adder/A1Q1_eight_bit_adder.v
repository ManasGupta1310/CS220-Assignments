`include "A1Q1_one_bit_adder.v"

module eight_bit_adder (  input [7:0] a, input [7:0] b, input c_in,  output c_out,  output [7:0] sum);  
   
    
    wire c_out;
    wire[7:0] sum;


    wire [6:0] inter_carry;

    one_bit_adder add1(a[0],b[0],c_in,sum[0],inter_carry[0]);
    one_bit_adder add2(a[1],b[1],inter_carry[0],sum[1],inter_carry[1]);
    one_bit_adder add3(a[2],b[2],inter_carry[1],sum[2],inter_carry[2]);
    one_bit_adder add4(a[3],b[3],inter_carry[2],sum[3],inter_carry[3]);
    one_bit_adder add5(a[4],b[4],inter_carry[3],sum[4],inter_carry[4]);
    one_bit_adder add6(a[5],b[5],inter_carry[4],sum[5],inter_carry[5]);
    one_bit_adder add7(a[6],b[6],inter_carry[5],sum[6],inter_carry[6]);
    one_bit_adder add8(a[7],b[7],inter_carry[6],sum[7],c_out);

endmodule
