0xFA00      main:   MOV R1 , 0x4228
0xFA02      llama:  CALL  subrut
0xFA04              DW 0x6008 
0xFA05              DW 0xFEDE 
0xFA06              DW 0xF450 
0xFA07              DW 0xDEAD
0xFA08      subrut: DW 0x3840
0xFA09              DW 0x2114
0xFA0A              JNE  llama
0xFA0B              DW 0xC000

--------------------------------------------------------------------------------------------
____________________________________DECODIFICACION__________________________________________
____________________________________________________________________________________________
MOV R1 , 0x4228
0001 100001 000000 0100 0010 0010 1000
0001 1000 0100 0000 0100 0010 0010 1000
0x1840
0x4228
____________________________________________________________________________________________
CALL  subrut
1011 000000 000000 0xFA07
1011 0000 0000 0000 1111 1010 0000 0111
0xB000
0xFA07
____________________________________________________________________________________________
JNE  llama
1111 1001 1111 0111
0xF9F7

____________________________________________________________________________________________
0x3840
0010 1000 0100 0000



--------------------------------------------------------------------------------------------
____________________________________DESPLAZAMIENTOs__________________________________________

instruccion: 
            0xFA09 JNE  llama
desplazamiento:
            0xFA02 - 0xFA0B = 0000 1001 = 1111 0110 + 1 = 1111 0111
                            = 