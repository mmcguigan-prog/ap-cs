
PImage image;
int photoWidth, photoHeight;

void setup() {
  size(400, 400);
  pixelDensity(1);
  image = loadImage("dr_hall.jpg");
  image.resize(width, height);
  image.filter(GRAY);
  //image(image, 0, 0);

  photoWidth = image.width;
  photoHeight = image.height;

  image.loadPixels();

  background(255);
  strokeWeight(2);
  stroke(0);
}

void draw() {
  int loc = int(random(photoWidth * photoHeight));
  float b = red(image.pixels[loc]);

  int r = int(random(255));


  if (r > b) {
    // loadPixels();
    // pixels[loc] = color(0);
    // updatePixels();
    int x = loc % photoWidth;
    int y = loc / photoWidth;
    point(x, y);
  }
}
