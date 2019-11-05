`timescale 1ns/100ps
`include "3bit_adder.v"

module 3bit_adder_tb();

reg a, b, ci;
wire s, co, w1, w2, w3;

full_adder_wires fa1(a, b, ci, s, co, w1, w2, w3);

initial begin

  $display("-------------------------------");
  $display("t(ns)| a b ci | co s | w1 w2 w3");
  $display("-------------------------------");
  a = 0; b = 0; ci = 0; #1 $display("%4d | %b %b %b  |  %b %b |  %b  %b  %b", $time, a, b, ci, co, s, w1, w2, w3);
  a = 0; b = 0; ci = 1; #1 $display("%4d | %b %b %b  |  %b %b |  %b  %b  %b", $time, a, b, ci, co, s, w1, w2, w3);
  a = 0; b = 1; ci = 0; #1 $display("%4d | %b %b %b  |  %b %b |  %b  %b  %b", $time, a, b, ci, co, s, w1, w2, w3);
  a = 0; b = 1; ci = 1; #1 $display("%4d | %b %b %b  |  %b %b |  %b  %b  %b", $time, a, b, ci, co, s, w1, w2, w3);
  a = 1; b = 0; ci = 0; #1 $display("%4d | %b %b %b  |  %b %b |  %b  %b  %b", $time, a, b, ci, co, s, w1, w2, w3);
  a = 1; b = 0; ci = 1; #1 $display("%4d | %b %b %b  |  %b %b |  %b  %b  %b", $time, a, b, ci, co, s, w1, w2, w3);
  a = 1; b = 1; ci = 0; #1 $display("%4d | %b %b %b  |  %b %b |  %b  %b  %b", $time, a, b, ci, co, s, w1, w2, w3);
  a = 1; b = 1; ci = 1; #1 $display("%4d | %b %b %b  |  %b %b |  %b  %b  %b", $time, a, b, ci, co, s, w1, w2, w3);
  $display("-------------------------------");
  $display("---------- Above we used $display staments for each input combination -----------");
  $display();

  $display("--- Below we used a single $monitor statement to report everytime the input changes---"); 
  $display("----------------------------------------------------");
  $display("T(ns)| A B Ci | Co S | W1 W2 W3 inputs go 7 -> 0 now");
  $display("----------------------------------------------------");
  $monitor("%4d | %b %b %b  |  %b %b |  %b  %b  %b", $time, a, b, ci, co, s, w1, w2, w3);
  #1 a = 1; b = 1; ci = 1;
  #1 a = 1; b = 1; ci = 0;
  #1 a = 1; b = 0; ci = 1;
  #1 a = 1; b = 0; ci = 0;
  #1 a = 0; b = 1; ci = 1;
  #1 a = 0; b = 1; ci = 0;
  #1 a = 0; b = 0; ci = 1;
  #1 a = 0; b = 0; ci = 0;
  $display("----------------------------------------------------");
  end

endmodule 
