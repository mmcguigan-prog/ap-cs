// Bouncing Ball Demo (with noise) - Day 1
// Demonstrates: booleans, if statements, noise(), frameRate()

// Position and speed variables
float x, y;
float ballSize = 50;
float xoff = 0.0;
float yoff = 1000.0;
int colorCount = 0;


// Color variables
float r, g, b;

void setup() {
  size(600, 400);
  
  
  // Random initial color
  r = random(100, 255);
  g = random(100, 255);
  b = random(100, 255);
  
  // Control animation speed
  frameRate(60);  // 60 frames per second
}

void draw() {
 
  
  // Offset with noise
  x = map(noise(xoff), 0, 1, 0, width);
  y = map(noise(yoff), 0, 1, 0, height);
  
  // Move along the noise graph
  xoff += .01;
  yoff += .01;
  
  
  // Draw the ball
  fill(r, g, b);
  circle(x, y, ballSize);
  
  //Change color over time
  if (colorCount > 30){
    r = random(100, 255);
    g = random(100, 255);
    b = random(100, 255);
    colorCount = 0;
  }  
  colorCount++;
}
