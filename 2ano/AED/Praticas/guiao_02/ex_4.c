#include <stdio.h>
#include <stdlib.h>

// double *a and double a[] ARE THE SAME
void displayArray(double *a, size_t n){
    if(a == NULL && n <= 0){
        printf("Array is invalid");
        return;
    }

    printf("Array = [");
    for(int i = 0; i < n; i++){
        printf(" %.2f ", *(a + i)); // ou usar a[i]
    }
    printf("]\n");
    return;
}

double* readArray(size_t size_p){
    if (size_p == NULL){
        printf("Array is invalid");
        return NULL;
    }

    double* array = malloc(size_p * sizeof(double));
    if(array ==  NULL){
        exit(1);
    }
    for(size_t i = 0; i < size_p; i++){
        scanf("%lf", &array[i]);
    }
    return array;
}


double* Append(double* array_1, size_t size_1, double* array_2, size_t size_2){
    if(array_1 == NULL && array_2 == NULL){
        printf("Invalid Array's");
        return NULL;
    }

    if(size_1 <= 0 && size_2 <= 0){
        printf("Invalid sizes");
        return NULL;
    }

    double* arrayApended = malloc((size_1 + size_2) * sizeof(double));
    if(arrayApended == NULL){
        exit (1);
    }

    for(size_t i = 0; i < size_1; i++){
        arrayApended[i] = array_1[i];
    }

    for(size_t j = 0; j < size_2; j++){
        arrayApended[j+size_1] = array_2[j];
    }

    return arrayApended;
}


int main(){
    size_t sizeA, sizeB = 0;
    
    printf("Enter the number of elements you'd like to have in the array A: ");
    scanf("%zu", &sizeA);
    printf("Enter the number of elements you'd like to have in the array B: ");
    scanf("%zu", &sizeB);

    printf("\n\nElementos para array A:\n");
    double* a = readArray(sizeA);
    displayArray(a, sizeA);

    printf("\n\nElementos para o Array B:\n");
    double* b = readArray(sizeB);
    displayArray(b,sizeB);

    
    double* c = Append(a, sizeA, b, sizeB);
    size_t sizeC = sizeA + sizeB;
    displayArray(c, sizeC);

    free(a);
    free(b);
    free(c);

    return 0;
}