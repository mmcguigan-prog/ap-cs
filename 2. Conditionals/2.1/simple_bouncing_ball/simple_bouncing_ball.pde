float x = 200;
float xSpeed = 2;
float r = 20;

void setup(){
  size(400,400);
}


void draw(){
  
  background(220);
  // Check boundary
  if (x + r > width || x-r <0){
    xSpeed *= -1;
  }
  
  // Move the ball
  x += xSpeed;
  
  //draw the ball
  circle(x, height/2.0, r*2);
  
}
