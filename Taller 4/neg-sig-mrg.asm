main:
	
sig:	SET R0, 0x01    ;0x00,
	SIG R0          ;0x02

negar:	SET R1, 0x01    ;0x04
	NEG R1          ;0x06

merge:  SET R2, 0x00    ;0x08
	MRG R2, R1      ;0x0A

end:
	JMP end         ;0x0C