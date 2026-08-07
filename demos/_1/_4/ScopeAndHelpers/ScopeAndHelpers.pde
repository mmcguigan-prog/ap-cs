// Unit 1, Lesson 4 - Demo C: Scope and Helper Methods
// SCOPE is the answer to "where does this variable exist?"

// ===== GLOBAL SCOPE =====
// Declared outside every method -> every method can see it and change it.
int clicks = 0;
float targetX, targetY;
float targetSize = 60;

void setup() {
  size(600, 400);
  textAlign(CENTER, CENTER);
  moveTarget();
}

void draw() {
  background(30, 35, 50);

  // ===== LOCAL SCOPE =====
  // d is declared inside draw(), so it exists ONLY inside draw().
  // It is created fresh every frame and destroyed at the closing brace.
  float d = dist(mouseX, mouseY, targetX, targetY);

  // A helper method decides the color. draw() does not need to know how.
  fill(proximityColor(d));
  noStroke();
  ellipse(targetX, targetY, targetSize, targetSize);

  fill(255);
  textSize(14);
  text("distance: " + round(d) + "     clicks: " + clicks, width / 2, 30);

  // println(petals);   // ERROR: petals is local to drawPetals(), invisible here
}

// ================= HELPER METHODS =================

// Small, single-purpose, and named for what it answers.
// draw() reads better because this logic has a name.
color proximityColor(float d) {
  if (d < targetSize / 2) {
    return color(90, 230, 140);      // mouse is on the target
  }
  if (d < 150) {
    return color(240, 200, 80);      // getting warm
  }
  return color(200, 70, 70);
}

// A void method that changes a GLOBAL. It hands nothing back -- it just
// reaches out and modifies state that lives outside itself.
void moveTarget() {
  targetX = random(60, width - 60);
  targetY = random(60, height - 60);
}

// ===== LOCAL VARIABLES ARE PRIVATE TO THEIR METHOD =====
void demoLocalScope() {
  int petals = 5;          // exists only between these braces
  println(petals);
}
// petals is gone here. A second method may declare its own `petals` with no conflict.

void demoAnotherLocal() {
  String petals = "these are unrelated";   // legal: different method, different variable
  println(petals);
}

// ===== SHADOWING: the trap =====
// If a LOCAL variable has the same name as a GLOBAL, the local wins inside
// that method and the global is untouched. This is almost never what you meant.
void brokenReset() {
  int clicks = 0;      // declares a NEW local; the global `clicks` never changes
  println("local clicks is " + clicks + ", global is still " + this.clicks);
}

void workingReset() {
  clicks = 0;          // no type in front -> assigns the GLOBAL. This works.
}

void mousePressed() {
  float d = dist(mouseX, mouseY, targetX, targetY);
  if (d < targetSize / 2) {
    clicks++;          // modifying the global from a different method
    moveTarget();
  }
}

void keyPressed() {
  if (key == 'r') {
    workingReset();
  }
  if (key == 'b') {
    brokenReset();     // watch the console: the counter on screen does not change
  }
}
