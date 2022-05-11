/* 
This program replaces by zero all the elements of an array that are greater 
than the absolute value X and returns the number of changed elements (signed
words). 

The sub-routine receives the following arguments in this order:
  - value X (unsigned word);
  - number of elements of the sequence;
  - base address of the sequence.
*/


.text
.global CheckABS
.type CheckABS, "function"

CheckABS:
        MOV W3, 0

LOOP:
        CBZ W1, FIM
        LDR W4, [X2]
        SUB W1, W1, 1
        CMP W4, 0
        B.GE POSITIVE
        NEG W4, W4

POSITIVE:
        CMP W4, W0
        B.GT CHANGE
        ADD X2, X2, 4
        B LOOP

CHANGE:
        MOV W4, 0
        STR W4, [X2], #4
        ADD W3, W3, #1
        B LOOP

END: 
        MOV W0, W3
        RET
        
        
      
