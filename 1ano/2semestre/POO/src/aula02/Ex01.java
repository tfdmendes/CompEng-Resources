package aula02;
import java.util.Scanner;

public class Ex01 {
    public static void main(String[] args) {
        double km, miles;
        Scanner scan = new Scanner(System.in);
        System.out.print("Distância em km: ");
        km = scan.nextDouble();
        miles = km/ 1.609;
        System.out.printf("A distância em milhas é: %.2f", miles);
        scan.close();
    }
}
