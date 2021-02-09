#include <stdio.h>

int var;

int __attribute__((stdcall)) zbir(int a,int b){


printf("Prvi parametar je %d\n",a);
printf("Drugi parametar je %d\n", b);

printf("Var je:%d\n",var);

return a+b;



}
