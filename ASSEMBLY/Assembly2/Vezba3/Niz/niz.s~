.intel_syntax noprefix
.arch i386

.data

unos:
.asciz "%d"

izlaz:
.asciz "Broj je:%d\n"

broj_elemenata_niza:
.asciz "Unesite broj elemenata niza:\n"


.text

.extern printf
.extern scanf
.extern exit


.global _start
_start:

call main

push 0

call exit


.type main,@function
.func main

main:

enter 4,0


push offset broj_elemenata_niza
call printf
add esp,4


lea eax,[ebp-4]
push eax
push offset unos
call scanf
add esp,8


mov ecx,[ebp-4]

mov ebx,ecx
shl ebx,2
sub esp,ebx

mov ebx,esp





.endfunc







.end
