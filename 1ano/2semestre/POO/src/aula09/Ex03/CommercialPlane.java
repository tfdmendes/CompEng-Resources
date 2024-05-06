package aula09.Ex03;

public class CommercialPlane extends Plane {
    private int crewNumber;

    public CommercialPlane(String id, String manufacturer, String model, int prodYear, int maxPassengers, int maxSpeed, int crewNumber){
        super(id, manufacturer, model, prodYear, maxPassengers, maxSpeed);
        if(crewNumber <= 0)
            throw new IllegalArgumentException("Invalid number of crew members");
    }

    @Override
    public String getPlaneType() {
        return "Comercial";
    }

    public int getCrewNumber() {
        return crewNumber;
    }

    public void setCrewNumber(int crewNumber) {
        this.crewNumber = crewNumber;
    }

    @Override
    public String toString(){
        return super.toString() + ", Número de tripulantes: " + this.crewNumber;
    }
}
