#include <stdio.h>
#define SIZE 100


int numAdds;
int numCalls;

int cache[SIZE + 1][SIZE +1] = {{0}};

void initializeCache(){
    for(int i =  0; i < SIZE +1; i++){
        for(int j = 0; j < SIZE +1; j++){
            cache[i][j] = 0;
        }
    }
}

int recursive(int m, int n){
    numCalls++;
    if(m == 0 || n == 0) return 1;
    numAdds += 2;
    return recursive(m-1, n) + recursive(m-1, n-1) + recursive(m, n-1);
}

//! DYNAMIC PROGRAMMING COM BOTTOM-UP
/*  Função iterativa usando Programação Dinâmica
e um array 2D Local*/
int dynamicP(int m, int n){
    int d[m+1][n+1];
    
    // 1ª linha e coluna da matriz a 1
    for(int i = 0; i <= m; i++) d[i][0] = 1;
    for(int j = 0; j <= n; j++) d[0][j] = 1;

    numCalls++;
    for(int i = 1; i <= m; i++){
        for(int j = 1; j <= n; j++){
            numAdds += 2;
            d[i][j] = d[i-1][j] + d[i-1][j-1] + d[i][j-1];
        }
    }
    return d[m][n];
}

//! PROGRAMAÇÃO DINÂMICA COM TOP-DOWN E MEMOIZATION
// Função recursiva usando memoization e um Array 2D GLOBAL

int dynamicP_Memoization(int m, int n){
    // Valor já calculado
    int r = cache[m][n];

    // Caso já exista valor
    if(r != 0) return r;
    numCalls++;

    if(m == 0 || n == 0){
        r = 1;
    } else {
        numAdds += 2;
        r = dynamicP_Memoization(m-1, n) + dynamicP_Memoization(m-1, n-1) + dynamicP_Memoization(m, n-1);
    }
    cache[m][n] = r;
    return r;
}


int main(){

    int result;
    numAdds = 0;
    numCalls = 0;

    int m = 12;
    int n = 12;

    result = recursive(m,n);
    printf("\n%-20s %10s %10s %10s\n", "Function", "Result", "numAdds", "NumCalls");
    printf("%s\n", "------------------------------------------------------------");
    
    printf("%-20s %10d %10d %10d\n", "Recursivo Normal", result,numAdds, numCalls);

    initializeCache();
    numAdds = 0;
    numCalls = 0;
    result = dynamicP_Memoization(m,n);
    printf("%-20s %10d %10d %10d\n", "DP com Memo", result,numAdds, numCalls);

    numAdds = 0;
    numCalls = 0;
    result = dynamicP(m,n);
    printf("%-20s %10d %10d %10d\n\n", "DP com Cache Local", result,numAdds, numCalls);


    initializeCache();


    return 1;




    

    


}



