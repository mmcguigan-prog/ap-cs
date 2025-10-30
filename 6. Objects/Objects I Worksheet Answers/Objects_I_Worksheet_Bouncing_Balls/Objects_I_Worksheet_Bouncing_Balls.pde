
// Global ball objects
Ball ball1;
Ball ball2;

void setup() {
  size(800, 600);
  
  // Create ball instances at different positions
  ball1 = new Ball(200, 300);
  ball2 = new Ball(400, 300);
}

void draw() {
  background(240);
  
  // Ball 1 - move, check edges, and display
  ball1.move();
  ball1.checkEdges();
  ball1.display();
  
  // Ball 2 - move, check edges, and display
  ball2.move();
  ball2.checkEdges();
  ball2.display();
  
  
  // Check for collisions between balls
  ball1.checkCollision(ball2);
  ball2.checkCollision(ball1);
  
}
