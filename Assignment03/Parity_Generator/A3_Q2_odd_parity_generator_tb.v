`include "A3_Q2_odd_parity_generator.v"
module odd_parity_generator_tb;

reg clk;
reg reset;             // detects the end of an input(kind of reset)          
reg in;              // input
reg[1:0] p_state;    // present state
wire[1:0] n_state;  // next state
wire p;              // parity bit
fsm FSM(in, clk, reset, p_state, n_state, p);

initial begin
    clk = 1'b0;
    p_state = 2'b00;
    reset = 1'b0;
end

always #5 clk = ~clk;


initial begin
    #5 in = 1'b0; p_state = 2'b00;
    #5 in = 1'b0; p_state = n_state;
    #5 in = 1'b0; reset = 1'b1; p_state = n_state;

    // new input
    #5 in = 1'b0; reset = 1'b0; p_state = 2'b00;
    #5 in = 1'b0; p_state = n_state;
    #5 in = 1'b1; reset = 1'b1; p_state = n_state;

    // new input
    #5 in = 1'b0;  reset = 1'b0; p_state = 2'b00;
    #5 in = 1'b1; p_state = n_state;
    #5 in = 1'b0; reset = 1'b1; p_state = n_state;

    // new input
    #5 in = 1'b0; reset = 1'b0; p_state = 2'b00;
    #5 in = 1'b1; p_state = n_state;
    #5 in = 1'b1; reset = 1'b1; p_state = n_state;

    // new input
    #5 in = 1'b1; reset = 1'b0; p_state = 2'b00;
    #5 in = 1'b0; p_state = n_state;
    #5 in = 1'b0; reset = 1'b1;

    // new input
    #5 in = 1'b1; reset = 1'b0; p_state = 2'b00;
    #5 in = 1'b0; p_state = n_state;
    #5 in = 1'b1; reset = 1'b1; p_state = n_state;

    //new input
    #5 in = 1'b1; reset = 1'b0; p_state = 2'b00;
    #5 in = 1'b1; p_state = n_state;
    #5 in = 1'b0; reset = 1'b1; p_state = n_state;

    // new input
    #5 in = 1'b1; reset = 1'b0; p_state = 2'b00;
    #5 in = 1'b1; p_state = n_state;
    #5 in = 1'b1; reset = 1'b1; p_state = n_state;

    #4 $finish;
end

endmodule
