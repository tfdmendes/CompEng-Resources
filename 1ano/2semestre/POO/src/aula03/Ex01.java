package aula03;
import java.util.Scanner;

public class Ex01 {

    public static boolean isPrime(int number) {
        for (int i = 2; i < number; i++){
            if ((number % i) == 0)
                return false;
        }
        return true;
    }

    public static void main(String[] args) {
        int number = -1, sum = 0;
        Scanner sc = new Scanner(System.in);

        while (number <= 0){
            System.out.print("Introduz um valor positivo: ");
            number = sc.nextInt();
        }

        sc.close();

        for (int i = 2; i <= number; i++){
            if (isPrime(i))
                sum += i;
        }

        System.out.print("A soma de todos os valores primos até " + number + " é " + sum);
    }
}
