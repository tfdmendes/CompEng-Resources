package aula11.Ex03;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Scanner;

public class EnergyUsageReport {
    private LinkedList<Customer> customersList = new LinkedList<>();

    public void load(String path){
        File file = new File(path);
        try(Scanner sc = new Scanner(file);){
            while(sc.hasNextLine()) {
                
                String line = sc.nextLine();
                String[] lineSplit = line.split("\\|");

                int customerId = Integer.parseInt(lineSplit[0]);
                ArrayList<Double> meterReadings = new ArrayList<>();
                for (int i = 1; i < lineSplit.length; i++){
                    try {
                        meterReadings.add(Double.parseDouble(lineSplit[i]));
                    } catch (NumberFormatException e){
                        System.out.println("Nota inválida encontrada: " + lineSplit[i]);
                    } 
                }

                Customer customer = new Customer(customerId, meterReadings);
                customersList.add(customer);
            }            
        } catch (FileNotFoundException e){
            System.out.println("Ficheiro não existente");
        }
    }


    public void addCustomer(Customer customer){
        customersList.add(customer);
    }

    public void removeCustomer(int id){
        for (int i = 0; i < customersList.size(); i++){
            if (customersList.get(i).getCustomerId() == id){
                customersList.remove(i);
                break;
            }
        }
    }

    public Customer getCustomer(int id){
        for(Customer c : customersList){
            if(c.getCustomerId() == id)
                return c;
        }
        return null;
    }

    public double calculateTotalUsage(int id){
        for(Customer c : customersList){
            if(c.getCustomerId() == id){
                double sum = 0;
                for(Double m : c.getMeterReadings()){
                    sum += m;
                }
                return sum;
            } 
        }
        return 0.0;
    }

    public void generateReport(String path){
        try {
            try (FileWriter file = new FileWriter(path)) {
                for (Customer customer : customersList) {
                    int id = customer.getCustomerId();
                    file.write("Customer " + id + " consumed a total of " + calculateTotalUsage(id) + " watts of energy.\n");
                }
            }
        } catch (IOException e) {
            System.out.println("Writing to the file failed");
        }
    }
}
