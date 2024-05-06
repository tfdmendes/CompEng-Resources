package aula03;
import java.util.Scanner;

public class Ex08 {
    public static void main(String[] args) {
        int blankSpaces = 0;
        String input, acronym = "";
        Scanner sc = new Scanner(System.in);

        System.out.println("Introduza uma frase:");
        input = sc.nextLine();
        sc.close();

        for (int i = 0; i < input.length(); i++) {
            if (input.charAt(i) == ' ')
                blankSpaces++;
        }

        // Splits the input based on the amount of blackspaces in between
        String[] stringArray = new String[blankSpaces + 1];
        stringArray = input.split(" ", blankSpaces + 1);

        // Get the first letter of each word (length >= 3) and create an acronym
        for (String word : stringArray) {
            if (word.length() >= 3) {
                acronym += word.charAt(0);
            }
        }

        System.out.println("Acrónimo: " + acronym.toUpperCase());
    }
}
