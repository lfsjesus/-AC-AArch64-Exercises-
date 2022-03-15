.text
.global MAX
.type MAX, "function"

MAX:
	MOV X2, XZR

CICLO:
	CBZ W1, FIM
	LDUR X3, [X0]
	ADD X0, X0, 8
	SUB W1, W1, 1
	CMP X3, X2
	B.GT NOVO
	B CICLO

NOVO:
	ADD X2, X3, XZR
	B CICLO


FIM:
	MOV X0, X2
	ret


