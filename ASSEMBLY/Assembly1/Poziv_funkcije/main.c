
#include <stdio.h>




typedef struct Struktura{

int a;
long d;
char c;


}S;



extern int sum(int a,int b);
extern int funkcija(S arg);

int main(){



S arg={1,2,'a'};


//printf("Suma je:%d\n",sum(a,b));

funkcija(arg);


arg.a=8;

return 0;

}

