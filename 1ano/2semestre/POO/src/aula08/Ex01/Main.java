package aula08.Ex01;
import aula08.Ex01.Classes.*;

public class Main {
    public static void main(String[] args) {
        /*empresa*/
        VehicleCompany empresa = new VehicleCompany("RepairShop", "3500-100", "repair-shop_1@gmail.com");
        

        /*ligeiro*/
        Car ligeiro = new Car("55-HE-68", "Opel", "Astra", 128, 12312333, 50);
        Truck fordTruck = new Truck("55-HE-68", "Ford", "Ranger", 200, 765890, 200, 100);

        System.out.println(ligeiro);
        System.out.println();
        
        ligeiro.trip(150);
        ligeiro.trip(850);
        
        System.out.println("Distancia da ultima viagem: " + ligeiro.lastTrip());
        System.out.println(ligeiro);

        empresa.addVehicle(ligeiro);
        empresa.addVehicle(fordTruck);
        empresa.showVehicleList();
        
        System.out.println("\n\n");
        Taxi taxi = new Taxi("HT-57-AI", "Mercedes Benz", "A45", 130, 44412365, 35, 543658);
        System.out.println(taxi);
        
        taxi.trip(547);
        taxi.setLicense(541244);

        System.out.println("\n\n");
        System.out.println(taxi);

        empresa.addVehicle(taxi);
    }
}