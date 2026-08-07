// Unit 1, Lesson 3 - Demo B: Parameters
// In FirstMethods, drawHouse() always drew in the same place. A PARAMETER is how a
// method asks a question: "where? how big? what color?"

void setup() {
  size(700, 450);
  background(200, 225, 245);
  noStroke();

  // Ground
  fill(110, 160, 90);
  rect(0, 350, width, height - 350);

  // ===== ONE METHOD, MANY RESULTS =====
  // Same code runs four times. Different ARGUMENTS, different houses.
  drawHouse(90,  350, 1.0);
  drawHouse(260, 350, 0.6);
  drawHouse(420, 350, 1.4);
  drawHouse(610, 350, 0.8);

  // ===== VOCABULARY (this shows up on the exam) =====
  // In the header  void drawHouse(float x, float y, float scale)
  //     x, y, scale         are PARAMETERS  (the variables in the definition)
  // In the call    drawHouse(90, 350, 1.0)
  //     90, 350, 1.0        are ARGUMENTS   (the values you pass in)

  // ===== ORDER MATTERS, NOT NAMES =====
  // Arguments are matched by POSITION. This compiles fine and draws garbage:
  drawFlower(1.0, 300, 30);   // scale in the x slot -- flower ends up at x = 1,
                              // sliced off against the left edge
  // Nothing warns you. Read your own headers.

  drawFlower(180, 300, 30);
  drawFlower(330, 320, 22);
  drawFlower(560, 310, 40);

  drawLabel("One method. Four houses. The difference is the arguments.");
}

// ================= PARAMETERS =================

// Three parameters: position and a size multiplier.
// Every number inside is written RELATIVE to x, y, and scale --
// that is what makes the method reusable.
void drawHouse(float x, float y, float scale) {
  float w = 110 * scale;
  float h = 100 * scale;

  fill(180, 120, 90);
  rect(x - w / 2, y - h, w, h);                                  // walls

  fill(140, 60, 50);
  triangle(x - w / 2 - 8, y - h,                                 // roof
           x + w / 2 + 8, y - h,
           x,             y - h - 55 * scale);

  fill(90, 130, 170);
  rect(x - 16 * scale, y - 50 * scale, 32 * scale, 50 * scale);  // door
}

void drawFlower(float x, float y, float size) {
  // stem
  fill(60, 130, 60);
  rect(x - 2, y, 4, 45);

  // petals -- five of them, placed by hand for now.
  // (Unit 3 turns this into a loop.)
  fill(240, 180, 210);
  ellipse(x,            y - size / 2, size, size);
  ellipse(x + size / 2, y,            size, size);
  ellipse(x - size / 2, y,            size, size);
  ellipse(x,            y + size / 2, size, size);

  // center
  fill(250, 220, 80);
  ellipse(x, y, size * 0.7, size * 0.7);
}

// A parameter does not have to be a number.
void drawLabel(String message) {
  fill(40);
  textSize(14);
  text(message, 20, 30);
}
