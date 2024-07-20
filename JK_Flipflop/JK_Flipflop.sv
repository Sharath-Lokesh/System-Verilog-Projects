//
//Author: Sharath Lokesh
//

//Description: D Flip-flop
module DFF_FlipFLop (
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

//Description: JK Flip-flop
module JK_FlipFLop (
    input           clk,  // Clock signal
    input           j_i,  // Data input (Set)
    input           k_i,  // Data input (Reset)
    output          q_o   // Register output
);

  //Internal Signal:
  wire d;    // Next state logic
  wire q;    // Internal register state

  // Combinational logic for next state (J-K behavior)
  // https://electrosome.com/d-flip-flop-conversion-techniques/
  assign d = (j_i & ~q) | (k_i & q);
  // Assign register output to module output
  assign q_o = q;

  //D Flip-Flop Instance:
  DFF_FlipFLop dff_inst (  
      .clk(clk),
      .d_i(d),
      .q_o(q)
  );

endmodule