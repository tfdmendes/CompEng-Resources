package aula12.Ex01;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
import java.util.TreeMap;

public class DifferentWordsReader {
    public static void main(String[] args) {
        TreeMap<String, Integer> words = new TreeMap<>();

        String path = "/Users/tiago/Documents/Universidade/1ano/2semestre/POO/src/aula11/txt/major.txt";
        File file = new File(path);

        int totalWords = 0;
        try (Scanner sc = new Scanner(file)) {
            while (sc.hasNextLine()) {
                String line = sc.nextLine();
                String[] wordArray = line.split("\\W+");
                for (String word : wordArray) {
                    if (!word.isEmpty()) {
                        word = word.toLowerCase();
                        totalWords++;
                        words.put(word, words.getOrDefault(word, 0) + 1);
                    }
                }
            }

            System.out.println("Número Total de Palavras: " + totalWords);
            System.out.println("Número de Palavras Diferentes: " + words.size());

        } catch (FileNotFoundException e) {
            System.out.println("File not found: " + path);
        }
    }
}
