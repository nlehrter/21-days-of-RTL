 // An edge detector

module day3 (
  input     wire    clk,
  input     wire    reset,

  input     wire    a_i,

  output    wire    rising_edge_o,
  output    wire    falling_edge_o
);

  logic Q;
  
  always_ff @(posedge clk, reset) begin
    if (reset) begin
      Q <= 0;
    end else if (clk) begin
      Q <= a_i;
    end
  end
  
  assign rising_edge_o = !Q & a_i;
  assign falling_edge_o = Q & !a_i;

endmodule
