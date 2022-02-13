 module seq1010_detect(input in,clk,res,output reg out);

    parameter S0 = 0 , S1 = 1 , S2 = 2 , S3 = 3 ;
    reg [1:0] p_state,n_state ;

    // block for sequential states
    always @ (posedge clk or posedge res)
    if (res)
        p_state <= S0;  
    else
        p_state <= n_state;
    
    //block for sequential output
    always @ (posedge clk or posedge res)
    if (res)
        z <= 1'b0;
    else
        if ((p_state==S3) && x)
            z <= 1'b1;
        else
            z <= 1'b0;
    
    //block of combinational assignment
    always @ (*)
    begin
        case(p_state)
            S0 : n_state = x ? S1 : S0 ;
            S1 : n_state = x ? S1 : S2 ;
            S2 : n_state = x ? S3 : S0 ;
            S3 : n_state = x ? S1 : S2 ;
        endcase
    $monitor(p_state);
    end
  
 endmodule