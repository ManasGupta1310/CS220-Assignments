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
  
    $monitor ("Time=%0t     Output=%b", $time, q);     // Displaying the output

    repeat (1) @(posedge clk);  
    rst = 1;  // Setting the reset to 1
    repeat (15) @(posedge clk);  
    $finish;  
    
  end  

endmodule