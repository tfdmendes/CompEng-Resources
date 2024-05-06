package aula01;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class ReadFileExample {
    public static void main(String[] args) {
        Path fich = Paths.get("/Users/tiago/Documents/Universidade/1ano/2semestre/POO/src/aula01/major.txt");
        // System.out.println(fich.toAbsolutePath());
        try {
            Files.readAllLines(fich).stream().forEach(System.out::println);
        } catch (IOException e) {
            System.out.println("Certfique-se que o ficheiro \"major.txt\" está na raiz da pasta do projeto");
        }
    }
}
