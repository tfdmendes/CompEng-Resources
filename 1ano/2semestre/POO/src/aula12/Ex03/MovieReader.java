package aula12.Ex03;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.*;

public class MovieReader {
    public static void main(String[] args) {
        List<Movie> movies = new ArrayList<>();

        String path = "/Users/tiago/Documents/Universidade/1ano/2semestre/POO/src/aula12/movies.txt";
        File file = new File(path);

        // Leitura do ficheiro e construção da lista de filmes
        try (Scanner sc = new Scanner(file)) {
            if (sc.hasNextLine()) sc.nextLine(); // Skip header line

            while (sc.hasNextLine()) {
                String line = sc.nextLine();
                String[] fields = line.split("\t");
                String name = fields[0];
                double score = Double.parseDouble(fields[1]);
                String rating = fields[2];
                String genre = fields[3];
                int runningTime = Integer.parseInt(fields[4]);

                movies.add(new Movie(name, score, rating, genre, runningTime));
            }

        } catch (FileNotFoundException e) {
            System.out.println("File not found: " + path);
        }

        // a) Lista de filmes ordenada pelo nome
        movies.sort(Comparator.comparing(Movie::getName));
        System.out.println("Filmes ordenados por nome:");
        printMovies(movies);

        // b) Filmes ordenados por score decrescente
        movies.sort(Comparator.comparingDouble(Movie::getScore).reversed());
        System.out.println("\nFilmes ordenados por score (decrescente):");
        printMovies(movies);

        // c) Filmes ordenados por tempo de execução crescente
        movies.sort(Comparator.comparingInt(Movie::getRunningTime));
        System.out.println("\nFilmes ordenados por tempo de execução (crescente):");
        printMovies(movies);

        // d) Géneros distintos e número de filmes por género
        Map<String, Integer> genreCount = new HashMap<>();
        for (Movie movie : movies) {
            genreCount.put(movie.getGenre(), genreCount.getOrDefault(movie.getGenre(), 0) + 1);
        }
        System.out.println("\nGéneros distintos e número de filmes por género:");
        for (Map.Entry<String, Integer> entry : genreCount.entrySet()) {
            System.out.printf("%-15s: %d%n", entry.getKey(), entry.getValue());
        }

        // e) Escrever no ficheiro “myselection.txt” os filmes com um score superior a 60 e que pertençam a um género indicado pelo utilizador
        Scanner inputScanner = new Scanner(System.in);
        System.out.println("\nIndique o género para selecionar filmes com score superior a 60:");
        String userGenre = inputScanner.nextLine();

        try (FileWriter writer = new FileWriter("/Users/tiago/Documents/Universidade/1ano/2semestre/POO/src/aula12/Ex03/myselection.txt")) {
            for (Movie movie : movies) {
                if (movie.getScore() > 60 && movie.getGenre().equalsIgnoreCase(userGenre)) {
                    writer.write(movie.toFormattedString() + "\n");
                }
            }
            System.out.println("Seleção de filmes guardada em myselection.txt.");
        } catch (IOException e) {
            System.out.println("Erro ao escrever no ficheiro: " + e.getMessage());
        }
        inputScanner.close();
    }

    // Método para imprimir a lista de filmes com formatação alinhada
    private static void printMovies(List<Movie> movies) {
        System.out.printf("%-30s %-10s %-10s %-15s %-15s%n", "Name", "Score", "Rating", "Genre", "Running Time");
        System.out.println("-------------------------------------------------------------------------------------------------");
        for (Movie movie : movies) {
            System.out.println(movie.toFormattedString());
        }
    }
}