ArrayList<Ball> balls = new ArrayList<Ball>();

void setup(){
  size(400,400);
  
  //ArrayList test = new ArrayList();
  //test.add(new Ball(200,200));
  //test.add(7);
  //test.add("Hello");
  //println(test);
  
}

void draw(){
  background(220);
  for (Ball b: balls){
    b.show();
  }
  
  //using a traditional for loop
  //for (int i =0; i<balls.size(); i++){
  //  balls.get(i).show();
  //}
}

void mousePressed(){
  balls.add(new Ball(mouseX, mouseY));
  
  println(balls.size());
  if (balls.size()>5){
    balls.remove(0);
  }
}
