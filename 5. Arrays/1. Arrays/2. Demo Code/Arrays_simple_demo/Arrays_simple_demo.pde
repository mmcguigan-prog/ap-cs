
// Initialize array with filled in values
int[] myArray = {0,1,4,6};
String[] myStrings = {"Hello", "World"};

// Initialize empty array
int[] myOtherArray = new int[5];
String[] myOtherStrings = new String[5];

// print array
print(myArray);

// access an element from an array
println(myArray[2]);

//print entire array correctly
for (int i=0; i<myArray.length; i++){
  println(myArray[i]);
}


//What do empty arrays have?
for(int i=0; i<myOtherArray.length; i++){
  println(myOtherArray[i]);
}

for(int i=0; i<myOtherStrings.length; i++){
  println(myOtherStrings[i]);
}

// fill array
for (int i=0; i< myOtherArray.length; i++){
  myOtherArray[i] = (int)random(100);
}

// print new array
for(int i=0; i<myOtherArray.length; i++){
  println(myOtherArray[i]);
}
