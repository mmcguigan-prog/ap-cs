PImage[] robot;     // array of images
int numFrames = 10; // number of frames in your folder
int currentFrame = 0;
float x;            // robot position

void setup() {
  size(800, 400);
  robot = new PImage[numFrames];
  
  // load images into array
  for (int i = 0; i < numFrames; i++) {
    robot[i] = loadImage("robot/robot" + (i + 1) + ".png");
  }
  
  x = width / 2;
  frameRate(5);  
}

void draw() {
  background(220);
  
  imageMode(CENTER);
  image(robot[currentFrame], x, height / 2);
  
  currentFrame++;
  
  if (currentFrame >= numFrames) {
    currentFrame = 0;
  }
}
