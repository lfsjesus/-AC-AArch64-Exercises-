/*
This sub-routine checks if two integers with the same index (of two differentes sequences) 
are near values. They are considered near values if the absolute value of the difference 
between them is less or equal to a given distance.

the function is called like this: unsigned int nperto (int v[], int w[], unsigned int n, unsigned int dist ) {}

*/

.text
.global nperto
.type nperto, "function"

nperto:
  MOV W5, 0

LOOP:
  CBZ W2, FIM
  LDR W6, [X0], #4
  LDR W7, [X1], #4
  SUB W2, W2, #1
  SUB W8, W6, W7
  CMP W8, 0
  B.GT COMPARE
  NEG W8, W8

COMPARE:
  CMP W8, W3
  B.GT LOOP
  ADD W5, W5, #1
  B LOOP

END:
  MOV W0, W5
  RET
