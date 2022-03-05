module gray_code_counter(input clk, input in, output reg [2:0] count, output reg out);
parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b011, S3 = 3'b010, S4 = 3'b110, S5 = 3'b111, S6 = 3'b101, S7 = 3'b100;

reg [2:0] state = 0;

always @(posedge clk)
begin
	case(state)
	S0:begin
	    state <=  S1;
        out <= 1'b0;
	end
	S1:begin
	    state <=  S2;
        out <= 1'b0;
	end
	S2:begin
		state <=  S3;
        out <= 1'b0;
	end
	S3:begin
		state <=  S4;
        out <= 1'b0;
	end
	S4:begin
		state <=  S5;
        out <= 1'b0;
	end
	S5:begin
		state <=  S6;
        out <= 1'b0;
	end
	S6:begin
		state <=  S7;
        out <= 1'b0;
	end
	S7:begin
		state <=  S0;
        out <= 1'b1;
	end
	default:begin
		state <= 0;
        out <= 1'b0;
	end
	endcase
end

always@(state)
begin
	if (state == S0)
		count <= 3'b000;
	else if (state == S1)
		count <= 3'b001;
	else if (state == S2)
		count <= 3'b010;
	else if(state == S3)
		count <= 3'b011;
	else if (state == S4)
		count <= 3'b100;
	else if (state == S5)
		count <= 3'b101;
	else if (state == S6)
		count <= 3'b110;
	else if (state == S7)
		count <= 3'b111;
end
endmodule
