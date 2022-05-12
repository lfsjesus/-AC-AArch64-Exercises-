/*
The subroutine receives a sequence of characters S (S contains only uppercase and lowercase letters), of size N (N is a multiple of 16) 
and encrypts the respective characters by adding or subtracting from their ASCII codes the value 13 according to the their positions: 
the 1st to 16th characters add 13, the 17th to 32nd characters subtract 13, the 33rd to 48th characters add 13, and so on.

The subroutine declaration for use in a program written in C is:

void cipher(unsigned int N, char *S);

Implement the cipher subroutine using SIMD instructions whenever possible.

*/

.text
.global cipher
.type cipher, "function"

cifra:
  MOV W2, 1
  MOV W3, #13
  DUP V1.16B, W3

LOOP:
  CBZ W0, END
  LDR Q0, [X1]
  SUB W0, W0, #16
  CMP W2, WZR
  B.EQ EVEN
  MOV W2, 0
  ADD V0.16B, V0.16B, V1.16B
  STR Q0, [X1]
  ADD X1, X1, #16
  B LOOP

EVEN:
  MOV W2, 1
  SUB V0.16B, V0.16B, V1.16B
  STR Q0, [X1]
  ADD X1, X1, #16
  B LOOP

END:
  MOV X0, X1
  RET
