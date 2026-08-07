// Unit 1, Lesson 5 - Demo: Quiz Day Review
// Run this for the first 10 minutes of quiz day. Every Unit 1 idea in one sketch.
//
// Click anywhere to re-roll the dashboard.

// ===== GLOBAL VARIABLES: they survive between frames =====
int   score      = 0;
float barValue   = 45;
color themeColor;

void setup() {
  size(700, 420);           // FIRST line of setup(), always
  themeColor = color(70, 110, 190);
  textAlign(LEFT, BASELINE);
  reroll();
}

void draw() {
  background(245);          // without this, everything smears

  drawHeader();             // void method, no parameters

  // void method WITH parameters -- same code, three different results
  drawBar(60,  200, barValue);
  drawBar(280, 200, barValue * 1.6);
  drawBar(500, 200, barValue * 0.4);

  drawFooter();
}

// ================= void METHODS =================

void drawHeader() {
  fill(themeColor);
  noStroke();
  rect(0, 0, width, 60);

  fill(255);
  textSize(18);
  text("Unit 1 Review   |   score: " + score + "   |   grade: " + describeGrade(score), 20, 38);
}

// Parameters make one method reusable. Every number below is relative to x, y, value.
void drawBar(float x, float y, float value) {
  float h = barHeight(value);          // a value-returning method decides the height

  fill(220);
  rect(x, y - 150, 120, 150);          // track

  fill(heatColor(value));              // another one decides the color
  rect(x, y - h, 120, h);              // the bar itself

  fill(40);
  textSize(13);
  text(nf(value, 0, 1), x, y + 20);    // nf() trims decimals for display
}

void drawFooter() {
  fill(90);
  textSize(12);
  text("click to re-roll   |   drawBar() is called 3x with different arguments", 20, height - 20);
}

// ================= VALUE-RETURNING METHODS =================

// Converts a 0-100 value into pixels.
float barHeight(float value) {
  return constrain(value, 0, 100) / 100 * 150;
}

color heatColor(float value) {
  if (value < 40) {
    return color(80, 170, 220);
  }
  if (value < 80) {
    return color(240, 190, 70);
  }
  return color(220, 80, 80);           // the "everything else" return
}

String describeGrade(int s) {
  if (s >= 90) return "A";
  if (s >= 80) return "B";
  if (s >= 70) return "C";
  return "F";
}

// ================= A METHOD CALLING A METHOD =================
// combine() does not do any arithmetic itself. It asks doubleIt() twice
// and adds up the answers.
int combine(int a, int b) {
  return doubleIt(a) + doubleIt(b);
}

int doubleIt(int n) {
  return n * 2;
}

// ================= SCOPE =================
void reroll() {
  // These are LOCAL -- they vanish when reroll() ends.
  int newScore = int(random(55, 101));
  float newBar = random(10, 100);

  // These GLOBALS keep the values after reroll() ends.
  score    = newScore;
  barValue = newBar;

  println("rerolled -> score " + score + " (" + describeGrade(score) + "), "
          + "combine(3, 5) is " + combine(3, 5));
}

void mousePressed() {
  reroll();
}
