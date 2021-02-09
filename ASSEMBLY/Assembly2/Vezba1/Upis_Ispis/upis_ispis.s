.intel_syntax noprefix
.arch i386

.data
unos_text:
.asciz "Unesi broj:\n"

unos:
.asciz " %d" # onaj deo u scanf ("%d",..)

izlaz:

.asciz "Broj je:%d\n"  

.text

.extern scanf
.extern printf
.extern exit
.global _start

_start:

push offset unos_text #printf("Unesi broj:\n") ubacuje adresu u memoriji texta unos_text
call printf
add esp,4   #skida sa steka tu adresu.. adrese na 32b tj 4B


push esp                    #adresa gde ce se smestiti unos trenutni pokazivac steka (smesticemo na stek)
push offset unos            # na kraju dobijamo scanf("%d",&a);
call scanf
 # na steku ima 2 podatka tj dve adrese od po 4B   


mov eax, esp          
add eax,8           #dohvatamo adresu od a
push [eax]              #pushujemo kao argument
push offset izlaz          
call printf
add esp,16


call exit

.end
