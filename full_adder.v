//data flow
module full_adder(a,b,c,y,z);
  input a,b,c;
  output y,z;
  assign y=a ^ b ^c;
  assign z=a&b|b&c|c&a;
endmodule
// behavioral 
module full_adderb(a,b,c,y,z);
  input a,b,c;
  output reg y,z;
  always@ (*) begin 
    assign y= a^b^c;
    assign z= a&b|b&c|c&a;
  end 
endmodule
 //structural 
module full_adder_structural(a,b,c,y,z);
  input a,b,c;
  output y,z;
  wire t1,t3,t4;
  xnor G1(t1,a,b);
  xnor G2(y,c,t1);
  and G3(t3,a,b);
  and G4(t4,t1,c);
  or G5(z,t3,t4);
endmodule