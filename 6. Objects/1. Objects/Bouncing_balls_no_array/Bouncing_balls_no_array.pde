Ball ball0 = new Ball(200,200, 20);
Ball ball1 = new Ball(100, 300, 50);

void setup(){
  size(400,400);
}

void draw(){
  background(220);
  
  ball0.move();
  ball0.checkBoundary();
  ball0.checkCollision(ball1);
  ball0.show();
  
  ball1.move();
  ball1.checkBoundary();
  ball1.checkCollision(ball0);
  ball1.show();
}
