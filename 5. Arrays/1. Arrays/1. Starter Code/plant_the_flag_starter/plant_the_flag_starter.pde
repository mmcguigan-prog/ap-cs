float[] peaks;
float off = 0;

void setup() {
  size(800, 800);

  peaks = new float[width];

  for (int i = 0; i < peaks.length; i++) {
    peaks[i] = map(noise(off), 0, 1, height/4, height/3*2);
    off += .008;
  }

  drawBackground();
  drawMountains();
  drawFlags();
}

void drawBackground() {
  colorMode(HSB, 360, 100, 100);
  for (int y = height; y >= 0; y--) {
    stroke(195, map(y, height, 0, 0, 50), 100);
    line(0, y, width, y);
  }
}

void drawMountains() {
  
  /* TASK: Draw mountains using peaks array
  1. Use a loop to iterate through x values of sketch
  2. Draw lines from x coordinate at bottom to peak from array
  */
}

void drawFlags() {
  
  /* TASK: Plan a flag at peaks (local maxima)
  1. Use a loop to iterate through x values of sketch
  2. If peak at that x value is bigger than peaks to left/right, draw a flag
  HINT: Use drawFlag function to draw the flag
  HINT: Careful to not access array out of bounds!

  
  */
}

void drawFlag(float x, float y) {
  line(x, y, x, y - 50);
  rect(x, y - 50, 15, 10);
}
