package aula11.Ex02;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Scanner;


//! https://docs.oracle.com/javase/8/docs/api/java/util/HashSet.html

public class Gradebook {
    private LinkedList<Student> studentSet = new LinkedList<>();
    private SimpleGradeCalculator calc = new SimpleGradeCalculator();

    public Gradebook(){}

    public void load(String path) {
        File file = new File(path);
        try (Scanner sc = new Scanner(file)) { // Try-with-resources para garantir que o Scanner seja fechado
            while (sc.hasNextLine()) {
                ArrayList<Double> grades = new ArrayList<>();
                String line = sc.nextLine();
                String[] lineSplit = line.split("\\|");
    
                for (int i = 1; i < lineSplit.length; i++) {
                    try {
                        grades.add(Double.parseDouble(lineSplit[i]));
                    } catch (NumberFormatException e) {
                        System.out.println("Nota inválida encontrada: " + lineSplit[i]);
                    } 
                }
    
                String name = lineSplit[0];
                Student student = new Student(name, grades);
                studentSet.add(student);
            }
        } catch (FileNotFoundException e) {
            System.out.println("Ficheiro não existente");
        }
    }
    

    public void removeStudent(String name){
        for (int i = 0; i < studentSet.size(); i++) {
            if (studentSet.get(i).getName().equals(name)) {
                studentSet.remove(i);
                break; 
            }
        }
    }

    public void addStudent(Student s){
        studentSet.add(s);
    }

    public Student getStudent(String studentName){
         for(Student s : studentSet){
            if(s.getName().equals(studentName))
                return s;
         }
        return null;
    }

    public double calculateAverageGrade(String studentName){
        Student s = getStudent(studentName);
        return calc.calculate(s.getGrades());
    }

    public void printAllStudents(){
        StringBuilder sb = new StringBuilder();
        for(Student s : studentSet){
            sb.append("Name: ").append(s.getName()).append("; Grades:").append(s.getGrades()).append("\n");
        }
        System.out.println(sb);
    }
}
