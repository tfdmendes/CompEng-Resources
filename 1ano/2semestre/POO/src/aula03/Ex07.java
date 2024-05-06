package aula03;
import java.util.Scanner;

public class Ex07 {

    /**  Number of numeric characters in string 
     * @param str The input string to count the amount of numeric characters.
     * @return The count of numeric characters
     */
    public static int countDigits(String str){
        int countNumChars = 0;
        for (int i = 0; i < str.length(); i++){
            if (Character.isDigit(str.charAt(i)))
                countNumChars++;
        }
        return countNumChars;
    }

    /**  Number of whitespaces in a string 
     * @param str The input string to count the amount of whitespaces.
     * @return The count of whitespaces.
     */
    public static int countWhiteSpaces(String str){
        int countWhitespaces = 0;
        for (int i = 0; i < str.length(); i++){
            if (str.charAt(i) == ' ')
                countWhitespaces++;
        }
        return countWhitespaces;
    }

    /**  Checks if the string is all lower case.
     * @param str The input string you want to validate.
     * @return Returns true if all lower case. Else returns false. 
     */
    public static boolean isAllLowerCase(String str){
        String strInLowerCase;
        strInLowerCase = str.toLowerCase();

        if (str.equals(strInLowerCase))
            return true;
        else
            return false;
    }

    /**  Replaces multiple consecutive spaces with a single space.
     * @param str The input string you want to process.
     * @return A new string with multiple consecutive spaces replaced with a single space.
     */
    public static String replaceMultipleSpaces(String str){
        String cleanString = "";
        char currentChar;
        boolean lastCharWasSpace = false; 
        for (int i = 0; i < str.length(); i++){
            currentChar = str.charAt(i);

            if (currentChar == ' '){
                if (!lastCharWasSpace)
                    cleanString += currentChar;
                    
                lastCharWasSpace = true;
            } 
            else {
                cleanString += currentChar;
                lastCharWasSpace = false;
            }
        }
        return cleanString;
    }

    /**  Check if a string is a polindrome (can be read backwards the same as forwards)
     * @param str The input string you want to validate.
     * @return true if polindrome. false if not a polindrome
     */
    public static boolean isPalindrome(String str){
        String stringBackwards = "";
        for (int i = 0; i < str.length(); i++){
            stringBackwards += str.charAt(str.length() - 1 - i);
        }
        return str.equals(stringBackwards);
    }


    public static void main(String[] args) {
        String input;
        Scanner sc = new Scanner (System.in);

        System.out.print("Introduza uma frase: ");
        input = sc.nextLine();
        sc.close();

        // Tests
        System.out.printf("Número de caracteres numéricos: %d\n", countDigits(input));
        System.out.printf("Número de espaços: %d\n", countWhiteSpaces(input));
        System.out.printf("Se a string está toda em minusculo: %s\n", isAllLowerCase(input));
        System.out.printf("String sem espaços consecutivos: %s\n", replaceMultipleSpaces(input));
        System.out.printf("String é um palindrome: %s\n", isPalindrome(input));
        
    }
}