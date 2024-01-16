 // A linear feedback shift register

module day7 (
  input     wire    clk,
  input     wire    reset,

  output    wire[3:0] lfsr_o
);

    logic[3:0] lfsr_q;
    logic[3:0] lfsr_d;

    always_ff @(posedge clk, posedge reset) begin
        if (reset) begin
            lfsr_q <= 'b0;
        end else if (clk) begin
            lfsr_q <= lfsr_d;
        end
    end
    
    assign lfsr_d = {lfsr_q[2:0],lfsr_q[1] ^ lfsr_q[3]};
    assign lfsr_o = lfsr_q;

endmodule