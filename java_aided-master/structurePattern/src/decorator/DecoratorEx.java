package decorator;

public class DecoratorEx {

    public static void main(String[] args) {
        Display display1 = new StringDisplay("Hello world");
        display1.show();
        System.out.println("");

        Display display2 = new SideBorder(display1);
        display2.show();
        System.out.println("");

        Display display3 = new FullBorder(display2);
        display3.show();
        System.out.println("");

        Display display4 =
                new FullBorder(
                        new SideBorder(
                                new FullBorder(
                                        new StringDisplay("Hello world"))));
        display4.show();
    }
}
