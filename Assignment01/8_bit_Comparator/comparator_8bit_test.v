`include "comparator_8bit.v"

module comparator_8bit_test;

    reg [7:0] A;
    reg [7:0] B;
    reg Lin;
    reg Ein;
    reg Gin;

    wire Less;
    wire Equal;
    wire Greater;

    comparator_8bit COMPARATOR (A, B, Lin, Ein, Gin, Less, Equal, Greater);

    initial begin
        Lin = 0; Ein = 1; Gin = 0;
        A = 1; B = 1; 
        #5 
        $display("\n");
        A = 16; B = 14; 
        #5 
        $display("\n");
        A = 15; B = 15; 
        #5
        $display("\n");
        A = 10; B = 20; 
        #5
        $display("\n");
        A = 0; B = 0;
        #5
        $display("\n");
        A = 43; B = 0;
        #5
        $display("\n");
        A = 255; B = 254;
        #5
        $display("\n");
        A = 255; B = 255;
        #5
        $display("\n");
        A = 125; B = 195;
        #5
        $display("\n");
        A = 128; B = 256;
        #5
        $display("\n");
        A = 128; B = 128;
        #5
        $display("\n");
        A = 128; B = 64;
        #5
        $display("\n");
        A = 255; B = 156;
        #5
        $display("\n");
        A = 28; B = 32;
        #5
        $display("\n");
        A = 212; B = 255;
    end

    always @ (A or B or Less or Equal or Greater) begin
        $display("At time = %d: A = %b, B = %b, Lin = %b, Ein = %b, Gin = %b, Less = %b, Equal = %b, Greater = %b",$time,A,B,Lin,Ein,Gin,Less,Equal,Greater);
    end

    initial begin
        #80
        $finish;
    end

endmodule
