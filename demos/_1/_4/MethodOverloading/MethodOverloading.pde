// Unit 1, Lesson 4 - Demo B: Overloading
// You may reuse a method name as long as the PARAMETER LIST is different.
// Java picks the right version by looking at the arguments you passed.
//
// You already use this constantly: fill(0), fill(255, 0, 0), and
// fill(255, 0, 0, 100) are three overloaded versions of fill().

void setup() {
  size(700, 300);
  background(245);
  noStroke();

  // Three calls to "drawStar". Three different methods run.
  drawStar(100, 150);                       // defaults: medium, gold
  drawStar(250, 150, 60);                   // custom size
  drawStar(430, 150, 60, color(120, 90, 220));  // custom size AND color
  drawStar(600, 150, 80, color(60, 180, 160));

  fill(40);
  textSize(13);
  text("Same name, four calls, three different method bodies.", 20, 40);
  text("Java chooses by the number and type of arguments.", 20, 60);
}

// ================= THREE OVERLOADS =================

// Version 1: position only. Fills in defaults and hands off.
void drawStar(float x, float y) {
  drawStar(x, y, 40);            // a method may call another method
}

// Version 2: position + size. Fills in a default color and hands off.
void drawStar(float x, float y, float size) {
  drawStar(x, y, size, color(250, 200, 60));
}

// Version 3: the one that actually does the work.
// The other two exist so the caller does not have to repeat themselves.
void drawStar(float x, float y, float size, color c) {
  fill(c);
  // A rough four-point star: two overlapping triangles.
  triangle(x, y - size, x - size * 0.7, y + size * 0.5, x + size * 0.7, y + size * 0.5);
  triangle(x, y + size, x - size * 0.7, y - size * 0.5, x + size * 0.7, y - size * 0.5);
}

// ================= NOT OVERLOADING =================
// These would be an ERROR, because the parameter LIST is what distinguishes
// overloads -- the return type and the parameter NAMES do not count:
//
//   void drawStar(float a, float b) { }      // same as version 1: two floats
//   float drawStar(float x, float y) { }     // return type alone is not enough
//
// This one is fine, because int and float are different types:
//
//   void drawStar(int x, int y) { }
