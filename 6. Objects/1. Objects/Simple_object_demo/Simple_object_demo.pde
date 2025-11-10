Boxes box0 = new Boxes();
Boxes box1 = new Boxes();

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
