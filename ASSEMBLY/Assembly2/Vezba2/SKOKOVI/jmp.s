.intel_syntax noprefix
.arch i386



.data

a:
.int 97

b:
.int 98


izlaz:
.asciz "Broj je %d\n"

exited:
.asciz "Izasao sam iz programa \n"



.text

.extern printf
.extern exit

.global _start

_start:

mov eax,6
mov ebx,4

cmp eax,ebx

jle ispisi_b

ipisi_a: 

push a
push offset izlaz
call printf
add esp,4
jmp kraj

ispisi_b:
push b
push offset izlaz
call printf
add esp,4


kraj:


mov ecx,3
mov eax,0





1:
add eax,ecx
loop 1b

push eax
push offset izlaz
call printf
add esp,8

push offset exited
call printf
add esp,4



push 0
call exit

.end


#gcc -o program -nostartfiles jmp.s

