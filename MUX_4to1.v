// Code your design here
module MUX_4to1(
    input I0,
    input I1,
    input I2,
    input I3,
    input S0,
    input S1,
    output out
    );
  wire t1,t2,t3,t4;
  and G1(t1,~S1,S0,I0);
  and G2(t2,~S1,S0,I1);
  and G3(t3,S1,~S0,I2);
  and G4(t4,S1,S0,I3);
  or G5(out,t1,t2,t3,t4);
    endmodule
// data flow
module MUX_4to1_dataflow(
  input I0,I1,I2,I3,S0,S1,
  output y);
  assign 
    y= ~S0&~S1&I0|~S1&S0&I1| S1&~S0&I2| S1&S0&I3;
endmodule
// behavioral 
module MUX_4to1_behavioral(
  input I0,I1,I2,I3,S0,S1,
  output reg y);
  always @(*) begin 
    if(S1==0&&S0==0)
      y= I0;
    else if(S1==0&&S0==1)
      y=I1;
    else if(S1==1&&S0==0)
      y=I2;
    else 
      y=I3;
  end 
endmodule 