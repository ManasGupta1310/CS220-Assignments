module comparator_1bit(a, b, lin, ein, gin, less, equal, greater);
    input a, b, lin, ein, gin;

    output wire less;;
    output wire equal;
    output wire greater;

    assign less = lin|ein&~a&b;
    assign equal = ein&~(a^b);
    assign greater = gin|ein&a&~b; 
    
endmodule
