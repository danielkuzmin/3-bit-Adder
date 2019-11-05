`include full_adder.v

module adder_3bits

(
	input [2:0] a, b,
	input cin,
	output [2:0] sum,
	output co
);

full_adder x = new;
full_adder y = new;
full_adder z = new;

output s1, co1;
output s2, co2;
output s3, co3;

x a1(s1, co1, a, b, cin);
y a2(s2, co2, );

endmodule
