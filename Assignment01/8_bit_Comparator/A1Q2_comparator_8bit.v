`include "comparator_1bit.v"

module comparator_8bit(x, y, lin, ein, gin, less, equal, greater);
    input [7:0] x;
    input [7:0] y;

    input lin, ein, gin;


    output wire less;
    output wire equal;
    output wire greater;

    wire [6:0] inter_less;
    wire [6:0] inter_equal;
    wire [6:0] inter_greater;

    comparator_1bit C7 (x[7], y[7], lin, ein, gin, inter_less[6], inter_equal[6], inter_greater[6]);
    comparator_1bit C6 (x[6], y[6], inter_less[6], inter_equal[6], inter_greater[6], inter_less[5], inter_equal[5], inter_greater[5]);
    comparator_1bit C5 (x[5], y[5], inter_less[5], inter_equal[5], inter_greater[5], inter_less[4], inter_equal[4], inter_greater[4]);
    comparator_1bit C4 (x[4], y[4], inter_less[4], inter_equal[4], inter_greater[4], inter_less[3], inter_equal[3], inter_greater[3]);
    comparator_1bit C3 (x[3], y[3], inter_less[3], inter_equal[3], inter_greater[3], inter_less[2], inter_equal[2], inter_greater[2]);
    comparator_1bit C2 (x[2], y[2], inter_less[2], inter_equal[2], inter_greater[2], inter_less[1], inter_equal[1], inter_greater[1]);
    comparator_1bit C1 (x[1], y[1], inter_less[1], inter_equal[1], inter_greater[1], inter_less[0], inter_equal[0], inter_greater[0]);
    comparator_1bit C0 (x[0], y[0], inter_less[0], inter_equal[0], inter_greater[0], less, equal, greater);

endmodule
