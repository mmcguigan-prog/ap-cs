// Day 1 Demo: Variables & Data Types
// Goal: Show how personal numbers become visuals

void setup() {
  size(500, 500);
  background(24);
  noStroke();

  // Personal data as variables
  int hourIWoke = 6;       // whole number (int)
  float hoursSlept = 7.5;  // decimal (float)
  int coffeeCups = 2;      // whole number (int)
  boolean isTired = true;  // teaser for next units

  // Visual mappings
  
  // Sleep → moon/sun size
  fill(255, 240, 200, 100);
  float sunSize = hoursSlept * 28;
  circle(120, height/3, sunSize);

  // Wake time → sun position (coarse)
  fill(255, 180, 80, 120);
  ellipse(hourIWoke * 45, height/3, 110, 110);

  // Coffee → circle size
  fill(110, 70, 40);
  circle(220, height/4*3, coffeeCups * 48);

  // Boolean teaser
  if (isTired) {
    fill(100, 120, 255);
    rect(420, 60, 50, 50);
  }

  // Console checks
  println("Woke at: " + hourIWoke + "h");
  println("Slept: " + hoursSlept + " hours");
  println("Coffee cups: " + coffeeCups);
  println("Tired? " + isTired);
}

void draw() { }
