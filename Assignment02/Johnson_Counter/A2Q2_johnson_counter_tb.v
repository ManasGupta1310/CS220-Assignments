`include "A2Q2_johnson_counter.v"

module A2Q2_johnson_counter_tb;
reg rst;        // Inputs
reg clk;
wire [7:0]q;    // Outputs

A2Q2_johnson_counter johnson_count (rst,clk,q);     // Declaring the counter

always #1 clk = ~clk;  
  
  initial begin  
      //Initilaising clock and reset to 1
    clk=0; 
    rst=0;  
  
    $monitor ("Time=%0t Reset=%b Clock=%b Output=%b", $time, rst,clk,q);     // Displaying the output

    repeat (1) @(posedge clk);  // Running the block once
    rst = 1;  // Setting the reset to 1
    repeat (14) @(posedge clk);  // Running the code 14 times with rst=1
    #3 $finish;  
    
  end  

endmodule