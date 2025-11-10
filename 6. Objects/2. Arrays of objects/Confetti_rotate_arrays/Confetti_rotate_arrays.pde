color[] rainbowColors = new int[]{#9A56FF, #527AF2, #F2B807, #F28907, #F2220F};

Confetti[] confetti = new Confetti[100];
boolean partyTime = false;

void setup() {
  size(640, 360);
  pixelDensity(2);

  for (int i = 0; i < confetti.length; i++) {
    confetti[i] = new Confetti();
  }
}

void mousePressed() {
  partyTime = true;
  for (Confetti c : confetti) {
    c.burst(mouseX, mouseY);
  }
}

void draw() {
  background(255);
  if (partyTime) {
    for (Confetti c : confetti) {
      c.show();
      c.update();
    }
  }
}
