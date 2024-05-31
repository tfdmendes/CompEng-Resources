package Avaliacao;

public class StandardCostCalculator implements IContactCostCalculator {

    @Override
    public double calculateCost(double units, ContactType type) {
        if (type == IContactCostCalculator.ContactType.CELLNUMBER)
            return units*0.1;
        else 
            return 0;
    }
    
}
