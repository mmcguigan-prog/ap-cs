float maxDistance;
float d;


void setup() {

  size(500,500);
  pixelDensity(1); // You MUST have this line to make it work on most new computers
  loadPixels();
  maxDistance = dist(width/2, height/2, width, height);
  for (int y= 0; y < height; y++){
    for (int x = 0; x < width; x++){
      d = map(dist(width/2, height/2, x, y), 0, maxDistance, 0, 255);
      pixels[x + y*width] = color(d);
    }
  }
  updatePixels();
}
