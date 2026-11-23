# AP Computer Science A: Game Challenge Problems

This challenge is an open-ended project. Unlike previous assignments, you won't
be given method signatures or a development order — you decide how to structure your
code. The only requirements are the game rules and the input/output format. Use
`Scanner` for all input. These do not have an automatic tester. You will have to 
play the game to test it.

---

## Challenge 3: 2048

### The Game

Play on a 4×4 grid of numbered tiles. Each turn, you slide all tiles in one direction
(up, down, left, right). Tiles slide as far as they can. If two tiles with the same
value collide, they merge into one tile worth their sum. After each move, a new tile
(value 2 or 4) appears in a random empty cell. The goal is to create a tile worth 2048.

### Example Turn

```
Before (slide left):         After:
   .  2  .  2                  4  .  .  .
   4  .  4  .                  8  .  .  .
   2  .  .  .                  2  .  .  .
   .  .  .  2                  2  .  .  .
                              (new tile appears in a random empty cell)
```

### Merging Rules

These details matter — get them wrong and the game will feel broken:

1. When sliding, tiles merge toward the direction of movement. If a row contains
   `2 2 2 .` and you slide left, the result is `4 2 . .` (the leftmost pair merges
   first), not `2 4 . .`.
2. A tile can only merge once per turn. Sliding `4 4 4 4` left produces `8 8 . .`,
   not `16 . . .`.
3. If a move wouldn't change the board at all (nothing slides or merges), it doesn't
   count as a turn and no new tile appears.

### Input/Output Format

```
SCORE: 164

  2    4    .    2
  8    8    .    .
  4    .    2    .
  .    .    .    .

Move (w/a/s/d): a
```

### Requirements

- The board is a 4×4 `int[][]` (use 0 for empty cells).
- Start with two random tiles (90% chance of 2, 10% chance of 4).
- Accept `w` (up), `a` (left), `s` (down), `d` (right) as input.
- Track and display the score (the sum of all values created by merging).
- The game is won when a 2048 tile appears. The game is lost when the board is full
  and no merges are possible in any direction.

### Things to Think About

- The core problem is implementing the slide-and-merge for a single row or column.
  Once you can do it for one direction, how can you reuse that logic for all four?
- How do you check if the game is over? You need to verify that no move in any
  direction would change anything.
- How do you prevent a tile from merging twice in one move?
