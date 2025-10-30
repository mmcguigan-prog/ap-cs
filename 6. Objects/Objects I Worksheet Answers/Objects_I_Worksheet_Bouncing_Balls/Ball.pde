class Ball {
  // Instance variables
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float diameter;
  boolean touching;
  
  // Constructor
  Ball(float x, float y) {
    this.x = x;
    this.y = y;
    // Initialize speeds with random values
    this.xSpeed = random(-5, 5);
    this.ySpeed = random(-5, 5);
    this.diameter = 100;
    this.touching = false;
  }
  
  // Method to move the ball
  void move() {
    x += xSpeed;
    y += ySpeed;
  }
  
  // Method to check edges and bounce
  void checkEdges() {
    // Check left and right edges
    if (x - diameter/2 < 0 || x + diameter/2 > width) {
      xSpeed *= -1;  // Reverse horizontal direction
    }
    
    // Check top and bottom edges
    if (y - diameter/2 < 0 || y + diameter/2 > height) {
      ySpeed *= -1;  // Reverse vertical direction
    }
  }
  
  // Method to display the ball
  void display() {
    if (touching){
      fill(255,0,0);
    }else{
      fill(0,0,255);
    }
    noStroke();
    circle(x, y, diameter);
  }
  
  // Method to check collision with another ball
  void checkCollision(Ball other) {
    float distance = dist(x, y, other.x, other.y);
    if(distance < (diameter/2 + other.diameter/2)){
      touching = true;
    }else{
      touching = false;
    }
  }
  
}
