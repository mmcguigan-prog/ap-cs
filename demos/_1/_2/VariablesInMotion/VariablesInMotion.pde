// Unit 1, Lesson 2 - Demo B: Variables in Motion
// A variable is only interesting once it CHANGES. That requires draw().

// ===== GLOBAL VARIABLES =====
// Declared OUTSIDE every method, so they survive from one frame to the next.
// This is the whole trick. Move any of these inside draw() and the animation dies.
float ballX = 50;
float ballY = 200;
float speed = 3;
int   frames = 0;

void setup() {
  size(600, 400);
  noStroke();
}

void draw() {
  background(30, 40, 60);      // repaint every frame, or the ball leaves a smear
                               // (comment this line out once to SEE the smear)

  // --- COMPOUND ASSIGNMENT ---
  ballX += speed;              // same as: ballX = ballX + speed
  frames++;                    // same as: frames = frames + 1

  // Wrap around when the ball leaves the right edge.
  if (ballX > width + 25) {
    ballX = -25;
  }

  // --- USING ONE VARIABLE TO DRIVE ANOTHER ---
  // map() rescales a value from one range into another. Here: the further right
  // the ball is, the redder and bigger it gets.
  float redness = map(ballX, 0, width, 60, 255);
  float size    = map(ballX, 0, width, 20, 90);

  fill(redness, 100, 200);
  ellipse(ballX, ballY, size, size);

  // --- READING THE VARIABLES ON SCREEN ---
  fill(255);
  textSize(14);
  text("ballX  = " + nf(ballX, 0, 1), 20, 30);   // nf() trims the decimals
  text("speed  = " + speed, 20, 50);
  text("frames = " + frames, 20, 70);

  // frameCount is a built-in variable Processing updates for you.
  text("frameCount = " + frameCount, 20, 90);
}

// --- INTERACTION: change a variable and watch everything downstream change ---
void keyPressed() {
  if (key == 'w') {
    speed += 1;
  }
  if (key == 's') {
    speed -= 1;
  }
  println("speed is now " + speed);
}
