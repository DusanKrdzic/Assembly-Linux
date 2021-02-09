#include <stdio.h>

extern int sum(int a,int b);

int a,b;

int main(){

printf("Unesite dva broja\n");

scanf("%d%d",&a,&b);

printf("Zbir broja %d i broja %d je broj %d\n",a,b,sum(a,b));


return 0;

}
