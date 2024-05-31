package Avaliacao;

public interface IContactCostCalculator {
    public static enum ContactType {
        CELLNUMBER, EMAIL
    }

    // units is the number of emails required or the number of minutes for the call
    public double calculateCost(double units, ContactType type);

}
