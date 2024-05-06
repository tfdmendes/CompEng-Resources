package aula07.Ex02;

public class DateYMD extends Date {
    
    public DateYMD(int year, int month, int day){
        setDate(year, month, day);
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

    @Override
    public void setDate(int year, int month, int day){
        if (validDate(day, month, year)){
            this.year = year;
            this.month = month;
            this.day = day;
        } else 
            throw new IllegalArgumentException("One of the parameters is not valid.");
    }


    public int[] getDate(){ 
        return new int[]{this.day, this.month, this.year};
    }

    
    public void increment(int numberDaysToIncrement){
        int newDay = this.day + numberDaysToIncrement;

        while(newDay > monthDays(this.month, this.year)){
            newDay -= monthDays(this.month, this.year);
            this.month++;

            if(this.month > 12){
                this.year++;
                this.month = 1;
            }
        }
    }


    public void decrement(int numberDaysToDecrement){
        int newDay = this.day - numberDaysToDecrement;

        while (newDay < 1){
            this.month--;

            if(this.month < 1){
                this.year--;
                this.month = 12;
            }
            newDay += monthDays(this.month, this.year); // Add the days of the now-current month to newDay
        }
        this.day = newDay; // Set the day to the new adjusted value
    }

    

    @Override
    public String toString(){
        return this.year + "-" + this.month + "-" + this.day;
    }
}