package demos._1._1;

// Unit 1, Lesson 1 - Demo A: Your First Java Program
// In Processing you pressed Play and a window opened.
// In Java you press Run and text shows up in the TERMINAL at the bottom of VSCode.

// Every Java file holds a class. The class name MUST match the file name:
// FirstProgram.java  ->  public class FirstProgram
public class FirstProgram {

    // main is where every Java program starts.
    // It is like setup() in Processing: it runs once, top to bottom, then the program ends.
    // There is no draw(). Nothing repeats unless YOU write a loop.
    public static void main(String[] args) {

        // ================= PRINTING =================
        // Processing:  println("Hello");
        // Java:        System.out.println("Hello");
        System.out.println("Hello, Java!");
        System.out.println("Each println ends with a new line.");

        // print does NOT move to a new line afterwards
        System.out.print("These words ");
        System.out.print("are all on ");
        System.out.println("the same line.");

        // An empty println just prints a blank line
        System.out.println();

        // + glues text together, same as Processing
        System.out.println("My favorite number is " + 7);
        System.out.println("2 + 3 = " + (2 + 3));

        // ================= SEMICOLONS AND BRACES =================
        // Same rules as Processing: every statement ends with ;
        // and every { needs a matching }
        // Try deleting a semicolon above and watch for the red squiggle.
    }
}
