package aula08.Ex03.Classes;

import aula08.Ex03.Interfaces.ProductInterface;

public class Product implements ProductInterface {

    private String name;
    private double price;
    private int quantityInStock = 0;

    public Product(String name, double price, int quantityInStock){
        if (name == null)
            throw new IllegalArgumentException("Invalid name");
        if (price <= 0)
            throw new IllegalArgumentException("Invalid price");
        if (quantityInStock < 0)
            throw new IllegalArgumentException("Invalid quantity in stock");
        this.name = name;
        this.price = price;
        this.quantityInStock = quantityInStock;
    }


    @Override
    public void addQuantity(int quantity) {
        if (quantity < 0)
            throw new IllegalArgumentException("Negative quantities don't make sense");
        this.quantityInStock += quantity;
    }

    @Override
    public String getName() {
        return name;
    }

    @Override
    public double getPrice() {
        return price;
    }

    @Override
    public int getQuantity() {
        return quantityInStock;
    }

    @Override
    public void removeQuantity(int quantity) {
        if (quantityInStock < quantity)
            throw new IllegalArgumentException("You can't remove more than how much you have");
        this.quantityInStock -= quantity;
    }

}
