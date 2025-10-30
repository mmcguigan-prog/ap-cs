Boxes box0 = new Boxes(100, 100, 10);
Boxes box1 = new Boxes(300,300);
Boxes box2 = new Boxes();

float area1;

void setup(){
  size(400,400);
  background(220);
  
  area1 = box1.calcArea();
  println(area1);
  
}


void draw(){
  box0.drawBoxes();
  box1.drawBoxes();
  box2.drawBoxes();
  
  box0.moveBoxes();
  box1.moveBoxes(-5,5);
  box2.moveBoxes();
  
  
}
