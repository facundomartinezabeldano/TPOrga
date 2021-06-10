main:      SET R1, 0x00
           SET R0, 0x02
loop:
           ADD R1, R0
           DEC R0
           JZ fin
           JMP loop
fin:
	   JMP fin