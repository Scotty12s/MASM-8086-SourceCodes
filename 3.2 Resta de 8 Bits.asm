CR EQU 0DH
LF EQU 0AH
DATA SEGMENT
TABLE DB '0123456789ABCDEF'
NUMBER1 DB 099H
NUMBER2 DB 099H
RESULT DB 00H
MESSAGE DB ' THE RESULT IS'
ASCIIRESULT DB 2 DUP(?)
DB CR, LF, '$'
DATA ENDS
CODE SEGMENT
ASSUME CS:CODE, DS: DATA
START: MOV AX, DATA
MOV DS, AX
MOV AL, NUMBER1
SUB AL, NUMBER2
DAS
MOV RESULT, AL
LEA BX,TABLE
LEA SI, ASCIIRESULT
INC SI
MOV AL, RESULT
AND AL,00FH
XLAT
MOV [SI], AL
DEC SI
MOV AL, RESULT
AND AL,0F0H
MOV CL,04H
SHR AL, CL
XLAT
MOV [SI], AL
MOV AH,09H
LEA DX, ASCIIRESULT
INT 21H
QUIT: MOV AL,0
MOV AH,04CH
INT 21H
CODE ENDS
END START
