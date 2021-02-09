.intel_syntax noprefix


.text

.extern printf
.extern scanf




.global main


main:

push rbp
mov rbp, rsp




mov rdi, offset izlaz1
call printf






mov rdi, offset izlaz_quad
mov rsi,a #u rsi smesta 8B pocevsi od lokacije a
call printf


#pravilnije je da koristimo esi umesto rsi jer nam a predstavlja .long podatak i hocemo da nam uzem 32b iz memorije ne 64

mov rdi, offset izlaz_integer
mov esi, a
call printf



mov rdi, offset izlaz_byte_slovo
mov sil, c
call printf





#STEK


mov rdi,offset izlaz2
call printf


mov ebx, a #da bi mi tacno izvukao 4B a ne i b sa a ako uzmem rbx

mov r12,b

push rbx
push r12

mov rdi, offset izlaz_quad
mov esi,[rsp]
call printf

mov rdi, offset izlaz_integer
mov esi,[rsp+8]
call printf

add rsp,16

sub rsp,16


mov rax,0x1000000910000008

mov [rsp+8],rax




mov rdi, offset izlaz_hexa_64
mov rsi, [rsp+8]
call printf

mov rdi, offset izlaz_hexa_64
mov esi, [rsp+8]
call printf



add rsp,16

mov rax,0x1000000910000008

mov eax,0x10000008


mov rdi,offset izlaz_hexa_64
mov rsi, rax
call printf





leave
ret





.section .rodata

izlaz_integer:
.string "Integer (32b) je: %d\n "

izlaz_quad:
.string "Quad (64b) je: %ld\n"

izlaz_hexa_64:
.string "Hexa broj je:%lx\n"


izlaz_hexa_32:
.string "Hexa broj je:%x\n"


izlaz_byte_slovo:
.string "Slovo je :%c\n"


izlaz1:
.string "=========Velicina podataka==========\n"

izlaz2:
.string "===========STEK=============\n"

.data


a:
.long 5

a_help:
.long 0

b:
.quad 300

c:
.byte 97




.end









