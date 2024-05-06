package aula08.Ex02.Dishes;

import aula08.Ex02.Aliments.Aliment;

public class DietDish extends Dish {

    private double maxCalories; 

    public DietDish(String name,double maxCalories){
        super(name);
        this.maxCalories = maxCalories;
    }

    @Override
    public boolean addIngredient(Aliment aliment) {
        double total = 0;
        for (Aliment ingredient : ingredientList)
            total += ingredient.getCalories();
            if (total > maxCalories) 
                return false;

        super.addIngredient(aliment);
        return true;
    }

    @Override
    public String toString(){
        return super.toString() + String.format(" - Dieta (%.2f Calorias)", maxCalories);
}


}
