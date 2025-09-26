int nCircles = 7;

void setup() {
  size(800, 200);
  
  for(int i = 0; i < nCircles; i++) {
    circle(100 + i * 100, height/2, 50);
  }
}
