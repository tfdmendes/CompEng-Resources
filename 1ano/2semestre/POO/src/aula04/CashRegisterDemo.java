package aula04;

class Product {
    private String name;
    private double price;
    private int quantity;

    public Product(String name, double price, int quantity) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    public double getTotalValue() {
        return price * quantity;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public int  getQuantity() {
        return quantity;
    } 

}


class CashRegister {

    private Product[] productList = new Product[5];
    private int productCount = 0;
    private double totalSpent = 0;

    public void addProduct(Product p){
        if (productCount < productList.length){
            productList[productCount++] = p;
        } else {
            System.out.println("A caixa registadora está cheia");
        }
    }

    public double getTotalSpent(){
        for(int i =0; i < productList.length; i++){
            Product p = productList[i];
            totalSpent += p.getTotalValue();
        }
        return totalSpent;
    }


    @Override
    public String toString(){

        String result = "";

        for(int i = 0; i < productList.length; i++){
            Product p = productList[i];
            result += String.format("%-20s %-10s %-10s %-10.2f%n", p.getName(), p.getPrice(), p.getQuantity(), p.getTotalValue());
        }
        return result;
    }
}

public class CashRegisterDemo {

    public static void main(String[] args) {

        // Cria e adiciona 5 produtos
        CashRegister cr = new CashRegister();
        cr.addProduct(new Product("Book", 9.99, 3));
        cr.addProduct(new Product("Pen", 1.99, 10));
        cr.addProduct(new Product("Headphones", 29.99, 2));
        cr.addProduct(new Product("Notebook", 19.99, 5));
        cr.addProduct(new Product("Phone case", 5.99, 1));
        
        System.out.printf("%-20s %-10s %-10s %-10s%n", "Product", "Price", "Quantity", "Total");
        System.out.println(cr);
        System.out.println("Total value: " + cr.getTotalSpent());
    }
}