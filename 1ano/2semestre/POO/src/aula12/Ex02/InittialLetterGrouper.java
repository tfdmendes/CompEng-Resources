package aula12.Ex02;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Scanner;
import java.util.TreeMap;

import utils.ParseToString;

public class InittialLetterGrouper {
    public static void main(String[] args) {
        HashMap<Character, TreeMap<String, Integer>> wordGrouper = new HashMap<>();

        String inputPath = "/Users/tiago/Documents/Universidade/1ano/2semestre/POO/src/aula11/txt/major.txt";
        String outputPath = "/Users/tiago/Documents/Universidade/1ano/2semestre/POO/src/aula12/Ex02/output.txt";
        File file = new File(inputPath);

        char wordChar;        
        try(Scanner sc = new Scanner(file)){
            while(sc.hasNextLine()){
                String line = sc.nextLine();
                String[] wordArray = line.split("\\W+");
                for (String word : wordArray){
                    if (!word.isEmpty() && word.length() > 2){
                        word = word.toLowerCase();
                        wordChar = word.charAt(0);
                        TreeMap<String, Integer> wordMapCount = wordGrouper.get(wordChar);
                        if(wordMapCount == null){
                            wordMapCount = new TreeMap<>();
                            wordGrouper.put(wordChar, wordMapCount);
                        }
                        Integer count = wordMapCount.get(word);
                        if (count == null)
                            wordMapCount.put(word, 1);
                        else 
                            wordMapCount.put(word, count + 1);
                    }       
                }
            }
        } catch (FileNotFoundException e){
            System.out.println("File not found" + inputPath);
        }

        try(FileWriter outFile = new FileWriter(outputPath)){
            outFile.write(ParseToString.parseMap(wordGrouper));
        } catch(IOException e){
            System.out.println("Writinf to file failed");
        }
    }
}
