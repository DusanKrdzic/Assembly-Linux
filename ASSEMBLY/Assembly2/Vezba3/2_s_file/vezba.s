.intel_syntax noprefix
.arch i386

.data



var:
.int 64



unos_text:
.asciz "Unesi broj:\n"

unos:
.asciz "%d"

.global izlaz
izlaz:
.asciz "Broj je:%d\n"


.text



.global program

.type program,@function

.func program

program:

enter 0,0

push offset unos_text
call printf
add esp ,4


push offset var
push offset unos
call scanf
add esp,8

push var
push offset izlaz
call printf
add esp,8

push a
push offset izlaz
call printf
add esp,8




leave
ret

.endfunc
.end
