#include <stdio.h>


extern int simbol1;
extern int simbol2;
extern int simbol3[];
//extern int* simbol4; ne moze jer je simbol4 int

int main(){


printf("%d\n",simbol1);
printf("%d\n",simbol2);
printf("%d\n",simbol3[1]);
//printf("%d\n",*simbol4);
printf("Hello\n");
return 0;



}
