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
    float dx = mouseX - dotX;
    float dy = mouseY - dotY;
    float dist = sqrt(dx*dx + dy*dy);
    float spacing = 8;

    // DIRECTION VERSION
    float t = 0;
    while (t <= dist) {
      float x = dotX + dx * (t / dist);
      float y = dotY + dy * (t / dist);
      point(x, y);
      t += spacing;
    }

    // UNIT VECTOR VERSION
    //float ux = dx / dist;
    //float uy = dy / dist;
    //float x = dotX, y = dotY;
    //while (dist >= 0) {
    //  point(x, y);
    //  x += ux * spacing;
    //  y += uy * spacing;
    //  dist -= spacing;
    //}
  }
}

void mousePressed() {
  dotX = mouseX;
  dotY = mouseY;
  dotPlaced = true;
}
