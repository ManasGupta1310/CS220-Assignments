module johnson(Resetn, Clock, Q);
input Resetn, Clock;
output[7:0] Q;
reg [7:0] Q;
always @(negedge Resetn or posedge Clock)
if(!Resetn)
Q <= 0;
else
Q <= {{Q[6:0]},{~Q[7]}};
endmodule

