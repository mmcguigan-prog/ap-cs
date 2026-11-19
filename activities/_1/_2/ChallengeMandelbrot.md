# Challenge: ASCII Mandelbrot

**Unit 1, Lesson 2 Challenge** | Uses: `double` math, integer division, compound operators, nested loops, static methods

## Overview

The Mandelbrot set is one of the most famous pictures in math. It comes from a formula you could type on a calculator, but no matter how far you zoom in, its edge keeps showing new detail.

You'll draw it in the terminal using only `double` arithmetic, loops, and `System.out.print`. Getting it right depends on what you practiced today: knowing when Java uses integer division and when it uses `double` division.

---

## Background: Does the Point Escape?

Every character you print stands for one point `(cx, cy)` on a graph. To decide what to print for that point:

1. Start with `x = 0` and `y = 0`.
2. Repeat this step:
   ```
   newX = x * x - y * y + cx
   newY = 2 * x * y + cy
   ```
   Then set `x` to `newX` and `y` to `newY`.
3. Keep going **while** `x * x + y * y <= 4` and you haven't hit the maximum number of steps.
4. The **escape count** is how many steps you took.

If the point reaches the maximum number of steps without escaping, it's **in** the Mandelbrot set. If it escapes quickly, it's far from the set.

**Trace it by hand first.** For the point `(1, 0)`: `x` goes 0 → 1 → 2 → 5. After 3 steps, `5 * 5 = 25 > 4`, so the escape count is **3**.

---

## Requirements

Write these three methods. For now, every method needs `static`.

### 1. `public static int escapeCount(double cx, double cy, int maxIter)`

Returns the escape count for the point `(cx, cy)`, following the steps above. Returns `maxIter` if the point never escapes.

### 2. `public static String shade(int count, int maxIter)`

Turns an escape count into a character, from "escaped fast" (blank) to "in the set" (`@`):

```java
String[] shades = {" ", ".", ":", "-", "=", "+", "*", "#", "%", "@"};
```

- If `count == maxIter`, return `"@"`.
- Otherwise, pick index `count * 9 / maxIter` from the array. This uses integer division **on purpose**.

### 3. `public static void drawMandelbrot(double xMin, double xMax, double yMin, double yMax, int width, int height, int maxIter)`

Prints a `width` by `height` picture of the area from `xMin` to `xMax` and `yMin` to `yMax`.

- Column `0` is `xMin` and the last column is `xMax`, with the columns evenly spaced in between.
- Row `0` is the **top** of the picture, so it's `yMax`. The last row is `yMin`.
- Use `print` for each character and `println()` at the end of each row.

Working out the formulas that turn a `row` and `col` into `cx` and `cy` is part of the challenge.

---

## Sample 1: Escape Counts

With `maxIter = 50`:

| Point `(cx, cy)` | `escapeCount` |
|---|---|
| `(0.0, 0.0)` | 50 |
| `(1.0, 0.0)` | 3 |
| `(2.0, 0.0)` | 2 |
| `(-1.0, 0.0)` | 50 |
| `(0.0, 1.0)` | 50 |
| `(0.5, 0.0)` | 5 |
| `(-0.75, 0.1)` | 33 |
| `(0.3, 0.5)` | 50 |

## Sample 2: Shades

With `maxIter = 50`:

| `count` | `shade` |
|---|---|
| 0 | `" "` |
| 5 | `" "` |
| 12 | `":"` |
| 30 | `"+"` |
| 49 | `"%"` |
| 50 | `"@"` |

## Sample 3: The Full Picture

`drawMandelbrot(-2.0, 1.0, -1.2, 1.2, 60, 25, 50);` should print this (spaces at the ends of lines don't matter):

```

                                   ..
                                   ..:::
                                  ..-+-..
                              .....@@@@#..
                           ..-.....*@@@-........
                         ...:@++@@@@@@@@@@@-.=:-.
                       ....:-@@@@@@@@@@@@@@@@@:..
             .............:#@@@@@@@@@@@@@@@@@@@..
             ...%:.:@-...:@@@@@@@@@@@@@@@@@@@@@:..
            ..::-@@@@@@@:@@@@@@@@@@@@@@@@@@@@@@#.
      ......:::*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@..
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@:...
      ......:::*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@..
            ..::-@@@@@@@:@@@@@@@@@@@@@@@@@@@@@@#.
             ...%:.:@-...:@@@@@@@@@@@@@@@@@@@@@:..
             .............:#@@@@@@@@@@@@@@@@@@@..
                       ....:-@@@@@@@@@@@@@@@@@:..
                         ...:@++@@@@@@@@@@@-.=:-.
                           ..-.....*@@@-........
                              .....@@@@#..
                                  ..-+-..
                                   ..:::
                                   ..
```

---

## Suggested Development Order

1. Trace `(1, 0)` and `(2, 0)` by hand until you get 3 and 2.
2. Write `escapeCount` and check every row of Sample 1. If some counts are off, look at your update step: does `newY` use the **old** `x` or the one you just changed?
3. Write `shade` and check Sample 2.
4. Write `drawMandelbrot` and compare with Sample 3.
   - If every column looks the same, or the picture is just a stripe, look for **integer division** in your `cx` formula.
   - If the picture looks right but the details are in different places, check that row `0` is `yMax`, not `yMin`.

---

## Extensions

- **Zoom in:** Find a spot on the edge of the set and call `drawMandelbrot` with a much smaller range. Raise `maxIter` (try 200 or 500) as you zoom in, or the detail turns into solid `@`.
- **Bigger picture:** Try 120 by 50, then 240 by 100 with `maxIter = 1000`. Count the total number of update steps your program does. How fast does the number grow as the picture gets bigger?
- **Area of the set:** Each character covers a small rectangle of the graph. Count the `@` characters and use them to estimate the area of the Mandelbrot set. Mathematicians think it's about 1.506. How close can you get?
- **Julia sets:** Change one thing. Start `x` and `y` at the point `(cx, cy)` itself, and use the same fixed constant for every point (try `-0.8` and `0.156`) in the update step instead of `cx` and `cy`. You get a whole new family of pictures.
- **Color:** Printing `"\033[31m"` turns terminal text red, and `"\033[0m"` sets it back. Look up other ANSI color codes and color each shade differently.
