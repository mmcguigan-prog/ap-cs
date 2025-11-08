class Boxes{
  
  float x, y, size;
  
  Boxes() {
    x = 200;
    y = 200;
    size = 20;
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
