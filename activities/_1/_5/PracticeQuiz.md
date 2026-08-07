# Unit 1 Practice Quiz: Variables and Methods

**25 minutes. No computer for Part 1 and Part 2.**
Key: `PracticeQuizKey/`

---

## Part 1: Vocabulary (10 pts)

Given:

```java
void drawBadge(float x, float y, String label) {
  fill(200, 40, 40);
  ellipse(x, y, 60, 60);
  fill(255);
  text(label, x, y);
}

drawBadge(100, 200, "MVP");
```

1. What is the **return type** of `drawBadge`? (1)
2. List the **parameters**. (2)
3. List the **arguments**. (2)
4. Would `String s = drawBadge(100, 200, "MVP");` compile? Why or why not? (2)
5. A variable declared at the top of the file, outside all methods, is called a _______ variable. (1)
6. `fill(0)`, `fill(255, 0, 0)`, and `fill(255, 0, 0, 100)` are examples of method _______. (1)
7. In terms of scope, what kind of variable is `x` inside `drawBadge`? (1)

---

## Part 2: Trace (20 pts)

**8.** What is `total` at the end? (3)

```java
int total = 10;
total += 5;
total *= 2;
total--;
```

**9.** What does this print, and why? (5)

```java
int level = 1;

void setup() {
  levelUp();
  levelUp();
  println("A: " + level);

  int level = 50;
  levelUp();
  println("B: " + level);
}

void levelUp() {
  level = level + 1;
}
```

**10.** What does `setup()` print? (3)

```java
void setup() {
  println(combine(3, 5));
}

int combine(int a, int b) {
  return doubleIt(a) + doubleIt(b);
}

int doubleIt(int n) {
  return n * 2;
}
```

**11.** This should move a ball across the screen. It doesn't. Why? (4)

```java
void draw() {
  background(220);
  float x = 0;
  ellipse(x, 200, 40, 40);
  x = x + 3;
}
```

**12.** Each has one error. Name it and fix it. (5)

```java
a) void area(float r) {
     return 3.14 * r * r;
   }

b) float half(float n) {
     n / 2;
   }

c) String grade(int score) {
     if (score >= 90) {
       return "A";
     }
   }

d) void drawDot(float x, float y) { ... }
   drawDot(100);

e) void setup() {
     background(200);
     size(400, 400);
   }
```

---

## Part 3: Practical (20 pts)

Open Processing. Create a sketch named `LastnameQuiz1`.

**13.** (6) Write `float circleArea(float radius)` that returns the area of a circle. Print `circleArea(10)` — about `314.16`.

**14.** (8) Write `void drawTarget(float x, float y, float size)` that draws three concentric circles centered at `(x, y)`: the outer one `size` across, the middle two-thirds of that, the inner one-third. Three different fills.

Call it three times at three positions and three sizes. Every target fully on screen and correctly proportioned.

**15.** (6) Write `color sizeColor(float size)` that returns green under 50, yellow for 50-100, red above 100.

Then change `drawTarget` so the outer circle's fill comes from `sizeColor(size)`. Your three targets should now be three different colors.

---

## Bonus (3 pts)

Add an overload `void drawTarget(float x, float y)` that draws a default-size target **without duplicating any drawing code**.

---

## Point Total: 50 (+3)

| Part | Points |
|------|--------|
| 1. Vocabulary | 10 |
| 2. Trace | 20 |
| 3. Practical | 20 |
| Bonus | 3 |
