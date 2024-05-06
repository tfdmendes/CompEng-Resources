package aula02;
import java.util.Scanner;

public class Ex09 {
    public static void main(String[] args) {
        int originalValue = 0, modifiedValue;
        Scanner sc = new Scanner(System.in);

        while (originalValue <= 0) {
            System.out.print("Introduza um valor positivo: ");
            originalValue = sc.nextInt();
        }

        modifiedValue = originalValue;

        while (modifiedValue >= 0) {
            if (modifiedValue % 10 == 0) {
                System.out.println(modifiedValue);
            } else {
                System.out.print(modifiedValue + ",");
            }
            modifiedValue = modifiedValue - 1;
        }
        sc.close();
    }
}
