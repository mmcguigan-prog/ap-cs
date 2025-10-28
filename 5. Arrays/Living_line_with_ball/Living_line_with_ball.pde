float[][] pos = new float[100][2];
int circleIndex = 0;

void setup(){
  size(400,400);

}

void draw(){
  background(220);
  
  // Only update array if mouse has moved
  if (mouseX != pos[pos.length-1][0] || mouseY != pos[pos.length-1][1]){
  
  // Update array with current mouse position  
  pos = updateArray(pos);
  
  pos[pos.length-1][0] = mouseX;
  pos[pos.length-1][1] = mouseY;
  
  }
  
  // Draw the line connecting the previous mouse positions
  drawLines(pos);
  
  //Draw a circle on that line
  circle(pos[circleIndex][0], pos[circleIndex][1], 20);
  
  // Reset the circle to the start if it hits the mouse
  circleIndex++;
  circleIndex = circleIndex % pos.length;
  

}

// Make room to add the newest mouse position
float[][] updateArray(float[][] pos){
  for(int i=1; i<pos.length;i++){
    pos[i-1][0] = pos[i][0];
    pos[i-1][1] = pos[i][1];
  }
  return pos;
}

//Draw line between each two points
void drawLines(float[][] pos){
  strokeWeight(2);
  for(int i=1; i<pos.length;i++){
    line(pos[i-1][0], pos[i-1][1], pos[i][0], pos[i][1]);  
}
}
