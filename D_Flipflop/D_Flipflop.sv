//
//Author: Sharath Lokesh
//

//Description: D Flip-flop
module D_FlipFLop (
    input           clk,  // Clock signal
    input           d_i,  // Data input
    output          q_o   // Register output
);

  //Internal Signal:
  reg   q_o;  // Internal register state

  //Positive Edge Clock Triggered Process:
  always@(posedge clk) begin
    q_o <= d_i;          // Update register on positive clock edge
  end

endmodule
