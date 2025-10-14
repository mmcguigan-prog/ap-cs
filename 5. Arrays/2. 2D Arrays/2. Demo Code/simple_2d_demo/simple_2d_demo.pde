int[][] my2d = {{1,2,3}, 
                {4,5,6}};

int[][] myOther2d = new int[2][3];

// print from column 0
for (int i=0; i<my2d.length; i++){
  //println(my2d[i][0]);
}

// print from row 0
for (int j=0; j< my2d[0].length; j++){
  //println(my2d[0][j]);
}

// print all items (row major order)
for (int i=0; i<my2d.length; i++){
  for (int j=0; j< my2d[i].length; j++){
  //println(my2d[i][j]);
  }
}

// print all items (column major order) - assumes rectangular array
for (int j=0; j<my2d[0].length; j++){
  for (int i=0; i< my2d.length; i++){
  //println(my2d[i][j]);
  }
}


// fill 2d array
int counter = 1;
for (int i = 0; i< 2; i++){
  for(int j = 0; j < 3; j++){
    myOther2d[i][j] = counter;
    counter++;
  }
}

// print all items (row major order)
for (int i=0; i<myOther2d.length; i++){
  for (int j=0; j< myOther2d[i].length; j++){
  //println(my2d[i][j]);
  }
}
