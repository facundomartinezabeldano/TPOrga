0x8C00		main:			MOV R1, 0x7000
0x8C02						ADD R1, 0x6000
0x8C04						JE  cero
0x8C05						JL  dioNegativo
0x8C06						JVS huboOverFlow
0x8C07		cero:			DW  0x0FE0
0x8C08		huboOverFlow:	MOV R2, 0x0030
0x8C0A						SUB R2, 0x00F0
0x8C0C						JVS huboOverFlow 
0x8C0D						JE  cero 
0x8C0E						JL  dioNegativo 
0x8C0F						DW  0x0FE0	
0x8C10		dioNegativo:	CMP R2, 0xFF40 
0x8C12						JE  finOk 
0x8C13						DW  0x0FE0
0x8C14		finOk:			DW  0x0000

################################################################################################################
0x8C00  ->	main
0x8C07	->	cero
0x8C08	->	huboOverFlow
0x8C10	->	dioNegativo
0x8C14	->	finOk

desplazamientos:
JE  cero = 0x8C07 - 0x8C05 (positivo) = 0x02 = 0000 0010 = (2)
JL  dioNegativo = 0x8C10 - 0x8C06 (positivo) = 0x000A = 0000 1010 = (10)
JVS huboOverFlow = 0x8C08 - 0x8C07 (positivo) = 0x0001 = 0000 0001 = (1)
JVS huboOverFlow = 0x8C08 - 0x8C0D (negativo) = 1111 1011 = (-5)
JE  cero = 0x8C07 - 0x8C0E (negativo) = 1111 1001 = (-7)
JL  dioNegativo = 0x8C10 - 0x8C0F (positivo) = 0000 0001 = (1)
JE  finOk = 0x8C13 - 0x8C12 (positivo) = 0000 0001 = (1)
