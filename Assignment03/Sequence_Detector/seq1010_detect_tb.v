module seq1010_detect_tb;
    // Inputs
    reg in;
    reg clk;
    reg res;

    // Outputs
    wire out;
    seq1010_detect detector (in, clk, res, out);
    
initial
    begin
        clk = 1'b0;
        res = 1'b1;
        #15 res = 1'b0;
    end

always #5 clk = ~ clk;  

initial begin
        #12 in = 0;#10 in = 0 ; #10 in = 1 ; #10 in = 0 ;
        #12 in = 1;#10 in = 1 ; #10 in = 0 ; #10 in = 1 ;
        #12 in = 1;#10 in = 0 ; #10 in = 0 ; #10 in = 1 ;
        #12 in = 0;#10 in = 1 ; #10 in = 1 ; #10 in = 0 ;
        #10 $finish;
    end
      
    
endmodule