// Unit 1 Practice Quiz - ANSWER KEY
// Parts 1 and 2 are in the comment block below.
// Part 3 is working code -- run this sketch to see it.

/* =====================================================================
   PART 1: VOCABULARY (10 pts)

   1. void  (1)
   2. float x, float y, String label  (2)
   3. 100, 200, "MVP"  (2)
   4. No. drawBadge is void, so it produces no value to assign.  (2)
   5. global  (1)
   6. overloading  (1)
   7. local (also accept: a parameter, which is local to the method)  (1)

   =====================================================================
   PART 2: TRACE (20 pts)

   8. total = 29   (3)
        10, then += 5 -> 15, then *= 2 -> 30, then -- -> 29

   9. A: 3    B: 50   (5)
        levelUp() twice takes the global from 1 to 3.
        `int level = 50;` DECLARES A NEW LOCAL that shadows the global.
        The third levelUp() bumps the GLOBAL to 4, but the println reads
        the LOCAL, which is still 50.
        Vocabulary word: shadowing.

   10. 16   (3)
        combine(3, 5) -> doubleIt(3) + doubleIt(5) -> 6 + 10 -> 16

   11. (4)
        x is declared INSIDE draw(), so it is a local variable that gets
        rebuilt from 0 every single frame. The x = x + 3 does run, but the
        value is thrown away when draw() ends.
        Fix: move `float x = 0;` above setup(), so it is global.

   12. (5, one each)
        a) Header says void but the body returns a value.
           Fix: change the return type to float.
        b) Computes n / 2 and throws it away; nothing is returned.
           Fix: return n / 2;
        c) No return when score < 90 -- not every path returns.
           Fix: add a return after the if, e.g. return "F";
        d) Only one argument for a two-parameter method.
           Fix: drawDot(100, 100);
        e) size() must be the FIRST line of setup().
           Fix: swap the two lines.
   ===================================================================== */

void setup() {
  size(600, 400);
  background(240);
  noStroke();

  // ---- 13 ----
  println("circleArea(10) = " + circleArea(10));   // 314.15927

  // ---- 14 and 15 ----
  drawTarget(120, 200, 40);    // under 50  -> green
  drawTarget(300, 200, 90);    // 50 to 100 -> yellow
  drawTarget(480, 200, 130);   // over 100  -> red

  // ---- BONUS ----
  drawTarget(300, 340);        // default size, no duplicated drawing code

  fill(40);
  textSize(13);
  text("Sizes 40 / 90 / 130 -> green / yellow / red. Bottom one uses the overload.", 20, 40);
}

// ---- 13 (6 pts) ----
float circleArea(float radius) {
  return PI * radius * radius;
}

// ---- 14 (8 pts) + 15 (6 pts) ----
void drawTarget(float x, float y, float size) {
  fill(sizeColor(size));                       // 15: outer fill comes from the method
  ellipse(x, y, size, size);

  fill(255);
  ellipse(x, y, size * 2 / 3, size * 2 / 3);

  fill(40);
  ellipse(x, y, size / 3, size / 3);
}

// ---- 15 (6 pts) ----
color sizeColor(float size) {
  if (size < 50) {
    return color(60, 180, 90);
  }
  if (size <= 100) {
    return color(240, 200, 60);
  }
  return color(220, 70, 70);
}

// ---- BONUS (3 pts) ----
// Fills in a default and hands off. No drawing code is repeated.
void drawTarget(float x, float y) {
  drawTarget(x, y, 60);
}

/* =====================================================================
   COMMON DEDUCTIONS ON PART 3

   13  Writing PI * radius * 2 (that is circumference).
       Forgetting to return, or printing inside the method instead.

   14  Hard-coding the middle and inner sizes instead of computing them
       from `size`. The targets look right at one size and wrong at others --
       always test with three different sizes.
       Drawing the small circles FIRST, so the big one covers them.

   15  Using if/else-if but forgetting the final unconditional return.
       Returning a String color name instead of a color.

   Bonus  Copying the three ellipse() calls into the two-parameter version.
          The whole point is that it delegates.
   ===================================================================== */
