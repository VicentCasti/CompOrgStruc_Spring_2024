; Base Author: Megan Avery Spring 2024
; Exercise Author: Vicente Castilleja

; Purpose - to learn the following:
; 	- logical shifts
;	- arithmetic shifts
;	- rotate shifts

%include "asm_io.inc"

; initialized data
segment .data

; uninitialized data
segment .bss


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

	; ; The shl instruction shifts bits to the left
        ; mov eax, 10
        ; shl eax, 3      ; multiply by 2^3 = 8
        ; call print_int
        ; call print_nl

        ; If the sign changes, it can't be represented by similar bits. 
        ; mov eax, 080000045H
        ; call print_int
        ; call print_nl
        ; mov eax, 1
        ; call print_int

        ; Error, doesn't assemble properly
        ; mov ebx, 3
        ; mov eax, 20
        ; shl eax, ebx
        ; call print_int

        ; SHR, shifts to the right. 
        ; mov eax, 23
        ; shr eax, 2      ; divide by 4
        ; call print_int
        ; Shifting too much to either direction will leave with zeros

        ; sar, shift arithmetic right, copies new bits in the area.
        ; Rotate shifts, shifts the bits on a certain side, rol for left, ror for right.
        ; Rotates values around. 
        ; The reason for these shifts are for graphics

        ; AND, combines both binary
        ; ONLY 1 + 1 WILL BE KEPT AS 1
        
        ; TEST, performs an AND but only sets flags and the result isn't stored.
        ; mov eax, 4
        ; mov ebx, 2
        ; test eax, ebx
        ; dump_regs 1

        mov eax, 0BAH ; 000010111010
        mov ebx, 032H ; 000000110010
        or eax, ebx   ; 000010111010 or 0BAH
        call print_int

        ; OR is either which has 1 to fill in the bit
        ; XOR compares at most 1 and 1, everything else gets 0s.
        ; NOT, flips the binary numbers, changes every bit. hi

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


