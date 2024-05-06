package aula07.Ex02;
// import java.util.Scanner;

public class Ex02 {

    public static void TestMethods(){
        // //! Test static methods
        // System.out.println(DateYMD.validMonth(13)); // should return false
        // System.out.println(DateYMD.validMonth(12)); // should return true

        // System.out.println();

        // System.out.println(DateYMD.leapYear(2001)); // should return false
        // System.out.println(DateYMD.leapYear(2016)); // should return

        // System.out.println();

        // System.out.println(DateYMD.monthDays(2,2016)); // should return 29
        // System.out.println(DateYMD.monthDays(13,2016)); // should return 0
        // System.out.println(DateYMD.monthDays(9, 2019)); // should return 30

        // System.out.println(DateYMD.validDate(0, 0, 0));
        // System.out.println(DateYMD.validDate(1, 2, 3));
        // System.out.println(DateYMD.validDate(25, 25, 2500));


        DateND date = new DateND(2024, 4, 10); // 10 de abril de 2024
        System.out.println("Data configurada: " + date); //  2024-04-10

        date.addDays(40); 
        System.out.println("Data após adicionar 40 dias: " + date); 



    }

    public static void main(String[] args) {
        TestMethods();

    //     Scanner sc = new Scanner(System.in);
    //     boolean finished = false;
    //     boolean dateHasBeenSet = false;
    //     int year, month, day, numberDaysToIncrement = -1, numberDaysToDecrement = -1;
    //     DateYMD date = new DateYMD(1,1,1);

    //     while(!finished) {
    //         int input = -1;
    //         System.out.println("\nDate Operations:\n1 - create new date\n2 - show current date\n3 - increment date\n4 - decrement new date\n0 - exit\n");

    //         // Assures the user enters a valid input 
    //         do{
    //             System.out.print("R: ");
    //             try{
    //                 input = sc.nextInt();
    //             } catch (Exception e){
    //                 System.out.println("You didn't enter a valid option.");
    //                 sc.nextLine(); // consums the invalid input
    //             }

    //             // makes sure the firs thing the user do is to set a date
    //             if (!dateHasBeenSet && input != 0 && input != 1)
    //                 System.out.println("You should probably enter a date first :)");
    //             else
    //                 dateHasBeenSet = true;

    //         } while(input > 4 && input < 0 || !dateHasBeenSet);


    //         switch(input){
    //             case 0:
    //                 finished = true;
    //                 break;

    //             case 1:
    //                 System.out.print("Year: ");
    //                 year = sc.nextInt();
    //                 System.out.print("Month: ");
    //                 month = sc.nextInt();
    //                 System.out.print("Day: ");
    //                 day = sc.nextInt();
    //                 date = new DateYMD(year, month, day);
    //                 break;

    //             case 2:
    //                 System.out.print("\nDATE:\n" + date + "\n");
    //                 break;

    //             case 3:
    //                 do{
    //                     System.out.print("Number of days you want to increment: ");
    //                     try {
    //                         numberDaysToIncrement = sc.nextInt();
    //                     } catch (Exception e){
    //                         System.out.println("You didn't enter a valid amount of days to increment");
    //                         sc.nextLine(); // Consumes the invalid input
    //                     }
    //                 } while (numberDaysToIncrement < 0 || numberDaysToIncrement > 30);
    //                 date.increment(numberDaysToIncrement);
    //                 break;

    //             case 4:
    //                 do{
    //                     System.out.print("Number of days you want to decrement: ");
    //                     try {
    //                         numberDaysToDecrement = sc.nextInt();
    //                     } catch (Exception e){
    //                         System.out.println("You didn't enter a valid amount of days to decrement");
    //                         sc.nextLine(); // Consumes the invalid input
    //                     }
    //                 } while (numberDaysToDecrement < 0 || numberDaysToDecrement > 30);
    //                 date.decrement(numberDaysToDecrement);
    //                 break;
    //         }
    //     }
    //     sc.close();
    }
}