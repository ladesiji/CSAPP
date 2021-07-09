/* 检测两个参数相加会不会溢出 */

#include <stdio.h>
int uadd_ok(unsigned x, unsigned y){
    unsigned sum;
    int flag;
    sum = x + y;
    if (sum < x || sum < y){
        flag = 0;
    }else{
        flag = 1;
    }
    return flag;


int main(){
    unsigned x, y;
    printf("Please enter a number:");
    scanf("%u%u", &x, &y);
    printf("result = %d\n", uadd_ok(x,y));
    return 0;
}