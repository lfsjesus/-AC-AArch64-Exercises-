.text
.global MAX
.type MAX, "function"

MAX:
	MOV W2, 0

CICLO:
	CBZ W1, FIM
	LDR W3, [X0], 4
	SUB W1, W1, 1
	CMP W3, W2
	B.GT NOVO
	B CICLO

NOVO:
	MOV W2, W3
	B CICLO


FIM:
	MOV W0, W2
	ret
