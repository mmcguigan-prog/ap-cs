# AP Computer Science A: Game Challenge Problems

This challenge is an open-ended project. Unlike previous assignments, you won't
be given method signatures or a development order — you decide how to structure your
code. The only requirements are the game rules and the input/output format. Use
`Scanner` for all input. These do not have an automatic tester. You will have to 
play the game to test it.

---

## Challenge 5: Connect Four

### The Game

Two players take turns dropping pieces into a 6-row × 7-column grid. Pieces fall to
the lowest available row in the chosen column. The first player to get four in a row
(horizontally, vertically, or diagonally) wins. If the board fills up with no winner,
it's a draw.

### Display Format

```
  0   1   2   3   4   5   6
|   |   |   |   |   |   |   |
|   |   |   |   |   |   |   |
|   |   |   |   |   |   |   |
|   |   | X |   |   |   |   |
|   | O | O |   |   |   |   |
| X | X | O | X |   |   |   |
+---+---+---+---+---+---+---+

Player X, choose a column (0-6): 4
```

### Requirements

- Two-player game (human vs. human), or human vs. a computer that picks a random
  valid column.
- Accept a column number as input. Reject full columns and out-of-range input.
- After each move, check for a winner (four in a row in any direction).
- Detect and announce a draw when the board is full.

### Things to Think About

- The "drop" mechanic is the first interesting problem: when a player picks column 3,
  how do you find the lowest empty row in that column?
- Win checking needs to look in four directions: horizontal, vertical, and both
  diagonals. How do you avoid going out of bounds during these checks?
- Do you check the entire board after every move, or can you limit your search to
  the area around the most recently dropped piece?
- For an extra challenge, implement a smarter AI. Can you apply the same minimax
  concept from Tic-Tac-Toe? What makes Connect Four harder for minimax than
  Tic-Tac-Toe? (Hint: think about how many possible game states exist in a 6×7 grid
  vs. a 3×3 grid.)
