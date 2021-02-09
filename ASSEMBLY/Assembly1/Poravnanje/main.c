#include <stdio.h>


typedef struct Struktura{

int a;
char c;
long d;
char e;


}S;

long f=8;
char c;
long o;


extern int m();

int main(){

int a=1;
char c='c';
long d=2;
int f=3;

S x={4,'a',5,'e'};

//printf("%p%p%p",&f,&c,&o);


m();


return 0;



}