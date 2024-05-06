package aula07.Ex01;

public class Circle extends Shape {
    private double radius;

    public Circle(double radius, String color){
        setRadius(radius);
        setColor(color);
    }

    @Override
    public double getArea(){
        return Math.PI*Math.pow(this.radius, 2);
    }

    @Override
    public double getPerimeter(){
        return DOUBLE_PI*this.radius;
    }

    
    public void setRadius(double radius){
        if (radius > 0)
            this.radius = radius;
        else
            throw new IllegalArgumentException("Invalid Radius");
    }

    @Override
    public void setColor(String color){
        this.color = color;
    }

    @Override
    public String getColor(){
        return this.color;
    }


    public boolean equals(Circle c){
        return this.radius == c.radius && this.color.equals(c.color);
    }

    @Override
    public String toString(){
        return "Raio: " + this.radius + ", " + this.color;
    }

}
