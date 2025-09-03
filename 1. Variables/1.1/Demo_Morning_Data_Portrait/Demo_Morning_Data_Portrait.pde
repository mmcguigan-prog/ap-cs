// Day 1 Demo: Variables & Data Types
// Goal: Show how personal numbers become visuals

void setup() {
  size(500,500);
  background(125, 209, 188);
  
  noStroke();
  
  
  // Declare and initialize personal variables
  int hourIWoke = 6;
  float hoursSlept = 7.5;
  int coffeeCups = 2;
  boolean isTired = false;
  
  /*
  Visual mapping of my sleepiness
  */
  
  // Background based on isTired
  if (isTired) {
    background(220);
  }
  
  // Sun brightness based on hoursSlept
  float sunBrightness = hoursSlept * 20;
  //float sunBrightness = map(hoursSlept, 0, 8, 0, 255);
  fill(255, 251, 0, sunBrightness); 
  circle(100, height/5, 75);
  
   // Awake hours in the day bar based on hourIWoke
  fill(0, 255, 0);
  float hoursAwake = 22.0 - hourIWoke;
  rect(width - 50, 10, 20, hoursAwake * 20);

  // Number of squares based on coffee cups
  fill(110, 70, 40);
  for (int i =0; i < coffeeCups; i++){
    square(i*100 + 50, height - 30, 25);
  }

  // Console checks
  println("Woke at: " + hourIWoke + "am");
  println("Slept: " + hoursSlept + " hours");
  println("Coffee cups: " + coffeeCups);
  println("Tired? " + isTired);
}

void draw() { }
