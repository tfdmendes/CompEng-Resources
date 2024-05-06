package aula09.Ex03;

public abstract class Plane {

    private String id, manufacturer, model;
    private int prodYear, maxPassengers, maxSpeed;
    
    public Plane(String id, String manufacturer, String model, int prodYear, int maxPassengers, int maxSpeed){
        if (id.isEmpty())
            throw new IllegalArgumentException("Invalid ID");
        if (manufacturer.isEmpty())
            throw new IllegalArgumentException("Invalid manufacturer");
        if (model.isEmpty())
            throw new IllegalArgumentException("Invalid model");
        if(prodYear <= 0)
            throw new IllegalArgumentException("Invalid production year");
        if (maxPassengers <= 0)
            throw new IllegalArgumentException("Invalid number for maximum passengers");
        if (maxSpeed <= 0)
            throw new IllegalArgumentException("Invalid maximum speed");
        this.id = id;
        this.manufacturer = manufacturer;
        this.model = model;
        this.prodYear = prodYear;
        this.maxPassengers = maxPassengers;
        this.maxSpeed = maxSpeed;
    }
    
    public abstract String getPlaneType();

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getProdYear() {
        return prodYear;
    }
    public void setProdYear(int prodYear) {
        this.prodYear = prodYear;
    }

    public int getMaxPassengers() {
        return maxPassengers;
    }

    public void setMaxPassengers(int maxPassengers) {
        this.maxPassengers = maxPassengers;
    }

    public int getMaxSpeed() {
        return maxSpeed;
    }

    public void setMaxSpeed(int maxSpeed) {
        this.maxSpeed = maxSpeed;
    }


    @Override
    public String toString(){
        return "Identificador único: " + this.id + ", Fabricante: " + this.manufacturer + ", Model: " + this.model +
            ", Ano de produção: " + this.prodYear + ", Número máximo de passageiros: " + maxPassengers + ", Velocidade máxima: " + maxSpeed;
    }

}
