`default_nettype none

module bitwise_and(
  input wire [3:0] x0,
  input wire [3:0] x1,
  output wire [3:0] y
);

  assign y = x1 & x0; // bitwise 'AND' operation

endmodule
