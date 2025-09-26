void setup() {
  size(400, 400);
  background(255);
  
  int dayOfMonth = day(); // this function returns an int 1-31 for day of month
  
  // example of a loop using day of the month
  for(int i = 1; i <= dayOfMonth; i++) {
    print(i + " ");
  }
 
}
