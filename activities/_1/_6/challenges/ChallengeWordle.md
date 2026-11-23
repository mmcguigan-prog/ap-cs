# AP Computer Science A: Game Challenge Problems

This challenge is an open-ended project. Unlike previous assignments, you won't
be given method signatures or a development order — you decide how to structure your
code. The only requirements are the game rules and the input/output format. Use
`Scanner` for all input. These do not have an automatic tester. You will have to 
play the game to test it.

---

## Challenge 1: Wordle

### The Game

You have six attempts to guess a secret five-letter word. After each guess, the game
tells you which letters are correct:

- **Correct (uppercase):** The letter is in the word AND in the right position.
- **Misplaced (lowercase):** The letter is in the word but in the wrong position.
- **Wrong (+):** The letter is not in the word at all.

### Example Session

```
Secret word: CRANE

Guess 1: STARE
  +  +  A  r  E

Guess 2: GRIND
  +  R  +  N  +

Guess 3: CRANE
  C  R  A  N  E

You got it in 3 guesses!
```

Positions start at 0. In guess 1, `A` (position 2) and `E` (position 4) are in the same
positions as in "CRANE," so they're uppercase. `R` is in "CRANE," but at position 1, not
position 3, so it's misplaced (lowercase `r`). `S` and `T` aren't in the word at all (`+`).

In guess 2, `R` and `N` are in the right positions. `G`, `I`, and `D` aren't in "CRANE."

### Tricky Case: Duplicate Letters

```
Secret word: APPLE
Guess: PAPER

  p  a  P  e  +
```

Think carefully: `P` appears twice in the guess and twice in the secret word.
- The `P` at position 2 is in the correct spot, so it's uppercase.
- The `P` at position 0 is in the word but in the wrong spot. "APPLE" still has another `P`
  (at position 1) that hasn't been matched yet, so it's lowercase.
- `A` is at position 1 in "PAPER" but position 0 in "APPLE," so it's misplaced.
- `E` is at position 3 in "PAPER" but position 4 in "APPLE," so it's misplaced.
- `R` isn't in "APPLE" at all.

What happens when a letter appears more times in the guess than in the secret word?
For example, guessing `GEESE` when the secret word is `CRANE` — the guess has three
`E`s but the secret only has one. You should only mark as many `E`s as actually
exist in the secret word (prioritizing correct-position matches first). The `E` at
position 4 is an exact match, so it uses up the only `E`, and the other two get `+`:

```
Secret word: CRANE
Guess: GEESE

  +  +  +  +  E
```

### Requirements

- Hard-code an array of at least 20 five-letter words. Pick the secret word randomly.
- Accept guesses via Scanner. Reject guesses that aren't exactly 5 letters.
- Display feedback after each guess using the format above.
- End the game after a correct guess or after 6 failed attempts (reveal the word).

### Things to Think About

- How do you handle the duplicate letter problem described above? This is the hardest
  part of Wordle logic. Consider making multiple passes over the guess.
- How will you track which letters the player has already eliminated?
- Can you display a running summary of known information after each guess?
