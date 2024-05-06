package aula08.Ex03.Interfaces;
import aula08.Ex03.Classes.*;

public interface ShoppingCartInterface {
    void addProduct(Product p, int quantity);
    void listProducts();
    double calculateTotal();
}
