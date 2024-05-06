package aula07.Ex02;

public abstract class Date implements Comparable<Date> {
    protected int year;
    protected int month;
    protected int day;
    
    public abstract void setDate(int year, int month, int day);
    public abstract String toString(); 

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
    public int compareTo(Date other) {
    if (this.year != other.year) {
        return this.year - other.year;  
    } else if (this.month != other.month) {
        return this.month - other.month;  
    } else {
        return this.day - other.day;  
    }
}




}
