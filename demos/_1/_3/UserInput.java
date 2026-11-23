package demos._1._3;

import java.util.Scanner;   // Scanner lives in the java.util package, so we have to import it

// Unit 1, Lesson 3 - Demo A: Reading Input with Scanner (Topic 1.4)
// Run this, then click in the TERMINAL and type your answers.

public class UserInput {

    public static void main(String[] args) {
        // Scanner is a class. "new" creates a Scanner object that reads from the keyboard (System.in).
        Scanner input = new Scanner(System.in);

        // ================= nextLine: a whole line of text =================
        System.out.print("What's your name? ");
        String name = input.nextLine();

        // ================= nextInt / nextDouble: numbers =================
        System.out.print("How old are you? ");
        int age = input.nextInt();
        System.out.print("How tall are you in feet (like 5.5)? ");
        double height = input.nextDouble();

        System.out.println("Hi " + name + "! In 10 years you'll be " + (age + 10) + ".");
        System.out.println("That's " + height * 12 + " inches tall.");

        // ================= THE nextLine TRAP =================
        // nextInt and nextDouble read the number but leave the Enter key behind.
        // The next nextLine() reads that leftover Enter and returns "" right away.
        input.nextLine();   // throw away the leftover Enter
        System.out.print("What's your favorite food? ");
        String food = input.nextLine();
        System.out.println(food + " sounds good.");

        // ================= next: one word at a time =================
        System.out.print("Type two words: ");
        String first = input.next();
        String second = input.next();
        System.out.println("First: " + first + ", second: " + second);

        // ================= WRONG TYPE =================
        // If you type "sixteen" when the program calls nextInt(), you get an InputMismatchException.

        input.close();
    }
}
