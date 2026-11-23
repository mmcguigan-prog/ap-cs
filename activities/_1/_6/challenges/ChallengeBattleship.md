# AP Computer Science A: Game Challenge Problems

This challenge is an open-ended project. Unlike previous assignments, you won't
be given method signatures or a development order — you decide how to structure your
code. The only requirements are the game rules and the input/output format. Use
`Scanner` for all input. These do not have an automatic tester. You will have to 
play the game to test it.

---

## Challenge 2: Battleship

### The Game

Two players each have a 10×10 grid. Each player secretly places 5 ships on their grid,
then they take turns guessing coordinates to fire at. A hit is marked with `X`, a miss
with `O`. When all cells of a ship are hit, it sinks. The first player to sink all
opponent ships wins.

### Ship Sizes

| Ship           | Size |
|----------------|------|
| Carrier        | 5    |
| Battleship     | 4    |
| Cruiser        | 3    |
| Submarine      | 3    |
| Destroyer      | 2    |

Ships can be placed horizontally or vertically. Ships cannot overlap or extend off
the grid.

### Display Format

Show two grids side by side — your ships and your view of the opponent's board:

```
   YOUR BOARD                  OPPONENT BOARD
   0 1 2 3 4 5 6 7 8 9        0 1 2 3 4 5 6 7 8 9
A  . . S S S . . . . .     A  . . . . . . . . . .
B  . . . . . . . . . .     B  . O . . . . . . . .
C  . . . . . . . . . .     C  . . . X . . . . . .
D  . B . . . . . . . .     D  . . . . . . . . . .
E  . B . . . . . . . .     E  . . . . . . . . . .
F  . B . . . . . . . .     F  . . . . . . . . . .
G  . B . . . . . . . .     G  . . . . . . . . . .
H  . . . . . . . . . .     H  . . . . . . . . . .
I  . . . . . . . . . .     I  . . . . . . . . . .
J  . . . . . . . . . .     J  . . . . . . . . . .
```

### Requirements

- Human vs. computer. The computer places ships randomly and fires at random
  coordinates (no repeats).
- Players place ships by entering a starting coordinate (e.g., `C4`) and orientation
  (`H` or `V`). Reject invalid placements (overlapping, off-grid).
- On each turn, the player enters a coordinate to fire at. Report hit, miss, or sunk
  (and which ship was sunk).
- The game ends when one side has lost all ships.

### Things to Think About

- You'll need multiple 2D arrays. What does each one store, and for which player?
- How do you represent a ship so you can track when it's fully sunk? A ship spans
  multiple cells — what connects them?
- How do you validate ship placement? A 4-cell ship placed at column 8 going
  horizontally would go off the board.
- For an extra challenge, make the computer smarter: when it gets a hit, have it
  fire at adjacent cells on subsequent turns instead of continuing to guess randomly.
