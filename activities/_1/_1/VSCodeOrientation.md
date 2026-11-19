# VSCode Orientation: From Processing to Java

**Unit 1, Lesson 1** | Demos: `FirstProgram`, `ProcessingToJava`

**Goal:** Run a Java program, print to the terminal, and bring over what you already know from Processing.

---

## Processing vs. Java in VSCode

| In Processing... | In Java (VSCode)... |
|---|---|
| Press ▶ Play | Click **Run** just above `main`, or ▶ in the top right |
| A canvas window opens | Output appears in the **TERMINAL** panel at the bottom |
| A sketch is a folder with a `.pde` file | A program is a `.java` file. The **class name must match the file name** |
| `setup()` runs once | `main` runs once, top to bottom, then the program ends |
| `draw()` repeats forever | Nothing repeats unless you write a loop |
| `println("hi");` | `System.out.println("hi");` |
| `print("hi");` | `System.out.print("hi");` |
| Errors show in the console under the sketch | Red squiggles in the code, the **PROBLEMS** tab, and messages in the terminal |


## Level 1: Make It Yours

Create a new file called `AboutMe.java`. Make sure the class inside is named `AboutMe`.

- Print your name, your grade, and your favorite food, each on its own line
- Use `System.out.print` three times to print one sentence across a single line
- Print a blank line, then print `5 + 10 = 15` where the `15` is calculated by Java, not typed

**Break it on purpose.** Make each mistake below, then read what VSCode tells you and undo the mistake.
1. Delete a semicolon
2. Misspell `println` as `printn`
3. Change the class name to `AboutYou` without renaming the file
4. Delete the last `}`

## Level 2: Bring Over Processing

All of this goes inside `main`. Remember, you don't need `setup()` or `draw()` anymore.

- Use a `for` loop to print the numbers 1 to 10
- Change it to print only the even numbers from 2 to 20
- Make a variable `temperature`. Use `if` / `else if` / `else` to print `"Wear a coat"`, `"Wear a sweater"`, or `"T-shirt weather"`
- Use a `while` loop to count down from 10 and then print `"Happy New Year!"`

## Level 3: Draw in the Terminal

There's no canvas, so draw with characters. Use `print` inside a loop and `println()` to end each row.

- A 5 by 5 square of `*`
- A right triangle where each row has one more `*` than the last:
  ```
  *
  **
  ***
  ****
  *****
  ```
- An 8 by 8 checkerboard of `#` and `.` (Hint: you did this in Processing. What decided the color of each square?)
- Write a method `public static void printRow(int length)` that prints one row of `*`. Use it to redraw your triangle.
