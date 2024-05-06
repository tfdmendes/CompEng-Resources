package aula08.Ex01.Classes;

public class Taxi extends Car{

    private int licenseNumber; 

    public Taxi(String plate, String brand, String model, int horsePower, int boardNumber, int trunkSize, int licenseNumber){
        super(plate, brand, model, horsePower, boardNumber, trunkSize);
        if (licenseNumber < 0)
            throw new IllegalArgumentException("Invalid license number");
        this.licenseNumber = licenseNumber;
    }

    public int getLicense() {
        return licenseNumber;
    }

    public void setLicense(int licenseNumber){
        if (licenseNumber < 0)
            throw new IllegalArgumentException("Invalid license number");
        this.licenseNumber = licenseNumber;
    }

    @Override
    public String toString(){
        return super.toString() + " Número da Licensa: " + licenseNumber;
    }

}
