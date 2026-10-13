module tb;
  reg I,S0,S1;
  wire Y0,Y1,Y2,Y3;
 behavioral DUT(I,S0,S1,Y0,Y1,Y2,Y3);
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
     $monitor($time,"I=%b,S1=%b,S0=%b,Y0=%b,Y1=%b,Y2=%b,Y3=%b",I,S1,S0,Y0,Y1,Y2,Y3);
             #5 I=1;S1=0;S0=0;
             #5 S1=0;S0=1;
             #5 S1=1;S0=0;
             #5 S1=1;S0=1;
             #5 $finish;
             end 
             endmodule