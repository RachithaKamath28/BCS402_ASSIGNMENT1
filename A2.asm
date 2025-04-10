	AREA Fibonacci, CODE, READONLY
ENTRY
	MOV R0, #0 
	MOV R1, #1 
	MOV R2, #10 
	MOV R3, #0 
LOOP
	STR R0, [R3] 
	ADD R3, R3, #4 
	MOV R4, R0 
	ADD R0, R0, R1 
	MOV R1, R4 
	SUBS R2, R2, #1 
	BNE LOOP 
HERE B HERE 
	END
