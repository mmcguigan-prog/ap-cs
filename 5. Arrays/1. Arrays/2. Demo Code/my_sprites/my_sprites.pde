
int nFrames = 5;
PImage[] frames = new PImage[nFrames];
int currentFrame = 0;

void setup(){
  size(400,400);
  for(int i=0; i<nFrames; i++){
    frames[i] = loadImage("little-man-1-" + (i+1) + ".png");
  }
  frameRate(10);
}

void draw(){
  background(220);
  imageMode(CENTER);
  image(frames[currentFrame], width/2, height/2, 100, 100);
  currentFrame++;
  currentFrame = currentFrame % nFrames;
}
