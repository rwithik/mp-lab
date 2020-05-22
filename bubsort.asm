MOV 31h,#12h
MOV 32h,#43h
MOV 33h,#65h
MOV 34h,#13h
MOV 35h,#96h
MOV 36h,#34h
MOV R1,#05H  ; R1 declared as a pass counter
AGAIN:  MOV R2,#05h
        MOV R0,#31H
UP:    MOV A,@R0
    INC R0
        MOV B,@R0
        CLR C
        SUBB A,B
        JC SKIP
        DEC R0
        MOV A,@R0
        MOV @R0,B
        INC R0
        MOV @R0,A
 SKIP: DJNZ R2,UP
        DJNZ R1,AGAIN
 END

