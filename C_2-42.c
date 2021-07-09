#include <stdio.h>
int div16(int x){
    int bias = (x >> 31) & 0xF;
    return x >> 4;
}

int main(){
    int x = 32;
    int y = -32;
    int z = 81;
    int zz = -82;
    printf("%d\n", div16(x));
    printf("%d\n", div16(y));
    printf("%d\n", div16(z));
    printf("%d\n", div16(zz));
}