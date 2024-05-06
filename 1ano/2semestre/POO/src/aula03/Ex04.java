package aula03;
import java.util.Scanner;

public class Ex04 {

    /**
     * Calculates grade (gradeT*0.4) + (gradeP*0.6)
     *
     * @param gradeP The grade of the practical test.
     * @param gradeT The grade of the theoretical test.
     * @return 66 if either of the grades are less than 7.0. Return the finalGrade
     */
    public static double gradeCalculator(double gradeP, double gradeT){
        double finalGrade;
        if (gradeP < 7.0 || gradeT < 7.0)
            return 66;
        else {
            finalGrade = Math.round((0.4 * gradeT) + (0.6 * gradeP));
            return finalGrade;
        }
    }

    public static void main(String[] args) {
        double gradeP, gradeT, finalGrade;
        int numberStudents;
        Scanner sc = new Scanner(System.in);

        do {
            System.out.print("Indica o número de estudantes: ");
            numberStudents = sc.nextInt();
        } while (numberStudents <= 0);

        double[][] allGrades = new double[numberStudents][2];

        System.out.println("Introduza as notas para cada estudante (NotaT e NotaP devem estar entre 0 e 20):");

        for (int i = 0; i < allGrades.length; i++) {
            do {
                System.out.print("Estudante " + (i + 1) + " - NotaT: ");
                gradeT = sc.nextDouble();
            } while (gradeT < 0 || gradeT > 20);

            do {
                System.out.print("Estudante " + (i + 1) + " - NotaP: ");
                gradeP = sc.nextDouble();
            } while (gradeP < 0 || gradeP > 20);

            System.out.println();

            allGrades[i][0] = gradeT;
            allGrades[i][1] = gradeP;
        }

        System.out.println("NotaT   NotaP   Pauta");

        for (int i = 0; i < allGrades.length; i++) {
            gradeT = allGrades[i][0];
            gradeP = allGrades[i][1];
            finalGrade = gradeCalculator(gradeP, gradeT);
            System.out.printf("%-8.1f%-8.1f%-6.1f%n", gradeT, gradeP, finalGrade);
        }

        sc.close();
    }
}
