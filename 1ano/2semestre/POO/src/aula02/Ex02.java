package aula02;
import java.util.Scanner;

public class Ex02 {
    public static void main(String[] args) {
        double celsius, fahrenheit;
        Scanner sc = new Scanner(System.in);
        System.out.print("Insere a temperatura em Ceslius: ");
        celsius = sc.nextDouble();
        fahrenheit = 1.8*celsius + 32;
        System.out.print("A temperatura em Fahrenheit é: " + fahrenheit);
        sc.close();
    }
}
