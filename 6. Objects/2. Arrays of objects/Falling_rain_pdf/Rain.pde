class Rain{
  float x;
  float y;
  float speed;
  
  Rain(float _x, float _y, float _speed){
    x = _x;
    y = _y;
    speed = _speed;
  }
  
  void move(){
    y += speed;
  }
  
  void reset(){
    if (y>height){
      y =0;
    }
  }
  
  void show(){
    ellipse(x, y, 5,10);
  }
}
