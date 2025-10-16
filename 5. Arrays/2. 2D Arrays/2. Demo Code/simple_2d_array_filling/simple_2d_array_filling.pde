// Create a 2D array with 5 rows and 3 columns
int[][] myArray = new int[5][3];

void setup() {
  // Fill the array with numbers 1-15
  int num = 1;
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 3; j++) {
      myArray[i][j] = num;
      num++;
    }
  }
  
  // Print the array to the console
  println("2D Array Contents:");
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 3; j++) {
      print(myArray[i][j] + "\t");
    }
    println(); // New line after each row
  }
}

void draw() {
  // No drawing needed for this example
}
