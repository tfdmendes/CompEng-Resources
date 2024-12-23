#include <stdio.h>
#include <stdlib.h>

int ncomps; 

int f1(int* array, size_t arraySize){
    int sum = 0;
    for(int i = 1; i < (arraySize - 1); i++){
        ncomps++;
        if((array[i-1] + array[i + 1]) == array[i]){
            sum++;
        }
    }
    return sum;
}

int main(){
    int array1[] = {1,2,3,4,5,6,7,8,9,10};
    int array2[] = {1,2,1,4,5,6,7,8,9,10};
    int array3[] = {1,2,1,3,2,6,7,8,9,10};
    int array4[] = {0,2,2,0,3,3,0,4,4,0};
    int array5[] = {0,0,0,0,0,0,0,0,0,0};
    int *arrays[] = {array1, array2, array3, array4, array5};

    for(int i = 0; i < 5; i++){
        ncomps = 0;
        int sum = f1(arrays[i], 10);        
        printf("Result: %d\n", sum);
        printf("Num Comps: %d\n\n", ncomps);
    }
    return 0;
}