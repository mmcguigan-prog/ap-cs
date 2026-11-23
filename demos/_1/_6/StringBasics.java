package demos._1._6;

import java.awt.Point;

// Unit 1, Lesson 6 - Demo A: String Methods (Topic 1.15)
// Keep the String section of the Java Quick Reference open while you read this.

public class StringBasics {

    public static void main(String[] args) {

        // ================= INDEXES =================
        //   C  O  M  P  U  T  E  R
        //   0  1  2  3  4  5  6  7      length() is 8, last index is 7
        String word = "COMPUTER";
        System.out.println(word.length());          // 8
        System.out.println();

        // ================= substring =================
        // substring(from, to): starts AT from, stops BEFORE to
        System.out.println(word.substring(0, 3));   // COM
        System.out.println(word.substring(3, 6));   // PUT
        // substring(from): from there to the end
        System.out.println(word.substring(3));      // PUTER
        // One "character" at index i: substring(i, i + 1)
        System.out.println(word.substring(7, 8));   // R
        // word.substring(9) -> StringIndexOutOfBoundsException
        System.out.println();

        // ================= indexOf =================
        System.out.println(word.indexOf("PUT"));    // 3   where it starts
        System.out.println(word.indexOf("put"));    // -1  not found (it's case-sensitive)
        System.out.println();

        // ================= IMMUTABLE =================
        // String methods never change the String. They return a NEW String.
        word.substring(0, 3);                       // the result is thrown away
        System.out.println(word);                   // still COMPUTER
        word = word.substring(0, 3);                // to keep it, store it
        System.out.println(word);                   // COM
        System.out.println();

        // ================= equals vs. == =================
        String a = "hello";
        String b = new String("hello");
        System.out.println(a == b);                 // false: two different objects
        System.out.println(a.equals(b));            // true: same characters
        // Always compare Strings with equals.
        System.out.println();

        // ================= compareTo =================
        // Negative: comes before. Zero: equal. Positive: comes after.
        System.out.println("apple".compareTo("banana"));   // negative
        System.out.println("cat".compareTo("cat"));        // 0
        System.out.println("dog".compareTo("cat"));        // positive
        System.out.println("Zebra".compareTo("apple"));    // negative! Every capital letter comes before every lowercase one
        System.out.println();

        // ================= CONCATENATION =================
        String s = "Level ";
        s += 3;                                     // primitive values turn into text
        System.out.println(s);                      // Level 3
        Point p = new Point(1, 2);
        System.out.println("Point: " + p);          // objects use their toString method
    }
}
