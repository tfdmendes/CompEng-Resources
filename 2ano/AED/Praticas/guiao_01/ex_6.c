#include <stdio.h>
#include <math.h>


void printArray(char s, int arr[], int lenArr){
    printf("%c: ", s);

    for(int i = 0; i<lenArr; i++){
        printf("%d ",arr[i]);
    }
    printf("\n");
    return;
}

void cumSum(int arr1[], int arr2[], int lenArr1) {
    int c = 0;
    for(int i = 0; i < lenArr1; i++){
        c += arr1[i];
        arr2[i] = c;
    }
    return;
}


int main(){
    int a[] = {31,28,31,30,31,30,31,31,30,31,30,31};
    size_t lenA = sizeof(a) / sizeof(a[0]);



    int b[12];
    size_t lenB = sizeof(b) / sizeof(b[0]);

    printArray('a', a, lenA);
    cumSum(a, b, lenA);
    printArray('b', b, lenB);
}