package aula03;
import java.util.Scanner;

public class Ex03 {

    private static int getUserInput(Scanner sc) {
        int guess;
        do {
            System.out.print("Introduz um número (inteiro) entre 1 e 100: ");
            guess = sc.nextInt();
        } while (guess < 1 || guess > 100);
        return guess;
    }
    
    public static void main(String[] args) {
        int randomNumber, attempts = 0;
        String answer;
        boolean endOfGame = false;
        Scanner sc = new Scanner(System.in);

        randomNumber = (int) (Math.random()*100) + 1;

        while (! endOfGame) {
            //System.out.println("Número random: " + randomNumber);
            int guess = getUserInput(sc);
            
            if (guess == randomNumber){
                System.out.println("Parabéns, acertou! O seu número de tentativas foram: " + attempts);
                System.out.print("Pretende jogar de novo? Prima (S)im. ");
                answer = sc.next();
                if (answer.equalsIgnoreCase("S") || answer.equalsIgnoreCase("Sim"))
                    continue;
                else 
                    endOfGame = true;
            }

            else if (guess > randomNumber)
                System.out.println("Alto");

            else
                System.out.println("Baixo");

            attempts += 1;  
        }    
        sc.close();
    }
}