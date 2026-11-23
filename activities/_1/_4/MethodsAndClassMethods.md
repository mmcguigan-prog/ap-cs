# Method Signatures and Class Methods

**Unit 1, Lesson 4** | Topics 1.8, 1.9, 1.10 | Demos: `MethodSignatures`, `Geometry`, `ClassMethods`

**Rule for today:** Predict on paper first, then run the code to check. If you were wrong, write down *why*.

---

## Warm-Up: Parts of a Method (1.9)

```java
public static double average(int a, int b, double weight)
```

1. What is the **return type**? The **name**? The **parameter list**?
2. Write the method's **signature**. (Remember: the signature is the name plus the parameter types, in order.)
3. Is `weight` a **parameter** or an **argument**? In the call `average(80, 90, 0.5)`, what is `80`?

**Which of these compile?** For each one that doesn't, explain why.

| # | Code | Compiles? | Why or why not |
|---|---|---|---|
| 1 | `double r = average(1, 2, 0.5);` | | |
| 2 | `double r = average(1, 2, 3);` | | |
| 3 | `double r = average(1.0, 2, 0.5);` | | |
| 4 | `double r = average(1, 2);` | | |
| 5 | `int r = average(4, 5, 1.0);` | | |
| 6 | `String s = "Avg: " + average(4, 5, 1.0);` | | |

## Level 1: Flow of Control (1.9)

Write down exactly what this prints, one line at a time.

```java
public static void main(String[] args) {
    System.out.println("A");
    first();
    System.out.println("D");
    second(3);
    System.out.println("G");
}

public static void first() {
    System.out.println("B");
    second(1);
    System.out.println("C");
}

public static void second(int n) {
    System.out.println("E" + n);
    System.out.println("F" + n);
}
```

## Level 2: Call by Value (1.9)

Predict the output.

```java
public static void main(String[] args) {
    int x = 5;
    change(x);
    System.out.println("main: " + x);
    x = changeAndReturn(x);
    System.out.println("main: " + x);
}

public static void change(int x) {
    x = x * 2;
    System.out.println("change: " + x);
}

public static int changeAndReturn(int x) {
    x = x * 2;
    return x + 1;
}
```

- There are two different variables named `x` in `main` and `change`. How does that explain the second line of output?

## Level 3: Overloading (1.9)

A class has these four methods:

```java
public static void show(int a)                { System.out.println("int"); }
public static void show(double a)             { System.out.println("double"); }
public static void show(int a, double b)      { System.out.println("int, double"); }
public static void show(double a, int b)      { System.out.println("double, int"); }
```

What does each call print?

| # | Call | Prints |
|---|---|---|
| 1 | `show(5);` | |
| 2 | `show(5.0);` | |
| 3 | `show(2, 3.0);` | |
| 4 | `show(2.0, 3);` | |
| 5 | `show(7 / 2);` | |
| 6 | `show(7 / 2.0);` | |
| 7 | `show(2, 3);` | |

Number 7 is a trick. Try it. Read the error message and explain what Java is complaining about.

## Level 4: Write a Class of Static Methods (1.8, 1.10)

Make a new file called `Conversions.java` with a class `Conversions`. It should hold only `static` methods, like `Math`. Write a **Javadoc comment** (`/** ... */`) above each method with a **precondition** and **postcondition**.

1. `public static double toCelsius(double f)`: converts Fahrenheit to Celsius.
2. `public static String toClock(int totalSeconds)`: returns the time as `h:mm:ss`. Minutes and seconds always use two digits.
   - Precondition: `0 <= totalSeconds < 86400`
3. `public static double round(double x, int places)`: rounds `x` to that many decimal places.
   - Precondition: `x >= 0` and `places >= 0`
4. `public static int round(double x)`: an **overload** that rounds to the nearest whole number.

Then, in a **different** class with a `main` method, test every method by calling it with the class name, like `Conversions.toClock(3725)`.

| Call | Expected |
|---|---|
| `Conversions.toCelsius(212)` | `100.0` |
| `Conversions.toCelsius(98.6)` | `37.0` |
| `Conversions.toClock(3725)` | `1:02:05` |
| `Conversions.toClock(59)` | `0:00:59` |
| `Conversions.toClock(86399)` | `23:59:59` |
| `Conversions.round(3.14159, 2)` | `3.14` |
| `Conversions.round(2.71828, 3)` | `2.718` |
| `Conversions.round(7.5)` | `8` |

**Break the precondition:** Call `Conversions.toClock(-5)`. What prints? Whose fault is the weird answer: the method's or the caller's?

## Level 5: Build a Toolbox for the Console Game (1.10)

In a few classes you'll write a console game with a partner. Start a toolbox now. Make a class `Rand` with these static methods (with Javadoc comments):

```java
public static int randomInt(int min, int max)          // min to max, both included
public static double randomDouble(double min, double max)  // min up to (not including) max
public static boolean coinFlip()                      // true about half the time
public static boolean chance(double chance)           // true with that probability, like chance(0.25)
```

- Test `randomInt(-3, 3)` with 100,000 calls. The smallest and largest results should be exactly `-3` and `3`.
- Rewrite last class's dice program so it uses `Rand.randomInt(1, 6)`. Why is that easier to read than the formula?
