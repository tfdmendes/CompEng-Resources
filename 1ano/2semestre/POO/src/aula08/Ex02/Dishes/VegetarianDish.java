package aula08.Ex02.Dishes;

import aula08.Ex02.Aliments.Aliment;
import aula08.Ex02.Interfaces.Vegetarian;

public class VegetarianDish extends Dish {


    public VegetarianDish(String name){
        super(name);
    }

    @Override
    public boolean addIngredient(Aliment aliment) {
        if (aliment instanceof Vegetarian){
            super.addIngredient(aliment);
            return true;
        }else
            return false;
    }

    @Override
    public String toString(){
        return super.toString() + " - Prato Vegetariano";
}
}
