package aula07.Ex01;

public class Triangle extends Shape{
    private double side1, side2, side3; 

    public Triangle(double side1, double side2, double side3, String color){
        setSides(side1, side2, side3);
        setColor(color);
    }

    public static boolean isValidTriangle(double side1, double side2, double side3){
        return side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 < side1;
    }


    public void setSides(double side1, double side2, double side3){
        if (isValidTriangle(side1, side2, side3)){
            this.side1 = side1;
            this.side2 = side2;
            this.side3 = side3;
        }else
            throw new IllegalArgumentException("Not a valid triangle sides");
    }

    @Override
    public void setColor(String color){
        this.color = color;
    }

    @Override
    public String getColor(){
        return this.color;
    }

    @Override
    public double getArea(){
        double semiPerimeter = getPerimeter() / 2;
        return Math.sqrt( semiPerimeter*(semiPerimeter-this.side1)*(semiPerimeter-this.side2)*(semiPerimeter-this.side3));
    }

    @Override
    public double getPerimeter(){
        return this.side1 + this.side2 + this.side3;
    }

    public boolean equals(Triangle t){
        return (this.side1 == t.side1) && (this.side2 == t.side2) && (this.side3 == t.side3) && (this.color.equals(t.color));
    }

    @Override
    public String toString(){
        return "Lados: " + this.side1 + ", " + this.side2 + ", " + this.side3 + ". Cor: " + this.color;
    }


}
