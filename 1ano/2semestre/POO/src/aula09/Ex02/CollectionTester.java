package aula09.Ex02;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.TreeSet;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

public class CollectionTester {
    public static void main(String[] args) {
        int[] sizes = {1000, 5000, 10000, 20000, 40000, 100000};
        List<double[]> arrayListResults = new ArrayList<>();
        List<double[]> linkedListResults = new ArrayList<>();
        List<double[]> hashSetResults = new ArrayList<>();
        List<double[]> treeSetResults = new ArrayList<>();


        // Testando com ArrayList
        System.out.println("Testing ArrayList");
        for (int size : sizes) {
            Collection<Integer> col = new ArrayList<>();
            arrayListResults.add(checkPerformance(col, size));
        }
        
        // Testando com LinkedList
        System.out.println("\nTesting LinkedList");
        for (int size : sizes) {
            Collection<Integer> col = new LinkedList<>();
            linkedListResults.add(checkPerformance(col, size));
        }

        System.out.println("\nTesting HashSet");
        for (int size : sizes) {
            Collection<Integer> col = new HashSet<>();
            hashSetResults.add(checkPerformance(col, size));
        }

        System.out.println("\nTesting TreeSet");
        for (int size : sizes) {
            Collection<Integer> col = new TreeSet<>();
            treeSetResults.add(checkPerformance(col, size));
        }

        // Imprimindo a tabela de resultados
        System.out.println("\nResults Table:");
        printTable(sizes, arrayListResults, "ArrayList");
        printTable(sizes, linkedListResults, "LinkedList");
        printTable(sizes, hashSetResults, "HashSet");
        printTable(sizes, treeSetResults, "TreeSet");
    }


    private static void printTable(int[] sizes, List<double[]> results, String collectionType) {
        System.out.printf("%-15s", collectionType);
        for (int size : sizes) {
            System.out.printf("%10d", size);
        }
        System.out.println();
        

        String[] operations = {"add", "search", "remove"};
        for (int i = 0; i < operations.length; i++) {
            System.out.printf("%-15s", operations[i]);
            
            for (double[] performance : results) {
                System.out.printf("%10.2f", performance[i]);
            }
            System.out.println();
        }
        System.out.println();
    }



    private static double[] checkPerformance(Collection<Integer> col, int DIM){
        double start, stop, delta;

        // Add
        start = System.nanoTime(); // clock snapshot before 
        for (int i=0; i<DIM; i++)
            col.add(i);
        stop = System.nanoTime(); // clock snapshot after
        delta = (stop-start)/1e6; // convert to miliseconds
        double v1 = delta;
        System.out.println(col.size()+ ": Add to " +  
            col.getClass().getSimpleName() +" took " + delta + "ms");
        
        // Search
        start = System.nanoTime(); // clock snapshot before 
        for(int i=0; i<DIM; i++ ) { 
            int n = (int) (Math.random()*DIM); 
            if (!col.contains(n))  
                System.out.println("Not found???"+n); 
        } 
        stop = System.nanoTime();  // clock snapshot after 
        delta = (stop-start)/1e6; // convert nanoseconds to milliseconds 
        System.out.println(col.size()+ ": Search to " +  
            col.getClass().getSimpleName() +" took " + delta + "ms");
        double v2 = delta;
        // Remove 
        start = System.nanoTime(); // clock snapshot before 
        Iterator<Integer> iterator = col.iterator(); 
        while (iterator.hasNext()) { 
            iterator.next(); 
            iterator.remove();             
        }
        stop = System.nanoTime();  // clock snapshot after 
        delta = (stop-start)/1e6; // convert nanoseconds to milliseconds 
        System.out.println(col.size() + ": Remove from "+  
          col.getClass().getSimpleName() +" took " + delta + "ms");
        double v3 = delta;

        double[] measures = {v1, v2, v3};
        return measures;
    }
}