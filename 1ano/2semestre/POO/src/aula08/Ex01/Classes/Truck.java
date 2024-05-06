package aula08.Ex01.Classes;

public class Truck extends Vehicle {
    private int boardNumber;
    private int weight;
    private int maximumLoad;

    public Truck(String plate, String brand, String model, int horsePower, int boardNumber, int weight, int maximumLoad){
        super(plate, brand, model, horsePower);
        if (boardNumber < 0)
            throw new IllegalArgumentException("Invalid board number");
        if (weight <= 0)
            throw new IllegalArgumentException("Invalid weight");
        if (maximumLoad <= 0)
            throw new IllegalArgumentException("Invalid maximum load");
        this.boardNumber = boardNumber;
        this.weight = weight;
        this.maximumLoad = maximumLoad;
    }

    @Override
    //! Duvida nisto
    public boolean equals(Object obj){
        if (this == obj) return true; 
        if (obj == null || getClass() != obj.getClass()) return false; 
        Truck other = (Truck) obj; 

        return boardNumber == other.boardNumber &&
        weight == other.weight &&
        maximumLoad == other.maximumLoad &&
        super.equals(obj); 
    }

    @Override
    public String toString(){
        return super.toString() + "Peso máximo: " + weight + ", Número do quadro: " + boardNumber + ", Númnero máximo de carga: " + maximumLoad;
    }

}
