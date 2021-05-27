main: 	MOV R1,[[et1]]
	ADD [R1],0x6000
	JMP main
et1: 	DW 0x0007
	DW 0x0004
loop: 	CMP R1,0x0001
	JL fin
	JGE main
fin: 	RET
