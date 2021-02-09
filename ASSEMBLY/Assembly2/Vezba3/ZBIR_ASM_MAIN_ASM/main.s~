.intel_syntax noprefix
.arch i386




.data

uneti_broj:
.asciz "Uneti broj je:%d\n"

unos_text:
.asciz "Unesi dva broja:\n"

unos:
.asciz "%d%d"

.extern izlazni_format

.extern izlaz

.text



.extern zbir
.extern printf
.extern scanf
.extern exit






.global _start
_start:
call  main

push 0
call exit

.type main, @function

.func main
main:

enter 8,0


#and esp,0xfffffff0

push offset unos_text
call printf
add esp,4

lea eax, [ebp-8]
push eax
lea eax,[ebp-4]
push eax
push offset unos
call scanf
add esp,12


push [ebp-4]
push offset uneti_broj
call printf
add esp,4


push [ebp-8]
push offset uneti_broj
call printf
add esp,4

push [ebp-8]
push [ebp-4]
call zbir 
add esp,8

push eax
push offset izlaz
call printf
add esp,8





leave
ret

.endfunc

.end

