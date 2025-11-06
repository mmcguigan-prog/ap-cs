class Ball{
  float x,y,xSpeed,ySpeed,r;
  int fillCol;
  boolean inContact;
  
  Ball(float x, float y, float r){
    this.x = x;
    this.y = y;
    this.r=r;
    fillCol = 0;
    xSpeed = random(-3,3);
    ySpeed = random(-3,3);
    inContact = false;
  }
  
  void move(){
    x += xSpeed;
    y += ySpeed;
  }
  
  void show(){
    if (inContact){
      fillCol = 255;
    }else{
      fillCol = 0;
    }
    fill(fillCol);
    circle(x,y,r*2);
  }
  
  void checkBoundary(){
    if (x+r > width || x-r<0){
      xSpeed *= -1;
    }
    if (y+r > height || y-r<0){
      ySpeed *= -1;
    }
  }
  
  void checkCollision(Ball b){
    if (dist(x, y, b.x, b.y) < (r+b.r)){
      inContact = true;
    }
  }
  
  void reset(){
    inContact = false;
  }

}
