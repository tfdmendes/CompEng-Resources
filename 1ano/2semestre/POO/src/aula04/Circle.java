package aula04;

public class Circle {
    private double radius;

    public Circle(double radius){
        this.radius = radius;
    }

    public double getArea(){
        return Math.PI*Math.pow(this.radius, 2);
    }

    public double getPerimeter(){
        return 2*Math.PI*this.radius;
    }

    public boolean equals(Circle otherCircle){
        return this.radius == otherCircle.radius;
    }

    public double getRadius(){
        return this.radius;
    }

    @Override
    public String toString(){
        return "Raio: " + this.radius;
    }
}
