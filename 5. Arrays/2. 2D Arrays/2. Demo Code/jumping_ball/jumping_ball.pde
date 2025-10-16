
int[][] grid;
int squareSize = 40;
int row = 0;
int col = 0;


void setup(){
  size(400,400);
  grid = new int[width/squareSize][height/squareSize];
  frameRate(5);
}

void draw(){
  background(220);
  
  // fill grid
  for (int i = 0; i<grid.length; i++){
    for (int j=0; j< grid[i].length; j++){
      square(i*squareSize, j*squareSize, squareSize);
    }
  }
  
  
  for (int i = 0; i<grid.length; i++){
    for (int j=0; j< grid[i].length; j++){
      square(i*squareSize, j*squareSize, squareSize);
    }
  }
  
  circle(row*squareSize, col*squareSize, 20);
  row++;
  
  if (row > width/squareSize){
    row = 0;
    col++;
  }

}
