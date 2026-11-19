# Variables and Expressions

**Unit 1, Lesson 2** | Topics 1.1–1.3, 1.5–1.6 | Demos: `ErrorsAndCompiling`, `VariablesAndExpressions`, `CastingAndCompound`

**References:** Java Quick Reference (`Integer.MAX_VALUE`, `Integer.MIN_VALUE`)

**Rule for today:** Predict on paper first, then run the code to check. If you were wrong, write down *why*.

---


## Level 1: Predict and Confirm (1.3)

Write down what each line prints. Then put them all in a file called `Predictions.java` and run it.

| # | Code | Your prediction | Actual |
|---|---|---|---|
| 1 | `System.out.println(17 / 5);` | | |
| 2 | `System.out.println(17 % 5);` | | |
| 3 | `System.out.println(17.0 / 5);` | | |
| 4 | `System.out.println(1 / 2);` | | |
| 5 | `System.out.println(3 % 7);` | | |
| 6 | `System.out.println(2 + 3 * 4);` | | |
| 7 | `System.out.println(10 - 4 - 3);` | | |
| 8 | `System.out.println(7 / 2 * 2.0);` | | |
| 9 | `System.out.println(7 / 2.0 * 2);` | | |
| 10 | `System.out.println("Total: " + 4 + 5);` | | |
| 11 | `System.out.println(4 + 5 + " total");` | | |

**Output puzzle:** Write down *exactly* what this prints, line by line.

```java
System.out.print("She said \"hi\"\n");
System.out.println("C:\\Users\\me");
System.out.print("A");
System.out.print("B");
System.out.println("C\nD");
```

## Level 2: Casting (1.5)

Same rule: predict, then run.

| # | Code | Your prediction | Actual |
|---|---|---|---|
| 1 | `System.out.println((int) 9.99);` | | |
| 2 | `System.out.println((double) 9 / 2);` | | |
| 3 | `System.out.println((double) (9 / 2));` | | |
| 4 | `System.out.println((int) 2.5 + 1.7);` | | |
| 5 | `System.out.println((int) (2.5 + 1.7));` | | |
| 6 | `System.out.println((int) (4.6 + 0.5));` | | |
| 7 | `System.out.println(Integer.MAX_VALUE + 1);` | | |
| 8 | `System.out.println(0.1 + 0.2);` | | |

- Which line shows **overflow**? Which shows **round-off error**?
- Write a line of code that rounds `double grade = 89.5;` to the nearest whole number.

## Level 3: Trace the Compound Operators (1.6)

Fill in the value of `x` after each line. Then check by printing.

| Code | `x` |
|---|---|
| `int x = 10;` | 10 |
| `x += 5;` | |
| `x *= 2;` | |
| `x -= 4;` | |
| `x /= 4;` | |
| `x %= 4;` | |
| `x++;` | |
| `x *= x;` | |


## Level 4: Fix the Bugs (1.1)

Copy this into `BuggyGrades.java`. There are **at least 5 bugs**. For each one, write down whether it's a **syntax**, **logic**, or **run-time** error, then fix it.

```java
public class BuggyGrades {
    public static void main(String[] args) {
        int test1 = 85;
        int test2 = 90
        int test3 = 78;

        int average = test1 + test2 + test3 / 3;
        System.out.println("Average: " + average);

        double percent = test1 / 100;
        System.out.println("Test 1 as a decimal: " + percent);

        int groups = 0;
        System.out.println("Points per group: " + 253 / groups);

        String message = "Great job!;
        System.out.println(message);
    }
}
```

- The average should be `84.33333333333333`, and the decimal should be `0.85`
- After fixing the run-time error, `groups` should be `4`

## Level 5: Write It

1. **Time converter.** Given `int totalSeconds = 9876;` print `2 hours, 44 minutes, 36 seconds`. Use `/` and `%`, not typed-in numbers. Test it with other values.
2. **Make change.** Given `int cents = 87;` print how many quarters, dimes, nickels, and pennies to give back.
3. **Temperature.** Given `double fahrenheit = 72.5;` calculate Celsius with `(F - 32) * 5 / 9`, then print it rounded to the nearest whole degree.
   - What happens if you write it as `5 / 9 * (fahrenheit - 32)` instead? Why?
4. **Overflow.** Using only `int` values, calculate how many seconds are in 100 years (use 365 days per year). Print the result. Is it right? Explain what happened, then fix it.

**Challenge: Receipt.** Make variables for three item prices (doubles). Print a receipt with each item, the subtotal, a 6.25% tax, and the total. Prices should show at most 2 decimal places. (Hint: multiply by 100, round, then divide by `100.0`.) Put the store name in quotes using `\"`.
