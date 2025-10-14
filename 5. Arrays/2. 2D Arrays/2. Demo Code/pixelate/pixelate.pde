PImage img;
color[][] pixels2D;
int blockSize = 20;
boolean showBlur = false;
int curY = 0;
int curX = 0;

void setup() {
  size(400, 400);
  img = loadImage("dr_hall.jpg");
  img.resize(width, height);

  pixels2D = new color[img.width][img.height];
  img.loadPixels();
  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++) {
      pixels2D[x][y] = img.get(x, y);
    }
  }
}

void draw() {

  noStroke();

  if (!showBlur) {
    image(img, 0, 0);
    return;
  }

  // fill(pixels2D[curX][curY]);
  // rect(curX, curY, blockSize, blockSize);
  // curX += blockSize;
  // if (curX >= img.width) {
  //   curX = 0;
  //   curY += blockSize;
  // }
  // if (curY >= img.height) {
  //   curY = 0;
  //   image(img, 0, 0);
  // }

  for (int y = 0; y < img.height; y += blockSize) {
    for (int x = 0; x < img.width; x += blockSize) {
      fill(pixels2D[x][y]);
      rect(x, y, blockSize, blockSize);
    }
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) showBlur = true;
    if (keyCode == LEFT)  showBlur = false;
  }
}

