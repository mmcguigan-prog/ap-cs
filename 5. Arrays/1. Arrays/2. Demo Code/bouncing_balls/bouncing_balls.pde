float[] x, y, xSpeed, ySpeed, size;
int n, speed, minSize, maxSize;

void setup() {
  size(800, 800);

  n = 10;
  speed = 5;
  minSize = 20;
  maxSize = 80;

  x = new float[n];
  y = new float[n];
  xSpeed = new float[n];
  ySpeed = new float[n];
  size = new float[n];

  for (int i = 0; i < n; i++) {
    x[i] = random(width);
    y[i] = random(height);
    xSpeed[i] = random(-speed, speed);
    ySpeed[i] = random(-speed, speed);
    size[i] = random(minSize, maxSize);
  }
}

void draw() {

  background(255);

  for (int i = 0; i < n; i++) {
    circle(x[i], y[i], size[i] * 2);
    x[i] += xSpeed[i];
    y[i] += ySpeed[i];
    checkCollisions(i);
  }
}

void checkCollisions(int i) {
  if (x[i] - size[i] < 0) {
    x[i] = size[i];
    xSpeed[i] *= -1;
  }
  if (x[i] + size[i] > width) {
    x[i] = width - size[i];
    xSpeed[i] *= -1;
  }
  if (y[i] - size[i] < 0) {
    y[i] = size[i];
    ySpeed[i] *= -1;
  }
  if (y[i] + size[i] > height) {
    y[i] = height - size[i];
    ySpeed[i] *= -1;
  }
}
