package aula06;
import java.util.Arrays;

public class Conjunto {
    private int[] elements = new int[0];

    public Conjunto() {
    }

    public void insert(int numberToAdd){
        if (!contains(numberToAdd)) { // Only add if the number is not already present
            elements = Arrays.copyOf(elements, elements.length + 1);
            elements[elements.length - 1] = numberToAdd;
        }
    }

    public boolean contains(int number){
        for (int el: elements){
            if (el == number)
                return true;
        }
        return false;
    }


    public void remove(int n){
        if (!contains(n)) 
            return; // Early return if element is not present
        
        int[] newElements = new int[elements.length - 1];
        for (int i = 0, k = 0; i < elements.length; i++) {
            if (elements[i] != n) {
                newElements[k] = elements[i];
                k++;
            }
        }
        elements = newElements; // Update the array to the new array without the element
    }

    public void empty(){
        elements = Arrays.copyOf(elements, 0);
    }


    public int size(){
        return elements.length;
    }


    public Conjunto combine(Conjunto c){
        Conjunto novoConjunto = new Conjunto();
        for(int el : elements){
            novoConjunto.insert(el);
        }

        for(int el : c.elements){
            novoConjunto.insert(el);
        }
        return novoConjunto;
    }

    public Conjunto subtract(Conjunto dif) {
        Conjunto novoConjunto = new Conjunto();
        
        for (int el : this.elements) {
            if (!dif.contains(el)) {
                novoConjunto.insert(el);
            }
        }
        return novoConjunto;
    }
    
    public Conjunto intersect(Conjunto inter) {
        Conjunto novoConjunto = new Conjunto();
        
        for (int el : this.elements) {
            if (inter.contains(el)) {
                novoConjunto.insert(el);
            }
        }   
        return novoConjunto;
    }


    @Override
    public String toString(){
        String result = "";
        for(int el : elements){
            result += el + " ";
        }
        return result;
    }
    

    public static void main(String[] args) {
        Conjunto c1 = new Conjunto();
        c1.insert(4); c1.insert(7); c1.insert(6); c1.insert(5);
        Conjunto c2 = new Conjunto();
        int[] test = { 7, 3, 2, 5, 4, 6, 7};
        for (int el : test) c2.insert(el); c2.remove(3); c2.remove(5); c2.remove(6);
        System.out.println(c1); System.out.println(c2);
        System.out.println("Número de elementos em c1: " + c1.size()); System.out.println("Número de elementos em c2: " + c2.size());
        System.out.println("c1 contém 6?: " + ((c1.contains(6) ? "sim" : "não"))); 
        System.out.println("c2 contém 6?: " + ((c2.contains(6) ? "sim" : "não")));
        System.out.println("União: " + c1.combine(c2)); System.out.println("Interseção:" + c1.intersect(c2)); 
        System.out.println("Diferença:" + c1.subtract(c2));
        c1.empty();
        System.out.println("c1:" + c1);
        
    }
}



