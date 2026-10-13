module tb;
  reg I0,I1,S;
  wire y;
  MUX_2to1data DUT(I0,I1,S,y);
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    $monitor($time,"I0=%b,I1=%b,S=%b,y=%b",I0,I1,S,y);
    #5 I0=0;I1=1;S=0;
    #5 I0=0;I1=1;S=1;
    #5 I0=1;I1=0;S=0;
    #5 I0=1;I1=0;S=1;
    #5 $finish;
    end
endmodule