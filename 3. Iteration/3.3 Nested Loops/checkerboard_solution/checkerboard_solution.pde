void setup() {
  size(800, 800);
  int nSquares = 8;
  float squareSize = width / (nSquares * 1.0);


  for (int row = 0; row < nSquares; row++) {
    for (int col = 0; col < nSquares; col++) {
      noStroke();
      if ((row + col) % 2 == 0) {
        fill(255);
      } else {
        fill(0);
      }
      square(row*squareSize, col*squareSize, squareSize);
    }
  }
}
