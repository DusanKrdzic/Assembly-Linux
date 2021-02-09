
.intel_syntax noprefix




.text

.extern printf
.extern scanf

.extern sum


.global main


main:

push rbp
mov rbp,rsp

mov rdi,offset unos_text
call printf


mov rdi,offset unos
mov rsi, offset a
mov rdx, offset b
call scanf


mov edi,a
mov esi,b
call sum



mov rdi, offset izlaz
mov esi,a
mov edx,b
mov ecx,eax
call printf





leave
ret







.section .rodata

unos_text:
.string "Unesite dva broja:\n"



unos:
.string "%d%d"

izlaz:
.string "Zbir broja %d i broja %d je broj %d\n"





.data


a:
.long 0

b:
.long 0



.end
