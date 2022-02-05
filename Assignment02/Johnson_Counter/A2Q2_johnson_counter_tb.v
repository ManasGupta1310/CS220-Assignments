module A2Q2_johnson_counter_tb;
reg rst,clk;
wire [7:0]q;
A2Q2_johnson_counter jon (rst,clk,q);

initial
begin
clk=0;
rst = 0;

$monitor($time, ,”c=%b”,clk, , ,”r=%b”,rst, , ,”q=%b”,q);
#6 rst =1;
end

always #2 clk = ~clk;

initial #68 $finish;

endmodule