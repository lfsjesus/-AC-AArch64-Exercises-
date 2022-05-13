.text
.global conta_ocorr
.type conta_ocorr, "function"

conta_ocorr:
	DUP V0.16B, W2
	MOV X4, 0
	LSR X1, X1, #4

LOOP:
	CBZ X1, FIM
	LDR Q1, [X0], #16
	CMEQ V1.16B, V0.16B, V1.16B
	ADDV B1, V1.16B
	SMOV X3, V1.B[0]
	NEG X3, X3
	ADD X4, X4, X3
	SUB X1, X1, #1
	B LOOP

FIM:
	MOV X0, X4
	RET
