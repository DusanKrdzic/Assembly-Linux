.intel_syntax noprefix
.arch i386

.data
unos_text:
.asciz "Unesi broj:\n"

unos:
.asciz " %d" # onaj deo u scanf ("%d",..)

izlaz:
.asciz "Broj je:%d\n"  

dodela: 
.equ broj,64

var:
.int 20



.text

.extern scanf
.extern printf
.extern exit
.global _start




_start:

push var
push offset izlaz
call printf
add esp,8

mov eax,8
mov var,eax
push var
push offset izlaz
call printf
add esp,8



push offset unos_text 
call printf
add esp,4   


push offset var                  
push offset unos            
call scanf
add esp,8

push var            
push offset izlaz          
call printf
add esp,8


push broj
push offset izlaz
call printf
add esp,8





call exit

.end
