module ref_sum (Ain, Bin, Ci, Sout, Co);
  input Ain, Bin, Ci;
  output Sout, Co;

  wire [5:0] Sout, Ain, Bin;
  reg [6:0] S;

  always @(Ain, Bin, Ci)
  S = Ain + Bin + Ci;

  assign Sout = S[5:0];
  assign Co = S[6];

endmodule
