# Challenge: Game of Life in the Terminal

**Unit 1, Lesson 1 Challenge** | Uses: 2D arrays, nested loops, conditionals, static methods, `System.out.print`

## Overview

The Game of Life is a "zero-player game" invented by mathematician John Conway in 1970. You set up a grid of cells, then watch it evolve on its own using four simple rules. Out of those rules come patterns that blink, move across the grid, and build copies of themselves.

---

## The Rules

Every cell is either **alive** or **dead**. Each cell has 8 neighbors (horizontal, vertical, and diagonal). To get the next generation, apply these rules to **every cell at the same time**:

1. A live cell with **fewer than 2** live neighbors dies (loneliness).
2. A live cell with **2 or 3** live neighbors stays alive.
3. A live cell with **more than 3** live neighbors dies (overcrowding).
4. A dead cell with **exactly 3** live neighbors becomes alive (birth).

---

## Requirements

1. Store the grid as a `boolean[][]` (`true` = alive).
2. Print live cells as `#` and dead cells as `.`, with a space after each character.
3. Write at least these methods. For now, every method needs `static`
   ```java
   public static void printGrid(boolean[][] grid)
   public static int countNeighbors(boolean[][] grid, int row, int col)
   public static boolean[][] nextGeneration(boolean[][] grid)
   ```
4. Print a label and the population (the number of live cells) above each generation (like in the Sample).
5. Your output must match the samples below exactly.

---

## Sample 1: Blinker

A 5 by 5 grid with live cells at `[2][1]`, `[2][2]`, `[2][3]`. Run 2 generations.

```
Generation 0 (population 3)
. . . . .
. . . . .
. # # # .
. . . . .
. . . . .

Generation 1 (population 3)
. . . . .
. . # . .
. . # . .
. . # . .
. . . . .

Generation 2 (population 3)
. . . . .
. . . . .
. # # # .
. . . . .
. . . . .
```

## Sample 2: Glider

A 6 by 6 grid with live cells at `[0][1]`, `[1][2]`, `[2][0]`, `[2][1]`, `[2][2]`. Run 4 generations. Compare generation 4 to generation 0. What happened?

```
Generation 0 (population 5)
. # . . . .
. . # . . .
# # # . . .
. . . . . .
. . . . . .
. . . . . .

Generation 1 (population 5)
. . . . . .
# . # . . .
. # # . . .
. # . . . .
. . . . . .
. . . . . .

Generation 2 (population 5)
. . . . . .
. . # . . .
# . # . . .
. # # . . .
. . . . . .
. . . . . .

Generation 3 (population 5)
. . . . . .
. # . . . .
. . # # . .
. # # . . .
. . . . . .
. . . . . .

Generation 4 (population 5)
. . . . . .
. . # . . .
. . . # . .
. # # # . .
. . . . . .
. . . . . .
```

## Sample 3: Glider Hits the Edge

Start with the same glider from Sample 2 and run it to **generation 24**. You only need to print the last one. This sample tests your neighbor counting: cells on the edge of the grid have fewer than 8 neighbors, and your code must never go out of bounds.

The glider should travel to the bottom-right corner and freeze into a 2 by 2 square (called a "block"):

```
Generation 24 (population 4)
. . . . . .
. . . . . .
. . . . . .
. . . . . .
. . . . # #
. . . . # #
```

If your grid doesn't match, check how `countNeighbors` handles cells in the last row and last column.

---

## Suggested Development Order

1. Write `printGrid` and print Sample 1's generation 0.
2. Write `countNeighbors` and test it. In the blinker, `[2][2]` should have 2 neighbors and `[1][2]` should have 3.
3. Write `nextGeneration` and get Sample 1 working. If generation 2 doesn't match generation 0, make sure you're building the next generation in a **new** array instead of changing the grid you're still counting.
4. Run the glider (Sample 2).
5. Run the glider to generation 24 (Sample 3).

---

## Extensions

- **Stable detection:** Write `boolean sameGrid(boolean[][] a, boolean[][] b)`. Stop the simulation when a generation is identical to the one before it, and print `Stable after N generation(s)`. Test it on a 4 by 4 grid with live cells at `[1][1]`, `[1][2]`, `[2][1]`. It should become a block and be stable after 1 generation.
- **Oscillator detection:** The blinker is never stable, but it repeats every 2 generations. Detect a period-2 oscillator.
- **More patterns:** Look up the "toad," "beacon," and "pulsar" and add them as methods that build each starting grid.
- **Animation:** Print `"\033[H\033[2J"` to clear the terminal, then use `Thread.sleep(200);` to pause between generations. (You'll need to add `throws InterruptedException` after `main(String[] args)`. Look up why.)
- **Random soup:** `Math.random()` returns a `double` from 0.0 up to (but not including) 1.0. Fill a 20 by 40 grid so each cell has a 30% chance of being alive and watch what grows.
