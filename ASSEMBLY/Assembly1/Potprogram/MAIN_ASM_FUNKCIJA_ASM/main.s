.intel_syntax noprefix


.text


.global main


main:


push rbp
mov rbp,rsp

sub rsp,16








leave
ret







.section .rodata





.data


.global a
.global b



a:
long 5

b:
.long 6


.end
