/*
Sub-routine that receives two sequences, A and B, and changes to element of seqA
to uppercase if that char exists in seq B. 

The functio nreceives the arguments in this order:
  - base address of seqB;
  - base address of seqA.

*/

.text
.global SelectedUpperCase
.type SelectedUpperCase, "function"

SelectedUpperCase:
  MOV W2, 0
  MOV X5, X1 //Save base address of sequence A

LOOP1:
  MOV X1, X5
  LDRB W3, [X0], #1
  CBZ W3, FIM

LOOP2:
  LDRB W4, [X1]
  CBZ W4, LOOP1
  CMP W4, W3
  B.EQ CHANGE
  ADD X1, X1, #1
  B LOOP2

CHANGE:
  SUB W4, W4, #32
  STRB W4, [X1]
  ADD W2, W2, 1
  ADD X1, X1, #1
  B LOOP2


FIM:
  MOV W0, W2
  RET
