package aula02;
import java.util.Scanner;

public class Ex05 {
    public static void main(String[] args) {
        double  v1 = 0, v2 = 0, d1 = 0, d2=0;
        double velocidadeMedia, t1, t2;
        Scanner sc = new Scanner(System.in);

        while (v1 <= 0 || d1 <= 0 || v2 <= 0 || d2 <= 0) {
            System.out.print("Indica a primeira velocidade: ");
            v1 = sc.nextDouble();        

            System.out.print("Indica a primeira distancia percorrida: ");
            d1 = sc.nextDouble();

            System.out.print("Indica a segunda velocidade: ");
            v2 = sc.nextDouble();        

            System.out.print("Indica a segunda distancia percorrida: ");
            d2 = sc.nextDouble();

            if (v1 <= 0 || d1 <= 0 || v2 <= 0 || d2 <= 0) {
                System.out.println("!! Insere apenas valores positivos !!");
            }
        }
        sc.close();

        t1 = d1 / v1;
        t2 = d2 / v2;
        velocidadeMedia = (d1 + d2) / (t1+t2);

        System.out.printf("A velocidade média final é: %.2f", velocidadeMedia);
    }
}


