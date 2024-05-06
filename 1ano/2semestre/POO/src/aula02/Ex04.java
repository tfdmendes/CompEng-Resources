package aula02;
import java.util.Scanner;

public class Ex04 {
    public static void main(String[] args) {
        double amountInvested, monthlyInterestRate, finalValue;
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Indique o montante investido: ");
        amountInvested = sc.nextDouble();

        System.out.print("Indique a taxa de juro mensal em %: ");
        monthlyInterestRate = sc.nextDouble() / 100;
        sc.close();

        finalValue = amountInvested;
        for (int i = 1; i <= 3; i++) {
            finalValue = finalValue * (1 + monthlyInterestRate);
        }
        System.out.println("Valor final depois de 3 meses " + finalValue);
    } 
}
