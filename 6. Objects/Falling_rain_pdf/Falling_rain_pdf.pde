Rain[] rain = new Rain[40];

void setup(){
  size(400,400);
  for (int i=0; i<rain.length; i++){
    rain[i] = new Rain(random(0, width), random(0, height), random(2,4));
  }
}


void draw(){
  background(220);
  for (int i =0; i<rain.length; i++){
    rain[i].move();
    rain[i].reset();
    rain[i].show();
  }
  //for (Rain r:rain){
  //  r.move();
  //  r.reset();
  //  r.show();
  //}
}
