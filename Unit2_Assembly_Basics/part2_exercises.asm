; Base Author: Megan Avery Spring 2024
; Exercise Author: Vicente Castilleja
; 
; Purpose - to learn about the following:
;	-  directives (dx, resx, & times)
;	- printing ints and characters
;	- dumping memory
;	- printing strings
;	- reading chars and ints

%include "asm_io.inc"

age equ 30              ; Symbol
%define fav_number 34   ; macro

; initialized data
segment .data
fav_color db "purple", 0 ; string
least_fav_color db "yellow", 0 ; string
letter db "A"   ; character
number dd 95    ; integer
first_letter dd 86
hw db "Hello World", 0 ; string
char_prompt db "Enter a character: ", 0
number_prompt db "Enter a number: ", 0

<<<<<<< HEAD
many_numbres times 5 dd 12
=======
many_numbers times 5 dd 12
>>>>>>> 00b72cc (finally!)

many_chars times 5 db "Z"


; uninitialized data
segment .bss
least_fav_number resd 1 ; space for 1 integer
space_for_number resd 1 ; space for one number
space_for_char resb 1 ; space for 1 character


segment .text
        global  asm_main
asm_main:
        enter   0,0               ; setup routine
        pusha

;         mov dword [number], 116
; 	mov eax, [number]
;        ; dump_regs 1

;        call print_int ; print number in base 10
;        call print_nl
;        call print_char

;        mov al, [letter]
;        call print_char

        ; mov eax, [first_letter]
        ; call print_int
        ; call print_nl
        ; call print_char

        ; dump_mem 1, fav_color, 2

        ; mov eax, fav_color + 3
        ; call print_string

        ; mov eax, hw
        ; call print_string
        ; call print_nl
        ; call print_nl
        ; dump_mem 1, hw, 0

        ; mov eax, char_promt
        ; call print_string
        ; call read_char

        ; mov eax, [space_for_number]
        ; call print_int
        ; call print_nl

        ; mov eax, number_prompt
        ; call print_string
        ; call read_int
        ; mov dword [space_for_number], eax

        ; mov eax, char_prompt
        ; call print_string
        ; call read_char
        ; call print_nl
        ; call print_char

        ; mov eax, char_prompt
        ; call print_string
        ; call read_char
        ; mov byte [space_for_char], al

        ; call read_int
        ; mov dword [space_for_number], eax

        dump_mem 1, many_chars, 0
        call print_nl
        dump_mem 2, many_chars + 3, 0
<<<<<<< HEAD
=======
        dump_mem 3, many_numbers, 0
>>>>>>> 00b72cc (finally!)

        popa
        mov     eax, 0            ; return back to C
        leave                     
        ret


