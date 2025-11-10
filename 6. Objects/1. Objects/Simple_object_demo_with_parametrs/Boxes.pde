class Boxes{
  
  float x, y, size;
  
  Boxes(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }
  
  void drawBoxes(){
    rect(x,y,size, size);
    rect(x+size/2, y+size/2, size, size);
    rect(x - size/2, y- size/2, size, size);
  }
  
  void moveBoxes(){
    x += random(-2, 2);
    y += random(-2, 2);
  }
  
  
}
