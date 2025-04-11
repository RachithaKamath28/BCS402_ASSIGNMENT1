	AREA pgr2,CODE,READONLY
ENTRY
	MOV r0, #0
    MOV r1, #1
    MOV r2, #10
loop
    ADD r3, r0, r1
    MOV r0, r1
    MOV r1, r3
    SUBS r2, r2, #1
    BNE loop

    END
