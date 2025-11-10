// Demo B: Fixed Array (not ideal)
Mole[] moles;
int score = 0;

void setup() {
  size(800, 800);
  moles = new Mole[5];
  for (int i = 0; i < moles.length; i++) {
    moles[i] = new Mole(random(width), random(height), 60);
  }
}

void draw() {
  background(235);

  for (int i = 0; i < moles.length; i++) {
    moles[i].update();
    moles[i].display();
    // If a mole times out, we can only hide it… slot stays “taken”.
    if (!moles[i].visible) {
      // could respawn in-place, but “removing” isn’t possible with arrays.
      // moles[i] = null;  // leads to null checks everywhere
       moles[i].respawn(); // now we're managing lifecycles manually
    }
  }

  fill(0);
  textSize(18);
  text("Score: " + score, 10, 22);
}

void mousePressed() {
  for (int i = 0; i < moles.length; i++) {
    if (moles[i].isHit(mouseX, mouseY)) {
      score++;
      // with arrays, we can’t truly “remove” the hit one; we must reuse slot.
      moles[i].respawn(); // not removal—just recycling
    }
  }
}
