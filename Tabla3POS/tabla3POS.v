
module gates();

wire o1,o2,o3,o4,o5,o6,o7,o8,o9,result,a1,b1,c1,d1;
reg a,b,c,d;

not U1(a1,a);
not U2(b1,b);
not U3(c1,c);
not U4(d1,d);
or U5(o1,a,b1,c,d);
or U6(o2,a,b1,c,d1);
or U7(o3,a,b1,c1,d);
or U8(o4,a,b1,c1,d1);
or U9(o5,a1,b,c,d1);
or U10(o6,a1,b,c1,d1);
or U11(o7,a1,b1,c,d);
or U12(o8,a1,b1,c,d1);
or U13(o9,a1,b1,c1,d1);
and U14(result,o1,o2,o3,o4,o5,o6,o7,o8,o9);



initial begin
  $display("---------------");
  $display("| A B C D | Y |");
  $display("|---------|---|");
  $monitor("| %b %b %b %b | %b |",
  a,b,c,d,result);
  a=0;
  b=0;
  c=0;
  d=0;
  #1 d=1;
  #1 c=1; d=0;
  #1 d=1;
  #1 b=1; c=0; d=0;
  #1 d=1;
  #1 c=1; d=0;
  #1 d=1;
  #1 a=1; b=0; c=0; d=0;
  #1 d=1;
  #1 c=1; d=0;
  #1 d=1;
  #1 b=1; c=0; d=0;
  #1 d=1;
  #1 c=1; d=0;
  #1 d=1;
  #1 $display("---------------");
  #1 $finish;
end

initial
  begin
    $dumpfile("tabla3POS_tb.vcd");
    $dumpvars(0);
  end

endmodule
