car car1;
car car2;

void setup(){
  size(800, 600);
  
  car1 = new car(10, 100, 110, 8);
  car2 = new car(100, 300, 110, 10);
}

int fx = 390;
int fy = 500;

void draw(){
  background(0, 0, 255);
  fill(0, 0, 0);
  stroke(0, 0, 0);
  rect(0, 100, 800, 500);
  
  fill(0, 255, 0);
  ellipse(fx, fy, 20, 20);
  
  car1.moveL();
  car1.display();
  car2.moveR();
  car2.display();
  
  stayInside();
  
  if (intersects(car1) == true){
    fx = 390;
    fy = 500;
  }else if (intersects(car2) == true){
    fx = 390;
    fy = 500;
  }
}

void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
            fy = fy - 10;
        }
        else if(keyCode == DOWN)
        {
            fy = fy + 10;
        }
        else if(keyCode == RIGHT)
        {
            fx = fx + 10;
        }
        else if(keyCode == LEFT)
        {
            fx = fx - 10;
        }
    }
}

void stayInside(){
  if (fx-10 < 0){
    fx = 10;
  }
  
  if (fx+10 > 800){
    fx = 790;
  }
  
  if (fy-10 < 0){
    fy = 10;
  }
  
  if (fy+10 > 600){
    fy = 590;
  }
}

boolean intersects(car car) {
 if ((fy > car.getY() && fy < car.getY()+50) &&
                (fx > car.getX() && fx < car.getX()+car.getSize())) {
   return true;
  }
 else  {
  return false;
 }
}
