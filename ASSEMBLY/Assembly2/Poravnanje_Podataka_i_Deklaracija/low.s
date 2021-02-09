.intel_syntax noprefix


.text

.extern printf
.extern scanf


.global main

main:


push rbp
mov rbp,rsp



mov rdi, offset izlaz
mov esi, a
call printf



mov rbx, offset a


mov rdi, offset izlaz1
mov rsi, [rbx+4]
call printf


mov rdi, offset izlaz4
mov rsi, [rbx+8]
call printf


mov d, DWORD PTR 6

mov rdi, offset izlaz
mov esi, d
call printf

mov rdi, offset izlaz4
mov rsi, offset a
call printf


mov rdi, offset izlaz4
mov rsi, offset d
call printf




leave
ret



.section .rodata

poruka:
.asciz "Hello world\n"

unesi_broj:
.asciz "Unesite broj:\n"

unos:
.asciz "%d"


izlaz:
.asciz "Broj je:%d\n"

izlaz1:
.asciz "Slovo je:%c\n"


izlaz9:
.asciz "Adresa je je:%p\n"

izlaz3:
.string "Ovo je .string.\n"

izlaz4:
.asciz "Long Broj je:%ld\n"

help:
.string "=====================\n"



.data


a: .align 4
.long 1

b: .align 1
   .long 97

c: .align 8
   .quad 100



.section .bss

.comm d,4,4
.comm e,8,8

.end

