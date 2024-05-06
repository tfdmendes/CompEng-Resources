package aula08.Ex02; 

import aula08.Ex02.Dishes.*;
import aula08.Ex02.Aliments.*;
import aula08.Ex02.Enums.*;

public class A08E02 {

	public static void main(String[] args) {
		Menu ementa = new Menu("Especial Primavera", "Snack da UA");
		Dish[] pratos = new Dish[DaysWeek.values().length];
		for (int i = 0; i < pratos.length; i++) {
			pratos[i] = randDish(i + 1);
			System.out.println("A sair .. " + pratos[i]);

			// Adiciona 2 ingredientes a cada prato
			int ingred = 1;
			do {
				Aliment aux = randAliment();
				if (pratos[i].addIngredient(aux)) {
					System.out.println("\tIngrediente " + ingred + " adicionado: " + aux);
					ingred++;
				} else
					System.out.println("\tERRO: não é possível adicionar Ingrediente " + ingred + ": " + aux);
			} while (ingred < 3);

			ementa.addDish(pratos[i], DaysWeek.values()[i]);
		}
		System.out.println("\nEmenta final\n--------------------");
		System.out.println(ementa);
	}

	public static Aliment randAliment() {
		Aliment res = null;
		switch ((int) (Math.random() * 4)) {
		case 0:
			res = new Meat(MeatType.CHICKEN, 22.3, 200.3, 300);
			break;
		case 1:
			res = new Fish(FishType.FROZEN, 31.3, 25.3, 200);
			break;
		case 2:
			res = new Vegetable("Couve Flor", 21.3, 22.4, 150);
			break;
		case 3:
			res = new Cereal("Milho", 19.3, 32.4, 110);
			break;
		}
		return res;
	}

	public static Dish randDish(int i) {
		Dish res = null;
		switch ((int) (Math.random() * 3)) {
		case 0:
			res = new Dish("combinado n." + i);
			break;
		case 1:
			res = new VegetarianDish("combinado n." + i);
			break;
		case 2:
			res = new DietDish("combinado n." + i, 90.8);
			break;
		}
		return res;
	}

}
