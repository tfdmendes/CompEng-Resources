package aula09.Ex03;

public class MilitaryPlane extends Plane {

    private int ammo;

    public MilitaryPlane(String id, String manufacturer, String model, int prodYear, int maxPassengers, int maxSpeed, int ammo){
        super(id, manufacturer, model, prodYear, maxPassengers, maxSpeed);
        if (ammo <= 0)
            throw new IllegalArgumentException("Invalid number for ammo"); 
    }

    public int getAmmo() {
        return ammo;
    }

    public void setAmmo(int ammo) {
        this.ammo = ammo;
    }



    @Override
    public String getPlaneType() {
        return "Militar";
    }

    @Override
    public String toString(){
        return super.toString() +  ", Munição: " + this.ammo;
    }
}
