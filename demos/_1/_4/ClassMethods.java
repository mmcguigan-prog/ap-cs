package demos._1._4;

// Unit 1, Lesson 4 - Demo B (part 2): Calling Class Methods (Topics 1.8, 1.10)
// Geometry.java is in the same folder, so we can use its static methods here.

public class ClassMethods {

    public static void main(String[] args) {

        // ================= CALLING ANOTHER CLASS'S STATIC METHODS =================
        // ClassName.methodName(arguments), exactly like Math.sqrt(...)
        System.out.println(Geometry.hypotenuse(3, 4));        // 5.0   ints widen to doubles
        System.out.println(Geometry.average(90, 85, 77));     // 84.0
        System.out.println(Geometry.triangleArea(10, 3));     // 15.0
        System.out.println();

        // ================= INSIDE THE SAME CLASS =================
        // When the method is in THIS class, the class name is optional.
        System.out.println(doubled(21));
        System.out.println(ClassMethods.doubled(21));   // same thing
        System.out.println();

        // ================= BREAKING A PRECONDITION =================
        // triangleArea expects nonnegative numbers. Nothing stops us from breaking that.
        System.out.println(Geometry.triangleArea(-10, 3));    // -15.0, which isn't a real area
        // The method didn't crash. It just gave a meaningless answer.
        // That's why preconditions are written down: it's the CALLER's job to follow them.
    }

    public static int doubled(int n) {
        return n * 2;
    }
}
