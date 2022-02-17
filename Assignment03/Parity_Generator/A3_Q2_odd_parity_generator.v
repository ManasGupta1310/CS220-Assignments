module fsm(inp, clk, reset, p_state, n_state, out);

input inp;
input clk, reset;
input [1:0] p_state;
output reg[1:0] n_state;
output reg out;

parameter S0 = 2'b00 , S1 = 2'b01 , S2 = 3'b10;  // states


always @ (posedge clk or negedge clk)
  begin : fsm
  case(p_state)
  S0 : if (inp == 1'b1) begin
    n_state = S1;
  end
  else begin
    n_state = S2;
  end


  S1 : if (inp == 1'b1) begin
    n_state = S2;
  end
  else begin
    n_state = S1;
  end

  S2 : if (inp == 1'b1) begin
    n_state = S1;
  end
  else begin
    n_state = S2;
  end

  default : begin 
    n_state = S0;
  end

  endcase

  if(reset == 1'b1) begin
    out = (n_state == S2)? 1'b1 : 1'b0;
  end
  else
    out = 1'bx;
  end


always@(posedge clk or negedge clk) begin    
    #1 $display("At time : %d, input given is : %b, present state is : %b, next state is: %b, and the parity bit generated is : %b\n", $time, inp, p_state, n_state, out);
end

endmodule
