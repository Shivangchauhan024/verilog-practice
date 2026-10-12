// Code your design here
module half_adder(a,b,y,z);
  input a,b;
  output y,z;
  xor(y,a,b);
  and(z,a,b);
endmodule