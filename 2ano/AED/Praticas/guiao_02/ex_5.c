#include <stdio.h>
#include <stdlib.h>

void DisplayPol(double* coef, size_t degree){
    if(coef == NULL & degree < 0){
        printf("Invalid coeficient and degree");
        return;
    }

    printf("Pol(x) = ");
    for(size_t i = 0; i < degree; i++){
        printf("%.2f * x^%zu + ", coef[i], degree-i);
        if(degree-i == 1){
            printf("%.2f", coef[i+1]);
        }
    }
}

// ya bro eu nao vou fazer o resto

int main(){
    double polynomial[] = {3.14, 2.2, 27.2, 17.12};
    double* pPolynomial = polynomial;
    DisplayPol(pPolynomial, 3);
    return 0;
}