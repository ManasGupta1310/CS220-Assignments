module seq1010_detect(input in,clk,res,output reg out);

  parameter S0 = 3'b000 , S1 = 3'b001 , S2 = 3'b010 , S3 = 3'b011, S4 = 3'b100;
  reg [2:0] p_state,n_state ;

  always @ (posedge clk or negedge clk)
  begin : FSM
  if (res == 1'b1) begin
    p_state <= S0;
    out <= 0;
  end
  else begin
  case(p_state)
  S0 : if (in == 1'b1) begin
    p_state <= S1;
    out <= 0;
  end
  else begin
    p_state <= S0;
    out <= 0;
  end

  S1 : if (in == 1'b1) begin
    p_state <= S1;
    out <= 0;
  end
  else begin
    p_state <= S2;
    out <= 0;
  end

  S2 : if (in == 1'b1) begin
    p_state <= S3;
    out <= 0;
  end
  else begin
    p_state <= S0;
    out <= 0;
  end

  S3 : if (in == 1'b1) begin
    p_state <= S1;
    out <= 0;
  end
  else begin
    p_state <= S4;
    out <= 1;
  end

  S4 : if (in == 1'b1) begin
    p_state <= S3;
    out <= 0;
  end
  else begin
    p_state <= S0;
    out <= 0;
  end

  default : begin 
    p_state <= S0;
  end

  endcase
  end

  end
  
  always @(posedge clk or negedge clk) begin
    #1 $display("time = %d: reset = %b, input = %b, present state = %b, output = %b\n",$time, res, in,p_state, out);
  end   

endmodule