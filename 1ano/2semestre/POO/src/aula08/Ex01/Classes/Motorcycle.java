package aula08.Ex01.Classes;

import java.util.Arrays;

public class Motorcycle extends Vehicle{

    private String type;
    private String[] typeList = {"desportivo", "estrada"};

    public Motorcycle(String plate, String brand, String model, int horsePower, String type){
        super(plate, brand, model, horsePower);

        boolean typeFound = false;
        for(String typeAvailable : typeList){
            if (typeAvailable.equalsIgnoreCase(type)){
                this.type = type;
                typeFound = true;
                break;
            }
        }
        if (!typeFound)
            throw new IllegalArgumentException("Invalid motorcycle type: " + type);
    }


    
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((type == null) ? 0 : type.hashCode());
        result = prime * result + Arrays.hashCode(typeList);
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Motorcycle other = (Motorcycle) obj;
        if (type == null) {
            if (other.type != null)
                return false;
        } else if (!type.equals(other.type))
            return false;
        if (!Arrays.equals(typeList, other.typeList))
            return false;
        return true;
    }

    @Override
    public String toString(){
        return super.toString() + "Tipo: " + type;
    }
}
