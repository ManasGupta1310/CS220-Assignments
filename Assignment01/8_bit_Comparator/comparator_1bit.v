module comparator_1bit(a, b, lin, ein, gin, less, equal, greater);
    input a;
    input b;
    input lin;
    input ein;
    input gin;

    output less;
    wire less;
    output equal;
    wire equal;
    output greater;
    wire greater;

    assign less = lin|ein&~a&b;
    assign equal = ein&~(a^b);
    assign greater = gin|ein&a&~b; 
    
endmodule