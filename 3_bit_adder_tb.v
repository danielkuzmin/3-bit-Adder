`timescale 1ns/100ps
`include "adder_3bits.v"

module adder_3bits_tb();


reg [2:0] a, b;
reg cin;
wire [2:0] sum;
wire co;

adder_3bits adder(a, b, cin, sum, co);

initial begin
  $display("-----------------------");
  $display("|t(ns)| a b ci | co s | ");
  $display("-----------------------");
  a = 3'b001; b = 3'b001; cin = 1'b0; 
  #1 $display("|%4d | %b %b %b  |  %b %b |", $time, a, b, cin, co, sum);
  a = 3'b011; b = 3'b010; cin = 1'b1;
  #1 $display("|%4d | %b %b %b  |  %b %b |", $time, a, b, cin, co, sum);
  a = 3'b011; b = 3'b100; cin = 1'b0;
  #1 $display("|%4d | %b %b %b  |  %b %b |", $time, a, b, cin, co, sum);
  a = 3'b111; b = 3'b001; cin = 1'b0;
  #1 $display("|%4d | %b %b %b  |  %b %b |", $time, a, b, cin, co, sum);

  $display("-----------------------");
  end

endmodule 
