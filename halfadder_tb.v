/ Code your testbench here
// or browse Examples
module tb;
  reg a,b;
  wire y;
  wire z;
  half_adder DUT(a,b,y,z);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);
    $monitor($time,"a=%b,b=%b,y=%b,z=%b",a,b,y,z);
       #5 a=0;b=0;
       #5 a=0;b=1;
       #5 a=1;b=0;
       #5 a=1;b=1;
       #5 $finish;
  end
endmodule
    
    
    