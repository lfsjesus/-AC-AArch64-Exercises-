/*
double sumf(double *seqA, int tamA)

f(x): y(x) if x < 0, else sqrt(5 + x^2)    (y(x) is another sub-routine labeled "funcy")

this sub-routine returns the summation of all the elements after applying function f.
*/

.text
.global sumf
.type sumf, "function"

sumf:
  STP X29, X30, [SP, #-16]!
  MOV X29, SP
  FSUB D1, 1.0, 1.0

LOOP:
  CBZ W1, END
  LDR X2, [X0], #8
  SUB W1, W1, 1
  FMOV D2, X2
  FCMP D2, #0.0
  B.GE ROOT
  BL funcy  // Calling other sub-routine
  FADD D1, D1, D0
  B LOOP

ROOT:
  FMUL D2, D2, D2
  FADD D2, D2, #5.0
  FSQRT D2, D2 
  FADD D1, D1, D2
  B LOOP

END:
  LDP X29, X30, [SP], #16
  FMOV D0, D1
  RET
