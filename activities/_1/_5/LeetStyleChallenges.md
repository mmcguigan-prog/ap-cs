# LeetCode-Style Challenges

**Unit 1, Lesson 5** | Uses: creating objects, calling instance methods, arrays of objects, reading an API

These problems are written like the ones on LeetCode. Each one gives you a **method signature** and asks you to write the body, which is also how the AP exam's free-response questions work. Today, every problem hands you objects, and you have to use **their** methods to solve it.

How to read each problem:
- **Examples** show an input and the exact output your method should return.
- **Constraints** tell you what inputs you'll get. You don't need to handle anything outside them, but you do need to handle everything inside them.
- **Follow-up** is an optional harder version.

There's no auto-grader. Put your methods in one class and call every example from `main`:

```java
Point[] points = {new Point(1, 3), new Point(-2, 2)};
System.out.println(closestToOrigin(points));   // should print java.awt.Point[x=-2,y=2]
```

---

## 1. Closest Point

**Difficulty: Easy**

Given an array of `Point` objects, return the one that is **closest to the origin** (0, 0). If there's a tie, return the one that comes **first** in the array. Return the actual object from the array, not a new `Point`.

Use `import java.awt.Point;`. These are the `Point` methods you'll need:

| Constructor / Method | What it does |
|---|---|
| `Point()` | makes the point (0, 0) |
| `Point(int x, int y)` | makes the point (x, y) |
| `double distance(Point other)` | distance from this point to `other` |

```java
public static Point closestToOrigin(Point[] points)
```

**Example 1:**
```
Input:  points = [(1, 3), (-2, 2)]
Output: java.awt.Point[x=-2,y=2]
Explanation: (1, 3) is about 3.16 away. (-2, 2) is about 2.83 away.
```

**Example 2:**
```
Input:  points = [(3, 3), (5, -1), (-2, 4)]
Output: java.awt.Point[x=3,y=3]
```

**Example 3:**
```
Input:  points = [(2, 2), (-2, -2)]
Output: java.awt.Point[x=2,y=2]
Explanation: It's a tie, so return the first one.
```

**Example 4:**
```
Input:  points = [(7, -1)]
Output: java.awt.Point[x=7,y=-1]
```

**Constraints:**
- `1 <= points.length <= 1000`
- Each coordinate is from `-1000` to `1000`.

**Check yourself:** In Example 3, is `closestToOrigin(points) == points[0]` true or false? It should be `true`. If it's false, you made a new object instead of returning the one in the array.

**Follow-up:** Write `closestPair(Point[] points)`, which returns the **distance** between the two points in the array that are closest to each other. You'll need a nested loop. How many pairs do you have to check?

---

## 2. Area Covered by Two Rectangles

**Difficulty: Medium**

Given two `Rectangle` objects, return the **total area** they cover together. If they overlap, the overlapping part only counts once.

Use `import java.awt.Rectangle;`. A `Rectangle` is described by its top-left corner (x, y), its width, and its height. These are the methods you're allowed to use:

| Constructor / Method | What it does |
|---|---|
| `Rectangle(int x, int y, int width, int height)` | makes the rectangle |
| `double getX()`, `double getY()` | the top-left corner |
| `double getWidth()`, `double getHeight()` | the size |

**Don't use** `Rectangle`'s `intersection` or `intersects` methods. Figure out the overlap yourself.

```java
public static int totalArea(Rectangle a, Rectangle b)
```

**Example 1:**
```
Input:  a = Rectangle(0, 0, 4, 3), b = Rectangle(2, 1, 4, 4)
Output: 24
Explanation: a covers 12, b covers 16, and they overlap in a 2 by 2 square. 12 + 16 - 4 = 24.
```

**Example 2:**
```
Input:  a = Rectangle(0, 0, 2, 2), b = Rectangle(3, 3, 1, 1)
Output: 5
Explanation: No overlap.
```

**Example 3:**
```
Input:  a = Rectangle(0, 0, 4, 4), b = Rectangle(1, 1, 2, 2)
Output: 16
Explanation: b is completely inside a.
```

**Example 4:**
```
Input:  a = Rectangle(0, 0, 2, 2), b = Rectangle(2, 0, 2, 2)
Output: 8
Explanation: They touch along an edge, but an edge has no area.
```

**Example 5:**
```
Input:  a = Rectangle(-3, -3, 6, 6), b = Rectangle(-3, -3, 6, 6)
Output: 36
```

**Constraints:**
- All corners and sizes are whole numbers from `-10000` to `10000`.
- Widths and heights are at least 1.

**Hints:**
- The getter methods return `double`, but this method returns an `int`. Where do you need to cast?
- Find the overlap one direction at a time. The overlap's left edge is the **larger** of the two left edges. Its right edge is the **smaller** of the two right edges. If the left edge isn't less than the right edge, there's no overlap in that direction.

**Follow-up:** Write `totalArea(Rectangle a, Rectangle b, Rectangle c)`, an overload for three rectangles. (Careful: a spot where all three overlap gets subtracted too many times.)

---

## 3. Robot Stays Nearby

**Difficulty: Medium**

A robot starts at (0, 0) facing north. It follows a list of commands, then **repeats the same list forever**. Return `true` if the robot always stays within some distance of where it started, and `false` if it eventually wanders away forever.

The commands are ints: `0` means move forward one step, `1` means turn left, and `2` means turn right. Make a file `Robot.java` and paste in this class. You may only use its public methods:

```java
public class Robot {

    private int x;
    private int y;
    private int direction;   // 0 = north, 1 = east, 2 = south, 3 = west

    public Robot() {
        x = 0;
        y = 0;
        direction = 0;
    }

    public void forward() {
        if (direction == 0) {
            y++;
        } else if (direction == 1) {
            x++;
        } else if (direction == 2) {
            y--;
        } else {
            x--;
        }
    }

    public void turnLeft() {
        direction = (direction + 3) % 4;
    }

    public void turnRight() {
        direction = (direction + 1) % 4;
    }

    public int getX() {
        return x;
    }

    public int getY() {
        return y;
    }

    public boolean facingNorth() {
        return direction == 0;
    }
}
```

```java
public static boolean staysNearby(int[] commands)
```

**Example 1:**
```
Input:  commands = [0, 0, 1, 1, 0, 0]
Output: true
Explanation: Forward 2, turn around, back 2. It's home after every pass.
```

**Example 2:**
```
Input:  commands = [0, 0]
Output: false
Explanation: It walks north forever.
```

**Example 3:**
```
Input:  commands = [0, 1]
Output: true
Explanation: Forward, turn left, repeated: it walks in a small square forever.
```

**Example 4:**
```
Input:  commands = [0, 2, 0, 1]
Output: false
Explanation: After one pass it's at (1, 1) facing north again, so it drifts northeast forever.
```

**Example 5:**
```
Input:  commands = [1, 1]
Output: true
Explanation: It just spins in place.
```

**Constraints:**
- `1 <= commands.length <= 100`
- Every command is `0`, `1`, or `2`.

**Hints:**
- You can't actually run the commands forever. Try running them **4 times** and see where the robot ends up. Why 4? (Think about what happens to the direction it's facing.)
- Make a `new Robot()` inside your method, so each call starts fresh.

**Follow-up:** Solve it with only **one** pass through the commands. You'll need `facingNorth()`. What does it tell you if the robot isn't facing north after one pass?
