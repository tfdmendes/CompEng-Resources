package aula02;
import java.util.Scanner;

public class Ex10 {
    public static void main(String[] args) {
        int numberGiven, firstNumber, minimum, maximum, totalNumbersRead, sum;
        double average;
        Scanner sc = new Scanner(System.in);
        System.out.print("Indique um número: ");
        firstNumber = sc.nextInt();

        minimum = firstNumber;
        maximum = firstNumber;
        totalNumbersRead = 1;
        sum = firstNumber;

        do {
            System.out.print("Indique outro número (igual ao primeiro para terminar): ");
            numberGiven = sc.nextInt();

            if (numberGiven != firstNumber) {
                totalNumbersRead++;
                sum += numberGiven;

                if (numberGiven < minimum) {
                    minimum = numberGiven;
                }

                if (numberGiven > maximum) {
                    maximum = numberGiven;
                }
            }
        } while (numberGiven != firstNumber);
        sc.close();

        average = sum / totalNumbersRead;

        System.out.println("Valor Minimo: " + minimum);
        System.out.println("Valor Maximo: " + maximum);
        System.out.println("Media: " + average);
        System.out.println("Total de Numeros Lidos: " + totalNumbersRead);
    }
}
