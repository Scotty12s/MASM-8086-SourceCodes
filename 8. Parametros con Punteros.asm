DATA SEGMENT
	A DB 22H
	B DB 44H
	C DW ?
DATA ENDS

CODE SEGMENT
	ASSUME CS:CODE,DS:DATA
	START:
		MOV AX,DATA
		MOV DS,AX
		
		MOV SI,OFFSET A
		INC SI
		MOV SI,OFFSET B
		CALL DO
		MOV C,DI
		
		MOV AH,4CH
		INT 21H

		DO PROC NEAR
		MOV AL,[SI-1]
		MOV BL,[SI]
		ADD AL,BL
		MOV [DI],AX
		RET

CODE ENDS
END START
