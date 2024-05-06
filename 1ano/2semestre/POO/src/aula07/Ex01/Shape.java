package aula07.Ex01;

public abstract class Shape {
    protected String color;

    public static final double DOUBLE_PI = 2*Math.PI;
    
    public abstract double getArea();
    public abstract double getPerimeter();

    public abstract String getColor();
    public abstract void setColor(String color);

    public abstract String toString();  
}
