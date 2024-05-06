package aula08.Ex01.Classes;
import aula08.Ex01.Interfaces.KmTravelledInterface;
import utils.Validation;

public abstract class Vehicle implements KmTravelledInterface {
    private final String plate;
    private final String brand;
    private final String model;
    private final int horsePower;

    private int distanceTravelled;
    private int lastTripDistance;


    public Vehicle(String plate, String brand, String model, int horsePower){
        if (!Validation.validPlate(plate))
            throw new IllegalArgumentException("Plate not valid");
        if (brand == null || brand.isEmpty() || model == null || model.isEmpty())
            throw new IllegalArgumentException("Neither the model nor the brand can be empty");
        if (horsePower <= 0)
            throw new IllegalArgumentException("Invalid horse power");
        this.plate = plate;
        this.brand = brand;
        this.model = model;
        this.horsePower = horsePower;

        distanceTravelled = 0;
        lastTripDistance = 0;
    }

    public String getPlate() {
        return plate;
    }


    public String getBrand() {
        return brand;
    }


    public String getModel() {
        return model;
    }


    public int getHorsePower() {
        return horsePower;
    }



    @Override
    public void trip(int km){
        if (km > 0){
            this.lastTripDistance = km;
            this.distanceTravelled += km;
        } else{
            throw new IllegalArgumentException("Needs to be a positive number");
        }   
    }

    @Override
    public int lastTrip() {
        return this.lastTripDistance;
    }

    @Override
    public int totalDistance() {
        return distanceTravelled;
    }

    @Override
    public String toString() {
        return "Veículo: " + brand + " " + model + ", " + horsePower + " cv\n" +
               "Matrícula: " + plate + "\n"+"Distância total: " + distanceTravelled + " km" + "\n";
    }

}
