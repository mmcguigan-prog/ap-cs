Boxes box0 = new Boxes(100, 100, 50);
Boxes box1 = new Boxes(300,300,20);

void setup(){
  size(400,400);
  background(220);
}


void draw(){
  box0.drawBoxes();
  box1.drawBoxes();
  
  box0.moveBoxes();
  box1.moveBoxes();
}
