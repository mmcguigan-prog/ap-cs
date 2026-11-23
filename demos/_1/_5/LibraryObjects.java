package demos._1._5;

import java.awt.Point;   // a class from Java's library: a point with int x and y

// Unit 1, Lesson 5 - Demo B: Objects from Java's Library (Topics 1.7, 1.13, 1.14)
// You've been using objects all along: every String and every Scanner is an object.

public class LibraryObjects {

    public static void main(String[] args) {

        // ================= Point: read the API, then use it =================
        // Constructors:  Point()               -> (0, 0)
        //                Point(int x, int y)
        // Methods:       double getX(), double getY()
        //                void translate(int dx, int dy)    moves the point
        //                double distance(Point other)      distance to another point
        Point origin = new Point();
        Point p = new Point(3, 4);
        System.out.println(origin.distance(p));   // 5.0
        p.translate(1, -1);
        System.out.println(p.getX() + ", " + p.getY());   // 4.0, 3.0 (getX returns a double)
        System.out.println();

        // Point writes its own toString, so printing it is readable (unlike BankAccount)
        System.out.println(p);
        System.out.println();

        // ================= Strings are objects too =================
        String a = "hello";                 // a string literal makes a String object
        String b = new String("hello");     // so does the constructor
        System.out.println(a.length());     // calling an instance method on a String
        System.out.println(a == b);         // false: two different objects
        System.out.println(a.equals(b));    // true: same characters (more on this in String Manipulation)
        System.out.println();

        // ================= Scanner is an object =================
        // Scanner input = new Scanner(System.in);
        //   Scanner            -> the class
        //   input              -> a variable that holds a reference to the object
        //   new Scanner(...)   -> calls the Scanner(InputStream) constructor
        //   input.nextInt()    -> an instance method call
    }
}
