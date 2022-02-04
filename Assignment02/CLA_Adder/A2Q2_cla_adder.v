module cla_adder(a,b,cin,sum,cout);
    input[3:0] a,b;     // a and b are 4bit inputs
    input cin;          // Carry in
    output [3:0] sum;   // Final Sum
    output cout;        // Final carry out
    

    wire p0,p1,p2,p3;   // p stands for the carry out propagator 
    wire g0,g1,g2,g3;   // g stands for the carry out generator
    wire c0,c1,c2,c3;   // c stands for the intermediate carry outs

    //  The formula for carry out in any iteration will be ===>  cout[i]=(a[i]&b[i]) + (xor(a[i],b[i])&cin[i-1])
                                            // For any i ===> cin[i]=cout[i-1]
    // The sum at any iter will ===> sum[i]=xor(p[i],c[i-1]


    assign p0=(a[0]^b[0]);  // We assign the propagators the value: p[i]=xor(a[i], b[i])
    assign p1=(a[1]^b[1]);
    assign p2=(a[2]^b[2]);
    assign p3=(a[3]^b[3]);

    assign g0=(a[0]&b[0]);  // We assign the generators the value: g[i]=a[i]&b[i]
    assign g1=(a[1]&b[1]);
    assign g2=(a[2]&b[2]);
    assign g3=(a[3]&b[3]);

    assign c0=g0|(p0&cin);  // We assign the intermediate carry outs the value from the formula
    assign c1=g1|(p1&c0);   // c1=g1|(p1&g0)|(p1&p0&cin);
    assign c2=g2|(p2&c1);   // c2=g2|(p2&g1)|(p2&p1&g0)|(p1&p1&p0&cin);
    assign c3=g3|(p3&c2);   // c3=g3|(p3&g2)|(p3&p2&g1)|(p3&p2&p1&g0)|(p3&p2&p1&p0&cin);


    assign sum[0]=p0^cin,
    sum[1]=p1^c0,
    sum[2]=p2^c1,
    sum[3]=p3^c2;

    assign cout=c3;

endmodule