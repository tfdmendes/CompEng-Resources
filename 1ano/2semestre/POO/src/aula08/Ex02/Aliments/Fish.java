package aula08.Ex02.Aliments;

import aula08.Ex02.Enums.FishType;


public class Fish extends Aliment {

    private FishType type;

    public Fish(FishType type, double proteins, double calories, double weight){
        super(proteins, calories, weight);
        this.type = type;
    }

    public FishType getType() {
        return type;
    }


    @Override
    public String toString(){
        return String.format("Peixe %s, Proteinas: %.2f, Calorias: %.2f, Peso: %.2f", getType(), getProteins(), getCalories(), getWeight());
    }

}
