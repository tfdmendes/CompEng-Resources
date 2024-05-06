package aula08.Ex02;

import java.util.ArrayList;
import aula08.Ex02.Dishes.*;
import aula08.Ex02.Enums.DaysWeek;

public class Menu {
    private String name; // Nome da ementa
    private String place; //local 
    private ArrayList<Dish> dishList = new ArrayList<>();

    public Menu(String name, String place){
        if (name == null)
            throw new IllegalArgumentException("Invalid name");
        if (place == null)
            throw new IllegalArgumentException("Invalid place name");
    }



    public String getName() {
        return name;
    }

    public String getPlace() {
        return place;
    }

    public void addDish(Dish dish, DaysWeek dayOfWeek){
        dishList.add(dish);
    }

    @Override
    public String toString(){
        String result = "";
        int dayIndex = 0;
        for (Dish dish : dishList) {
            DaysWeek day = DaysWeek.values()[dayIndex++];
            result += String.format("%s, dia %s\n", dish, day);
        }
        return result.trim();
    }

}
