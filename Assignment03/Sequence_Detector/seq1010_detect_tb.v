module seq1010_detect_tb;
    // Inputs
    reg x;
    reg clk;
    reg res;

    // Outputs
    wire z;
    seq1010_detect uut (.x(x), .clk(clk), .res(res), .z(z));
    
initial
    begin
        clk = 1'b0;
        res = 1'b1;
        #15 res = 1'b0;
    end

always #5 clk = ~ clk;  

initial begin
        #12 x = 0;#10 x = 0 ; #10 x = 1 ; #10 x = 0 ;
        #12 x = 1;#10 x = 1 ; #10 x = 0 ; #10 x = 1 ;
        #12 x = 1;#10 x = 0 ; #10 x = 0 ; #10 x = 1 ;
        #12 x = 0;#10 x = 1 ; #10 x = 1 ; #10 x = 0 ;
        #10 $finish;
    end
      
    
endmodule