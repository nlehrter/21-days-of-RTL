// Detecting a big sequence - 1110_1101_1011
module day12 (
  input     wire        clk,
  input     wire        reset,
  input     wire        x_i,

  output    wire        det_o
);

  logic [11:0] shift;
  logic [11:0] next_shift;
  
  always @ (posedge clk, posedge reset) begin
    if (reset) begin
      shift <= 'b0;
    end else if (clk) begin
      shift <= next_shift;
    end
  end
  
  assign next_shift = {shift[10:0], x_i};
  assign det_o = (shift == 12'b1110_1101_1011);
  
    

endmodule
