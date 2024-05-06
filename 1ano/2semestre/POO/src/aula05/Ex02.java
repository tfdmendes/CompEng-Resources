package aula05;
import java.util.Scanner;
import utils.UserInput;

public class Ex02 {
    public static void main(String[] args) {
        DateYMD date = null;
        Calendar calendar = null;
        Scanner sc = new Scanner(System.in);
        boolean dateHasBeenSet = false, finished =  false;
        int input = -1, day, year, month, firstDayOfWeek;

        while (!finished) {
            System.out.print("\nCalendar operations:\n1 - create new calendar\n2 - print calendar month\n3 - print calendar\n4 - add event\n5 - remove event\n0 - exit\n");

            // Assures the user enters a valid input 
            do {
                System.out.print("> R: ");
                try {
                    input = sc.nextInt();
                } catch (Exception e) {
                    System.out.println("You didn't enter a valid option.");
                    sc.nextLine(); // consumes the invalid input
                }

                // Check if the calendar has been set before allowing other operations
                if (!dateHasBeenSet && input != 1 && input != 0)
                    System.out.println("You should probably enter a date first :)");
                else 
                    dateHasBeenSet = true; // Set the flag to true once the date has been set
            } while (input > 5 || input < 0);

            switch (input) {
                case 0:
                    sc.close();
                    finished = true;
                    break;

                case 1:
                    year = UserInput.readIntClosed(sc, 1000, 9999, "Year: ");
                    firstDayOfWeek = UserInput.readIntClosed(sc, 1, 7, "Which day of the week does the year start: ");
                    calendar = new Calendar(year, firstDayOfWeek);
                    break;
                    
                case 2:
                    month = UserInput.readIntClosed(sc, 1, 12, "Which month do you wish to see the calendar to: ");
                    calendar.printMonth(month);
                    break;

                case 3:
                    for (int i = 1; i <= 12; i++)
                        calendar.printMonth(i);
                    break;

                case 4:
                    do{
                        day = UserInput.readIntClosed(sc, 1, 31, "Day: ");
                        month = UserInput.readIntClosed(sc, 1, 12, "Month: ");
                        year = UserInput.readIntClosed(sc, 1000, 9999, "Year: ");
                    } while(!DateYMD.validDate(day, month, year));

                    date = new DateYMD(year, month, day);
                    calendar.addEvent(date);
                    break;

                case 5:
                    do{
                        day = UserInput.readIntClosed(sc, 1, 31, "Day: ");
                        month = UserInput.readIntClosed(sc, 1, 12, "Month: ");
                        year = UserInput.readIntClosed(sc, 1000, 9999, "Year: ");
                    } while(DateYMD.validDate(day, month, year));
                    
                    date = new DateYMD(year, month, day);
                    calendar.removeEvent(date);
                    break;
            }
        }
    }
}