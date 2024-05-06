package aula02;
import java.util.Scanner;

public class Ex08 {
    public static void main(String[] args) {
        double sideA = 0, sideB = 0, hypo, angle;
        Scanner sc = new Scanner(System.in);

        while (sideA <= 0 || sideB <= 0) {
            System.out.print("Valor lado A e B. Sintax 'aa bb': ");
            sideA = sc.nextDouble();
            sideB = sc.nextDouble();

            if (sideA <= 0 || sideB <= 0) {
                System.out.println("!! Por favor, insere em todos os parâmetros valores positivos !!");
            }
        }
        sc.close();

        hypo = Math.sqrt((Math.pow(sideA, 2) + Math.pow(sideB, 2)));
        angle = Math.toDegrees(Math.asin(sideB / hypo));

        System.out.println("O valor da hipotenusa é " + hypo);
        System.out.println("O valor do ângulo entre a hipotenusa e o angulo A é: " + angle + "º");
    }
}
