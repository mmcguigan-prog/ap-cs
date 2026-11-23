# LeetCode-Style Challenges

**Unit 1, Lesson 1** | Uses: loops, conditionals, 1D and 2D arrays, static methods

These problems are written like the ones on LeetCode. Each one gives you a **method signature** and asks you to write the body, which is also how the AP exam's free-response questions work.

How to read each problem:
- **Examples** show an input and the exact output your method should return.
- **Constraints** tell you what inputs you'll get. You don't need to handle anything outside them, but you do need to handle everything inside them.
- **Follow-up** is an optional harder version.

---

## Testing Your Code

There's no auto-grader. Put your methods in one class and call each example from `main`. You can't print an array directly (try it and see what happens), so copy these two helper methods into your class:

```java
public static void printArray(int[] arr) {
    System.out.print("[");
    for (int i = 0; i < arr.length; i++) {
        System.out.print(arr[i]);
        if (i < arr.length - 1) {
            System.out.print(",");
        }
    }
    System.out.println("]");
}

public static void printGrid(int[][] grid) {
    System.out.print("[");
    for (int r = 0; r < grid.length; r++) {
        printArrayNoNewline(grid[r]);
        if (r < grid.length - 1) {
            System.out.print(",");
        }
    }
    System.out.println("]");
}

public static void printArrayNoNewline(int[] arr) {
    System.out.print("[");
    for (int i = 0; i < arr.length; i++) {
        System.out.print(arr[i]);
        if (i < arr.length - 1) {
            System.out.print(",");
        }
    }
    System.out.print("]");
}
```

Example test in `main`:
```java
int[][] grid = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
printArray(spiralOrder(grid));   // should print [1,2,3,6,9,8,7,4,5]
```

---

## 1. Spiral Order

**Difficulty: Medium**

Given a 2D array `grid`, return all of its values in **spiral order**: start at the top-left corner, go right across the top row, down the right column, left across the bottom row, up the left column, and keep spiraling inward until every value has been visited.

```java
public static int[] spiralOrder(int[][] grid)
```

**Example 1:**
```
Input:  grid = [[1,2,3],
                [4,5,6],
                [7,8,9]]
Output: [1,2,3,6,9,8,7,4,5]
```

**Example 2:**
```
Input:  grid = [[1,2,3,4],
                [5,6,7,8],
                [9,10,11,12]]
Output: [1,2,3,4,8,12,11,10,9,5,6,7]
```

**Example 3:**
```
Input:  grid = [[1],
                [2],
                [3]]
Output: [1,2,3]
Explanation: With one column, the spiral just goes straight down.
```

**Constraints:**
- `1 <= grid.length <= 10`
- `1 <= grid[0].length <= 10`
- Every row has the same length, but the grid does **not** have to be square.

**Follow-up:** Write `public static int[][] spiralFill(int n)`, which does the opposite: build an `n` by `n` grid filled with `1` to `n * n` in spiral order.

---

## 2. Rotate the Grid

**Difficulty: Medium**

Given a square 2D array `grid`, rotate it **90 degrees clockwise**. You must rotate it **in place**: change `grid` itself, and don't create a second 2D array.

```java
public static void rotate(int[][] grid)
```

The method is `void`. How can the caller see the result if nothing is returned?

**Example 1:**
```
Input:  grid = [[1,2,3],
                [4,5,6],
                [7,8,9]]
After rotate(grid), grid is:
        [[7,4,1],
         [8,5,2],
         [9,6,3]]
```

**Example 2:**
```
Input:  grid = [[1,2,3,4],
                [5,6,7,8],
                [9,10,11,12],
                [13,14,15,16]]
After rotate(grid), grid is:
        [[13,9,5,1],
         [14,10,6,2],
         [15,11,7,3],
         [16,12,8,4]]
```

**Example 3:**
```
Input:  grid = [[42]]
After rotate(grid), grid is:
        [[42]]
```

**Constraints:**
- `1 <= grid.length <= 20`
- `grid.length == grid[0].length` (the grid is always square)

**Hint:** In a 90 degree rotation, four values trade places at a time: one from the top, one from the right, one from the bottom, and one from the left. How many temporary variables do you need to swap four values?

**Follow-up:** Write `rotateCounterClockwise`. Can you do it by calling `rotate` more than once? Can you do it without that?

---

## 3. Pascal's Triangle

**Difficulty: Easy**

Return the first `numRows` rows of **Pascal's triangle**. Every row starts and ends with `1`. Every other number is the sum of the two numbers directly above it:

```
        1
       1 1
      1 2 1
     1 3 3 1
    1 4 6 4 1
```

```java
public static int[][] pascal(int numRows)
```

Each row has a different length, so this is a **jagged array**. You can create one by giving only the number of rows, then creating each row separately:

```java
int[][] tri = new int[numRows][];   // rows don't exist yet
tri[0] = new int[1];                // row 0 has 1 spot
```

**Example 1:**
```
Input:  numRows = 5
Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
```

**Example 2:**
```
Input:  numRows = 1
Output: [[1]]
```

**Constraints:**
- `1 <= numRows <= 30`

**Follow-up:** The constraints stop at 30 rows. Run your method with `numRows = 35` and print the middle number of the last row, `tri[34][17]`. Is it right? (The real answer is 2,333,606,220.) You'll find out why next class.
