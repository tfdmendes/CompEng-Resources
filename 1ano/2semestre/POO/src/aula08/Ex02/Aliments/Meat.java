package aula08.Ex02.Aliments;

import aula08.Ex02.Enums.MeatType;

public class Meat extends Aliment{

    private final MeatType type;

    public Meat(MeatType type, double proteins, double calories, double weight){
        super(proteins, calories, weight);
        this.type = type;
    }

    public MeatType getType() {
        return type;
    }
    

    @Override
    public String toString(){
        return String.format("Carne %s, Proteinas: %.2f, Calorias: %.2f, Peso: %.2f", getType(), getProteins(), getCalories(), getWeight());
    }

}
