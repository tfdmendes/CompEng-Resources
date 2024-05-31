package aula10.Ex03;

import java.util.Scanner;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import utils.UserInput;

public class WordCounter {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Map<Character, ArrayList<Integer>> letters = new HashMap<>();
        String phrase = UserInput.readString(sc, "Introduz a frase: ");

        for (int i = 0; i < phrase.length(); i++){
            char c = phrase.charAt(i);
            if(letters.get(c) == null){
                ArrayList<Integer> positions = new ArrayList<>();
                positions.add(i);
                letters.put(c, positions);
            } else{
                letters.get(c).add(i);
            }
        }
        System.out.println(letters);
    }
}
