module demorgan1
(
  input A,
  input B,
  output AandB,
  output notAandB
);

  wire AandB;
  and andgate(AandB, A, B);
  not AandBinv(notAandB, AandB);

endmodule

module demorgan2
(
  input A,
  input B,
  output nA,
  output nB,
  output nAornB
);

  wire nA;
  wire nB;
  not Ainv(nA, A);
  not Binv(nB, B);
  or orgate(nAornB, nA, nB);

endmodule

module demorgan3
(
  input A,
  input B,
  output AorB,
  output notAorB
);

  wire nA;
  wire nB;
  or orgate(AorB, A, B);
  not AorBinv(notAorB, AorB);

endmodule

module demorgan4
(
  input A,
  input B,
  output nA,
  output nB,
  output nAandnB
);

  wire nA;
  wire nB;
  not Ainv(nA, A);
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB);

endmodule