	AREA PrimeCheck, CODE, READONLY		
START
    MOV R0, #29 
    MOV R1, #1 
    
    CMP R0, #2 
    BLT NOT_PRIME 
    BEQ DONE 
    
    MOV R2, #2 
    
CHECK_LOOP
    CMP R2, R0 
    BGE DONE
    
    MOV R3, R0 
    MOV R4, #0 
    
SUB_LOOP
    CMP R3, R2 
    BLT CHECK_NEXT 
    SUB R3, R3, R2 
    ADD R4, R4, #1 
    B SUB_LOOP
    
CHECK_NEXT
    CMP R3, #0 
    BEQ NOT_PRIME 
    ADD R2, R2, #1 
    B CHECK_LOOP
    
NOT_PRIME
    MOV R1, #0 
    
DONE
    B DONE 
    END
