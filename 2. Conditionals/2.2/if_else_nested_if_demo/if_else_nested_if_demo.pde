// Demo: If / Else-If / Else + Nested If
/* Move your mouse left, middle, or right to see changes.
In the middle, check mouseY with a nested if.
*/

void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  // Top-level branching by mouseX
  if (mouseX < width/3) {
    background(200, 100, 100); // reddish
    fill(255);
    ellipse(width/2, height/2, 100, 100);
    
  } else if (mouseX < 2*width/3) {
    background(100, 200, 100); // greenish
    
    // NESTED if: check mouseY
    if (mouseY < height/2) {
      fill(0);
      rectMode(CENTER);
      rect(width/2, height/2, 100, 100); // black square
    } else {
      fill(255, 200, 0);
      rectMode(CENTER);
      rect(width/2, height/2, 150, 50); // yellow rectangle
    }
    
  } else {
    background(100, 100, 200); // bluish
    fill(255, 255, 0);
    triangle(width/2-50, height/2+50,
             width/2+50, height/2+50,
             width/2, height/2-50);
  }
}
