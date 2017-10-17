`default_nettype none

module xor_gate(
  input wire [1:0] x,
  output wire      y
);

  assign y = x[1] ^ x[0];

endmodule
