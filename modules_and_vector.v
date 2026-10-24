module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output reg [7:0] q 
);
    wire[7:0] t1,t2,t3;
    my_dff8 stage1(clk,d,t1);
    my_dff8 stage2(clk,t1,t2);
    my_dff8 stage3(clk,t2,t3);
    always @(*) begin
        if (sel[1]==0 && sel[0]==0)
            q=d;
        else if( sel[1]==0 && sel[0]==1)
            q=t1;
        else if(sel[1]==1 && sel[0]==0)
            q=t2;
        else
            q=t3;
    end
endmodule
