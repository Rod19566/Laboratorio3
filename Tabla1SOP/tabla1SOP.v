module gates();

wire o1,o2,o3,o4,o5,result,a1,b1,c1;
reg a,b,c;

not U1(a1,a);
not U2(b1,b);
not U3(c1,c);
and U4(o1,a1,b1,c1);
and U5(o2,a1,b,c1);
and U6(o3,a,b1,c1);
and U7(o4,a,b1,c);
and U8(o5,a,b,c);
or U9(result,o1,o2,o3,o4,o5);

initial begin
  $display("-------------");
  $display("| A B C | Y |");
  $display("|-------|---|");
  $monitor("| %b %b %b | %b |",
  a,b,c,result);
  a=0;
  b=0;
  c=0;
  #1 c=1;
  #1 b=1; c=0;
  #1 c=1;
  #1 a=1; b=0; c=0;
  #1 c=1;
  #1 b=1; c=0;
  #1 c=1;
  #1 $display("-------------");
  #1 $finish;
end

initial
  begin
    $dumpfile("tabla1SOP_tb.vcd"); 
    $dumpvars(0);
  end

endmodule
