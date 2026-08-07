# Variables Challenges

**Unit 1, Lesson 2** | Demos: `Variables`, `VariablesInMotion`

**References:** Check out the ProcessingQuickReference.md file in the unit_overviews folder, or Google "Processing Reference"

---

## Level 1: Name Your Numbers

Take your animal from last class and replace every number in it with a variable.

```java
float x = 300;
float y = 200;
float size = 100;

ellipse(x, y, size, size);
ellipse(x - 20, y - 15, size / 5, size / 5);
```

- Change `x` and the whole animal should move together
- Change `size` and the whole animal should grow together
- If only part of it moved, some numbers are still hard-coded

## Level 2: Move It Across the Screen

Make your animal cross the canvas.

```java
float x = 0;

void setup() {
  size(600, 400);
}

void draw() {
  background(30);
  ellipse(x, 200, 50, 50);
  x = x + 2;
}
```

- Send it off the right edge and bring it back on the left
- Add a `speed` variable so you can change how fast it goes in one place
- Make it bounce off the walls instead of wrapping around (what happens if speed becomes negative?)
- Add a second animal with its own variables moving at a different speed

## Level 3: Variables That Do Math

Use variables to calculate things instead of typing the answers.

- Draw a circle where the **area** is stored in a variable and displayed with `text()`
- Make the circle grow, and watch the area update every frame
- Space 5 shapes evenly across the canvas by calculating the gap from `width`, so it still works if you change `size()`
- Use `dist(mouseX, mouseY, x, y)` to find how far the mouse is from your animal, then use that number to change its size or color
