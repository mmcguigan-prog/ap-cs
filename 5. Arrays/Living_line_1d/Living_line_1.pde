int maxLen = 100;
int nPoints = 0;
float[] xPos;
float[] yPos;

void setup(){
  size(400,400);
  xPos = new float[maxLen];
  yPos = new float[maxLen];

}

void draw(){
  background(220);
  
  // Populate initial array with 
  
  // Only update array if mouse has moved
  if (mouseX != xPos[xPos.length-1] || mouseY != yPos[yPos.length-1]){
  
    if (nPoints < maxLen) {
      xPos[nPoints] = mouseX;
      yPos[nPoints] = mouseY;
      nPoints++;
    } else {
    // Update array with current mouse position  
    xPos = updateArray(xPos);
    yPos = updateArray(yPos);
    
    xPos[xPos.length-1] = mouseX;
    yPos[yPos.length-1] = mouseY;
    
    }
  }
  
  // Draw the line connecting the previous mouse positions
    
    drawLines(xPos, yPos);
  


}

// Make room to add the newest mouse position
float[] updateArray(float[] pos){
  for(int i=1; i<pos.length;i++){
    pos[i-1] = pos[i];
  }
  return pos;
}

//Draw line between each two points
void drawLines(float[] xPos, float[] yPos){
  strokeWeight(2);
  for(int i=1; i<nPoints;i++){
    line(xPos[i-1], yPos[i-1], xPos[i], yPos[i]);  
}
}
