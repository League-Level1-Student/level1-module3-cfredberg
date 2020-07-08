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


}
