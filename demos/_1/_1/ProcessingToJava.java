package demos._1._1;

// Unit 1, Lesson 1 - Demo B: Processing to Java
// Almost everything you wrote in Processing still works in Java.
// The difference: no canvas. Instead of drawing shapes, we print to the terminal.
// Things that DON'T exist in plain Java: size(), ellipse(), mouseX, width, random(), draw()...

public class ProcessingToJava {

    public static void main(String[] args) {

        // ================= VARIABLES =================
        // Same as Processing
        int score = 87;
        String name = "Alex";
        boolean passing = score >= 65;

        System.out.println(name + " scored " + score);
        System.out.println("Passing? " + passing);
        System.out.println();

        // ================= CONDITIONALS =================
        // Same as Processing
        if (score >= 90) {
            System.out.println("Grade: A");
        } else if (score >= 80) {
            System.out.println("Grade: B");
        } else {
            System.out.println("Grade: C or below");
        }
        System.out.println();

        // ================= LOOPS =================
        // In Processing, draw() looped for you. In Java, you write the loop yourself.
        for (int i = 1; i <= 5; i++) {
            System.out.println("Count: " + i);
        }

        int countdown = 3;
        while (countdown > 0) {
            System.out.println(countdown + "...");
            countdown--;
        }
        System.out.println("Liftoff!");
        System.out.println();

        // ================= NESTED LOOPS =================
        // In Processing you drew a grid of squares.
        // In the terminal we "draw" with characters: print for each column, println to end the row.
        for (int row = 0; row < 3; row++) {
            for (int col = 0; col < 5; col++) {
                System.out.print("[] ");
            }
            System.out.println();
        }
        System.out.println();

        // ================= METHODS =================
        greet("Sam");
        greet("Jordan");
        System.out.println("Double 21 is " + doubleIt(21));
    }

    // For now, put the word static in front of your methods so main can call them.
    // We will learn exactly what static means in a few lessons.
    public static void greet(String person) {
        System.out.println("Hi, " + person + "!");
    }

    public static int doubleIt(int n) {
        return n * 2;
    }
}
