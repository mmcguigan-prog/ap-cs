void setup(){

//0 
float[] myFloat = {1.3, 4.3, 2.7, 8.5};

//1
int[] numbers = new int[10];


//2
for(int i =0; i<numbers.length; i++){
  numbers[i] = i+1;
}

//3
println(numbers.length);

//4
println(numbers[0]);

//5 
println(numbers[numbers.length-1]);

//6
//See bottom

//7
numbers[5] = 99;

//8
for (int i =0; i<numbers.length; i++){
  numbers[i] = 2*numbers[i];
}

//9
print1DArray(numbers);

//10
float[] temperatures = new float[7];

//11
for (int i =0; i<temperatures.length; i++){
  temperatures[i] = random(60,90);
}

//12
print1DArray(temperatures);

//13
// See below
float min = findMin(temperatures);
println(min);

//14
// See below
float avg = calculateAverage(temperatures);
println(avg);

//15
println("This week's temperatures averaged " + avg);

//16
float first = temperatures[0];
temperatures[0] = temperatures[temperatures.length-1];
temperatures[temperatures.length-1] = first;


//17
int[][] grid = new int[5][5];

//18
for (int i=0; i<grid.length; i++){
  for (int j=0; j<grid[0].length; j++){
    grid[i][j] = 1;
  }
}

//19
//See below
print2DArray(grid);

//20
println(grid[0].length);

//21
grid[2][3] = 42;

//22
print2DArray(grid);

//23
for (int i=0; i<grid.length; i++){
  for (int j=0; j<grid[0].length; j++){
    grid[i][j] = i+j;
  }
}
print2DArray(grid);

//24
for (int i=0; i<grid.length; i++){
  for (int j=0; j<grid[0].length; j++){
    if (i==j){
      grid[i][j] = -1;
    }
  }
}
print2DArray(grid);

//25
int[][] matrix = new int[4][6];

//26
for (int i=0; i<matrix.length; i++){
  for (int j=0; j<matrix[0].length; j++){
    matrix[i][j] = (int)random(1,50);
  }
}

//27
//See below
int max = find2DMax(matrix);
println(max);

//28
println("The matrix max value is " + max);

// 29
// See below

//30
int sum = sumRow(matrix, 0);
println(sum);

//31
int matrixMax = 0;
int maxRow = 0;
for (int i=0; i<matrix.length; i++){
  if(sumRow(matrix, i) > matrixMax){
    matrixMax = sumRow(matrix,i);
    maxRow = i;
  }
}
println(maxRow);

//32
//See below
String[][] stringArray= {{"Hello", "World", "Welcome"},{"To", "AP", "CS"}};
String[][] newArray= transpose(stringArray);
print2DArray(newArray);

}


/* Functions below */


//6
void print1DArray(int[] myArray){
  for (int i = 0; i < myArray.length; i++){
    println(myArray[i]);
  }
}

//12
void print1DArray(float[] myArray){
  for (int i = 0; i < myArray.length; i++){
    println(myArray[i]);
  }
}


//13
float findMin(float[] myArray){
  float min=myArray[0];
  for (int i = 1; i < myArray.length; i++){
    if(myArray[i]<min){
      min = myArray[i];
    }
  }
  return min;
}

//14
float calculateAverage(float[] myArray){
  float sum = 0;
  for (int i = 0; i < myArray.length; i++){
    sum+=myArray[i];
  }
  return sum/myArray.length;
}

//19
void print2DArray(int[][] grid){
  for (int i=0; i<grid.length; i++){
    for (int j=0; j<grid[0].length; j++){
      print(grid[i][j] + " ");
  }
  println();
}
}

//27
int find2DMax(int[][] matrix){
  int max = matrix[0][0];
  for (int i=0; i<matrix.length; i++){
    for (int j=0; j<matrix[0].length; j++){
      if (matrix[i][j] > max){
        max = matrix[i][j];
      }
    }
  }
  return max;
}

// 29
int sumRow(int[][] matrix, int rowNum){
  int sum = matrix[rowNum][0];
  for (int i=1; i<matrix[rowNum].length; i++){
    sum += matrix[rowNum][i];
  }
  return sum;
}

//32
String[][] transpose(String[][] array){
  String[][] newArray = new String[array[0].length][array.length];
  for (int i=0; i<array.length; i++){
    for (int j=0; j<array[0].length; j++){
      newArray[j][i] = array[i][j];
    }
  }
  return newArray;
}

void print2DArray(String[][] grid){
  for (int i=0; i<grid.length; i++){
    for (int j=0; j<grid[0].length; j++){
      print(grid[i][j] + " ");
  }
  println();
}
}
