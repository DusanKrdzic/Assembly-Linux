#include <stdio.h>


extern char text;
extern int niz[];
extern char izlaz2;

int main(){




//printf(&text);
printf(&izlaz2,niz[2]);


return 0;


}
