package aula05;

public class Calendar {

    private final int[][] events;
    int year, dayYearStarts;
    final String[] monthNames = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};

    /**
     * Constructor for Calendar class
     * @param year Year of the calendar
     * @param dayYearStarts Day of the week on which the year starts (between 1-sunday and 7-saturday)
     */
    public Calendar(int year, int dayYearStarts){
        this.year = year;
        this.dayYearStarts = dayYearStarts;
        this.events = new int[12][31];
    }
    

    public int getYear(){
        return this.year;
    }

    public int firstWeekDayOfYear(){
        return this.dayYearStarts;
    }

    public String getMonthByNumber(int month){
            return monthNames[month-1];
    }


    public int firstWeekDayOfMonth(int month){
        int days = 0;
        for (int i = 1; i < month; ++i)
            days += DateYMD.monthDays(i, this.year); // sum days of prev month
        return (days + this.dayYearStarts) % 7; // calculate the day of the week for the start of the given month
    }


    public void addEvent(DateYMD date){
        if (this.year == date.getDate()[2])
            this.events[date.getDate()[1] - 1] [date.getDate()[0] - 1] = 1; // Mark the event on the events array
        else 
            System.out.println("Invalid date");
    }


    public void removeEvent(DateYMD date) {
        if (this.year == date.getDate()[2])
            this.events[date.getDate()[1] - 1][date.getDate()[0] - 1] = 0; // Remove the event from the events array
        else 
            System.out.println("Invalid date");
    }


    public void printMonth(int month) {
        String exibmonth = getMonthByNumber(month); // name of the month to exhibit
        int pos = firstWeekDayOfMonth(month); // Get the starting day of the month
    
        System.out.printf("%12s%s %d", "", exibmonth, year);
        System.out.printf("\n%5s%5s%5s%5s%5s%5s%5s\n", "Su", "Mo", "Tu", "We", "Th", "Fr", "Sa");
    
        int days = DateYMD.monthDays(month, year);
    
        int count = 1; 
        for (int i = 1; i < pos; i++) {
            System.out.print("     "); // Print spaces for days before the start of the month
            count++;
        }
        
        for (int i = 1; i <= days; i++) {
            if (events[month - 1][i - 1] == 1)
                System.out.printf("%5s", i + "*"); // Print the day with '*' if there's an event
            else
                System.out.printf("%5d", i);
            
            if (count % 7 == 0) // Check if a new week is starting
                System.out.println();
            count++;
        }
        System.out.println("\n");
    }
}