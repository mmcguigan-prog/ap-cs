ArrayList<Mole> moles = new ArrayList<Mole>();
int score = 0;
int initialMoles = 5; 
ArrayList test = new ArrayList();

void setup() {
  size(480, 480);
  for (int i = 0; i < initialMoles; i++) {
    moles.add(new Mole(random(width), random(height), 60));
  }
  textFont(createFont("Arial", 16));
}

void draw() {
  background(232);
  
  // Update and display all moles
  for (Mole m : moles) {
    m.update();
    m.display();
  }
  
  // Remove expired moles (iterate backwards to avoid index issues)
  for (int i = moles.size() - 1; i >= 0; i--) {
    if (moles.get(i).timer < 0) {
      replaceMole(i);
    }
  }
  
  fill(0);
  text("Score: " + score, 10, 22);
}

void mousePressed() {
  // Iterate backwards for safe removal
  for (int i = moles.size() - 1; i >= 0; i--) {
    if (moles.get(i).isHit(mouseX, mouseY)) {
      score++;
      replaceMole(i);
      break;  // Only hit one mole per click
    }
  }
}

void replaceMole(int index) {
  moles.remove(index);
  moles.add(new Mole(random(width), random(height), 60));
}
