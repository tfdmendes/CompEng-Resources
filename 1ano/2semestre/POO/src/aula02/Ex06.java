package aula02;
import java.util.Scanner;

public class Ex06 {
    public static void main(String[] args) {
        int secondsGiven, seconds, minutes, hours;
        Scanner sc = new Scanner(System.in);

        System.out.print("Indica a quantidade de segundos: ");
        secondsGiven = sc.nextInt();
        sc.close();

        hours = secondsGiven / 3600; // 1hr = 3600s
        minutes = (secondsGiven % 3600) / 60;
        seconds = (secondsGiven % 3600) % 60;

        System.out.println("Tempo Formatado: " + hours + ':' + minutes + ':' + seconds);
    }
}
