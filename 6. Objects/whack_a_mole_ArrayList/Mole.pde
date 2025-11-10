class Mole {
  float x, y, r;
  int timer;
  
  Mole(float x, float y, float d) {
    this.x = x;
    this.y = y;
    this.r = d/2;
    timer = int(random(45, 120));
  }
  
  void update() {
    timer--;
  }
  
  void display() {
    fill(255, 200, 200);
    noStroke();
    ellipse(x, y, r*2, r*2);
    fill(0);
    ellipse(x - 8, y - 8, 8, 8);
    ellipse(x + 8, y - 8, 8, 8);
  }
  
  boolean isHit(float mx, float my) {
    return dist(mx, my, x, y) < r;
  }
}
