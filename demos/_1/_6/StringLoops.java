package demos._1._6;

// Unit 1, Lesson 6 - Demo B: Looping Through a String (Topic 1.15)
// These patterns show up on the AP exam's first free-response question.

public class StringLoops {

    public static void main(String[] args) {
        String phrase = "banana split";

        // ================= ONE LETTER AT A TIME =================
        // Indexes go from 0 to length() - 1, so the loop stops BEFORE length()
        for (int i = 0; i < phrase.length(); i++) {
            String letter = phrase.substring(i, i + 1);
            System.out.print(letter + "|");
        }
        System.out.println();

        // ================= COUNTING =================
        int count = 0;
        for (int i = 0; i < phrase.length(); i++) {
            if (phrase.substring(i, i + 1).equals("a")) {
                count++;
            }
        }
        System.out.println("a appears " + count + " times");   // 3

        // Is this letter a vowel? Check whether it shows up in a String of vowels.
        int vowels = 0;
        for (int i = 0; i < phrase.length(); i++) {
            if ("aeiou".indexOf(phrase.substring(i, i + 1)) != -1) {
                vowels++;
            }
        }
        System.out.println("vowels: " + vowels);   // 4

        // ================= BUILDING A NEW STRING =================
        // Strings can't change, so build a new one piece by piece
        String reversed = "";
        for (int i = phrase.length() - 1; i >= 0; i--) {
            reversed += phrase.substring(i, i + 1);
        }
        System.out.println(reversed);   // tilps ananab

        // ================= FINDING AND SPLITTING =================
        int space = phrase.indexOf(" ");
        String first = phrase.substring(0, space);
        String second = phrase.substring(space + 1);
        System.out.println(second + " " + first);   // split banana

        // ================= FINDING EVERY MATCH =================
        // Look for "an" starting at each index
        String target = "an";
        for (int i = 0; i <= phrase.length() - target.length(); i++) {
            if (phrase.substring(i, i + target.length()).equals(target)) {
                System.out.println("found \"an\" at index " + i);
            }
        }
    }
}
