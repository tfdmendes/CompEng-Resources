package aula07.Ex01;

public class Rectangle extends Shape {
    private double width, length;

    public Rectangle(double width, double length, String color){
        setSides(width, length);
        setColor(color);
    }


    @Override
    public double getArea(){
        return this.width * this.length;
    }

    @Override
    public double getPerimeter(){
        return this.width*2 + this.length*2;
    }

    public void setSides(double width, double length){
        if (width > 0 && length > 0){
            this.width = width;
            this.length = length;   
        } else
            throw new IllegalArgumentException("Invalid width or length");
    }

    @Override
    public void setColor(String color){
        this.color = color;
    }

    @Override
    public String getColor(){
        return this.color;
    }

    public boolean equals(Rectangle r){
        return (this.width == r.width) && (this.length == r.length) && (this.color.equals(r.color));
    }

    @Override
    public String toString(){
        return "Largura " + this.width + " Comprimento: " + this.length + " Cor: " + this.color;
    }
}
