package aula08.Ex03.Classes;

public class DiscountedProduct extends Product{
    private double discountPercentage;

    public DiscountedProduct(String name, double price, int quantityInStock, double discountPercentage){
        super(name, price, quantityInStock);
        this.discountPercentage = discountPercentage;
    }


    public double getDiscountPercentage() {
        return this.discountPercentage;
    }

    public void setDiscountPercentage(double discountPercentage) {
        this.discountPercentage = discountPercentage;
    }

    @Override
    public double getPrice() {
        return super.getPrice() * (1 - discountPercentage / 100);
    }

}

