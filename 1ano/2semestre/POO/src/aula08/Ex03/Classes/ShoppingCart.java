package aula08.Ex03.Classes;
import java.util.HashMap;
import java.util.Set;
import aula08.Ex03.Interfaces.ShoppingCartInterface;

public class ShoppingCart implements ShoppingCartInterface{
    HashMap<Product, Integer> cart = new HashMap<>();

    public ShoppingCart(){
    }

    @Override
    public void addProduct(Product product, int quantity) {
        if (product.getQuantity() < quantity) {
            quantity = product.getQuantity();
        }
        product.removeQuantity(quantity);
        cart.put(product, quantity);
    }

    @Override
    public double calculateTotal() {
        double total = 0;
        Set<Product> keys = cart.keySet();
        for (Product product : keys) {
                total += product.getPrice() * cart.get(product);
        }
        return total;        
    }

    @Override
    public void listProducts() {
        String s = "Lista compras:\n";
        for (Product product : cart.keySet()) {
            s += "Produto: " + product.getName() + "\n\tQuantidade: " + cart.get(product) + "\n\tPreço: " + product.getPrice() + "\n";
        }
        System.out.println(s);
    }
}
