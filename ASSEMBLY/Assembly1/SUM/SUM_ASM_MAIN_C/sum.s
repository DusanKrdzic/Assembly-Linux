.intel_syntax noprefix




.text


.global sum

sum:

push rbp
mov rbp,rsp


mov eax,edi

add eax,esi






leave
ret







.section .rodata



.data



.end
