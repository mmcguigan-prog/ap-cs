package demos._1._2;

// Unit 1, Lesson 2 - Demo C: Casting, Range, and Compound Operators (Topics 1.5, 1.6)

public class CastingAndCompound {

    public static void main(String[] args) {

        // ================= CASTING (1.5) =================
        // (int) and (double) convert a value to another type.
        System.out.println((int) 3.99);          // 3     cuts off the decimal (truncates), doesn't round
        System.out.println((double) 7);          // 7.0

        // WHERE the cast goes matters
        System.out.println((double) 7 / 2);      // 3.5   cast 7 first, then divide
        System.out.println((double) (7 / 2));    // 3.0   divide first (gives 3), then cast

        // Java widens int to double automatically when it's safe
        double d = 5;
        System.out.println(d);                   // 5.0
        System.out.println();

        // ================= ROUNDING (1.5) =================
        double x = 4.6;
        System.out.println((int) (x + 0.5));     // 5   round a positive number
        double y = -4.6;
        System.out.println((int) (y - 0.5));     // -5  round a negative number
        System.out.println();

        // ================= RANGE AND OVERFLOW (1.5) =================
        // An int is stored in 4 bytes, so it has a smallest and largest value.
        System.out.println(Integer.MAX_VALUE);       //  2147483647
        System.out.println(Integer.MIN_VALUE);       // -2147483648
        System.out.println(Integer.MAX_VALUE + 1);   // overflow! wraps around to MIN_VALUE
        System.out.println();

        // ================= ROUND-OFF ERROR (1.5) =================
        // A double can't store every decimal exactly.
        System.out.println(0.1 + 0.2);           // 0.30000000000000004
        System.out.println();

        // ================= COMPOUND ASSIGNMENT (1.6) =================
        // Do the math with the variable's current value, then store the result back in it.
        int score = 10;
        score += 5;     // score = score + 5    15
        score -= 3;     // score = score - 3    12
        score *= 2;     // score = score * 2    24
        score /= 5;     // score = score / 5    4  (int division!)
        score %= 3;     // score = score % 3    1
        score++;        // score = score + 1    2
        score--;        // score = score - 1    1
        System.out.println("score = " + score);
    }
}
