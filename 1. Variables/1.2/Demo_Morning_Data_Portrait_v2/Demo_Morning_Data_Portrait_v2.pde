// Rest Orb

void setup() {
  size(500, 500);
  background(255);

  // Inputs
  int hourIWoke = 7;
  float hoursSlept = 8.0;
  int coffeeCups = 0;

  // Rest score in [0,1] (simple model)
  float restScore = hoursSlept / 8.0;            // 8h ideal
  restScore -= abs(hourIWoke - 7) * 0.3;        // farther from ~7am = worse
  restScore -= coffeeCups * 0.08;                // each cup reduces rest
  restScore = constrain(restScore, 0, 1);

  // Circle size from restScore
  float d = width;          // base diameter
  d *= restScore;   // compound multiply


  // tired→darker, rested→lighter
  int c = int(restScore * 255);
  fill(c);
  circle(width/2, height/2, d);
  
  // Add text
  textAlign(CENTER, CENTER);
  textSize(12);
  if (c <= 255/2){
    fill(255);
    text("My sleepy circle", width/2, height/2);
  }else{
    fill(0);
    text("My rested circle", width/2, height/2);
  }

  // Console output
  println("restScore:", nf(restScore,1,2));
  println("coffeeCups:", coffeeCups);
}
void draw() {}
