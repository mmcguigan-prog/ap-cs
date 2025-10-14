int[][] grid;
int squareSize = 10;


void setup(){
  size(400,400);
  grid = new int[width/squareSize][height/squareSize];
  frameRate(5);
}


void draw(){
  for (int i = 0; i<grid.length; i++){
    for (int j=0; j< grid[i].length; j++){
      fill(random(100), random(100), random(100));
      square(i*squareSize, j*squareSize, squareSize);
    }
  }

}
