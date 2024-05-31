package aula11.Ex01;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeMap;

import utils.ParseToString;

public class WordPairsCounter {
    public static void main(String[] args) throws FileNotFoundException{
        TreeMap <String, HashMap<String, Integer>> wordPairs = new TreeMap<>();

        String path = "/Users/tiago/Documents/Universidade/1ano/2semestre/POO/src/aula11/txt/major.txt";
        File file = new File(path);
        Scanner sc = new Scanner(file);
        String previousWord = null;
        
        while(sc.hasNextLine()){
            // System.out.println(sc.nextLine());

            String line = sc.nextLine();
            String[] lineSplit = line.split("[\\s\\t\\n.,:'‘’;?!-*{}=+&/()\\[\\]”“\"\\\\']");

            for(String word : lineSplit){
                word = word.toLowerCase();
                if(word.length() < 3)
                    continue;
                if(previousWord != null){
                    HashMap<String, Integer> pairMap = wordPairs.get(previousWord);
                    if (pairMap == null){
                        //if it doesnt exist, create a new one and add it to the map
                        pairMap = new HashMap<>();
                        wordPairs.put(previousWord, pairMap);
                    }
                    Integer count = pairMap.get(word);
                    if(count == null)
                        pairMap.put(word,1);
                    else 
                        pairMap.put(word, count+1);
                }
                previousWord = word;
            }
        }
        sc.close();
    
        // System.out.println(parseTreeMap(wordPairs));
        System.out.println(ParseToString.parseMap(wordPairs));


    }

    public static String parseTreeMap(TreeMap<String, HashMap<String, Integer>> m){
        String str = "";
        Set<String> keySet = m.keySet();
        for(Object key : keySet){
            str += key + "=" + m.get(key) + "\n";
        }
        return str;
    }
}
