#include <stdlib.h>
#include <stdio.h>

int numComps;

int f(int* array, size_t size){
    int numTernos;

    for(int k = 2; k < size; k++){
        for(int j = 1; j < k; j++){
            for(int i = 0; i < j; i++){
                // printf("terno: k=%d, i=%d, j=%d\n", array[k], array[i], array[j]);
                if(array[k] == (array[i] + array[j])){
                    numTernos++;
                    // printf("terno: k=%d, i=%d, j=%d\n", array[k], array[i], array[j]);
                    // printf("^^^^^^^^\n");
                } 
                numComps++;
            }
        }
    }
    return numTernos;
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
        numComps = 0;
        int numTernos= f(arrays[i], 10);
        printf("O número de ternos do array %d é = %d\n", i, numTernos);
        printf("Num Comparisons %d\n\n", numComps);
    }
}