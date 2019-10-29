module full_adder
(
  input a,b,ci,
  output s, co 
);

wire w1, w2, w3;

xor   x1(w1, a, b);
xor   x2(s, w1, ci);
nand  n1(w2, w1, ci);
nand  n2(w3, a, b);
nand  n3(co, w2, w3);

endmodule
