`include "hw1.v"

module demorgan_test ();

  // Instantiate device/module under test
  reg A, B;
  wire nA, nB, nAornB, AandB, notAandB, AorB, notAorB, nAandnB;

  demorgan1 dut1 (A, B, AandB, notAandB);
  demorgan2 dut2 (A, B, nA, nB, nAornB);
  demorgan3 dut3 (A, B, AorB, notAorB);
  demorgan4 dut4 (A, B, nA, nB, nAandnB);

  initial begin
    $display("A B | AB | ~(AB) ");
    A=0;B=0; #1
    $display("%b %b |  %b |    %b", A,B, AandB, notAandB);
    A=0;B=1; #1
    $display("%b %b |  %b |    %b", A,B, AandB, notAandB);
    A=1;B=0; #1
    $display("%b %b |  %b |    %b", A,B, AandB, notAandB);
    A=1;B=1; #1
    $display("%b %b |  %b |    %b", A,B, AandB, notAandB);

    $display("A B | ~A ~B | ~A+~B ");
    A=0;B=0; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAornB);
    A=0;B=1; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAornB);
    A=1;B=0; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAornB);
    A=1;B=1; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAornB);

    $display("A B | A+B | ~(A+B) ");
    A=0;B=0; #1
    $display("%b %b |   %b |    %b  ", A,B, AorB, notAorB);
    A=0;B=1; #1
    $display("%b %b |   %b |    %b  ", A,B, AorB, notAorB);
    A=1;B=0; #1
    $display("%b %b |   %b |    %b  ", A,B, AorB, notAorB);
    A=1;B=1; #1
    $display("%b %b |   %b |    %b  ", A,B, AorB, notAorB);

    $display("A B | ~A ~B | ~A~B ");
    A=0;B=0; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
    A=0;B=1; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
    A=1;B=0; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
    A=1;B=1; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
  end
endmodule
