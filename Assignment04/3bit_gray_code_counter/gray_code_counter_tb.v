`include "gray_code_counter.v"
module graycounter_tb;

reg clk = 0;
reg in;
wire [2:0] count;
wire out;
gray_code_counter gray(clk,in,count, out);


always
begin
	clk = ~clk;
	#5;
end

always @(posedge clk) begin
	#1
    $display("At time : %d, the count is : %b, and the output signal is : %b\n", $time, count, out);
end
initial
begin
    #180 $finish;
end

always @(posedge clk or negedge clk) begin
	in = 1'b1;
end
endmodule