#include <stdio.h>
#include <assert.h>

int numCalls;

int f1(int n){    
    if(n == 1){
        return 1;
    }
    numCalls++;
    return f1(n/2) + n;   
}


int f2(int n){
    if(n == 1) return 1;
    numCalls += 2;
    return f2(n/2) + f2((n+1)/2) + n;
}

int f3(int n){
    if (n == 1) return 1;
    if(n % 2 == 0){     // n par
        numCalls++;
        return 2*f3(n/2) + n;
    } else {            // n impar
        numCalls += 2;
        return f3(n/2) + f3((n+1)/2) + n;
    }
}

int main(){
    int nums[] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
    int result;
    printf("----- F1 -----\n");
    for(int i = 0; i < 15; i++){
        numCalls = 0;
        result =  f1(nums[i]);
        printf("Number %5d; NumCalls = %5d; Result = %5d\n", nums[i], numCalls, result);
    }

    printf("\n\n----- F2 -----\n");
    for(int i = 0; i < 15; i++){
        numCalls = 0;
        result =  f2(nums[i]);
        printf("Number %5d; NumCalls = %5d; Result = %5d\n", nums[i], numCalls, result);
    }

    printf("\n\n----- F3 -----\n");
    for(int i = 0; i < 15; i++){
        numCalls = 0;
        result =  f3(nums[i]);
        printf("Number %5d; NumCalls = %5d; Result = %5d\n", nums[i], numCalls, result);
    }

    return 1;
 
}