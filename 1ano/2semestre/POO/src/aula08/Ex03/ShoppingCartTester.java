package aula08.Ex03;

import aula08.Ex03.Classes.ShoppingCart;
import aula08.Ex03.Classes.*;

public class ShoppingCartTester {
    public static void main(String[] args) {
        Product p1 = new Product("Camisolas", 10, 3);
        Product p2 = new Product("Calças", 30, 1);
        Product p3 = new DiscountedProduct("Sapatilhas", 50, 2, 50);
        Product p4 = new DiscountedProduct("Casacos", 100, 1, 10);
        
        ShoppingCart carrinho = new ShoppingCart();
        carrinho.addProduct(p1, 1);
        carrinho.addProduct(p2, 5);
        carrinho.addProduct(p3, 2);
        carrinho.addProduct(p4, 1);

        carrinho.listProducts();
        System.out.printf("Preço total da compra %.2f\n", carrinho.calculateTotal());
    }
}
