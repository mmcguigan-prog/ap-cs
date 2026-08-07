# Processing Review Challenges

**Unit 1, Lesson 1** | Demos: `ProcessingReview`, `ShapesAndAlpha`, `MotionPreview`

**References:** Check out the ProcessingQuickReference.md file in the unit_overiews folder, or Google "Processing Reference"

---

## Level 1: Make an animal

Create an animal made of overlapping shapes.


## Level 2: Add Color and Alpha

`fill(r, g, b, alpha)` — that fourth number is opacity. `0` is invisible, `255` is
solid.

- Add color and alpha values to your animal
- Try it on a black background, then a white one. The same colors will look like
  completely different pieces.


## Level 3: Make It Move

Make your animal move. The code below shows an example of moving an ellipse across the screen. How can you do the same thing with your animal?

```java
float x = 0;        // a variable, up here, outside everything

void setup() {
  size(600, 400);
}

void draw() {       // runs ~60 times per second
  background(30);
  ellipse(x, 200, 50, 50);
  x = x + 2;        // move it a little, every frame
}
```
