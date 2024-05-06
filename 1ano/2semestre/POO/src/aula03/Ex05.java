package aula03;
import java.util.Scanner;

public class Ex05 {

    public static boolean validMonth(int x){
        return (x >= 1) && (x <= 12);
    }

    public static boolean validYear(int x){
        return String.valueOf(x).length() == 4 && x > 0;
    }

    // returns the number of days of a month, taking into account if it is a leap year
    public static int numberDaysInMonth(int month, int year) {
        switch (month) {
            case 4:
            case 6:
            case 9:
            case 11:
                return 30;
            case 2:
                if (year % 400 == 0 || (year % 100 != 0 && year % 4 == 0))
                    return 29;
                else
                    return 28;
            default:
                return 31;
        }
    }

    public static void printCalendar(int month, int year, int dayMonthStarts){
        int numberDays = numberDaysInMonth(month, year);
        String[] weekNames = {"Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"};
        String[] monthNames = {"", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};

        // Print month and year
        System.out.printf("%15s %d\n", monthNames[month], year);

        // Print all week names  
        for (int i = 0; i < weekNames.length; i++){
            System.out.printf("%4s", weekNames[i]);
        }
        System.out.println();

        int emptySpaces = 0;
        // print empty cells
        for (int i = 1; i <= dayMonthStarts; i++) {
            if (dayMonthStarts == 7){ // for the cases in which the users selected Sunday
                break;
            }
            else{
                System.out.printf("%4s", " ");
                emptySpaces += 1;
            }
        }

        for (int day = 1; day <= numberDays; day++) {
            System.out.printf("%3d", day);
            // Move to the next line after Saturday
            if ((day + emptySpaces) % 7 == 0 && (day != numberDays)) {
                System.out.println();
            } else {
                System.out.print(" ");
            }
        }
        
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int dayMonthStarts, month = 0, year = 0;
        boolean validDate = false;
        String date;
        String[] dateArray;

        // Makes sure the date is in the format "mm/yyyy"
        do {
            System.out.print("Introduz uma data (Formato: mm/yyyy) ");
            date = sc.next();
            dateArray = date.split("/");

            if (dateArray.length == 2){
                month = Integer.valueOf(dateArray[0]);
                year = Integer.valueOf(dateArray[1]);
                if (validMonth(month) && validYear(year))
                    validDate = true;
                else 
                    System.out.println("Introduz uma data com formato (mm/yyyy)");
            }
            else 
                System.out.println("Introduz uma data válida");
        } while (!validDate);

        // Assures the user picks a valid number 
        do {
            System.out.print("Dia da semana em que começa o mês (1 = Segunda; 2 = Terça; 3 = Quarta; 4 = Quinta; 5 = Sexta; 6 = Sábado; 7 = Domingo.) ");
            dayMonthStarts = sc.nextInt();
        } while (dayMonthStarts < 1 || dayMonthStarts > 7);

        sc.close();

        printCalendar(month, year, dayMonthStarts);
    }
}