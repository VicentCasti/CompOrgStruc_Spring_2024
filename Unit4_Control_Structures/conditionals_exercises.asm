; Base Author: Megan Avery Spring 2024
; Exercise Author: [YOUR NAME HERE]
;
; Purpose - to learn about conditionals in NASM

%include "asm_io.inc"


segment .data					; initialized data


segment .bss					; uninitialized data



segment .text					; code
        global  asm_main
asm_main:
        enter   0,0            	; setup routine
        pusha

	; TODO: IF EXERCISE
        
	; IF EXERCISE
        ; code to set FLAGS
        ; select xx so that brances if condition false
;         mov eax, if_prompt
;         call print_string
;         call read_char

;         cmp eax, "&"
;         jne endif ; if not an & jump to end
;         ; jne is "jump not equal"
;         mov eax, if_output
;         call print_string

; endif:
;         call read_char ; consumes newline

	; IF/ELSE EXERCISE
        mov eax, ifelse_prompt
        call print_string
        call read_int

        and eax, 1 ; get last bit by itself
        cmp eax, 0
        je even_block
        jmp end_ifelse
even_block:
        mov eax, even 
end_ifelse:
        call print_string
        ; OR  already exists, just use jmp blocks to get to those points


	; TODO: IF/ELSE EXERCISE


	; TODO: ELIF EXERCISE


	; TODO: AND EXERCISE

        popa
        mov     eax, 0        	; return back to C
        leave                     
        ret
