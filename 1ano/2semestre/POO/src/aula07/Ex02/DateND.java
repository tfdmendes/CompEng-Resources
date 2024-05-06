package aula07.Ex02;

public class DateND extends Date {
    private int daysSince2000;

    public DateND(int year, int month, int day) {
        setDate(year, month, day);
    }

    @Override
    public void setDate(int year, int month, int day) {
        if (!validDate(day, month, year)) {
            throw new IllegalArgumentException("Invalid date");
        }
        this.daysSince2000 = calculateDaysSince2000(year, month, day);
    }

    private int calculateDaysSince2000(int year, int month, int day) {
        int days = 0;
        for (int y = 2000; y < year; y++) {
            days += leapYear(y) ? 366 : 365;
        }
        for (int m = 1; m < month; m++) {
            days += monthDays(m, year);
        }
        days += day;
        return days - 1; // Jan 1st is day 0
    }

    public void addDays(int days) {
        this.daysSince2000 += days;
    }

    public int getYear() {
        return calculateDateFromDays(this.daysSince2000)[0];
    }

    public int getMonth() {
        return calculateDateFromDays(this.daysSince2000)[1];
    }

    public int getDay() {
        return calculateDateFromDays(this.daysSince2000)[2];
    }

    public int[] calculateDateFromDays(int daysSince2000) {
        int year = 2000;
        while (daysSince2000 >= (leapYear(year) ? 366 : 365)) {
            daysSince2000 -= leapYear(year) ? 366 : 365;
            year++;
        }

        int month = 1;
        while (daysSince2000 >= monthDays(month, year)) {
            daysSince2000 -= monthDays(month, year);
            month++;
        }

        int day = daysSince2000 + 1; // Adjust cause the day of the month starts at 1
        return new int[]{year, month, day};
    }

    @Override
    public String toString() {
        return String.format("%d-%02d-%02d", getYear(), getMonth(), getDay());
    }
}
