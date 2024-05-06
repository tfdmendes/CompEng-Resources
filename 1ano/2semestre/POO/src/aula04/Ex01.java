package aula04;
import utils.*;
import java.util.Scanner;

public class Ex01 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        while(true){
            System.out.printf("Escolhe uma forma: \n1 - Círculo\n2 - Triângulo\n3 - Retângulo\n0 - Sair\nR: ");
            int choice = sc.nextInt();

            switch(choice){
                case 0:
                    sc.close();
                    System.exit(0);
                
                case 1:
                    // Círculo
                    double radius1 = UserInput.readDoubleClosed(sc, 0, Double.POSITIVE_INFINITY, "Introduz um raio para o 1º círculo: ");
                    Circle c1 = new Circle(radius1);
                    double radius2 = UserInput.readDoubleClosed(sc, 0, Double.POSITIVE_INFINITY, "Introduz um raio para o 2º círculo: ");
                    Circle c2 = new Circle(radius2);

                    System.out.println("\nCírculo 1 - " + c1);
                    System.out.println("Área do círculo 1: " + c1.getArea());
                    System.out.println("Perímetro do círculo 1: " + c1.getPerimeter() + "\n");

                    System.out.println("Círculo 2 - " + c2.toString());
                    System.out.println("Área do círculo 2: " + c2.getArea());
                    System.out.println("Perímetro do círculo 2: " + c2.getPerimeter() + "\n");

                    System.out.println("Os círculos são iguais? " + c1.equals(c2) + "\n\n");
                    break;

                case 2:
                    // Triângulo
                    double side1  = UserInput.readDoubleClosed(sc, 0, Double.POSITIVE_INFINITY, "Introduz o tamanho do 1º lado do Triângulo1: ");
                    double side2 = UserInput.readDoubleClosed(sc, 0, Double.POSITIVE_INFINITY, "Introduz o tamanho do 2º lado do Triângulo1: ");
                    double side3 = UserInput.readDoubleClosed(sc, 0, Double.POSITIVE_INFINITY, "Introduz o tamanho do 3º lado do Triângulo1: ");
                    Triangle t1 = new Triangle(side1, side2, side3);
                    System.out.println();
                    side1  = UserInput.readDoubleClosed(sc, 0, Double.POSITIVE_INFINITY, "Introduz o tamanho do 1º lado do Triângulo2: ");
                    side2 = UserInput.readDoubleClosed(sc, 0, Double.POSITIVE_INFINITY, "Introduz o tamanho do 2º lado do Triângulo2: ");
                    side3 = UserInput.readDoubleClosed(sc, 0, Double.POSITIVE_INFINITY, "Introduz o tamanho do 3º lado do Triângulo2: ");
                    Triangle t2 = new Triangle(side1, side2, side3);

                    System.out.println("\nTriângulo 1 - " + t1);
                    System.out.println("Área do Triângulo 1: " + t1.getArea());
                    System.out.println("Perímetro do Triângulo 1: " + t1.getPerimeter() + "\n");

                    System.out.println("\nTriângulo 2 - " + t2);
                    System.out.println("Área do Triângulo 2: " + t2.getArea());
                    System.out.println("Perímetro do Triângulo 2: " + t2.getPerimeter() + "\n");

                    System.out.println("Os triângulos são iguais? " + t1.equals(t2) + "\n\n");
                    break;

                case 3:
                    // Retângulo
                    double width = UserInput.readDoubleClosed(sc, 0, Double.POSITIVE_INFINITY, "Introduz a largura do Retângulo1: ");
                    double length = UserInput.readDoubleClosed(sc, 0, Double.POSITIVE_INFINITY, "Introduz o comprimento do Retângulo1: ");
                    Rectangle r1 = new Rectangle(width, length);
                    System.out.println();
                    width = UserInput.readDoubleClosed(sc, 0, Double.POSITIVE_INFINITY, "Introduz a largura do Retângulo2: ");
                    length = UserInput.readDoubleClosed(sc, 0, Double.POSITIVE_INFINITY, "Introduz o comprimento do Retângulo2: ");
                    Rectangle r2 = new Rectangle(width, length);

                    System.out.println("\nRetângulo 1 - " + r1);
                    System.out.println("Área do Retângulo 1: " + r1.getArea());
                    System.out.println("Perímetro do Retângulo 1: " + r1.getPerimeter() + "\n");

                    System.out.println("\nRetângulo 2 - " + r2);
                    System.out.println("Área do Retângulo 2:" + r2.getArea());
                    System.out.println("Perímetro do Retângulo 2: " + r2.getPerimeter() + "\n");

                    System.out.println("Os Retângulos são iguais? " + r1.equals(r2) + "\n\n");
                    break;

                default:
                    System.out.println("Opção inválida");
            }
        }
    }
}

