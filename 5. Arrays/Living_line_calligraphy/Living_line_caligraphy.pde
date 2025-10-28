int maxLen = 100;
int nPoints = 0;
float[][] pos = new float[maxLen][2];
float sWeight = 2;

void setup(){
  size(400,400);

}

void draw(){
  background(220);
  
  // Only update array if mouse has moved
  if (mouseX != pos[pos.length-1][0] || mouseY != pos[pos.length-1][1]){
  
    if (nPoints < maxLen) {
      pos[nPoints][0] = mouseX;
      pos[nPoints][1] = mouseY;
      nPoints++;
    } else {
      // Update array with current mouse position  
      pos = updateArray(pos);
      
      pos[pos.length-1][0] = mouseX;
      pos[pos.length-1][1] = mouseY;
    }
  }
  
  // Draw the line connecting the previous mouse positions
  drawLines(pos);

}

// Make room to add the newest mouse position
float[][] updateArray(float[][] pos){
  for(int i=1; i<nPoints;i++){
    pos[i-1][0] = pos[i][0];
    pos[i-1][1] = pos[i][1];
  }
  return pos;
}

//Draw line between each two points
void drawLines(float[][] pos){
  for(int i=1; i<nPoints;i++){
    sWeight = updateStroke(pos, i);
    strokeWeight(sWeight);
    line(pos[i-1][0], pos[i-1][1], pos[i][0], pos[i][1]);  
}
}

// Update stroke based on speed
float updateStroke(float[][] pos, int i){
  float dist = dist(pos[i-1][0], pos[i-1][1], pos[i][0],pos[i][1]);
  float weight = map(dist, 0, 400, 0, 1);
  return 1/(weight*20);
}
