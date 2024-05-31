package aula10.Ex04;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

import utils.Validation;

public class WordReader {
    public static void main(String[] args) throws IOException{ 

        Set<String> twoLettersWords = new HashSet<>();
        Set<String> wordsEndedWithS = new HashSet<>();

        Scanner input = new Scanner(new FileReader("src/aula10/Ex04/words.txt")); 
        while (input.hasNext()) {
            String word = input.next();
            System.out.println(word);

            if (!Validation.containsNonAlphabeticCharacters(word)){
                if (word.length() > 2)
                    twoLettersWords.add(word);

                char lastCharacter = word.charAt(word.length()-1);
                char characterS = 's';
                if (lastCharacter == characterS)
                    wordsEndedWithS.add(word);
            }
        }
        input.close();
        System.out.println(twoLettersWords);
        System.out.println(wordsEndedWithS);
    }
}