package aula08.Ex01.Classes;

public class Bus extends Vehicle{
    private int boardNumber;
    private int weight;
    private int maxPassengers;

    public Bus(String plate, String brand, String model, int horsePower, int boardNumber, int weight, int maxPassengers){
        super(plate, brand, model, horsePower);

        if (boardNumber < 0)
            throw new IllegalArgumentException("Invalid board number");
        if (weight <= 0)
            throw new IllegalArgumentException("Invalid weight");
        if (maxPassengers <= 0)
            throw new IllegalArgumentException("Invalid maximum load");
        this.boardNumber = boardNumber;
        this.weight = weight;
        this.maxPassengers = maxPassengers;
    }

    public int getBoardNumber() {
        return boardNumber;
    }

    public int getWeight() {
        return weight;
    }

    public int getMaxPassengers() {
        return maxPassengers;
    }

    @Override
    public String toString(){
        return super.toString() + "Peso máximo: " + weight + ", Número do quadro: " + boardNumber + ", Númnero máximo de passageiros: " + maxPassengers;
    }


}
