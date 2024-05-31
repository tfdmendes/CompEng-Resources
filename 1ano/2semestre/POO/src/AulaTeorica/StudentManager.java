package AulaTeorica;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.InvalidPathException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class StudentManager {
    public static void main(String[] args) throws IOException {
        Set<Student> students = new HashSet<>();
        try{
            Path path = Paths.get("student_list.csv");
            List<String> content = Files.readAllLines(path);
            for (String l : content){
                String[] data = l.split(",");
                Student s = new Student(data[1], data[2]);
                students.add(s);
            }
            System.out.println(students);

        } catch (InvalidPathException e){
            System.out.println("Invalid path");
        }

        
    }
}
