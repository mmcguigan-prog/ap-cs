
Boxes[] boxes = new Boxes[10];


void setup(){
  size(400,400);
  background(220);
  
  // Fill boxes array with boxes
  for (int i = 0; i< boxes.length; i++){
    boxes[i] = new Boxes(random(0, width), random(0, height), random(10,100));
  }
  
}


void draw(){
  
  // Move and display boxes
  for (int i = 0; i< boxes.length; i++){
    boxes[i].drawBoxes();
    boxes[i].moveBoxes();
  }
  
}
