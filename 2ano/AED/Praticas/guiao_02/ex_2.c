#include <stdio.h>
#include <string.h>

int numberLetters(char string[], int lenString){
    int count = 0;
    for(int i = 0; i < lenString; i++){
        if((string[i] >= 'A' && string[i] <=  'Z') || (string[i] >= 'A' + 0x20 && string[i] <=  'Z' + 0x20) ){
            count++;
        }
    }
    return count;
}

int numberCapitalLetters(char string[], int lenString){
    int count = 0;
    for(int i = 0; i < lenString; i++){
        if((string[i] >= 'A' && string[i] <=  'Z')){
            count++;
        }
    }
    return count;
}

void toLower(char string[], int lenString){
    for(int i = 0; i < lenString; i++){
        if((string[i] >= 'A' && string[i] <=  'Z')){
            string[i] = string[i] + 0x20;
        }
    }
}

int main(){
    char str1[20];
    char str2[20];
    printf("\nFirst String: ");
    scanf("%s", str1);

    printf("\nSecond String: ");
    scanf("%s", str2);
    
    int lenString1 = strlen(str1);
    int lenString2 = strlen(str2);


    // Conte os caracteres da primeira string que são letras do alfabeto.
    int numberLettersString1 = numberLetters(str1, lenString1);
    printf("\nNum of alpha characters string1: %d\n", numberLettersString1);


    // conte os caracteres da segunda stirng,q ue são letras maiúsculas
    int capitalLettersString2 = numberCapitalLetters(str2, lenString2);
    printf("Num capital characters string2: %d\n", capitalLettersString2);


    // Converta todas as letras maiúsculas, das duas strings, para minúsculas
    toLower(str1, lenString1);
    toLower(str2, lenString2);
    printf("String1 to lower: %s\n", str1);
    printf("String2 to lower: %s\n", str2);


    // Compare as duas strings resultantes e escreva uma mensagem indicando que 
    // são iguais, ou apresentando as duas strings na sua ordem lexicográfica.
    int equal = strcmp(str1, str2);

    if (equal == 0){
        printf("The strings are equal\n");
    } else if(equal < 0){
        printf("%s - %s\n", str1, str2);
    } else {
        printf("%s - %s\n", str2, str1);
    }


    // Crie uma cópia da segunda string 
    char str2Copy[20];

    strcpy(str2Copy, str2);
    printf("str2 copy: %s\n", str2Copy);

    strcat(str2Copy, str2);
    printf("str2 and it's copy concatenated: %s\n", str2Copy);

    return 0;
}
