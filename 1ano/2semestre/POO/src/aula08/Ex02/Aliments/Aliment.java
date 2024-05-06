package aula08.Ex02.Aliments;

public abstract class Aliment {
    private final double proteins;
    private final double calories;
    private final double weight;

    public Aliment(double proteins, double calories, double weight){
        if(proteins <= 0)
            throw new IllegalArgumentException("Invalid amount of proteins");
        if(calories <= 0)
            throw new IllegalArgumentException("Invalid amount of calories");
        if(weight <= 0)
            throw new IllegalArgumentException("Invalid weight");

        this.proteins = proteins; 
        this.calories = calories; 
        this.weight = weight;
    }

    public double getProteins() {
        return proteins;
    }

    public double getCalories() {
        return calories;
    }

    public double getWeight() {
        return weight;
    }


    
}

