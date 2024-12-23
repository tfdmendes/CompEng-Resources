#include <stdio.h>
#include <stdlib.h> 

void f(int* array, size_t *size){
    for(int i = 0; i < size; i++){
        if()
    }
}

int main(){
    int array1[] = {8,2,6}; // should be { 8, 6 }
    int array2[] = {2, 2, 2, 3, 3, 4, 5, 8, 8, 9}; // should be { 2, 3, 5 } 
    int array3[] = { 7, 8, 2, 2, 3, 3, 3, 8, 8, 9 }; // should be {7, 8, 3}
    int *arrays[] = {array1, array2, array3};



    for(int i = 0; i < 3; i++){
        size_t size = sizeof(arrays[i]) / sizeof(int);
        size_t *pSize = &size;
        f(arrays[i], &pSize);
    }

}