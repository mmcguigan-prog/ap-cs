# LeetCode-Style Challenges

**Unit 1, Lesson 4** | Uses: helper methods, overloading, `static` methods calling each other, `/` and `%`

These problems are written like the ones on LeetCode. Each one gives you **method signatures** and asks you to write the bodies, which is also how the AP exam's free-response questions work. Today's problems each have **two methods**, and one should call the other. Splitting a problem into a helper method is a big part of the AP free-response questions.

How to read each problem:
- **Examples** show an input and the exact output your method should return.
- **Constraints** tell you what inputs you'll get. You don't need to handle anything outside them, but you do need to handle everything inside them.
- **Follow-up** is an optional harder version.

There's no auto-grader. Put your methods in one class and call every example from `main`:

```java
System.out.println(isSelfDividing(128));   // should print true
```

---

## 1. Self-Dividing Numbers

**Difficulty: Easy**

A **self-dividing number** is divisible by every one of its own digits. For example, 128 is self-dividing because `128 % 1`, `128 % 2`, and `128 % 8` are all `0`. A number that contains the digit `0` is **not** self-dividing.

Write both methods. `countSelfDividing` should call `isSelfDividing`.

```java
public static boolean isSelfDividing(int n)
public static int countSelfDividing(int left, int right)
```

**Example 1:**
```
Input:  n = 128
Output: true
```

**Example 2:**
```
Input:  n = 26
Output: false
Explanation: 26 % 6 is 2, not 0.
```

**Example 3:**
```
Input:  n = 10
Output: false
Explanation: It contains a 0.
```

**Example 4:**
```
Input:  left = 1, right = 22
Output: 13
Explanation: 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, and 22.
```

**Example 5:**
```
Input:  left = 47, right = 85
Output: 4
Explanation: 48, 55, 66, and 77.
```

**Constraints:**
- `1 <= n <= 10000`
- `1 <= left <= right <= 10000`

**Hint:** Careful: if you use `n /= 10` to peel off digits, you've lost the original `n` that you need to divide by. Make a copy first.

**Follow-up:** How many self-dividing numbers are there from 1 to 10000? (Your method should answer this instantly.)

---

## 2. Ugly Numbers

**Difficulty: Easy (part 1), Medium (part 2)**

An **ugly number** is a positive number whose only prime factors are 2, 3, and 5. So 6 (2 × 3) is ugly, but 14 (2 × 7) isn't. By definition, 1 is ugly.

The ugly numbers in order are 1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 15, ... Write both methods. `nthUgly` should call `isUgly`.

```java
public static boolean isUgly(int n)
public static int nthUgly(int n)
```

**Example 1:**
```
Input:  isUgly(6)
Output: true
```

**Example 2:**
```
Input:  isUgly(14)
Output: false
Explanation: 14 has the prime factor 7.
```

**Example 3:**
```
Input:  isUgly(0)
Output: false
Explanation: Ugly numbers must be positive. (Careful: 0 % 2 is 0. What happens to a loop that keeps dividing 0 by 2?)
```

**Example 4:**
```
Input:  nthUgly(10)
Output: 12
Explanation: 1, 2, 3, 4, 5, 6, 8, 9, 10, 12. The 10th one is 12.
```

**Example 5:**
```
Input:  nthUgly(150)
Output: 5832
```

**Constraints:**
- For `isUgly`: `Integer.MIN_VALUE <= n <= Integer.MAX_VALUE`
- For `nthUgly`: `1 <= n <= 150`

**Hint:** Keep dividing `n` by 2 while you can, then by 3, then by 5. What's left over if the number is ugly?

**Follow-up:** Your `nthUgly` checks every number one by one. The 1000th ugly number is 51,200,000, so that approach gets slow. Can you **build** the ugly numbers in order instead of searching for them? (Every ugly number after 1 is 2, 3, or 5 times a smaller ugly number. You'll want an array.)

---

## 3. Change of Base

**Difficulty: Medium**

We write numbers in base 10, but computers use base 2 (binary), and other bases are useful too. In base 7, the digits go 0 through 6, and each place is worth 7 times the one to its right. For example, 100 in base 7 is `202`, because 2 × 49 + 0 × 7 + 2 × 1 = 100.

Write **two overloaded methods**:

```java
public static String convert(int num)            // converts to base 7
public static String convert(int num, int base)  // converts to any base from 2 to 10
```

The one-parameter version should be **one line long**. (How can one overload use the other?)

**Example 1:**
```
Input:  convert(100)
Output: "202"
```

**Example 2:**
```
Input:  convert(-7)
Output: "-10"
```

**Example 3:**
```
Input:  convert(0)
Output: "0"
```

**Example 4:**
```
Input:  convert(10, 2)
Output: "1010"
```

**Example 5:**
```
Input:  convert(255, 8)
Output: "377"
```

**Example 6:**
```
Input:  convert(-255, 2)
Output: "-11111111"
```

**Constraints:**
- `Integer.MIN_VALUE < num <= Integer.MAX_VALUE`
- `2 <= base <= 10`

**Hints:**
- `num % base` gives the last digit in the new base, and `num / base` removes it. You get the digits **backward**, so build the String by putting each new digit in **front**: `digits = digit + digits;`
- What does `%` do with a negative number? Try `-7 % 7` and `-8 % 7`.

**Follow-up:** Support bases up to 16, where the digits 10 through 15 are written `A` through `F`. `convert(255, 16)` should give `"FF"`, and `convert(-48879, 16)` should give `"-BEEF"`. Write a helper method that turns one digit into its symbol.
