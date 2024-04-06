package support;

public class MakeClass {
    public static void main(String[] args) {
        Rectangle rect1 = new Rectangle();
        rect1.width = 100;
        rect1.height = 50;
        System.out.println("Rect1 perimetr: " + rect1.getPerimetr());
        System.out.println("Rect1 area: " + rect1.getArea());

        Rectangle rect2 = new Rectangle();
        rect2.width = 10;
        rect2.height = 30;
        System.out.println("Rect2 perimetr: " + rect2.getPerimetr());
        System.out.println("Rect2 area: " + rect2.getArea());
    }
}


class Rectangle {
    public double width;
    public double height;

    public Rectangle() {

    }

    public double getArea() {
        return width * height;

    }

    public double getPerimetr() {
        return 2 * (width + height);
    }
}