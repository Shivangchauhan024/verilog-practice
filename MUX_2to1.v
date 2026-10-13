//structural 
module MUX_2to1(I0,I1,S,y);
  input I0,I1,S;
  output y;
  wire t1,t2;
  and G1(t1,I0,~S);
  and G2(t2,I1,S);
  or G3(y,t1,t2);
endmodule
//behavioral
module MUX_2to1bhl(I0,I1,S,y);
  input I0,I1,S;
  output reg y;
  always @ (*) begin
    if(S==0) 
      y=I0;
    else
      y=I1;
  end
endmodule
//data flow
module MUX_2to1data(I0,I1,S,y);
  input I0,I1,S;
  output y;
  assign y= I0&~S|I1&S;
endmodule
  