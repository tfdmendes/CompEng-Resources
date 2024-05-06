package aula02;
import java.util.Scanner;

public class Ex03 {
    public static void main(String[] args) {
        double mass, finalTemp, initialTemp, energy;
        Scanner sc = new Scanner(System.in);

        System.out.print("Insere a quantidade de água (em kilogramas): ");
        mass = sc.nextDouble();

        System.out.print("Insere a temperatura inicial de água (em Celsius): ");
        initialTemp = sc.nextDouble();

        System.out.print("Insere a temperatura final de água (em Celsius): ");
        finalTemp = sc.nextDouble();

        energy = mass * (finalTemp - initialTemp) * 4184;
        System.out.printf("A energia (em Joule) é: %.1f J", energy);
        sc.close();
    }
}
