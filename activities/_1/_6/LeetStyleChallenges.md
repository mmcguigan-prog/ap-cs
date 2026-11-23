# LeetCode-Style Challenges

**Unit 1, Lesson 6** | Uses: `length`, `substring`, `indexOf`, `equals`, loops over a String, building a new String

These problems are written like the ones on LeetCode. Each one gives you a **method signature** and asks you to write the body, which is also how the AP exam's free-response questions work. The first AP free-response question almost always involves String methods like these.

How to read each problem:
- **Examples** show an input and the exact output your method should return.
- **Constraints** tell you what inputs you'll get. You don't need to handle anything outside them, but you do need to handle everything inside them.
- **Follow-up** is an optional harder version.

There's no auto-grader. Put your methods in one class and call every example from `main`. When a method returns a String, print it inside quotes so you can see extra spaces:

```java
System.out.println("\"" + reverseWords("  hello world  ") + "\"");   // should print "world hello"
```

---

## 1. First Occurrence

**Difficulty: Easy**

Return the index of the first place `needle` appears in `haystack`, or `-1` if it doesn't appear at all.

**Don't use `indexOf`.** You're writing your own version of it.

```java
public static int firstOccurrence(String haystack, String needle)
```

**Example 1:**
```
Input:  haystack = "sadbutsad", needle = "sad"
Output: 0
Explanation: "sad" appears at index 0 and index 6. Return the first one.
```

**Example 2:**
```
Input:  haystack = "leetcode", needle = "leeto"
Output: -1
```

**Example 3:**
```
Input:  haystack = "hello", needle = "ll"
Output: 2
```

**Example 4:**
```
Input:  haystack = "aaa", needle = "aaaa"
Output: -1
Explanation: The needle is longer than the haystack.
```

**Example 5:**
```
Input:  haystack = "mississippi", needle = "issip"
Output: 4
```

**Constraints:**
- `1 <= haystack.length() <= 10000`
- `1 <= needle.length() <= 10000`
- Both contain only lowercase letters.

**Hint:** What's the **last** index where `needle` could possibly start? If your loop goes too far, `substring` will crash (try Example 4).

**Follow-up:** Write `lastOccurrence`, which returns the index of the **last** place `needle` appears.

---

## 2. Longest Common Prefix

**Difficulty: Easy**

Return the longest String that **every** word in the array starts with. If they have nothing in common, return the empty String `""`.

```java
public static String longestCommonPrefix(String[] words)
```

**Example 1:**
```
Input:  words = ["flower", "flow", "flight"]
Output: "fl"
```

**Example 2:**
```
Input:  words = ["dog", "racecar", "car"]
Output: ""
```

**Example 3:**
```
Input:  words = ["interview"]
Output: "interview"
```

**Example 4:**
```
Input:  words = ["ab", "a"]
Output: "a"
```

**Example 5:**
```
Input:  words = ["", "b"]
Output: ""
```

**Constraints:**
- `1 <= words.length <= 200`
- `0 <= words[i].length() <= 200`
- Words contain only lowercase letters.

**Hint:** Start by guessing that the whole first word is the prefix. For each other word, keep chopping a letter off the end of your guess until that word starts with it. Watch out for words that are **shorter** than your guess (Example 4).

**Follow-up:** Write `longestCommonSuffix`, for the longest ending all the words share. `["walking", "talking", "king"]` should give `"king"`.

---

## 3. Reverse the Words

**Difficulty: Medium**

Return the words of `s` in reverse order, separated by **exactly one space**. `s` might have extra spaces at the start, at the end, or between words. None of those belong in the answer.

**Don't use `split`.** Find the words yourself with `indexOf` and `substring`.

```java
public static String reverseWords(String s)
```

**Example 1:**
```
Input:  s = "the sky is blue"
Output: "blue is sky the"
```

**Example 2:**
```
Input:  s = "  hello world  "
Output: "world hello"
Explanation: The spaces at the start and end are gone.
```

**Example 3:**
```
Input:  s = "a good   example"
Output: "example good a"
Explanation: Three spaces in a row become one.
```

**Example 4:**
```
Input:  s = "one"
Output: "one"
```

**Constraints:**
- `1 <= s.length() <= 10000`
- `s` contains only lowercase letters and spaces.
- There is at least one word.

**Hints:**
- If you take the first word off the front of `s` each time, where should it go in your answer?
- When two spaces are next to each other, what does `substring` give you between them? Make sure you skip it.

**Follow-up:** Write `reverseEachWord`, which keeps the words in order but reverses the letters in each: `"the sky is blue"` → `"eht yks si eulb"`.

---

## 4. Count and Say

**Difficulty: Medium**

This is a famous sequence where each term **describes** the one before it, out loud:

- Term 1 is `"1"`.
- Term 2 describes term 1, which is "one 1": `"11"`
- Term 3 describes term 2, which is "two 1s": `"21"`
- Term 4 describes term 3, which is "one 2, one 1": `"1211"`
- Term 5 describes term 4, which is "one 1, one 2, two 1s": `"111221"`

Return term `n`. Write a helper method `describe` that turns one term into the next. `countAndSay` should call it.

```java
public static String countAndSay(int n)
public static String describe(String term)
```

**Example 1:**
```
Input:  countAndSay(1)
Output: "1"
```

**Example 2:**
```
Input:  countAndSay(4)
Output: "1211"
```

**Example 3:**
```
Input:  countAndSay(6)
Output: "312211"
```

**Example 4:**
```
Input:  describe("111221")
Output: "312211"
Explanation: three 1s, two 2s, one 1.
```

**Example 5:**
```
Input:  countAndSay(10)
Output: "13211311123113112211"
```

**Constraints:**
- `1 <= n <= 30`

**Hint:** In `describe`, look at a digit, then count how many times in a row it repeats. Add the count and the digit to your answer, and jump ahead to the first different digit.

**Follow-up:** `countAndSay(30)` has 4462 characters. Print the length of each term from 1 to 30. Each term is about 30% longer than the one before it. Divide each length by the one before it to check.
