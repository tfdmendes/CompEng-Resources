package aula11.Ex02;

import java.util.List;

public class SimpleGradeCalculator implements IGradeCalculator {
    @Override
    public double calculate(List<Double> grades) {
        double sum = 0;
        for (double n : grades)
            sum += n;
        return sum / grades.size();
    }
}
