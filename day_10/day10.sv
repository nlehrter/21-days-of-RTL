// Counter with a load
module day10 (
  input     wire          clk,
  input     wire          reset,
  input     wire          load_i,
  input     wire[3:0]     load_val_i,

  output    wire[3:0]     count_o
);

  logic[3:0] count_q;
  
  always_ff @ (posedge clk, posedge reset) begin
    if (reset) begin
      count_q <= 'b0;
    end else if (load_i) begin
      count_q <= load_val_i;
    end else if (clk) begin
      count_q <= count_q + 1;
    end
  end
  
  assign count_o = count_q;
  
endmodule
