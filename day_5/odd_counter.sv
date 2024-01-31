// Odd counter

module odd_counter (
  input     wire        clk,
  input     wire        rst,

  output    logic[7:0]  cnt_o
);

  always_ff @ (posedge clk, posedge rst)
    if (rst) begin
      cnt_o <= 8'h1;
    end else if (clk) begin
      cnt_o <= cnt_o + 2;
    end
  
endmodule
