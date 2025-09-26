void setup() {
  size(800, 800);
  ellipseMode(CORNER);

  int nSquares = 8;
  float squareSize = width / (nSquares * 1.0);


  for (int row = 0; row < nSquares; row++) {
    for (int col = 0; col < nSquares; col++) {

      if (random(1) > 0.8) {
        circle(row*squareSize, col*squareSize, squareSize);
      } else {

        square(row*squareSize, col*squareSize, squareSize);
      }
    }
  }
}
