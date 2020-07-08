  int bx = 160;
float by = 40;
float bv = 3;
float bg = 1;
int px = 500;
int uph = 700;
int pg = 100;
int lpy = 0;

void setup(){
  size(500, 900);
}

boolean over() { 
         if (by-12.5 < uph && bx+12.5 > px && bx-12.5 < (px+50)){
            return true; }
        else if (by+12.5>lpy && bx+12.5> px && bx-12.5  < (px+50)) {
            return true; }
        else { return false; }
}

boolean over1() {
  if (by+12.5 > 900){
    return true;
  }else if(by-12.5 < 0){
    return true;
  }else{
    return false;
  }
}

boolean collected = false;

int score = 0;

void draw(){
  background(100, 10, 30);
  fill(100, 250, 230);
  stroke(255, 255, 10);
  ellipse(bx, by, 25, 25);
  fill(0, 255, 10);
  rect(px, 0, 50, uph);
  lpy = uph + pg;
  rect(px, lpy, 50, 700);
  textSize(20);
  fill(255, 255, 255);  
  stroke(0, 0, 0);
  text("Score: " + score, 10, 30);
  bv = bv + 0.15;
  by = by + bv;
  by = by + bg;
  px = px - 1;
  teleportPipes();
  if (over() == true || over1() == true){
    System.exit(0);
  }
  if (px+50 == bx-13 && collected == false  ){
    score++;
    collected = true;
  }
}

void keyPressed(){
  if (keyCode == 32){
    bv = bv - 5;
  }
}

void teleportPipes(){
  if (px == -50){
  px = 500;
  uph = (int) random(100, 700);
  collected = false;
  }
}
