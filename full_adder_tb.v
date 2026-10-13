module tb;
  reg a,b,c;
  wire y,z;
  full_adder_structural DUT(a,b,c,y,z);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    $monitor($time,"a=%b,b=%b,c=%b,y=%b,z=%b",a,b,c,y,z);
    #5 a=0;b=0;c=0;
    #5 a=0;b=0;c=1;
    #5 a=0;b=1;c=0;
    #5 a=0;b=1;c=1;
    #5 a=1;b=0;c=0;
    #5 a=1;b=0;c=1;
    #5 a=1;b=1;c=0;
    #5 a=1;b=1;c=1;
    #5 $finish;
  end
endmodule