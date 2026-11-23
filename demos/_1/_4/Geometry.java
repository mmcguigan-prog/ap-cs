package demos._1._4;

/**
 * Unit 1, Lesson 4 - Demo B (part 1): a class of static helper methods (Topics 1.8, 1.10).
 * Like Math, you never create a Geometry object. You call its methods on the class:
 * Geometry.hypotenuse(3, 4)
 *
 * Comments that start with slash-star-star are Javadoc comments. Tools turn them into API
 * documentation, like the pages that describe Math and String.
 */
public class Geometry {

    /**
     * Returns the length of the long side of a right triangle.
     *
     * Precondition: a > 0 and b > 0
     * Postcondition: returns the square root of (a * a + b * b)
     *
     * @param a one short side
     * @param b the other short side
     * @return the hypotenuse
     */
    public static double hypotenuse(double a, double b) {
        return Math.sqrt(a * a + b * b);
    }

    /**
     * Returns the average of three test scores.
     *
     * Precondition: each score is from 0 to 100
     * Postcondition: returns a value from 0.0 to 100.0
     */
    public static double average(int s1, int s2, int s3) {
        return (s1 + s2 + s3) / 3.0;
    }

    /**
     * Returns the area of a triangle with the given base and height.
     *
     * Precondition: base >= 0 and height >= 0
     * The method does NOT check this. If the caller breaks the precondition,
     * the result isn't guaranteed to make sense.
     */
    public static double triangleArea(double base, double height) {
        return base * height / 2;
    }
}
