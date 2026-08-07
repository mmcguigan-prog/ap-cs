// Unit 1, Lesson 2 - Demo A: Variables
// A variable is a named box that holds a value. Two things to know about each
// one: what TYPE it holds, and what value is in it right now.

void setup() {
  size(600, 400);
  background(240);

  // ================= DECLARING =================
  // type   name   =   value
  int    score   = 87;        // whole numbers
  float  gpa     = 3.85;      // decimals
  boolean passing = true;     // true or false, no quotes
  char   grade   = 'B';       // ONE character, SINGLE quotes
  String name    = "Alice";   // text, DOUBLE quotes

  println("score   = " + score);
  println("gpa     = " + gpa);
  println("passing = " + passing);
  println("grade   = " + grade);
  println("name    = " + name);
  println();

  // ================= CHANGING =================
  // The value in the box can be replaced. The type cannot.
  score = 92;
  score = score + 5;          // read the old value, add 5, put it back
  score += 5;                 // shorthand for the exact same thing
  score++;                    // shorthand for score += 1
  println("score is now " + score);   // 103
  println();

  // ================= USING VARIABLES IN CALCULATIONS =================
  float radius = 40;
  float area = PI * radius * radius;
  float circumference = 2 * PI * radius;

  println("radius        = " + radius);
  println("area          = " + area);
  println("circumference = " + circumference);
  println();

  // Once the numbers have names, the math reads like math.
  float base = 120;
  float height = 80;
  float triangleArea = base * height / 2;
  println("triangle area = " + triangleArea);
  println();

  // ================= WHY THIS MATTERS FOR DRAWING =================
  // Every number below is computed from centerX, centerY, and size.
  // Change ONE of them and the whole face moves or resizes together.
  float centerX = width / 2;
  float centerY = height / 2;
  float size = 200;

  noStroke();
  fill(250, 220, 170);
  ellipse(centerX, centerY, size, size);              // head

  fill(60);
  ellipse(centerX - size / 5, centerY - size / 8, size / 10, size / 10);   // left eye
  ellipse(centerX + size / 5, centerY - size / 8, size / 10, size / 10);   // right eye

  noFill();
  stroke(60);
  strokeWeight(4);
  arc(centerX, centerY + size / 10, size / 2, size / 3, 0, PI);            // mouth

  // Try it: change `size` to 120, or centerX to 150. Nothing else needs editing.

  // ================= BUILT-IN VARIABLES =================
  // Processing keeps some variables updated for you.
  noStroke();
  fill(80);
  textSize(13);
  text("width = " + width + "   height = " + height, 20, 30);
}
