package demos._1._3;

// Unit 1, Lesson 3 - Demo B: APIs and the Math Class (Topics 1.7, 1.11)
//
// A LIBRARY is a collection of classes someone else already wrote.
// An API is the documentation that tells you how to use them: the method names,
// what they return, and what parameters they need.
// Classes are grouped into PACKAGES. Math and String are in java.lang, which every
// program gets automatically. Scanner is in java.util, so it needs an import.

public class MathAndAPIs {

    public static void main(String[] args) {

        // ================= READING A METHOD SIGNATURE =================
        // From the Java Quick Reference:
        //     static double pow(double base, double exponent)
        // static     -> call it on the class: Math.pow(...)
        // double     -> it gives back a double
        // (double base, double exponent) -> it needs two numbers

        // ================= abs, pow, sqrt =================
        System.out.println(Math.abs(-7));       // 7      int version
        System.out.println(Math.abs(-2.5));     // 2.5    double version (abs is overloaded)
        System.out.println(Math.pow(2, 10));    // 1024.0 pow always returns a double
        System.out.println(Math.sqrt(49));      // 7.0
        System.out.println(Math.sqrt(2));       // 1.4142135623730951
        System.out.println();

        // A method that returns a value is only useful if you USE the value:
        Math.sqrt(16);                                         // legal, but the answer is thrown away
        double hyp = Math.sqrt(Math.pow(3, 2) + Math.pow(4, 2));  // store it
        System.out.println("Hypotenuse: " + hyp);                  // or use it in an expression
        // int root = Math.sqrt(16);   // won't compile: sqrt returns a double
        int root = (int) Math.sqrt(16);
        System.out.println("Root as an int: " + root);
        System.out.println();

        // ================= random =================
        // Math.random() returns a double from 0.0 up to (but NOT including) 1.0
        System.out.println(Math.random());

        // Build a random int in three steps:
        //   Math.random() * 6             0.0 up to 6.0 (not including 6.0)
        //   (int) (Math.random() * 6)     0, 1, 2, 3, 4, or 5
        //   (int) (Math.random() * 6) + 1 1 through 6
        for (int i = 0; i < 5; i++) {
            int die = (int) (Math.random() * 6) + 1;
            System.out.print(die + " ");
        }
        System.out.println();

        // General recipe for a random int from min to max, both included:
        //   (int) (Math.random() * (max - min + 1)) + min
        int min = 10;
        int max = 20;
        int roll = (int) (Math.random() * (max - min + 1)) + min;
        System.out.println("Random from 10 to 20: " + roll);

        // Common bug: the cast happens BEFORE the multiply, so this is always 0
        int alwaysZero = (int) Math.random() * 6;
        System.out.println("Buggy roll: " + alwaysZero);
    }
}
