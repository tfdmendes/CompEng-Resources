#include <stdio.h>
#include <stdlib.h>

int* f1(int array[], size_t size, size_t *finalSize){
    int *finalArray = NULL;
    int finalArraySize = 0;
    
    for(int i = 1; i < size - 1; i++){
        int sum = array[i-1] + array[i+1];
        //printf("i = %d, soma = %d, array[i-1] = %d, array[i+1] = %d\n", i, sum, array[i-1], array[i+1]);
        if(sum == array[i]){
            int* temp = realloc(finalArray, (finalArraySize + 1) * sizeof(int));
            if(temp == NULL){
                printf("Error during reallocation when array size was %d\n", finalArraySize);
                free(finalArray);
                exit(1);
            }
            finalArray = temp;
            finalArray[finalArraySize] = sum;
            finalArraySize++;

        }
    }
    *finalSize = finalArraySize;
    return finalArray;
}

void displayArray(int *a, size_t n){
    if(a == NULL || n <= 0){
        printf("Array is invalid");
        return;
    }

    printf("Array = [");
    for(int i = 0; i < n; i++){
        printf(" %d ", *(a + i)); // ou usar a[i]
    }
    printf("]\n");
    return;
}



int main(){

    int array1[] = {1,2,3,4,5,6,7,8,9,10};
    int array2[] = {1,2,1,4,5,6,7,8,9,10};
    int array3[] = {1,2,1,3,2,6,7,8,9,10};
    int array4[] = {0,2,2,0,3,3,0,4,4,0};
    int array5[] = {0,0,0,0,0,0,0,0,0,0};

    size_t finalSize;
    size_t size = sizeof(array2) / sizeof(int);

    int* a = f1(array4, size, &finalSize);
    displayArray(a, finalSize);
    free(a);

    return 0;
}