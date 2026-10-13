// Code your testbench here
// or browse Examples
module tb;
reg I0,I1,I2,I3,S0,S1;
wire out;
MUX_4to1_behavioral DUT(I0,I1,I2,I3,S0,S1,out);
initial 
begin
   $dumpfile("dump.vcd");
    $dumpvars(0,tb);
  $monitor($time,"I0=%b,I1=%b,I2=%b,I3=%b,S1=%b,S0=%b,out=%b",I0,I1,I2,I3,S1,S0,out);
 I0=0;I1=1;I2=0;I3=1;
  #5 S1=0;S0=0;
   #5 S1=0;S0=1;
   #5 S1=1;S0=0;
   #5 S1=1;S0=1;
   #5 $finish;
   end 
endmodule