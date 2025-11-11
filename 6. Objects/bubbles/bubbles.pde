// Demo C: ArrayList mini-demo (bubbles that self-remove)
ArrayList<Bubble> bubbles = new ArrayList<Bubble>();

void setup() {
  size(420, 420);
}

void draw() {
  background(240);
  // add one occasionally
  if (random(1) > .95) {
    bubbles.add(new Bubble(random(width), height, 12));
  }

  // update/display
  for (Bubble b : bubbles) {
    b.update();
    b.display();
  }

  // remove off-screen by iterating backwards
  for (int i = bubbles.size()-1; i >= 0; i--) {
    if (bubbles.get(i).y < -bubbles.get(i).r) {
      bubbles.remove(i);
    }
  }

  fill(0);
  text("count = " + bubbles.size(), 10, 20);
}

void mousePressed() {
  bubbles.add(new Bubble(mouseX, mouseY, 18));
}

class Bubble {
  float x, y, r;
  Bubble(float x, float y, float r) {
    this.x=x;
    this.y=y;
    this.r=r;
  }
  void update() {
    y -= 2;
  }
  void display() {
    noFill();
    stroke(0);
    circle(x, y, r*2);
  }
}
