ASSUME CS:CODE, DS:DATA
DATA SEGMENT
STRING1 DB 'Esta es una oracion con palabras!!$'
SLENGTH DB 0
DATA ENDS
CODE SEGMENT
START: MOV AX, DATA
MOV DS, AX
SUB CL, CL
MOV SI, OFFSET STRING1
CLD
BACK: LODSB
INC CL
CMP AL,'$'
JNZ BACK
DEC CL
MOV SLENGTH, CL
INT 03H
CODE ENDS
END START