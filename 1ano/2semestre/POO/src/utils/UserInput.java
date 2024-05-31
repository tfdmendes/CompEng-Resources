package utils;
import java.util.Scanner;


public class UserInput {
    
    /**
     * Reads a user-inputted value within a Double OPEN interval. 
     * Forces the user to insert a valid number within the interval
     *
     * @param sc Scanner object for user input.
     * @param min The minimum value of the interval.
     * @param max The maximum value of the interval (Double.POSITIVE_INFINITY for an open interval).
     * @param message The message displayed to prompt the user for input.
     * @return The user-inputted double if within the interval, loops while a valid input isn't incerted.
     */
    public static double readDoubleOpen(Scanner sc, double min, double max, String message){
        System.out.print(message);
        double number = sc.nextDouble();
        while(min >= number || number >= max){
            System.out.print(message);
            number = sc.nextDouble();
        }
        return number;
    }



    /**
     * Reads a user-inputted value within a Double CLOSED interval. 
     * Forces the user to insert a valid number within the interval
     *
     * @param sc Scanner object for user input.
     * @param min The minimum value of the interval.
     * @param max The maximum value of the interval.
     * @param message The message displayed to prompt the user for input.
     * @return The user-inputted double if within the interval, loops while a valid input isn't incerted.
     */
    public static double readDoubleClosed(Scanner sc, double min, double max, String message){
        System.out.print(message);
        double number = sc.nextDouble();
        while(min > number || number > max){
            System.out.print(message);
            number = sc.nextDouble();
        }
        return number;
    }



    /**
     * Reads a user-inputted value within an int CLOSED interval.
     * Forces the user to insert a valid number within the interval.
     *
     * @param sc The Scanner object for user input.
     * @param min The minimum value of the interval.
     * @param max The maximum value of the interval.
     * @param message The message displayed to prompt the user for input.
     * @return The user-inputted int if within the interval, loops while a valid input isn't incerted.
     */
    public static int readIntClosed(Scanner sc, int min, int max, String message){
        System.out.print(message);
        int number = sc.nextInt();
        while(min > number || number > max){
            System.out.print(message);
            number = sc.nextInt();
        }
        return number;
    }   


    /**
     * Reads a user-inputted String
     * Forces the user to insert a valid String (NO Numbers)
     *
     * @param sc The Scanner object for user input..
     * @param message The message displayed to prompt the user for input.
     * @return The user-inputted String if valid, loops while a valid input isn't incerted.
     */
    public static String readString(Scanner sc, String message){
        System.out.print(message);
        String input = sc.nextLine();
        while(!input.matches("[^0-9]+") ){
            System.out.print(message);
            input = sc.nextLine();
        }
        return input;
    }   





}


