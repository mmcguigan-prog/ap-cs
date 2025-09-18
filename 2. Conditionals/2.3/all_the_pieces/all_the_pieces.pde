// Bouncing Ball Demo - Day 1
// Demonstrates: booleans, if statements, random(), frameRate()

// Position and speed variables
float x, y;
float speedX, speedY;
float ballSize = 50;

// Boolean flags
boolean isPaused = false;

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
  
  // Only move if not paused
  if (!isPaused) {
    
    // Check boundary
    if (x - ballSize/2 < 0 || x + ballSize/2 > width) {
      speedX *= -1;
      r = random(100, 255); //Change to random color
    }
    
    if (y - ballSize/2 < 0 || y + ballSize/2 > height) {
      speedY *= -1;
      r = random(100, 255);//Change to random color
    }
    
    // Update position 
    y += speedY;
    x += speedX;
  }
  

  
  // Display info
  fill(255);
  text("Press SPACE to pause", 10, 20);
  text("Click for new ball", 10, 35);
  text("Frame Rate: " + frameRate, 10, 50);
}

void keyPressed() {
  if (key == ' ') {
    isPaused = !isPaused;  // Toggle pause
  }
  
  // Secret controls
  if (keyCode == RIGHT) {
    frameRate(10);  // Slow motion
  }
  if (keyCode == LEFT) {
    frameRate(60);  // Normal speed
  }
}

void mousePressed() {
  // Reset ball to mouse position
  x = mouseX;
  y = mouseY;
  
  // New random speeds
  speedX = random(2, 5);
  speedY = random(2, 5);
  
  // New random color
  r = random(100, 255);
  g = random(100, 255);
  b = random(100, 255);
}
