`include "full_adder.v"

module adder_3bits

(
	input [2:0] a, b,
	input cin,
	output [2:0] sum,
	output co
);

wire w1, w2, w3;

full_adder x(.a(a[0]), .b(b[0]), .ci(cin), .s(sum[0]), .co(w1));

full_adder y(.a(a[1]), .b(b[1]), .ci(w1), .s(sum[1]), .co(w2));

full_adder z(.a(a[2]), .b(b[2]), .ci(w2), .s(sum[2]), .co(co));

// XOR second to last and last carry out for overflow flag (1 if overflow)
// Need another output for overflow flag

endmodule
