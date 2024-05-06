package aula01;
import java.util.Scanner;

public class KmToMiles {
    public static void main(String[] args) {
        double km, miles;
        Scanner sc = new Scanner(System.in);
        System.out.print("Insira a distância em km: ");
        km = sc.nextDouble(); // Reads a double variable from the user
        miles = km / 1.609;
        System.out.println("A distância em milhas é: " + miles);
        sc.close();
    }
}
