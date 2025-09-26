boolean dotPlaced = false;
float dotX, dotY;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  textSize(12);
  fill(0);

  if (!dotPlaced) {
    text("CLICK TO PLACE A DOT", 20, 20);
  } else {
    text("CLICK AGAIN TO PLACE A NEW DOT", 20, 20);
    strokeWeight(12);
    point(dotX, dotY);

    strokeWeight(4);
    line(mouseX, mouseY, dotX, dotY);
    
    // USE A WHILE LOOP TO DRAW A DOTTED LINE BETWEEN CURSOR AND DOT

  }
}

void mousePressed() {
  dotX = mouseX;
  dotY = mouseY;
  dotPlaced = true;
}
