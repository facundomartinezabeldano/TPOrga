0x00                JMP seguir
0x02        seguir:
0x02                SET R0, 0xFF
0x04                SET R1, 0x11

0x06        siguiente:
0x06                ADD R0, R1
0x08                JC siguiente

0x0A        halt:
0x0A                JMP halt