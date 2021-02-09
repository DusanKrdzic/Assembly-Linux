.intel_syntax noprefix 
.arch i386

.data 


izlaz:
.asciz "Broj je:%d\n"


.global izlazni_format
izlazni_format:
.asciz "Zbir je %d\n"


.text
.global zbir


.type zbir, @function
.func zbir

zbir : 

enter 0,0


push [ebp+8]
push offset izlaz
call printf
add esp,4



push [ebp+12]
push offset izlaz
call printf
add esp,4



mov eax,[ebp+8]
add eax,[ebp+12]



leave
ret
	
	

.endfunc
.end
