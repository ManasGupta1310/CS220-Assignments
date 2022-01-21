`include "one_bit_adder.v"

module eight-bit-adder (  input [7:0] a, input [7:0] b, input c_in,  output c_out,  output [7:0] sum);  
   
    
    wire c_out;
    wire[7:0] sum;


    wire [6:0] inter_carry;

    one_bit_adder add1(sum[0],inter_carry[0],a[0],b[0],c_in);
    one_bit_adder add2(sum[1],inter_carry[1],a[1],b[1],inter_carry[0]);
    one_bit_adder add3(sum[2],inter_carry[2],a[2],b[2],inter_carry[1]);
    one_bit_adder add4(sum[3],inter_carry[3],a[3],b[3],inter_carry[2]);
    one_bit_adder add5(sum[4],inter_carry[4],a[4],b[4],inter_carry[3]);
    one_bit_adder add6(sum[5],inter_carry[5],a[5],b[5],inter_carry[4]);
    one_bit_adder add7(sum[6],inter_carry[6],a[6],b[6],inter_carry[5]);
    one_bit_adder add8(sum[7],c_out,a[7],b[7],inter_carry[6]);

endmodule  