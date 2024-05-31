package Avaliacao;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;
import java.util.TreeSet;

import Avaliacao.IContactCostCalculator.ContactType;


public class ContactManager {

    private String name, mail, birthday;
    private int phoneNumber;

    TreeSet<Contact> contactSet = new TreeSet<>();
    
    public ContactManager(){}

    public void addContact(Contact c){
        contactSet.add(c);
    }

    public void removeContact(int id){
        for (Contact c : contactSet) {
            if (c.getID() == id) {
                contactSet.remove(c);
                break; 
            }
        }
    }

    public Contact getContact(int id){
        for(Contact c : contactSet){
            if(c.getID() == id){
                return c;
            }
        }
        return null;
    }


    public double calculateContactCost(int id){
        StandardCostCalculator scc = new StandardCostCalculator();
        double cost = 0;
        for(Contact c : contactSet){
            if(c.getID() == id)
               cost = scc.calculateCost(c.numChamadas, ContactType.CELLNUMBER);
        }
        return cost;
    }


    public void printAllContacts(){
        for(Contact c : contactSet){
            System.out.println(c);
        }
    }


    public void readFile(String path){
        File file = new File(path);
        try(Scanner sc = new Scanner(file)){
            while(sc.hasNextLine()) {
                String line = sc.nextLine();
                String[] lineSplit = line.split("\\t+");

                name = lineSplit[0];
                mail = lineSplit[2];
                birthday = lineSplit[3];

                try{
                    phoneNumber = Integer.parseInt(lineSplit[1]);
                } catch (NumberFormatException e){
                    System.out.println("Numero telemovel inválido");
                }
                Contact c = new Contact(name, phoneNumber, mail, birthday);
                contactSet.add(c);
            }            
        } catch (FileNotFoundException e){
            System.out.println("Ficheiro não existente");
        }
    }


    public void writeFile(String path){
        try(FileWriter outFile = new FileWriter(path)){
            for(Contact c : contactSet){
                outFile.append(c.toString() + ";\n");
            }
        } catch(IOException e){
            System.out.println("Wrong path" + path);
        }
    }

}







