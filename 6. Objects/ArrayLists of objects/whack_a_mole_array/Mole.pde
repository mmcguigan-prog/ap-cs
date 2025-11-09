class Mole {
  float x, y, r;
  int timer;
  boolean visible = true;

  Mole(float x, float y, float d) {
    this.x = x;
    this.y = y;
    this.r = d/2;
    timer = int(random(45, 120));
  }
  
  void update() {
    if (!visible) {
      return;
    }
    timer--;
    if (timer <= 0) {
      visible = false;
    }
  }
  
  void display() {
    if (!visible) return;
    fill(255, 200, 200);
    noStroke();
    ellipse(x, y, r*2, r*2);
    fill(0);
    ellipse(x-8, y-8, 8, 8);
    ellipse(x+8, y-8, 8, 8);
  }
  
  boolean isHit(float mx, float my) {
    return visible && dist(mx, my, x, y) < r;
  }
  
  void respawn() {
    x = random(width);
    y = random(height);
    timer = int(random(45, 120));
    visible = true;
  }
}
