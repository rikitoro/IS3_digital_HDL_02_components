`default_nettype none

module add(
  input wire [3:0] x1,
  input wire [3:0] x0,
  output wire [4:0] y
);

  assign y = x1 + x0;

endmodule
