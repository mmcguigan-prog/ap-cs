// Unit 1, Lesson 3 - Demo A: Your First Method
// A method is a name for a block of code. That is the entire idea.

void setup() {
  size(600, 400);
  background(200, 220, 240);
  noStroke();

  drawGround();

  // ===== THE PROBLEM =====
  // Suppose we want three houses. Without methods, we copy and paste the same
  // eight lines three times and hand-edit every number. Then the teacher says
  // "make the roofs blue" and we have to fix it in three places.
  //
  // fill(180, 120, 90);
  // rect(60, 240, 100, 100);
  // fill(140, 60, 50);
  // triangle(50, 240, 170, 240, 110, 180);
  // ... and again, and again.

  // ===== THE FIX =====
  // Write the code ONCE, give it a name, and call the name.
  drawHouse();
  drawHouse();
  drawHouse();

  // ...except all three landed on top of each other, because drawHouse() has no
  // way to know WHERE it should draw. Parameters fix that -- see MethodParameters.

  drawSun();
  drawLabel();
}

// ================= METHOD DEFINITIONS =================
// These live OUTSIDE setup() and draw(). Order does not matter -- Java finds them.

// void  = "hands nothing back"
// ()    = "takes no information in"
void drawHouse() {
  fill(180, 120, 90);
  rect(250, 240, 100, 100);        // walls
  fill(140, 60, 50);
  triangle(240, 240, 360, 240, 300, 180);   // roof
  fill(90, 130, 170);
  rect(285, 290, 30, 50);          // door
}

void drawSun() {
  fill(250, 220, 80);
  ellipse(520, 70, 90, 90);
}

void drawGround() {
  fill(110, 160, 90);
  rect(0, 340, width, height - 340);
}

void drawLabel() {
  fill(40);
  textSize(13);
  text("drawHouse() called 3x -- all in the same spot. Parameters come next.", 20, 380);
}
