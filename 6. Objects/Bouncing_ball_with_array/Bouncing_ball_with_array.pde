int numBalls = 10;
Ball[] balls = new Ball[numBalls];

void setup(){
  size(400,400);
  for (int i=0; i<numBalls; i++){
    balls[i] = new Ball(random(width), random(height), random(5,20));
  }
}

void draw(){
  background(220);
  
  for (int i=0; i<balls.length; i++){
    balls[i].move();
    balls[i].checkBoundary();
    
    for (int j=0; j<balls.length; j++){
      if (i!= j){
      balls[i].checkCollision(balls[j]);
      }
    }
    
    balls[i].show();
    balls[i].reset();
  }
  
}
