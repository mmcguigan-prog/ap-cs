PImage[] images;     
int numFrames = 6; 
int currentFrame = 0;
 

void setup() {
  size(800, 400);
  images = new PImage[numFrames];
  
  // load images into array
  for (int i = 0; i < numFrames; i++) {
    images[i] = loadImage("run/run" + i + ".png");
  }
  
  frameRate(10);  
}

void draw() {
  background(220);
  
  imageMode(CENTER);
  image(images[currentFrame], width / 2, height / 2, 100, 200);
  
  currentFrame++;
  
  if (currentFrame >= numFrames) currentFrame = 0;
}
