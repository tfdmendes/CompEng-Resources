package aula08.Ex01.Classes;

public class Car extends Vehicle {

    private int boardNumber;
    private int trunkSize;

    public Car(String plate, String brand, String model, int horsePower, int boardNumber, int trunkSize){
        super(plate, brand, model, horsePower);
        if (boardNumber < 0)
            throw new IllegalArgumentException("Invalid board number");
        if (trunkSize < 0)
            throw new IllegalArgumentException("Invalid Trunk Size");
        this.trunkSize = trunkSize;
        this.boardNumber = boardNumber;
    }

    public int getBoardNumber() {
        return boardNumber;
    }

    public int getTrunkSize() {
        return trunkSize;
    }


    @Override
    public String toString(){
        return super.toString() + "Número do quadro: " + boardNumber + ", Capacidade da bagageira: " + trunkSize;
    }

}
