package aula04;
import java.util.Scanner;

import utils.UserInput;

public class Triangle {
    private double side1, side2, side3;

    public Triangle(double side1, double side2, double side3){
        while(!isValidTriangle(side1, side2, side3)){
            System.out.printf("\nOs lados fornecidos não respeitam a desigualdade triangular. Por favor, tente novamente.\n");
            side1 = UserInput.readDoubleClosed(new Scanner(System.in), 0, Double.POSITIVE_INFINITY, "Introduz o tamanho do lado1: ");
            side2 = UserInput.readDoubleClosed(new Scanner(System.in), 0, Double.POSITIVE_INFINITY, "Introduz o tamanho do lado2: ");
            side3 = UserInput.readDoubleClosed(new Scanner(System.in), 0, Double.POSITIVE_INFINITY, "Introduz o tamanho do lado3: ");
        }
        this.side1 = side1;
        this.side2 = side2;
        this.side3 = side3;
    }

    private boolean isValidTriangle(double side1, double side2, double side3){
        return side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1;
    }

    
    public double getPerimeter(){
        return this.side1 + this.side2 + this.side3;
    }

    public double getArea(){
        double semiPerimeter;
        semiPerimeter = getPerimeter() / 2;
        return Math.sqrt( semiPerimeter*(semiPerimeter-this.side1)*(semiPerimeter-this.side2)*(semiPerimeter-this.side3) );
    }


    public double[] getSides(){
        return new double[]{this.side1, this.side2, this.side3};
    }

    public boolean equals(Triangle otherTriangle){
        return (this.side1 == otherTriangle.side1) && (this.side2 == otherTriangle.side2) && (this.side3 == otherTriangle.side3);
    }


    @Override
    public String toString(){
        return "Lados: " + this.side1 + ", " + this.side2 + ", " + this.side3;
    }
}