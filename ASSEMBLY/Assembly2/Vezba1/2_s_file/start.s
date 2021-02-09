.intel_syntax noprefix
.arch i386


.data
.global var

.global a
a: .int 45

.text



.global _start

_start:

call program

push 0

call exit

.end
