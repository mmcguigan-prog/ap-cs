color[][] board;
int blockSize;

void setup() {
  size(800, 800);

  blockSize = 10;
  board = new color[height / blockSize][width / blockSize];

  //   randomColor();
  //   diagonal();
  //   cross();
  //   target();
  //   rainbowRows();
  //   verticalStripes();
  //   randomGrey();
  gradient();

  for (int row = 0; row < board.length; row++) {
    for (int col = 0; col < board[0].length; col++) {
      fill(board[row][col]);
      square(row * blockSize, col * blockSize, blockSize);
    }
  }
}

void randomColor() {
  for (int row = 0; row < board.length; row ++) {
    for (int col = 0; col < board[0].length; col++) {
      noStroke();
      board[row][col] = color(random(255), random(255), random(255));
    }
  }
}

void diagonal() {
  for (int row = 0; row < board.length; row ++) {
    for (int col = 0; col < board[0].length; col++) {
      if (row == col) {
        board[row][col] = color(0);
      } else {
        board[row][col] = color(255);
      }
    }
  }
}

void cross() {
  for (int row = 0; row < board.length; row ++) {
    for (int col = 0; col < board[0].length; col++) {
      if (col == row || col == board[0].length - 1 - row) {
        board[row][col] = color(0);
      } else {
        board[row][col] = color(255);
      }
    }
  }
}

void checkerboard() {
  for (int row = 0; row < board.length; row ++) {
    for (int col = 0; col < board[0].length; col++) {
      if ((row + col) % 2 == 0) {
        board[row][col] = color(0);
      } else {
        board[row][col] = color(255);
      }
    }
  }
}

void gradient() {
  for (int row = 0; row < board.length; row++) {
    for (int col = 0; col < board[0].length; col++) {
      float r = map(row, 0, board.length, 0, 255);
      float b = map(col, 0, board[0].length, 0, 255);
      board[row][col] = color(r, 100, b);
    }
  }
}

void randomGrey() {
  for (int row = 0; row < board.length; row++) {
    for (int col = 0; col < board[0].length; col++) {
      int gray = int(random(255));
      board[row][col] = color(gray);
    }
  }
}

void verticalStripes() {
  for (int row = 0; row < board.length; row++) {
    for (int col = 0; col < board[0].length; col++) {
      if (col % 2 == 0) board[row][col] = color(0);
      else board[row][col] = color(255);
    }
  }
}

void rainbowRows() {
  for (int row = 0; row < board.length; row++) {
    float hue = map(row, 0, board.length, 0, 255);
    for (int col = 0; col < board[0].length; col++) {
      board[row][col] = color(hue, 200, 255 - hue);
    }
  }
}

void target() {
  float centerX = board[0].length / 2.0;
  float centerY = board.length / 2.0;
  for (int row = 0; row < board.length; row++) {
    for (int col = 0; col < board[0].length; col++) {
      float d = dist(col, row, centerX, centerY);
      if (int(d / 2) % 2 == 0) board[row][col] = color(0);
      else board[row][col] = color(255);
    }
  }
}
