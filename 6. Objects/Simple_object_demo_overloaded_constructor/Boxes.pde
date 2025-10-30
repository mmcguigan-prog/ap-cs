class Boxes{
  
  float x, y, size;
  
  Boxes(float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }
  
  Boxes(float x, float y) {
    this.x = x;
    this.y = y;
    this.size = 50;
  }
  
  Boxes() {
    this.x = 200;
    this.y = 200;
    this.size = 50;
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
  
  void moveBoxes(float a, float b){
    x += random(a, b);
    y += random(a, b);
  }
  
  float calcArea(){
    return 3*size*size;
  }
  
  
}
