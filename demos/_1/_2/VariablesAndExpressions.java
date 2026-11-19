package demos._1._2;

// Unit 1, Lesson 2 - Demo B: Variables, Expressions, and Output (Topics 1.2, 1.3)

public class VariablesAndExpressions {

    public static void main(String[] args) {

        // ================= DATA TYPES (1.2) =================
        // PRIMITIVE types hold a simple value. The AP exam uses three:
        int students = 24;         // whole numbers
        double price = 3.75;       // decimals  (Processing used float; in AP Java we use double)
        boolean isOpen = true;     // true or false

        // REFERENCE types hold an object. String is our first one.
        String school = "Nobles";

        System.out.println(students + " " + price + " " + isOpen + " " + school);
        System.out.println();

        // ================= print vs println (1.3) =================
        System.out.print("print stays ");
        System.out.print("on the line. ");
        System.out.println("println ends the line.");
        System.out.println("Next line.");
        System.out.println();

        // ================= ESCAPE SEQUENCES (1.3) =================
        // How do you print a " inside a String? Start with a backslash.
        System.out.println("She said \"hello\"");   // \"  double quote
        System.out.println("C:\\Users\\student");   // \\  backslash
        System.out.println("Line one\nLine two");   // \n  new line
        System.out.println();

        // ================= ARITHMETIC (1.3) =================
        // int with int gives an int. If either side is a double, you get a double.
        System.out.println("7 / 2   = " + (7 / 2));     // 3    the decimal part is thrown away
        System.out.println("7.0 / 2 = " + (7.0 / 2));   // 3.5
        System.out.println("7 % 2   = " + (7 % 2));     // 1    the remainder
        System.out.println("12 % 4  = " + (12 % 4));    // 0    divides evenly
        System.out.println("3 % 10  = " + (3 % 10));    // 3    10 goes into 3 zero times, 3 left over
        System.out.println();

        // ================= ORDER OF OPERATIONS (1.3) =================
        // * / % before + -. Same level goes left to right.
        System.out.println(2 + 3 * 4);     // 14
        System.out.println((2 + 3) * 4);   // 20
        System.out.println(20 / 4 * 2);    // 10, not 2.5 (left to right)
        System.out.println();

        // ================= STRINGS AND + =================
        // Once Java sees a String, + means "glue", working left to right.
        System.out.println("Sum: " + 2 + 3);     // Sum: 23
        System.out.println("Sum: " + (2 + 3));   // Sum: 5
        System.out.println(2 + 3 + " is the sum"); // 5 is the sum
    }
}
