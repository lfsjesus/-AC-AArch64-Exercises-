/*
this sub-routine sums a subsequence: that subsequence has all the elements higher than the first element of the sequence.

int sumsubseq(int *v, unsigned int N);

*/

.text
.global sumsubseq
.type sumsubseq, "function"

sumsubseq:
  MOV W3, #0 //Exception
  CBZ W1, END
  LDR W2, [X0], #4
  SUB W1, W1, #1
  MOV W3, W2

LOOP:
  CBZ W1, END  
  LDR W4, [X0], #4
  SUB W1, W1, #1
  CMP W4, W2
  B.GT ADD
  B LOOP

ADD:
  MOV W2, W4
  ADD W3, W3, W4
  B LOOP

END:
  MOV W0, W3
  RET  
  
