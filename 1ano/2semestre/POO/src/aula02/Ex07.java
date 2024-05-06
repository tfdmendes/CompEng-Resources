package aula02;
import java.util.Scanner;

public class Ex07 {
    public static void main(String[] args) {
        double x1, y1, x2, y2, xDifference, yDifference, distance;
        Scanner sc = new Scanner(System.in);

        System.out.print("Indica as coordenadas do ponto 1. Sintax 'xx yy': ");
        x1 = sc.nextDouble();
        y1 = sc.nextDouble();

        System.out.print("Indica as coordenadas do ponto 2. Sintax 'xx yy': ");
        x2 = sc.nextDouble();
        y2 = sc.nextDouble();
        sc.close();

        xDifference = Math.abs(x1-x2);
        yDifference = Math.abs(y1-y2);

        distance = Math.sqrt(Math.pow(xDifference,2) + Math.pow(yDifference,2));

        System.out.print("A distância entre osq dois pontos é: " + distance);
    }
}
