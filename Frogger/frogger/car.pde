class car{
  int x;
  int y;
  int size;
  int speed;
  
  car(int x, int y, int size, int speed){
    this.x = x;
    this.y = y;
    this.size = size;
    this.speed = speed;
  }
  
  void display()
  {
    fill(#FF960D);
    rect(x , y,  size, 50);
  }

  void moveL(){
    x = x - speed;
    if (x <=-110){
      x = width;
    }
  }
  
  void moveR(){
    x = x + speed;
    if (x >= width){
      x = 0-size;
    }
  }
  
  int getX(){
    return x;
  }
  
  int getY(){
    return y;
  }
  
  int getSize(){
    return size;
  }
  
}
