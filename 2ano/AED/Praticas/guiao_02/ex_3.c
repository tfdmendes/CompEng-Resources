#include <stdio.h>

void Permute(int *a, int *b, int *c);

int main(){
    int a = 10;
    int b = 12;
    int c = 14;

    Permute(&a, &b, &c);
    printf("\na: %d\nb: %d\nc: %d\n", a,b,c);

    Permute(&a, &b, &c);
    printf("\na: %d\nb: %d\nc: %d\n", a,b,c);

    Permute(&a, &b, &c);
    printf("\na: %d\nb: %d\nc: %d\n", a,b,c);
}

void Permute(int *a, int *b, int *c){
    int temp;
    temp = *a;
    *a = *b;
    *b = *c;
    *c = temp;
}