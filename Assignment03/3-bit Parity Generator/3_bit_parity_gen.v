module 3_bit_parity_gen(in,clk,res, out);

    input clk,res;
    parameter S0=0, S1=1 ;
    input reg in[3*8-1:0];
    output reg out[4*8-1:0];

    reg p_state, n_state;

    always @ (posedge clk or posedge res)
    begin
    if (res)
        p_state <= S0; 
    else
        p_state <= n_state;
    end
    
    
    for(i=1;i<=3;i=i+1)
    begin
        n_state=in[i*8-1:(i-1)*8]=="0" ? p_state: (p_state==S0? S1:S0);
        out[(i+1)*8-1:i*8]=in[i*8-1:(i-1)*8];
    end
    
    always @ (*)
    begin
        out[i*8-1:(i-1)*8]=p_state==S1?"1":"0";
    end

