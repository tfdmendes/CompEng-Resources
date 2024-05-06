package aula03;
import java.util.Scanner;

public class Ex06 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String input = "";
    
        System.out.print("Introduz uma frase: ");
        input = sc.nextLine();
        sc.close();

        // String to lower case
        System.out.println("String toda em minúsculo: " + input.toLowerCase());

        // Last char of input
        System.out.println("Último Caracter: " + input.charAt(input.length() - 1));

        // first 3 chars
        for(int i = 0; i < input.length(); i++){
            System.out.println(1+i + "º Caracter: " + input.charAt(i));
            if (i == 2)
                break;
        }

        // Using different String methods
        if (input.indexOf('a') != 0)
            System.out.println(input.replace('a', 'b'));
        
        // To upper case
        System.out.println("String toda em maísculo: " + input.toUpperCase());

        // Split
        String[] arrOfString = new String[2];
        if (input.indexOf(' ') != 0){
            arrOfString = input.split(" ", 2); 
        }

        for (String a : arrOfString){
            System.out.println(a);
        }
    }
}
