package aula08.Ex02.Aliments;

import aula08.Ex02.Interfaces.Vegetarian;

public class Cereal extends Aliment implements Vegetarian {

    private String name;

    public Cereal(String name, double proteins, double calories, double weight){
        super(proteins, calories, weight);
        if (name == null)
            throw new IllegalArgumentException("Invalid name");
        this.name = name;
    }



    public String getName() {
        return name;
    }

    @Override
    public boolean isVegetarian() {
        return true;
    }

    @Override
    public String toString(){
        return String.format("%s, Proteinas: %.2f, Calorias: %.2f, Peso: %.2f", getName(), getProteins(), getCalories(), getWeight());
    }


}

