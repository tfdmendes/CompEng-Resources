package aula03;
import java.util.Scanner;

public class Ex02 {
    public static void main(String[] args) {
        double amount;
        double monthlyInterestRate, total = 0.0;
        Scanner sc = new Scanner(System.in);

        do {
            System.out.print("Indica o montante investido (positivo e múltiplo de 1000): ");
            amount = sc.nextInt();          
        } while(amount <= 0  || (amount % 1000) != 0);
        
        do {
            System.out.print("Indica a taxa de juro mensal (entre 0% e 5%): ");
            monthlyInterestRate = sc.nextInt();          
        } while(monthlyInterestRate < 0 || monthlyInterestRate > 5);
        monthlyInterestRate = monthlyInterestRate / 100.0;

        sc.close();

        total = amount; 
        for (int i = 1; i <= 12; i++ ){
            total += total * monthlyInterestRate;
            System.out.printf("%dº Mês = %.2f€ %n", i, total); 
        }
    }
}
