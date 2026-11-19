package demos._1._2;

// Unit 1, Lesson 2 - Demo A: Errors and Compiling (Topic 1.1)
// When you press Run, the COMPILER checks your code first. Only then does the program run.
//
// Three kinds of errors:
//   SYNTAX error   - breaks Java's rules. The compiler catches it, so the program won't run at all.
//   LOGIC error    - the program runs, but gives the wrong answer. Only TESTING catches it.
//   RUN-TIME error - the program crashes while running. An EXCEPTION is one kind of run-time error.

public class ErrorsAndCompiling {

    public static void main(String[] args) {
        System.out.println("Program starting...");

        // ================= SYNTAX ERRORS =================
        // Uncomment ONE line at a time. Notice the program won't run at all.
        // System.out.println("missing semicolon")
        // System.out.printn("misspelled method");
        // int age = "sixteen";

        // ================= LOGIC ERRORS =================
        // The average of 80 and 90 should be 85. Run it. What do we get?
        int average = 80 + 90 / 2;
        System.out.println("Average: " + average);
        // The compiler is happy. The answer is wrong. How do we fix it?

        // ================= RUN-TIME ERRORS =================
        // Uncomment the line below. The program starts, then crashes partway through.
        int students = 0;
        // System.out.println("Cookies each: " + 24 / students);
        // ArithmeticException: / by zero  <- an int divided by the int 0

        System.out.println("Program finished.");
    }
}
