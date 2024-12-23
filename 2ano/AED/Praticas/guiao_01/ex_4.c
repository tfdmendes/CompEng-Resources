#include <stdio.h>

int main() {
    printf("%-20s %3lu\n", "sizeof(void *):", sizeof(void *));       
    printf("%-20s %3lu\n", "sizeof(void):", sizeof(void));           
    printf("%-20s %3lu\n", "sizeof(char):", sizeof(char));           
    printf("%-20s %3lu\n", "sizeof(short):", sizeof(short));         
    printf("%-20s %3lu\n", "sizeof(int):", sizeof(int));             
    printf("%-20s %3lu\n", "sizeof(long):", sizeof(long));           
    printf("%-20s %3lu\n", "sizeof(long long):", sizeof(long long)); 
    printf("%-20s %3lu\n", "sizeof(float):", sizeof(float));         
    printf("%-20s %3lu\n", "sizeof(double):", sizeof(double));       

    return 0;
}
