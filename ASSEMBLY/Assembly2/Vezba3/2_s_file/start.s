.intel_syntax noprefix
.arch i386


.data
.global var

.global a
a: .int 45

b:
.int 65


unos_text:
.asciz "Unesi dva broja:\n"

unos:
.asciz "%d%d"


.extern izlaz

.text

.extern printf
.extern exit
.extern program
.extern scanf

.global _start

_start:


mov ecx,3


call program

push ecx
push offset izlaz
call printf
add esp, 8



push offset unos_text
call printf
add esp,4

push offset b
push offset a
push offset unos
call scanf
add esp,12


push a
push offset izlaz
call printf
add esp,8


push b
push offset izlaz
call printf
add esp,8

push 0

call exit

.end
