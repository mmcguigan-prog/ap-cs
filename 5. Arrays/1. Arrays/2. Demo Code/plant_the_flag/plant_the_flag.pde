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
  colorMode(HSB);
  for (int y = height; y >= 0; y--) {
    stroke(140, map(y, height, 0, 0, 255/2), 255);
    line(0, y, width, y);
  }
}

void drawMountains() {
  stroke(0);
  for (int i = 0; i < peaks.length; i++) {
    line(i, height, i, peaks[i]);
  }
}

void drawFlags() {
  for (int i = 2; i < peaks.length - 2; i++) {
    if (peaks[i] < peaks[i-2] && peaks[i] < peaks[i+2]) {
      drawFlag(i, peaks[i]);
      i++;
    }
  }
}

void drawFlag(float x, float y) {
  line(x, y, x, y - 50);
  rect(x, y - 50, 15, 10);
}
