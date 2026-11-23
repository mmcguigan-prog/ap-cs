# LeetCode-Style Challenges

**Unit 1, Lesson 3** | Uses: `Math.sqrt`, `Math.pow`, `Math.abs`, `Math.random`, casting, loops

These problems are written like the ones on LeetCode. Each one gives you a **method signature** and asks you to write the body, which is also how the AP exam's free-response questions work.

How to read each problem:
- **Examples** show an input and the exact output your method should return.
- **Constraints** tell you what inputs you'll get. You don't need to handle anything outside them, but you do need to handle everything inside them.
- **Follow-up** is an optional harder version.

There's no auto-grader. Put your methods in one class and call every example from `main`:

```java
System.out.println(isPerfectSquare(16));   // should print true
```

---

## 1. Perfect Square

**Difficulty: Easy**

Return `true` if `num` is a **perfect square** (the square of a whole number), and `false` otherwise.

```java
public static boolean isPerfectSquare(int num)
```

**Example 1:**
```
Input:  num = 16
Output: true
Explanation: 4 * 4 = 16
```

**Example 2:**
```
Input:  num = 14
Output: false
```

**Example 3:**
```
Input:  num = 1
Output: true
```

**Example 4:**
```
Input:  num = 2147395600
Output: true
Explanation: 46340 * 46340 = 2147395600
```

**Example 5:**
```
Input:  num = 2147483647
Output: false
```

**Constraints:**
- `1 <= num <= Integer.MAX_VALUE`

**Hint:** `Math.sqrt` returns a double, and doubles can have round-off error. Instead of checking whether the square root "looks like" a whole number, cast it to an int and check your answer with ints.

**Follow-up:** Solve it **without** `Math.sqrt`. Guessing every number from 1 upward is too slow for Example 4. Instead, keep a low and high guess and check the middle, cutting the range in half each time (like the guessing game). Watch out: `mid * mid` can overflow an int. How can you compare `mid * mid` with `num` without multiplying?

---

## 2. Power

**Difficulty: Medium**

Write your own version of `Math.pow` for whole-number exponents. Return `x` raised to the power `n`. **Don't use `Math.pow`.**

```java
public static double myPow(double x, int n)
```

**Example 1:**
```
Input:  x = 2.0, n = 10
Output: 1024.0
```

**Example 2:**
```
Input:  x = 2.1, n = 3
Output: 9.261000000000001
Explanation: The true answer is 9.261. The extra digits are round-off error, and Math.pow gives the same thing.
```

**Example 3:**
```
Input:  x = 2.0, n = -2
Output: 0.25
Explanation: 2 to the -2 is 1 / (2 * 2).
```

**Example 4:**
```
Input:  x = 0.5, n = 0
Output: 1.0
```

**Example 5:**
```
Input:  x = -3.0, n = 3
Output: -27.0
```

**Constraints:**
- `-100.0 < x < 100.0`, and `x` is not `0.0` when `n` is negative
- `-1000 <= n <= 1000`
- Answers within `0.00001` of `Math.pow(x, n)` count as correct.

**Follow-up:** Make it work for `n` up to `Integer.MAX_VALUE` in less than a second. Multiplying `x` two billion times is too slow. Use this idea: `x` to the 10th is (`x` squared) to the 5th. How many steps does that take? Then try `n = Integer.MIN_VALUE`. What goes wrong when you take `Math.abs` of it?

---

## 3. Rand10 from Rand7

**Difficulty: Medium**

You're given a method `rand7()` that returns a random int from 1 to 7, each equally likely. Copy it into your class:

```java
public static int rand7() {
    return (int) (Math.random() * 7) + 1;
}
```

Write `rand10()`, which returns a random int from 1 to 10, **each equally likely**. The only source of randomness you may use is `rand7()`. **Don't call `Math.random()` in `rand10`.**

```java
public static int rand10()
```

**Example:**
```
Call rand10() 100,000 times and count how often each value comes up.
Output: Each of 1 through 10 should appear about 10,000 times (within a few hundred).
```

**Constraints:**
- Every value from 1 to 10 must be equally likely.
- Your method may call `rand7()` as many times as it needs.

**Test it:** Make an `int[] counts = new int[11];`, call `rand10()` 100,000 times, and do `counts[rand10()]++` each time. Print the counts for 1 through 10.

**Hints:**
- Try `(rand7() + rand7()) % 10 + 1` first and test it. Are all ten values equally likely? (They aren't. Why does adding two dice make some totals more common than others?)
- Rolling `rand7()` twice gives 7 × 7 = 49 equally likely **pairs**. Can you turn each pair into a number from 1 to 49? What could you do with the pairs that don't split evenly into 10 groups?

**Follow-up:** On average, how many times does your `rand10()` call `rand7()`? Can you use the leftover results instead of throwing them away?
