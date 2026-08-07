# Return Values & Scope Challenges

**Unit 1, Lesson 4** | Demos: `ReturnValues`, `MethodOverloading`, `ScopeAndHelpers`

**References:** Check out the ProcessingQuickReference.md file in the unit_overviews folder, or Google "Processing Reference"

---

## Level 1: Methods That Answer

A `void` method **does** something. A value-returning method **answers** something. The return type replaces the word `void`.

```java
float average(float a, float b) {
  return (a + b) / 2;
}

println(average(10, 20));       // 15.0
float mid = average(0, 100);    // the answer has to go somewhere
```

Write these and test each one with `println()`:

- `float triple(float n)` — returns `n` times 3
- `float circleArea(float radius)` — returns the area
- `boolean isPositive(float n)` — one line, no `if` statement
- `String describeGrade(int score)` — returns `"A"`, `"B"`, `"C"`, or `"F"`
- `color heatColor(float v)` — returns blue at 0 fading to red at 100

## Level 2: Draw With What Comes Back

Make a bar chart of five numbers where every visual property comes back from a method.

```java
void drawBar(float x, float value) {
  fill(heatColor(value));
  rect(x, 300 - barHeight(value), 60, barHeight(value));
}
```

- `barHeight(value)` decides how tall, `heatColor(value)` decides what color
- Feed it five different numbers — the chart should reconfigure with no other edits
- Write a method that returns a **random** position, and use it to scatter shapes
- Use `dist()` to make 20 shapes all react to the cursor at once

**Overloading:** you can reuse a method name if the parameter list is different. You already do this — `fill(0)`, `fill(255, 0, 0)`, and `fill(255, 0, 0, 100)` are three different methods.

```java
void drawBar(float x) {
  drawBar(x, 50);       // fills in a default and hands off
}
```

- Add a short version of one of your methods that fills in defaults
- The short version may not contain any drawing code

## Level 3: Scope

**Global** = declared outside every method, visible everywhere. **Local** = declared inside a method, gone at the closing brace.

This is supposed to count clicks but always shows 0. Fix it by changing one line.

```java
int clicks = 0;

void draw() {
  background(220);
  text("Clicks: " + clicks, 20, 30);
}

void mousePressed() {
  int clicks = 0;
  clicks++;
}
```

- For each of these, decide global or local: a ball's x position, the distance to the mouse this frame, the player's score, a background color that never changes
- Open your biggest sketch from this unit and pull every calculation buried inside a drawing method out into its own value-returning method

## Level 4: Put It Together

A target appears somewhere random. Click it, score a point, it moves. Miss, and you lose one.

- The score is global; everything else that can be local, is
- Every question the sketch asks — did I hit it? what color is it? where does it go next? — is a value-returning method
- No method over 10 lines
