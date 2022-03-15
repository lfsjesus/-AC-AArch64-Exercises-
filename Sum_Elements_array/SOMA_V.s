.text
.global SOMA
.type SOMA, "function"

SOMA:
	MOV W2, 0

CICLO:
	CBZ W1, FIM
	LDR W3, [X0, 0]
	ADD X0, X0, 4
	ADD W2, W2, W3
	SUB W1, W1, 1
	B CICLO

FIM:
	MOV W0, W2
	ret
