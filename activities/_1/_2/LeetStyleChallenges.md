# LeetCode-Style Challenges

**Unit 1, Lesson 2** | Uses: `/`, `%`, casting, `Integer.MAX_VALUE` and `Integer.MIN_VALUE`, compound operators

These problems are written like the ones on LeetCode. Each one gives you a **method signature** and asks you to write the body, which is also how the AP exam's free-response questions work.

How to read each problem:
- **Examples** show an input and the exact output your method should return.
- **Constraints** tell you what inputs you'll get. You don't need to handle anything outside them, but you do need to handle everything inside them.
- **Follow-up** is an optional harder version.

There's no auto-grader. Put your methods in one class and call every example from `main`:

```java
System.out.println(reverse(123));   // should print 321
```

---

## 1. Reverse the Digits

**Difficulty: Medium**

Given an `int x`, return `x` with its digits reversed. If the reversed number would be outside the range of an `int`, return `0`.

**You may not use `long`, `double`, or `String`** anywhere in your method.

```java
public static int reverse(int x)
```

**Example 1:**
```
Input:  x = 123
Output: 321
```

**Example 2:**
```
Input:  x = -120
Output: -21
Explanation: Reversed, -120 would be -021. The leading zero disappears.
```

**Example 3:**
```
Input:  x = 1534236469
Output: 0
Explanation: The reversed number, 9646324351, is bigger than Integer.MAX_VALUE (2147483647).
```

**Example 4:**
```
Input:  x = 1463847412
Output: 2147483641
Explanation: Just barely fits: 2147483641 is less than Integer.MAX_VALUE.
```

**Example 5:**
```
Input:  x = -2147483648
Output: 0
```

**Constraints:**
- `Integer.MIN_VALUE <= x <= Integer.MAX_VALUE`

**Hints:**
- `x % 10` gives you the last digit. `x / 10` removes it.
- In Java, `%` with a negative number gives a negative remainder: `-123 % 10` is `-3`. That actually helps you here.
- You can't compute the reversed number and then check whether it's too big, because by then it has already overflowed. You have to check **before** the step that would overflow. What do you know about a number that's bigger than `Integer.MAX_VALUE / 10`?

**Follow-up:** Write `public static int digitSum(int x)` that returns the sum of the digits of `x` (for example, `digitSum(4096)` is `19`). Then write `digitalRoot`, which keeps summing the digits until there's only one digit left.

---

## 2. Palindrome Number

**Difficulty: Easy**

A **palindrome** reads the same forward and backward. Return `true` if the digits of `x` form a palindrome, and `false` otherwise.

**You may not use `String`.** Work with the digits using `/` and `%`.

```java
public static boolean isPalindrome(int x)
```

**Example 1:**
```
Input:  x = 121
Output: true
```

**Example 2:**
```
Input:  x = -121
Output: false
Explanation: Reading it backward gives 121-, which isn't the same.
```

**Example 3:**
```
Input:  x = 10
Output: false
Explanation: Reading it backward gives 01.
```

**Example 4:**
```
Input:  x = 0
Output: true
```

**Example 5:**
```
Input:  x = 2147447412
Output: true
```

**Constraints:**
- `Integer.MIN_VALUE <= x <= Integer.MAX_VALUE`

**Follow-up:** If you reverse all of `x` and compare, some inputs make the reversed number overflow. Example 5 is close to that limit. Can you solve it by reversing only **half** of the digits? How do you know when you've reached the middle?

---

## 3. Clock Angle

**Difficulty: Medium**

Given a time on an analog clock, return the **smaller** angle, in degrees, between the hour hand and the minute hand.

The hour hand doesn't jump from number to number. It moves a little every minute, so at 3:30 it's halfway between the 3 and the 4.

```java
public static double clockAngle(int hour, int minutes)
```

**Example 1:**
```
Input:  hour = 3, minutes = 30
Output: 75.0
```

**Example 2:**
```
Input:  hour = 12, minutes = 30
Output: 165.0
```

**Example 3:**
```
Input:  hour = 3, minutes = 15
Output: 7.5
Explanation: The minute hand is on the 3. The hour hand has moved a quarter of the way from the 3 to the 4.
```

**Example 4:**
```
Input:  hour = 4, minutes = 50
Output: 155.0
```

**Example 5:**
```
Input:  hour = 12, minutes = 0
Output: 0.0
```

**Constraints:**
- `1 <= hour <= 12`
- `0 <= minutes <= 59`
- Answers within `0.00001` of the expected output count as correct.

**Hints:**
- A full circle is 360 degrees. How many degrees does the minute hand move each minute? How many degrees is one hour on the clock face?
- If your answer for 3:15 is `0.0`, look for **integer division**: something like `minutes / 60` is always `0`.
- The angle between two hands can be measured two ways around the clock. You want the smaller one.

**Follow-up:** Write `public static int[] handsOverlap()` that checks every whole minute in a 12-hour period and finds the times when the angle between the hands is 3 degrees or less. Return the times as minutes after 12:00 (so 1:05 is `65`). Hint: you don't know how big the array should be until you've counted.
