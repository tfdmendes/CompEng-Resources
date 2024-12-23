#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

int numOps;
x-
int f1(int* array, size_t size){
    assert(size > 2);
    int r = array[1] / array[0];
    for(int i = 1; i < size; i++){
        numOps++;
        if (array[i] != r * array[i-1]) return 0;
    }
    return 1;
}

int main(){
    int array1[] = {1,2,3,4,5,6,7,8,9,10};
    int array2[] = {1,2,4,4,5,6,7,8,9,10};
    int array3[] = {1,2,4,8,5,6,7,8,9,10};
    int array4[] = {1,2,4,8,16,6,7,8,9,10};
    int array5[] = {1,2,4,8,16,32,7,8,9,10};
    int array6[] = {1,2,4,8,16,32,64,8,9,10};
    int array7[] = {1,2,4,8,16,32,64,128,9,10};
    int array8[] = {1,2,4,8,16,32,64,128,256,10};
    int array9[] = {1,2,4,8,16,32,64,128,256,512};
    int *arrays[] = {array1, array2, array3, array4, array5, array6, array7, array8, array9};

    for(int i = 0; i < 9; i++){
        printf("------------------------------------------------------------\n");
        numOps = 0;
        int result = f1(arrays[i], 10);
        if(result == 1 ){
            printf("The elements of array %d are sucessive terms of a geometric progression\n", i+1);
        } else{
            printf("The elements of the array %d are not sucessive of a geometric progression\n", i+1);
        }
        printf("Number of operations: %d\n", numOps);
    }
    return 0;
}
