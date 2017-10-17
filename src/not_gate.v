`default_nettype none

module not_gate(
  input wire    x,
  output wire   y
);

  assign y = ~x;

endmodule
