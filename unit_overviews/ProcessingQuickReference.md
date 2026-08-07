# Processing Quick Reference

The Semester 1 companion to `JavaQuickReference.md`. Everything here is Java — Processing
just supplies the drawing methods and the `setup()`/`draw()` loop.

---

## Program Structure

```java
void setup() {      // runs once
  size(600, 400);   // MUST be first
}

void draw() {       // runs ~60x per second
  background(220);
}
```

A sketch with no `setup()`/`draw()` runs top-to-bottom once ("static mode") — fine for a
quick drawing, useless for animation.

---

## Canvas and Coordinates

`(0, 0)` is the **top-left**. `x` grows right, `y` grows **down**.

| Method | Purpose |
|--------|---------|
| `size(w, h)` | Set canvas size |
| `background(gray)` / `background(r, g, b)` | Fill the whole canvas |
| `width`, `height` | Built-in variables holding the canvas size |
| `frameCount` | How many frames have been drawn |
| `frameRate(n)` | Set frames per second |

---

## Shapes

| Method | Draws |
|--------|-------|
| `point(x, y)` | A single pixel |
| `line(x1, y1, x2, y2)` | A line between two points |
| `rect(x, y, w, h)` | Rectangle with top-left corner at `(x, y)` |
| `ellipse(x, y, w, h)` | Ellipse **centered** at `(x, y)` |
| `circle(x, y, d)` | Circle centered at `(x, y)` |
| `triangle(x1, y1, x2, y2, x3, y3)` | Triangle from three points |
| `arc(x, y, w, h, start, stop)` | Section of an ellipse (angles in radians) |

`rectMode(CENTER)` and `ellipseMode(CORNER)` swap how the first two arguments are read.

---

## Color and Style

| Method | Purpose |
|--------|---------|
| `fill(gray)` / `fill(r, g, b)` / `fill(r, g, b, alpha)` | Interior color |
| `noFill()` | Draw outline only |
| `stroke(...)` | Outline color, same argument forms as `fill()` |
| `noStroke()` | No outline |
| `strokeWeight(n)` | Outline thickness in pixels |

Grayscale values run `0` (black) to `255` (white). RGB values also run `0`-`255`.
`alpha` is opacity: `0` invisible, `255` solid.

---

## Text

```java
textSize(24);
textAlign(CENTER, CENTER);
fill(0);
text("Score: " + score, width / 2, 40);
```

---

## Input

| Variable / Method | Meaning |
|-------------------|---------|
| `mouseX`, `mouseY` | Current mouse position (`int`) |
| `pmouseX`, `pmouseY` | Mouse position on the previous frame |
| `mousePressed` | `boolean` — is a button down right now |
| `key` | The `char` of the last key pressed |
| `keyPressed` | `boolean` — is a key down right now |
| `void mousePressed()` | Method that runs once per click |
| `void keyPressed()` | Method that runs once per key press |

---

## Math Helpers

| Method | Returns | Notes |
|--------|---------|-------|
| `random(high)` | `float` in `[0, high)` | |
| `random(low, high)` | `float` in `[low, high)` | |
| `int(random(1, 7))` | `int` 1-6 | Wrap in `int()` for whole numbers |
| `abs(x)`, `sq(x)`, `sqrt(x)`, `pow(b, e)` | number | Processing shorthands |
| `min(a, b)`, `max(a, b)` | number | |
| `round(x)`, `floor(x)`, `ceil(x)` | `int` | |
| `dist(x1, y1, x2, y2)` | `float` | Distance between two points |
| `map(v, lo1, hi1, lo2, hi2)` | `float` | Rescale `v` from one range to another |
| `constrain(v, lo, hi)` | number | Clamp `v` into a range |

`Math.abs()`, `Math.pow()`, `Math.random()`, and `Math.PI` all still work — those are the
versions the AP exam uses.

---

## Console Output

```java
println("value: " + x);   // new line
print("no newline ");
```

