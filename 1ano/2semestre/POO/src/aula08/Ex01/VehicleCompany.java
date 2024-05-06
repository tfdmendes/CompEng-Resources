package aula08.Ex01;
import java.util.ArrayList;

import aula08.Ex01.Classes.Vehicle;
import utils.Validation;

public class VehicleCompany {
    private String name;
    private String postalCode;
    private String email;

    private ArrayList<Vehicle> vehicleList = new ArrayList<>();


    public VehicleCompany(String name, String postalCode, String email){
        if (name.isEmpty())
            throw new IllegalArgumentException("Invalid Name");
        if (!Validation.validPostalCode(postalCode))
            throw new IllegalArgumentException("Invalid postal code:" + postalCode);
        if (!Validation.validEmail(email))
            throw new IllegalArgumentException("Invalid email");
        this.name = name;
        this.postalCode = postalCode;
        this.email = email;
    }


    public String getName() {
        return name;
    }


    public String getPostalCode() {
        return postalCode;
    }


    public String getEmail() {
        return email;
    }


    public void setName(String name) {
        this.name = name;
    }


    public void setPostalCode(String postalCode) {
        if (!Validation.validPostalCode(postalCode))
            throw new IllegalArgumentException("Invalid postal code:" + postalCode);
        this.postalCode = postalCode;
    }


    public void setEmail(String email) {
        if(!Validation.validEmail(email))
            throw new IllegalArgumentException("Invalid email");
        this.email = email;
    }



    public void addVehicle(Vehicle v){
        vehicleList.add(v);
    }

    public void removeVehicle(int index){
        vehicleList.remove(index);
    }

    public void showVehicleList(){
        int index = 0;
        for(Vehicle v : vehicleList){
            System.out.println();
            String vehicleLabel = String.format("Veículo - %d", index);
            System.out.printf("%20s%n", vehicleLabel);
            System.out.printf("Detalhes do veículo: %s", v);
            index++;
        }
    }

    

}
