0xFA00      main:   MOV R1 , 0x4228
0xFA02      llama:  CALL  subrut
0xFA03              DW 0x6008 
0xFA04              DW 0xFEDE 
0xFA05              DW 0xF450 
0xFA06              DW 0xDEAD
0xFA07      subrut: DW 0x3840
0xFA08              DW 0x2114
0xFA09              JNE  llama
0xFA0A              DW 0xC000