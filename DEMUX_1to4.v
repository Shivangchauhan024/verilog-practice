// structural
module DEMUX_1to4(I,S0,S1,Y0,Y1,Y2,Y3);
  input I,S0,S1;
  output Y0,Y1,Y2,Y3;
  and G1(Y0,I,~S1,~S0);
  and G2(Y1,I,~S1,S0);
  and G3(Y2,I,S1,~S0);
  and G4(Y3,I,S1,S0);
endmodule
// data flow
module data_flow(I,S0,S1,Y0,Y1,Y2,Y3);
  input I,S0,S1;
  output Y0,Y1,Y2,Y3;
  assign Y0=(I&~S1&~S0);
  assign Y1=(I&~S1&S0);
  assign Y2=(I&S1&~S0);
  assign Y3=(I&S1&S0);
endmodule
// behavioral
module behavioral(I,S0,S1,Y0,Y1,Y2,Y3);
  input I,S0,S1;
  output reg Y0,Y1,Y2,Y3;
  always@ (*) begin
    if(S1==0 && S0==0)begin
      Y0=I;Y1=0;Y2=0;Y3=0;
    end
    else if(S1==0 && S0==1)begin
            Y1=I;Y0=0;Y2=0;Y3=0;
    end
    else if(S1==1 && S0==0)begin
                    Y2=I;Y1=0;Y0=0;Y3=0;
    end
                    else begin
                      Y3=I;Y1=0;Y2=0;Y0=0;
                    end
                    end 
                    endmodule