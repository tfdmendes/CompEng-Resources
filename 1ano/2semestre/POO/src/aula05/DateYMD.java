package aula05;

public class DateYMD {
    int year;
    int month;
    int day;

    public DateYMD(int year, int month, int day){
        if (validDate(day, month, year)){
            this.year = year;
            this.month = month;
            this.day = day;
        } else 
            throw new IllegalArgumentException("One of the parameters is not valid.");
    }


    public int getDay(){
        return this.day;
    }


    public int getMonth(){
        return this.month;
    }


    public int getYear(){
        return this.year;
    }

    public int[] getDate(){ 
        return new int[]{this.day, this.month, this.year};
    }


    public void setDate(int year, int month, int day){
        if (validDate(day, month, year)){
            this.year = year;
            this.month = month;
            this.day = day;
        } else 
            throw new IllegalArgumentException("One of the parameters is not valid.");
    }


    
    public void increment(int numberDaysToIncrement){
        if(validDate(numberDaysToIncrement + this.day, month, year)){
            this.day = numberDaysToIncrement + this.day;
        } else {
            System.out.println("It is not possible to increment those amount of days");
        }
    }


    public void decrement(int numberDaysToDecrement){
        if(validDate(this.day - numberDaysToDecrement, month, year)){
            this.day = this.day - numberDaysToDecrement;
        } else {
            System.out.println("It is not possible to decrement those amount of days");
        }
    }
    

    /**
     * @param month Number of the month ([1; 12]).
     * @return true if the number of the month is within the range [1; 12]
     */
    public static boolean validMonth(int month){
        return month >= 1 && month <= 12;
    }


    /**
     * @param year Number of the year.
     * @return true if the year is leap.
     */
    public static boolean leapYear(int year){
        return year % 4 == 0;
    }
    


    /**
     * @param month Number of the month ([1; 12]).
     * @param year Number of the year.
     * @return The number of days the month has.
     */
    public static int monthDays(int month, int year){
        if (validMonth(month)){
            switch (month){
                case 2:
                    if(leapYear(year))
                        return 29;
                    else;
                        return 28;
                case 4:
                case 6:
                case 9:
                case 11: return 30;
                default: return 31;
            }
        }
        else 
            return 0;
    }

    /**
     * @param day Number of the day.
     * @param month Number of the month ([1; 12]).
     * @param year Number of the year.
     * @return true if the date is valid. 
     */
    public static boolean validDate(int day, int month, int year){
        if(validMonth(month) && (monthDays(month, year) >= day) && day != 0)
            return true;
        else
            return false;
    }

    @Override
    public String toString(){
        return this.year + "-" + this.month + "-" + this.day;
    }
}