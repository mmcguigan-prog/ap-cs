// Bouncing Ball Demo - Day 1
// Demonstrates: booleans, if statements, random(), frameRate()

// Position and speed variables
float x, y;
float speedX, speedY;
float ballSize = 50;

// Color variables
float r, g, b;

void setup() {
  size(600, 400);
  
  // Start at random position
  x = random(ballSize, width - ballSize);
  y = random(ballSize, height - ballSize);
  
  // Random initial speeds
  speedX = random(2, 5);
  speedY = random(2, 5);
  
  // Random initial color
  r = random(100, 255);
  g = random(100, 255);
  b = random(100, 255);
  
  // Control animation speed
  frameRate(60);  // 60 frames per second
}

void draw() {
  // Fade effect (comment out for trails)
  fill(0, 20);
  rect(0, 0, width, height);
  
  // Draw the ball
  noStroke();
  fill(r, g, b);
  circle(x, y, ballSize);
  
  x += speedX;
  y += speedY;
  
  // Check boundaries and bounce
  // Left/right walls
  if (x > width - ballSize/2 || x < ballSize/2) {
    speedX *= -1;
    r = random(100, 255);  // Change color on bounce
  }
  
  // Top/bottom wall
  if (y > height - ballSize/2 || y < ballSize/2) {
    speedY *= -1;
    g = random(100, 255);
  }
  
  // Display info
  fill(255);
  text("Frame Rate: " + frameRate, 10, 50);
}
