        LXI H, 0000H    ; Initialize H register to 0
        MOV A, D        ; Move the value from register D to accumulator
        CMP E           ; Compare the value in accumulator with the value in register E
        JNC SKIP        ; Jump if no carry flag is set (i.e., D >= E)
        MOV H, E        ; If carry flag is set (i.e., D < E), move the value from register E to register H
        JMP END         ; Jump to end

SKIP:   MOV H, D        ; If no carry flag is set (i.e., D >= E), move the value from register D to register H

END:    HLT             ; Halt the program

        END             ; End of program
