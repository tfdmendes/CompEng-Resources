package aula08.Ex02.Dishes;

import java.util.ArrayList;

import aula08.Ex02.Aliments.Aliment;

public class Dish {

    private String name;
    protected ArrayList<Aliment> ingredientList = new ArrayList<>(); //composição do prato

    public Dish(String name){
        this.name = name;
    }

    public String getName() {
        return name;
    }


    public boolean addIngredient(Aliment aliment){
        ingredientList.add(aliment);
        return true;
    }

    @Override
    public String toString(){
        return String.format("Prato %s, composto por %s ingredientes", getName(), ingredientList.size());
    }
    




    

}
