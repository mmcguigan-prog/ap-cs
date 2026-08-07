// Unit 1, Lesson 1 - Demo A: Processing Review
// Coordinate system, shape primitives, color, and the setup()/draw() split.

void setup() {
  size(600, 400);       // ALWAYS the first line in setup()
  background(240);      // repaint the whole canvas light gray

  // --- COORDINATE SYSTEM ---
  // (0, 0) is the TOP-LEFT corner.
  // x grows to the right, y grows DOWN. Not the math class y-axis.
  stroke(200);
  strokeWeight(1);
  line(0, 200, 600, 200);   // horizontal center line
  line(300, 0, 300, 400);   // vertical center line

  fill(120);
  textSize(12);
  text("(0, 0)", 8, 16);
  text("(" + width + ", " + height + ")", 530, 392);   // width and height are built in

  // --- RECTANGLE: x, y is the TOP-LEFT corner ---
  fill(230, 80, 80);        // red, as (r, g, b)
  stroke(0);
  strokeWeight(2);
  rect(60, 60, 120, 80);
  fill(0);
  text("rect(60, 60, 120, 80)", 60, 155);

  // --- ELLIPSE: x, y is the CENTER ---
  // This trips people up every year. rect corners, ellipse centers.
  fill(80, 140, 230);
  rect(390, 60, 120, 80);        // same box...
  fill(80, 230, 140);
  ellipse(450, 100, 120, 80);    // ...ellipse centered inside it
  fill(0);
  text("ellipse(450, 100, 120, 80)", 370, 155);

  // --- TRIANGLE: three points, six numbers ---
  fill(240, 200, 60);
  triangle(120, 340, 60, 250, 180, 250);

  // --- LINE + STROKE STYLE ---
  stroke(150, 60, 200);
  strokeWeight(6);
  line(250, 340, 350, 250);

  // --- NO FILL / NO STROKE ---
  noFill();                      // outline only
  stroke(0);
  strokeWeight(3);
  ellipse(450, 290, 90, 90);

  noStroke();                    // fill only
  fill(255, 120, 0, 120);        // 4th value is ALPHA: 0 = invisible, 255 = solid
  ellipse(480, 290, 90, 90);     // overlaps the circle above so you can see through it

  // Nothing animates here because there is no draw() method.
  // setup() runs exactly once. See VariablesInMotion for the other half.
}
