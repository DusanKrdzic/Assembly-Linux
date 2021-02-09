.intel_syntax noprefix


.text

.extern printf
.extern scanf


.global main

main:


push rbp
mov rbp,rsp



#enter 0,0




mov rdi,offset poruka
call printf


mov rdi,offset unesi_broj
call printf

mov rdi, offset unos
mov rsi, offset a
call scanf


mov rdi,offset izlaz
mov esi, a
call printf


# ispis sadrzaja mem lokacije pocevsi od b
#koristimo rbx jer njega cuva pozvani potprogram.. rax pozvani potprogram ne cuea

mov rbx, offset b


#b
mov rdi, offset izlaz
mov esi, [rbx] #moglo je i rsi.. ovde samo otkine one nule i popuni na 32b
call printf

#adr(b)+4

mov rdi, offset izlaz
mov esi, [rbx+4]
call printf



mov rdi, offset izlaz1
mov esi, [rbx+8]
call printf



mov rdi, offset izlaz
mov esi, [rbx+9]
call printf

mov rdi, offset izlaz4
mov esi, [rbx+13]
call printf


mov rdi, offset izlaz
mov esi, [rbx+21]
call printf



#ispis vrha steka.. stek radi sa 8B.. Stek pointer ocekuje podatak od 8B jer se sa push i pop smanjuje i povecava za 8 (8 lokacije od po 1B).. 


mov rdi,offset help
call printf


push e
push b

push  0 #push f
push  a #stavi 8B tj a i a+4



mov rdi, offset izlaz
mov rsi, [rsp] #skida 8B pocevsi od rsp
call printf

mov rdi, offset izlaz4
mov rsi, [rsp+4]
call printf


mov rdi, offset izlaz4
mov rsi, [rsp+8]
call printf

mov rdi, offset izlaz
mov rsi, [rsp+16]
call printf

mov rdi, offset izlaz
mov rsi, [rsp+24]
call printf

add rsp,32


push rax

pop rax


mov rdi, offset izlaz3
call printf


mov rdi, offset izlaz4
mov rsi, f
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




izlaz3:
.string "Ovo je .string.\n"

izlaz4:
.asciz "Long Broj je:%ld\n"

help:
.string "=====================\n"



.data

a:
.int 5 

b:
.int 8,7

c:
.byte 97

d:
.int 10

f:
.quad 100



e:
.long 30

ptr:
.quad 1000




.end



