#include <stdio.h>





typedef struct {

int f1;
int f2;
int f3;

}StructType;


StructType foo( int a, int b, int c,StructType arg){

StructType s={1,2,3};
    return s;
}





int main(){

int a=10;
int b=11;

printf("%ld",sizeof(StructType));

StructType s={4,5,6};

foo(1,2,3,s);



    return 0;
}