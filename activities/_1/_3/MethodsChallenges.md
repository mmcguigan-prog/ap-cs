# Methods Challenges

**Unit 1, Lesson 3** | Demos: `FirstMethods`, `MethodParameters`

**References:** Check out the ProcessingQuickReference.md file in the unit_overviews folder, or Google "Processing Reference"

---

## Level 1: Give Your Code a Name

A method is a name for a block of code.

```java
void setup() {
  size(600, 400);
  drawAnimal();
}

void drawAnimal() {
  fill(200, 150, 100);
  ellipse(300, 200, 120, 90);
  ellipse(250, 170, 30, 30);
}
```

- Move your animal's drawing code into a method
- Call it three times — what happens, and why?
- Break the rest of your sketch into methods so `setup()` and `draw()` contain nothing but calls and `background()`

## Level 2: Add Parameters

Parameters let you tell the method where to draw and how big.

```java
void drawAnimal(float x, float y, float size) {
  ellipse(x, y, size, size);
  ellipse(x - size / 4, y - size / 5, size / 8, size / 8);
}

drawAnimal(150, 200, 80);
drawAnimal(400, 300, 140);
```

- Rewrite `drawAnimal` so every number inside is calculated from `x`, `y`, and `size`
- Fill the canvas with 10 animals at different positions and sizes
- Add a `color` parameter so each one can be a different color
- Call it once with the arguments in the wrong order. Why doesn't Java warn you?

## Level 3: Build a Scene

Write `setup()` first, before the methods exist:

```java
void setup() {
  size(800, 500);
  drawSky();
  drawMountains(300);
  drawTree(100, 400, 120);
  drawTree(250, 420, 90);
  drawAnimal(500, 380, 100);
}
```

Then write the methods to match.

- Every method under 10 lines
- Every method name is a verb phrase
- Write one method that calls another method (a `drawForest()` that calls `drawTree()` five times)
