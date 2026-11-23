# Input and the Math Class

**Unit 1, Lesson 3** | Topics 1.4, 1.7, 1.11 | Demos: `UserInput`, `MathAndAPIs`

**References:** Java Quick Reference (Math class, Scanner class)

**Rule for today:** Predict on paper first, then run the code to check. If you were wrong, write down *why*.

---

## Warm-Up: Read the API (1.7)

An **API** tells you how to use classes someone else wrote. Use the **Math** section of the Java Quick Reference to fill in this table.

| Method | Return type | Parameter types | What it does |
|---|---|---|---|
| `abs` (first one) | | | |
| `abs` (second one) | | | |
| `pow` | | | |
| `sqrt` | | | |
| `random` | | | |

1. Why are there two `abs` methods? How does Java know which one you mean?
2. What **type** does `Math.pow(2, 3)` give back, even though 2 and 3 are ints?
3. Every Math method starts with the word `static`. What does that mean about how you call it?
4. `Math` is in the `java.lang` package and `Scanner` is in `java.util`. Which one needs an `import` line, and why?
5. Find the **String** section of the Quick Reference. Name one **behavior** of a String object (something it can do) and the method that does it.

## Level 1: Predict and Confirm (1.11)

| # | Code | Your prediction | Actual |
|---|---|---|---|
| 1 | `System.out.println(Math.abs(-12));` | | |
| 2 | `System.out.println(Math.abs(3 - 10.5));` | | |
| 3 | `System.out.println(Math.pow(2, 5));` | | |
| 4 | `System.out.println(Math.pow(4, 0.5));` | | |
| 5 | `System.out.println(Math.sqrt(81));` | | |
| 6 | `System.out.println((int) Math.sqrt(50));` | | |
| 7 | `System.out.println(Math.pow(10, -2));` | | |
| 8 | `System.out.println(Math.sqrt(Math.pow(6, 2) + Math.pow(8, 2)));` | | |
| 9 | `System.out.println(Math.abs(Integer.MIN_VALUE));` | | |

Number 9 is a trick. Once you see the answer, use what you learned about overflow last class to explain it.

**Which of these compile?** For each one that doesn't, explain why.
```java
double a = Math.sqrt(25);
int b = Math.sqrt(25);
int c = (int) Math.sqrt(25);
Math.pow(2, 8);
double d = Math.pow(2);
```

## Level 2: Random Ranges (1.11)

**Part A:** For each expression, write every value it could produce (for example, "0, 1, 2, ..., 9" or "0.0 up to but not including 10.0").

| # | Expression | Possible values |
|---|---|---|
| 1 | `Math.random() * 10` | |
| 2 | `(int) (Math.random() * 10)` | |
| 3 | `(int) (Math.random() * 10) + 1` | |
| 4 | `(int) (Math.random() * 5) + 20` | |
| 5 | `(int) (Math.random() * 11) - 5` | |
| 6 | `(int) Math.random() * 10` | |

**Part B:** Write an expression for each:
1. A die roll: 1 to 6
2. A percentage: 0 to 100, both included
3. An int from 50 to 75, both included
4. A random **even** number from 2 to 20
5. A double from 1.0 up to (not including) 3.0
6. A random `true` or `false` (a coin flip)

**Test your range:** Pick your answer to #3. Use a loop to generate 100,000 values, and keep track of the smallest and largest. If they aren't exactly 50 and 75, your formula is off.

## Level 3: Scanner (1.4)

1. Write `Greeting.java`. Ask for the user's name (use `nextLine`) and age (use `nextInt`), then print `Hi Alex. In 10 years you'll be 26.`
2. **Find the bug.** Run this and enter your age. What happens when it asks for your name?
   ```java
   Scanner input = new Scanner(System.in);
   System.out.print("Enter your age: ");
   int age = input.nextInt();
   System.out.print("Enter your name: ");
   String name = input.nextLine();
   System.out.println("Hello " + name + ", age " + age);
   ```
   - Explain what went wrong. (Hint: what's left over after you type `16` and press Enter?)
   - Fix it two different ways.
3. Run your `Greeting` program and type `sixteen` for your age. What happens? Find the name of the error in the Scanner section of the Quick Reference.

## Level 4: Write It

1. **Distance.** Read two points (`x1 y1 x2 y2`, as doubles, on one line) and print the distance between them: the square root of (x2 - x1)² + (y2 - y1)². Test: `1 2 4 6` should give `5.0`.
2. **Compound interest.** Read a starting amount, a yearly interest rate as a percent, and a number of years. Money that is compounded monthly grows to:
   ```
   amount = principal * (1 + rate / 12) ^ (12 * years)
   ```
   where `rate` is a decimal (5% is 0.05). Print the result rounded to the nearest cent. Test: `1000 5 10` should give `$1647.01`.
3. **Dice.** Roll two dice 5 times. Print each roll and the total, like `3 + 5 = 8`.
4. **Guessing game.** Pick a random number from 1 to 100. Let the user guess until they get it, printing `Higher` or `Lower` after each wrong guess. At the end, print how many guesses it took.
   - A smart player should never need more than 7 guesses. Why 7? (Hint: each guess cuts the possibilities in half.)
