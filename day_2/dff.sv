// Different DFF

module day2 (
  input     logic      clk,
  input     logic      reset,

  input     logic      d_i,

  output    logic      q_norst_o,
  output    logic      q_syncrst_o,
  output    logic      q_asyncrst_o
);

  always_ff @(posedge clk, reset) begin
    if (reset) begin
      q_asyncrst_o <= 1'b0;
    end
    if (clk) begin
      if (reset) begin
        q_syncrst_o <= 1'b0;
      end else
        q_syncrst_o <= d_i;
      	q_norst_o <= d_i;
      end
    end
endmodule