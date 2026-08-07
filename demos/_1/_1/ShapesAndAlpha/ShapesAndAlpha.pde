// Unit 1, Lesson 1 - Demo B: Building Complexity from Primitives
// Four ideas that turn a pile of shapes into a picture:
//   1. layering (draw order)
//   2. color as (r, g, b)
//   3. alpha, the fourth argument
//   4. arc() and the drawing modes

void setup() {
  size(700, 450);
  background(20, 25, 45);
  noStroke();

  // ================= 1. LAYERING =================
  // There is no "send to back" button. Whatever you draw LAST sits on top.
  // These three circles are drawn left to right, so each covers the one before.
  fill(230, 70, 70);
  ellipse(90, 90, 90, 90);
  fill(240, 180, 60);
  ellipse(130, 90, 90, 90);
  fill(90, 200, 160);
  ellipse(170, 90, 90, 90);

  label("drawn 1-2-3, so 3 wins", 40, 160);

  // ================= 2. ALPHA =================
  // A 4th argument to fill() is opacity: 0 is invisible, 255 is solid.
  // Same three circles, same order, but now you can see through them --
  // and the OVERLAPS make brand new colors you never typed.
  fill(230, 70, 70, 130);
  ellipse(340, 90, 90, 90);
  fill(240, 180, 60, 130);
  ellipse(380, 90, 90, 90);
  fill(90, 200, 160, 130);
  ellipse(420, 90, 90, 90);

  label("same shapes, alpha 130", 300, 160);

  // Stack enough translucent copies and the overlap goes solid.
  // Four passes at alpha 60 is much richer than one pass at alpha 240.
  fill(150, 120, 240, 60);
  ellipse(590, 90, 90, 90);
  ellipse(600, 100, 90, 90);
  ellipse(610, 80, 90, 90);
  ellipse(620, 95, 90, 90);

  label("4 passes at alpha 60", 545, 160);

  // ================= 3. STROKE IS SEPARATE =================
  // fill() colors the inside. stroke() colors the outline. They are
  // independent, and each can be switched off.
  stroke(255);
  strokeWeight(3);
  fill(80, 130, 220);
  ellipse(90, 280, 80, 80);          // both

  noFill();                          // outline only
  ellipse(190, 280, 80, 80);

  noStroke();                        // fill only
  fill(80, 130, 220);
  ellipse(290, 280, 80, 80);

  label("fill+stroke   /   noFill   /   noStroke", 40, 345);

  // ================= 4. arc() AND MODES =================
  // arc() is a slice of an ellipse. Angles run in RADIANS, clockwise,
  // starting at 3 o'clock. PI is half a circle, TWO_PI is the whole thing.
  fill(250, 210, 90);
  arc(450, 280, 90, 90, 0, PI);                   // bottom half
  fill(250, 150, 90);
  arc(560, 280, 90, 90, PI, PI + HALF_PI);        // one quarter
  fill(250, 90, 130);
  arc(660, 280, 90, 90, -QUARTER_PI, QUARTER_PI); // a wedge

  label("arc(x, y, w, h, startAngle, stopAngle)", 420, 345);

  // ================= PUTTING IT TOGETHER =================
  // Nothing below is a new shape type. It is the same four primitives,
  // layered back to front, with alpha doing the atmosphere.
  drawJellyfish(350, 405);
}

void drawJellyfish(float x, float y) {
  // Back to front: glow, then bell, then highlight.
  noStroke();
  fill(120, 200, 255, 40);
  ellipse(x, y - 20, 190, 150);      // soft halo

  fill(200, 120, 220, 200);
  arc(x, y, 120, 110, PI, TWO_PI);   // the bell is just a half-ellipse

  fill(255, 255, 255, 90);
  ellipse(x - 22, y - 30, 34, 20);   // highlight, drawn LAST so it reads as shine

  stroke(200, 120, 220, 160);
  strokeWeight(3);
  noFill();
  line(x - 40, y, x - 44, y + 40);   // tentacles
  line(x - 15, y, x - 12, y + 46);
  line(x + 15, y, x + 19, y + 42);
  line(x + 40, y, x + 46, y + 36);
  noStroke();
}

void label(String s, float x, float y) {
  fill(255, 180);
  textSize(12);
  text(s, x, y);
  noStroke();
}
