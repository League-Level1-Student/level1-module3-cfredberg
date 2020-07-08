car car1;

void setup(){
  size(800, 600);
  
  car1 = new car(8, 8, 8, 8);
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
  
  car1.display();
  
  stayInside();
}

void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
            fy = fy - 5;
        }
        else if(keyCode == DOWN)
        {
            fy = fy + 5;
        }
        else if(keyCode == RIGHT)
        {
            fx = fx + 5;
        }
        else if(keyCode == LEFT)
        {
            fx = fx - 5;
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
