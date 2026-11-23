# String Manipulation

**Unit 1, Lesson 6** | Topic 1.15 | Demos: `StringBasics`, `StringLoops`

**References:** Java Quick Reference (String class)

**Rule for today:** Predict on paper first, then run the code to check. If you were wrong, write down *why*.

---

## Warm-Up: The String API

Use the String section of the Java Quick Reference.

1. Write the signature of both `substring` methods. How are they different?
2. What does `indexOf` return when it can't find what you're looking for?
3. What does `compareTo` return? (There are three cases.)
4. Write the index of every letter in `"SANDWICH"` under it. What is the **last** index? What is `length()`?
5. Strings are **immutable**. What does that mean? If `substring` can't change the String, what does it do?

## Level 1: Predict and Confirm

`String s = "SANDWICH";`

| # | Code | Your prediction | Actual |
|---|---|---|---|
| 1 | `s.length()` | | |
| 2 | `s.substring(3)` | | |
| 3 | `s.substring(2, 5)` | | |
| 4 | `s.indexOf("WICH")` | | |
| 5 | `s.indexOf("wich")` | | |
| 6 | `s.substring(7, 8)` | | |
| 7 | `s.substring(8)` | | |
| 8 | `s.substring(4, 4)` | | |
| 9 | `s.substring(1, s.length() - 1)` | | |
| 10 | `s.indexOf("S")` | | |

**Positive, negative, or zero?** (The AP exam only asks about the sign, not the exact number.)

| # | Code | Sign |
|---|---|---|
| 1 | `"apple".compareTo("banana")` | |
| 2 | `"banana".compareTo("apple")` | |
| 3 | `"car".compareTo("cart")` | |
| 4 | `"Zebra".compareTo("apple")` | |
| 5 | `"10".compareTo("9")` | |

Numbers 4 and 5 surprise most people. Explain why each one comes out the way it does.

**Immutability:** predict both lines.
```java
String name = "ada";
name.substring(1);
System.out.println(name);
String full = name + " lovelace";
name += "!";
System.out.println(full + " / " + name);
```

## Level 2: What Goes Wrong?

Each of these compiles but crashes. Name the exception and explain why.

```java
String s = "SANDWICH";
System.out.println(s.substring(9));      // (1)
System.out.println(s.substring(5, 3));   // (2)

String t = null;
System.out.println(t.length());          // (3)
```

`s.substring(8)` works but `s.substring(9)` doesn't. Why is 8 allowed?

## Level 3: equals vs. ==

```java
String a = "hello";
String b = new String("hello");
String c = a;
```

Predict each: `a == b`, `a.equals(b)`, `a == c`, `b.equals(c)`.

Why should you always use `equals` to compare Strings?

## Level 4: Write It

Write each as a `static` method and test it from `main`. Use only the methods on the Quick Reference (`length`, `substring`, `indexOf`, `equals`, `compareTo`) plus loops and `+`.

| Method | Example call | Expected |
|---|---|---|
| `String initials(String fullName)` | `initials("Ada Lovelace")` | `"AL"` |
| `String reverse(String str)` | `reverse("stressed")` | `"desserts"` |
| `int countOccurrences(String str, String target)` | `countOccurrences("mississippi", "ss")` | `2` |
| | `countOccurrences("aaaa", "aa")` | `3` (overlapping matches count) |
| `String replaceSpaces(String str)` | `replaceSpaces("AP CS A rocks")` | `"AP_CS_A_rocks"` |
| `String username(String email)` | `username("ada.lovelace@school.org")` | `"ada.lovelace"` |
| `boolean isPalindrome(String str)` | `isPalindrome("racecar")` | `true` |

`isPalindrome` can be one line if you use another method you already wrote.

**Challenge: Pig Latin.** Write `String pigLatin(String word)` for lowercase words:
- If the word starts with a vowel, add `"way"`: `apple` → `appleway`
- Otherwise, move everything before the first vowel to the end and add `"ay"`: `hello` → `ellohay`, `string` → `ingstray`
- If there are no vowels, just add `"ay"`: `rhythm` → `rhythmay`

## Level 5: Strings and Scanner

Read a sentence with `nextLine()` and print each word on its own line. Use `indexOf(" ")` and `substring`. **Don't use `split`.**

```
Sentence: the quick  brown fox
the
quick
brown
fox
```

Make sure two spaces in a row (between `quick` and `brown`) don't print a blank line.
