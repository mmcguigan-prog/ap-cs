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
      if((i+j)%2 == 0){
        fill(0);
      }else{
        fill(255);
      }
      square(i*squareSize, j*squareSize, squareSize);
    }
  }

}
