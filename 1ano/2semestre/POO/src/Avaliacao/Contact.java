package Avaliacao;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

public class Contact implements Comparable<Contact> {
    private static int counter = 0;
    private int id;
    private String name;
    private int phoneNumber;
    private String mail;
    private LocalDate birthday;

    double numChamadas;
    private LocalDate date;

    public Contact(String name, int phoneNumber, String mail, String birthday){
        this.id = ++counter;
        this.name = name;
        this.phoneNumber = phoneNumber;
        if(!validEmail(mail))
            throw new IllegalArgumentException("Invalid email");
        this.mail = mail;


        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        try{
            date = LocalDate.parse(birthday, formatter);
        }catch(DateTimeParseException e){
            System.out.println("Invalid birthday format");
        }
        this.birthday = date;
    }


    public void call(double numChamadas){
        this.numChamadas = numChamadas;
    }

    public void email(){}

    public int getID(){
        return id;
    }

    public String getName() {
        return name;
    }


    public void setName(String name) {
        this.name = name;
    }


    public int getPhoneNumber() {
        return phoneNumber;
    }


    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }


    public String getMail() {
        return mail;
    }


    public void setMail(String mail) {
        this.mail = mail;
    }


    public LocalDate getBirthday() {
        return birthday;
    }


    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }



    public static boolean validEmail(String email){
        return email.matches("[a-zA-Z0-9._%+-]+@(gmail.com|hotmail.com|ua.pt)");
    }


    @Override
    public String toString() {
        return "id=" + id + ", name=" + name + ", phoneNumber=" + phoneNumber + ", mail=" + mail
                + ", birthday=" + birthday;
    }

    @Override
    public int compareTo(Contact other) {
        return Integer.compare(this.id, other.id);
    }
}
