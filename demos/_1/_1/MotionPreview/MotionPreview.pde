// Unit 1, Lesson 1 - Demo C: The Smallest Possible Motion
// A teaser for Level 3 of today's challenges. You do not need to understand
// all of this yet -- next class is the real lesson. Copy the shape of it.

// Everything you have drawn so far happened ONCE. To make something move you
// need two new things:
//
//   draw()      a method Processing runs over and over, ~60 times per second
//   a variable  a named number that REMEMBERS its value between those runs
//
// That is the whole trick. The shape is not moving. You are redrawing it in a
// slightly different place 60 times a second.

float x = 0;          // <-- the variable. It lives up here, outside every method,
                      //     so it survives from one run of draw() to the next.

void setup() {
  size(600, 300);     // still the first line, still runs once
  noStroke();
}

void draw() {
  background(25, 30, 50);      // wipe the canvas clean every frame
                               // COMMENT THIS LINE OUT and run it -- the old
                               // frames stay, and you get a paint stroke instead
                               // of a moving ball. Both are useful.

  fill(240, 190, 80);
  ellipse(x, 150, 60, 60);     // draw at wherever x currently is

  x = x + 2;                   // then nudge x for next time

  if (x > width + 30) {        // slid off the right edge? start over on the left
    x = -30;
  }
}
