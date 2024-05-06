package aula04;
public class Rectangle {
    private double width, length;

    public Rectangle(double width, double length){
        this.width = width;
        this.length = length;
    }

    public double getPerimeter(){
        return this.width*2 + this.length*2;
    }

    public double getArea(){
        return width*length;
    }

    public boolean equals(Rectangle otherRectangle){
        return (this.width == otherRectangle.width) && (this.length == otherRectangle.length);
    }

    @Override
    public String toString(){
        return "Largura" + width + "Comprimento" + length;
    }
}