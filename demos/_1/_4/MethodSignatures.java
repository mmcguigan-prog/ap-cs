package demos._1._4;

// Unit 1, Lesson 4 - Demo A: Method Signatures (Topic 1.9)
// You wrote methods in Processing. This demo names the parts and shows how Java picks which one to run.

public class MethodSignatures {

    public static void main(String[] args) {

        // ================= FLOW OF CONTROL =================
        // A call pauses main, runs the whole method, then comes back to the next line.
        System.out.println("1. main starts");
        sayHi("Sam");
        System.out.println("3. back in main");
        System.out.println();

        // ================= VOID vs. NON-VOID =================
        // A void method does something. A non-void method gives back a value you should use.
        double a = area(3.0);           // store the returned value
        System.out.println("Circle area: " + a);
        System.out.println("Square area: " + area(4));   // or use it in an expression
        // double nothing = sayHi("Sam");  // won't compile: void methods don't return anything
        System.out.println();

        // ================= OVERLOADING =================
        // Same name, different SIGNATURES (the name plus the parameter types, in order).
        // Java picks the version whose parameter types match the arguments.
        System.out.println(area(3.0));      // area(double)       -> circle
        System.out.println(area(4));        // area(int)          -> square
        System.out.println(area(2, 5));     // area(int, int)     -> rectangle
        System.out.println();

        // ================= CALL BY VALUE =================
        // The parameter gets a COPY of the argument. Changing the copy doesn't change the original.
        int score = 10;
        addBonus(score);
        System.out.println("score after addBonus: " + score);   // still 10

        // To change it, return the new value and store it
        score = withBonus(score);
        System.out.println("score after withBonus: " + score);  // 15
    }

    // header: public static <return type> <name>(<parameter list>)
    public static void sayHi(String name) {
        System.out.println("2. inside sayHi: hi, " + name);
    }

    // signature: area(double)
    public static double area(double radius) {
        return Math.PI * radius * radius;
    }

    // signature: area(int)
    public static int area(int side) {
        return side * side;
    }

    // signature: area(int, int)
    public static int area(int width, int height) {
        return width * height;
    }

    public static void addBonus(int points) {
        points = points + 5;    // changes the copy only
    }

    public static int withBonus(int points) {
        return points + 5;
    }
}
